# build_210000000_eml.R
# 
# BOILERPLATE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# This is a template build script using R to prepare eml and 
# send a dataset to EDI. MetaEgress pulls metadata for the dataset
# from an lter-metabase. You need credentials for this to work.
# You can safely remove this and other boilerplate and use
# the rest to design a new R script for your dataset.
# <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

# All metadata documents (abstract, methods) and any data entity
# files (CSVs, images, zipfiles etc.) must be in the directory with 
# this script. The data entities, abstract, and methods files
# should be named to match the values in the lter-metabase 
# (DataSetEntities.FileName, DataSet.Abstract and 
# DataSetMethod.Description).

library('MetaEgress')
library('EDIutils')

# EDI scope
scope <- 'knb-lter-jrn'
# Package ID
pkg <- 210000000
# EDI environment destination (production or staging)
edienv <- 'staging'
# List of data entity filenames going to EDI
entitylist <- c('JRN000000_mtcars.csv')

# set working directory
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# get credentials for JRN metabase and EDI
# there is a template for this file in jrn-metabase-utils repository
source('~/Desktop/jrn_cred.R')

# connect to metabase and get metadata from specified datasets
# can specify multiple dataset IDs if you plan to reuse this list
metadata <-
	do.call(get_meta,
		c(list(dbname = "jrn_metabase_dev", # change to your DB name
		       dataset_ids = c(pkg)), # can be a vector of datasets
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

# Get current revision number in metabase
revnum_start <- metadata$dataset$revision_number

# If going to staging get the current revision number on staging
# and increment by one, update in metadata list
if (edienv=='staging'){
  revnum_start <- api_list_data_package_revisions(scope, pkg, filter='newest',
                                                  environment = edienv)
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
# PASTA. NOTE that this wasn't working last I checked.... might have to upload
# EML (but not data) at portal.edirepository.org
do.call(api_update_data_package,
        c(list(path = getwd(),       # current directory
               package.id = pkgid,   # package id
               environment = edienv),# EDI environment
          edicred))

# The above should be equivalent to:
#api_update_data_package(path=getwd(),package.id = pkgid, environment = edienv,
#                        affiliation='EDI', user.id='<user>',
#                        user.pass='<password>')