# Jornada package 210000000 (example)

* Package ID: 210000000

## Description

This is the Jornada-IM example dataset directory for use with JRN Metabase. Files and database entries for this example can be used as a template for new datasets and are commonly used to test data management workflows and code.

(When using this README file as a template replace any text with your own.)

## Metadata sources

(Describe the sources of the metadata in this package. What EML files were
on EDI and the website? What other JRN files were used? Who updates? Etc.)

Incoming metadata templates may be added to the `metadata_docs/` or 
`source_data/` directories, whichever is more convenient. Older metadata 
files used for reference, such as "dsd" and "prj" files from Jornada archives, should be kept in `metadata_docs/`. 

The abstract and methods text files referred to in JRN Metabase (`abstract.210000000.md` and `methods.210000000.md`) should be kept in the parent directory and can be updated there. With the exception of these two pieces of metadata, JRN Metabase is the primary store of metadata for Jornada datasets, and all changes should be made there.

## Data table sources

(Describe the source of the data entities in this package. Where did the 
CSVs or other files come from? Where do new data come from, if any? Etc.).

Incoming raw data, including submissions from researchers, can be kept in
the `source_data/` directory.

The raw data file in the example dataset (mtcars.csv) comes from R's built in mtcars dataset.

## Other entities

(Describe any other entities included in the data package (maps, procedures 
documents, non-tabular data files, etc.)

## Build scripts

The build scripts here prepare the data and metadata for publication using various R packages. The resulting EML and data entities may be published using the scripts, or manually using the [EDI portal](https://portal-s.edirepository.org).

* `build_210000000_dataset.R` - Basic build script that formats & QA/QCs data in `source_data/` and writes publishable data files to the working directory (`./`)
* `build_210000000_eml.R` - Creates an EML file and optionally uploads data
entities and pushes the package to EDI using APIs.
* `build_210000000_eml_jerald.R` - same as above, but uses the [`jerald`](https://github.com/jornada-im/jerald) R package.

## How to make EML and publish the dataset

For more information on updating and publishing this dataset, see the Jornada IM documentation site:

* [Metadata standards](https://jornada-im.github.io/documentation/jornada_metadata_standards.html)
* [Updating datasets in JRN Metabase](https://jornada-im.github.io/documentation/jrn_metabase_create_update_dataset.html)
* [Make EML and publish](https://jornada-im.github.io/documentation/makeEML_metabase_jerald.html
