# build_210000000_eml_jerald.R
# 
# BOILERPLATE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# This is a template build script using R to prepare eml and 
# send a dataset to EDI using the jerald R package. You need 
# credentials for this to work, and there is a template credentials
# file in jrn-metabase-utils repository.
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

# set working directory
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

options(scipen=999)   # turns off scientific notation

library('jerald')

# Package ID
pkgid <- 210000000
# EDI environment
env <- 'staging'
# s3 bucket name
bucketname <- 'jrn-pubfiles'
# Metabase, EDI, and s3 credential paths
mbcred_path <- '~/Desktop/jrn_metabase_cred.R'
edicred_path <- '/media/greg/jrn-DataProducts/LTER_IM/im-keys/'
s3cred_path <- '/media/greg/jrn-DataProducts/LTER_IM/im-keys/'

# get credentials for JRN metabase
# there is a template for this file in jrn-metabase-utils repository
load_metabase_cred(mbcred_path)

# Collect metadata into EML list from JRN metabase (using MetaEgress)
eml.pkgid <- eml_from_mb(pkgid, 'jrn_metabase_dev', mbcred)

# Update the revision numbers using EDI
eml.pkgid.new <- update_revnum_edi(eml.pkgid, edienv=env)

# validate and serialize (write) EML document
EML::eml_validate(eml.pkgid.new)
EML::write_eml(eml.pkgid.new, file = paste0(eml.pkgid.new$packageId, ".xml"))

# Collect the data entities from the eml list & push to s3 bucket
ents <- get_entities(eml.pkgid.new)
load_s3_cred(s3cred_path)
ents_to_s3(ents, bucketname)

# Update package on EDI
load_edi_cred(edicredpath)
update_edi_package(eml.pkgid.new$packageId, edicred, edienv=env)
