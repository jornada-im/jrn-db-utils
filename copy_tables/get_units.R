library(EML)
units <- EML::get_unitList()
unitdict <- units$units
unittypes <- units$unitTypes[!duplicated(unittypes[,'id']),]
# Add some missing unit types
unittypes <- rbind(unittypes, c('arealEnergyDensity','arealEnergyDensity','amount',NA))
unittypes <- rbind(unittypes, c('amountOfSubstanceAreaRate','amountOfSubstanceAreaRate','amount',NA))
unittypes <- rbind(unittypes, c('arealEnergyDensityRate','arealEnergyDensityRate','amount',NA))
#write out unitTypes
write.csv(unittypes, '~/GitHub/lter_metabase_utils/copy_tables/eml_unittypes_20210221.csv',
          row.names = F)

# Alter unitdict for lter metabase
unitdict['customunit'] <- 'false'
# Fill in missing unitType values
test <- (unitdict$id=="siemensPerMeter" | unitdict$id=="siemens" | unitdict$id=="siemensPerCentimeter")
unitdict[test,'unitType'] <- 'conductance'
test <- unitdict$parentSI=='molePerMole'
test[is.na(test)] <- FALSE
unitdict[test,'unitType'] <- 'dimensionless'
test <- (unitdict$parentSI=='molePerKilogram')
test[is.na(test)] <- FALSE
unitdict[test,'unitType'] <- 'amountOfSubstanceWeight'
test <- grepl('wattPerMeterSquared', unitdict$parentSI)
test[is.na(test)] <- FALSE
unitdict[test,'unitType'] <- 'arealEnergyDensity'
test <- (unitdict$parentSI=='molePerMeterSquaredPerSecond')
test[is.na(test)] <- FALSE
unitdict[test,'unitType'] <- 'amountOfSubstanceAreaRate'
u_out <- unitdict[, c('id','name','customunit','unitType','abbreviation','multiplierToSI',
                     'parentSI','constantToSI','description')]
write.csv(u_out, '~/GitHub/lter_metabase_utils/copy_tables/eml_unitdict_20210221.csv',
          row.names = F)
