# README

Package ID = 210000000 (only the template data package is 210000000)
Title = Template data package for testing emlassemblyline (mtcars)
Last worked on by: IM team (datamanager.jrn.lter@gmail.com)

[ Template comments in brackets can be removed after reading ]

## Data sources:

[Describe the source of the data entities in this package (i.e., where did the 
CSVs come from? What new data is being added and from where? what data was on 
EDI/JRN network shares/the website...etc).]

[The data in the template package (mtcars.csv) comes from R's built in mtcars
 dataset.]

This data is read in and modified by the build scripts included here.

## Metadata sources:

[Describe the sources of the metadata in this package (i.e., what EML files 
were on EDI and the website? what other JRN files were needed to pull together 
the metadata?)]

Source metadata are used to populate the templates located in 
`./metadata_templates`

Metadata templates are created according to the requirements and examples 
specified in the directions for EMLassemblyline. See here:

<https://ediorg.github.io/EMLassemblyline/articles/overview.html>

for more info.

## Other entities

[Describe any other entities included in the data package (maps, procedures 
documents, etc.)]

## Build scripts

There are build scripts here that run EMLassemblyline (and related R packages)

They are:

* build_210000000.R - Basic build script that modifies data and writes EML 
* [There may be other "testing" scripts in the pkg210000000_template directory]


## Steps to create metadata (EML) file

**If updating and publishing new data (and metadata):**

  1. Download and open the latest dataset [for the template it doesn't matter, `mtcars` is built into R].
  2. Make any data file changes necessary with R in the `build_210000000.R` script [mtcars is modified in the template build script]
  3. Increment `package.id` version number in build_210000000.R (`make_eml()` call)
  4. Increment the `temporal.coverage` array in build_210000000.R (`make_eml()` call)
  5. Update metadata templates.
  6. Run the build_210000000.R script in R.
  7. Publish to EDI staging server.

**If you are updating the package metadata only:**

  1. Edit the metadata templates in `./metadata_templates`
  2. Increment `package.id` version number in build_210000000.R (`make_eml()` call)
  3. Run the build_210000000.R script in R (careful not to regenerate blank templates)
  4. Publish to EDI or EDI Staging ("Evaluate/Upload Data Packages" tool)
