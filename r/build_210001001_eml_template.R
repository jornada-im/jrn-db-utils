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

# Pushing the package update to EDI environment

# This only works if the data entity files have a public URL in the EML
# <distribution> element. In metabase, the URL for that element most go into
# the "DataSetEntities".Urlhead value for each entity. PASTA has to find the 
# entities at that URL to download and check them.

# To put the entities in an S3 bucket, use system calls to s3cmd put:
s3dest <- 's3://jrn-data-entities'
entitylist <- c('JRN_001001_runoff_vegetation_data.csv', 'Hydrology_prog.txt')

for (e in 1:length(entitylist)){
  syscall <- paste('s3cmd put', entitylist[e], s3dest)
  system(syscall)
}

# Documentation for s3cmd is [here](https://s3tools.org/usage)
# There are other options, including some options in R (aws.s3 and 
# googleCloudStorageR packages), but I haven't gotten them to work yet. 
# Another option is gsutil, which should work in windows
# (https://cloud.google.com/storage/docs/gsutil_install)

# Once the entities are in their web location, push the package update to 
# PASTA
do.call(api_update_data_package,
        c(list(path = getwd(),       # current directory
               package.id = pkgid,   # package id
               environment = edienv),# EDI environment
          edicred))
