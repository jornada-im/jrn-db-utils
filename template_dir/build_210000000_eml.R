# build_210000000_eml.R
# 
# BOILERPLATE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# This is a template build script using R to prepare eml and 
# send a dataset to EDI. MetaEgress pulls metadata for the dataset
# from an lter-metabase. You need credentials for this to work, and 
# there is a template credentials file in jrn-metabase-utils repository.
#
# All metadata documents (abstract, methods) and any data entity
# files (CSVs, images, zipfiles etc.) must be in the directory with 
# this script. The data entities, abstract, and methods files
# should be named to match the values in the lter-metabase 
# (DataSetEntities.FileName, DataSet.Abstract and 
# DataSetMethod.Description).
#
# You can safely remove this and other boilerplate and use
# the rest to design a new R script for your dataset.
# <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

library('MetaEgress')
library('EDIutils')
library('aws.s3')

# Package ID
pkgid <- 210000000
# EDI environment destination (production or staging)
edienv <- 'staging'
# s3 bucket name
bucketname <- 'jrn-pubfiles'

# set working directory
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Get credentials for JRN metabase, EDI, & s3 (change base path as needed)
# See template for jrn_metabase_cred in jrn-metabase-utils repository
source('~/Desktop/jrn_metabase_cred.R') 
source('/media/greg/jrn-DataProducts/LTER_IM/im-keys/edi_keys.R')
source('/media/greg/jrn-DataProducts/LTER_IM/im-keys/s3_keys.R')

# connect to metabase and get metadata from specified datasets
# can specify multiple dataset IDs if you plan to reuse this list
metadata <-
	do.call(get_meta,
		c(list(dbname = "jrn_metabase_dev", # change to your DB name
		       dataset_ids = c(pkgid)), # can be a vector of datasets
		  mbcred)) # assigned in cred file

# To just enter credentials at the command prompt (or possibly a popup if Rstudio is
# properly configured):
#metadata <-
#  get_meta(
#    dbname = "jrn_metabase_dev", # change to your DB name
#    schema = "mb2eml_r",         # change to schema containing views
#    dataset_ids = 210001001,     # change to ID or numeric vector of IDs wanted
#    host = "oryx",               # change to IP address if remote host
#    port = 5432,
#    user = NULL,    # change to username and password to save time or if not using RStudio
#    password = NULL # if NULL, RStudio will create pop-up windows asking for username and password
#  )

# Create a list of entities formatted for the EML document
tables_pkg <- create_entity_all(meta_list =  metadata,
                                file_dir = getwd(),
                                dataset_id = pkgid)

# Create an EML schema list object
EML_pkg <-
  create_EML(
    meta_list = metadata,
    entity_list = tables_pkg,
    dataset_id = pkgid
  )

# Get the scope and revision number from the EML list object
emlpkgid <- EML_pkg$packageId
scope <- unlist(strsplit(emlpkgid, ".", fixed=TRUE))[1]
rev.db <- unlist(strsplit(emlpkgid, ".", fixed=TRUE))[3]

# Get the current revision number on EDI and increment by one,
rev.edi <- api_list_data_package_revisions(scope, pkgid,
                                           filter='newest',
                                           environment=edienv)
if (is.na(as.numeric(rev.edi))){
  print(paste("WARNING: new data package in environment",
              edienv, ", revision will equal 1."))
  rev.edi <- 0
}
rev.next <- as.numeric(rev.edi) + 1

# Create new packageID with rev.next and insert into EML list
emlpkgid.new <- paste0(scope, "." , pkgid, ".", rev.next)
EML_pkg$packageId <- emlpkgid.new

# validate and serialize (write) EML document
EML::eml_validate(EML_pkg)
EML::write_eml(EML_pkg, file = paste0(pkgid, ".xml"))

#*******************************************************************
# NOW UPDATE MANUALLY at portal.edirepository.org using the new EML
#                         *OR* 
# follow steps below if you have s3 credentials and aws.s3 installed
#*******************************************************************

# Get a vector of data entity filenames going to EDI with the package
entlist <- c()
if (length(EML_pkg$dataset$dataTable) > 0){
  for (i in 1:length(EML_pkg$dataset$dataTable)){
    entlist <- append(entlist,
                      EML_pkg$dataset$dataTable[[i]]$physical$objectName)
    }
}
# Also add otherentities
if (length(EML_pkg$dataset$otherEntity) > 0){
  for (i in 1:length(EML_pkg$dataset$otherEntity)){
    entlist <- append(entlist,
                      EML_pkg$dataset$otherEntity[[i]]$physical$objectName)
  }
}

# Pushing the data entities to the s3 bucket
for (fname in entlist) {
  print(paste("Pushing", fname, "to", bucketname,
              "s3 bucket..."))
  aws.s3::put_object(fname, fname, bucketname,
                     acl='public-read', verbose=TRUE,
                     show_progress=TRUE)
}


# Once the entities are in their web location, push the package update to 
# PASTA. NOTE that if this isn't working one might have to upload EML
# (but not data) at portal.edirepository.org
do.call(api_update_data_package,
        c(list(path = getwd(),       # current directory
               package.id = pkgid,   # package id
               environment = edienv),# EDI environment
          edicred))

# The above should be equivalent to:
#api_update_data_package(path=getwd(),package.id = pkgid, environment = edienv,
#                        affiliation='EDI', user.id='<user>',
#                        user.pass='<password>')
