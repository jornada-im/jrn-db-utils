# build_210000000_dataset.R
# 
# BOILERPLATE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# This is a template build script using R to prepare a dataset
# for EDI. You can safely remove this and other boilerplate
# and use the rest to design a new R script for your data.
# <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
#
# !!!!!!!!!
# When running this script on the shared drive it may be necessary to set the 
# path based on how you map the drive. i.e.:
#
# setwd('/Volumes/JornadaFiles/LTER_IM/JRN_EMLassemblyline/pkg210.../')
# setwd('Z:\\DataProducts\LTER_IM....
#
# In rstudio this sets the working directory to the dir the script is in:
# setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
#
# !!!!!!!!!

# Set the working directory (a local or network share path):
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

library(tidyverse)

# Path to incoming source data files
dsource <- "./source_data/"

# Output data file name
f_out <- "JRN000000_mtcars.csv"

# Load data. Here we're using mtcars as an example, in reality something like:
# df_in <- read_csv(paste0(dsource, "npp_values_20200915.csv"), 
#		  skip = 12, na = c('nan', '.', '-9999'))


# Load mtcars, create a new column with the rownames, remove some columns,
# and export a simplified dataframe as csv (without rownames)
df_in <- mtcars 
df_in$type <- row.names(df_in)

df.export <- df_in %>%
  dplyr::select(type, mpg, wt, cyl, gear)

# In more complex cases with a csv you may want to assign data type
#df_in <- read_csv('Tromble_Weir_Precip_data_EDI.csv',
#                  col_types = cols(Year = col_character(),
#                                   Month = col_character(),
#                                   Day = col_character(),
#                                   Hour = col_character(),
#                                   Minute = col_character(),
#                                   Second = col_character()))

# Mutating columns is good sometimes also
#df.export <- df_in %>%
#  mutate(date = as.Date(paste(Year,Month,Day,Hour,Minute,Second, sep='-'),
#                        format="%Y-%m-%d-%H-%M-%S")) %>%
#  select(date, R_tower, R2, R3, R4)

# Check for NAs and unique values of catvars
sapply(df.export, function(x) sum(is.na(x)))
unique(df.export$type)

# Export df.export as a csv to current directory
options(scipen=999)   # turns of scientific notation
write.csv(df.export, f_out, quote=F, row.names=F)


