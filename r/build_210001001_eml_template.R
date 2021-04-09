# workflow from metabase to EML document (to EDI)

library('MetaEgress')
library('EDIutils')

# put project script plus data files and other documents
# eg. abstract, methods in a folder with this script

# EDI scope
scope <- 'knb-lter-jrn'
# Package ID
pkg <- 210001001
# EDI environment destination (production or staging)
edienv <- 'staging'

# set workding directory to directory of current script
# data files + abstract (as in column DataSet.Abstract) 
# plus methods (as in column DataSetMethodSteps.Description)
# should be in this folder
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# get credentials for JRN metabase and EDI
source('~/Desktop/jrn_cred.R')

# connect to metabase and get metadata from specified datasets
# can specify multiple dataset IDs if you plan to reuse this list
metadata <- do.call(get_meta,
                    c(list(dbname = "jrn_metabase_dev", # change to your DB name
                           dataset_ids = c(pkg)),       # change to vector of datasets wanted
                      mbcred))

# Get current revision number in metabase
revnum_start <- metadata$dataset$revision_number

# If going to staging get the current revision number on staging
# and increment by one, update in metadata list
if (edienv=='staging'){
  revnum_start <- api_list_data_package_revisions(scope, pkg, filter='newest',
                                                  environment = 'staging')
}

# Now update the metadata list with the next revision number
revnum <- as.numeric(revnum_start) + 1
metadata$dataset$revision_number <-revnum

# Create packageID
pkgid <- paste0(scope, "." , pkg, ".", revnum)
# ------------------------
# data set specific steps

# create a list of entities
tables_pkg <- create_entity_all(meta_list =  metadata,
                                file_dir = getwd(),
                                dataset_id = pkg)

# MetaEgress doesn't seem to do this (but 'textFormat' is correctly in metadata$entities)
# Seems that it is treating otherEntities differently
# this is fix 1
# fix 2 is adding in metabase EMLFileTypes.externallyDefinedFormat_formatName
#tables_pkg$other_entities[[1]]$physical$dataFormat$externallyDefinedFormat$formatName = 'textFormat'

# create EML list object
EML_pkg <-
  create_EML(
    meta_list = metadata,
    entity_list = tables_pkg,
    dataset_id = pkg
  )

# validate and serialize (write) EML document
EML::eml_validate(EML_pkg)
EML::write_eml(EML_pkg, file = paste0(pkgid, ".xml"))

# use EDIutils to push package update to EDI environment

do.call(api_update_data_package,
        c(list(path = getwd(),       # current directory
               package.id = pkgid,   # package id
               environment = edienv),# EDI environment
          edicred))

