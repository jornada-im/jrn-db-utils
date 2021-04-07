/* 
These are copy from calls used to add tables in ../copy_tables to 
jrn_metabase_dev

Basics: https://www.postgresqltutorial.com/import-csv-file-into-posgresql-table/
*/

-- Copy from the attributes table into database
\COPY lter_metabase."DataSetAttributes" ("DataSetID","EntitySortOrder","ColumnPosition","ColumnName","AttributeID","AttributeLabel","Description","StorageType","MeasurementScaleDomainID","DateTimeFormatString","DateTimePrecision","TextPatternDefinition","Unit","NumericPrecision","NumberType","BoundsMinimum","BoundsMaximum")
FROM '/home/greg/GitHub/lter_metabase_utils/copy_tables/metabase_tables-Attributes_20210221.csv'
WITH DELIMITER ',' NULL AS '' --set delimiter and read blank cells as NULL
CSV HEADER;

-- Copy from the attribute enumeration table into database
\COPY lter_metabase."DataSetAttributeEnumeration" ("DataSetID","EntitySortOrder","ColumnName","Code","Definition")
FROM '/home/greg/GitHub/lter_metabase_utils/copy_tables/metabase_tables-Catvars_20210221.csv'                                                                   WITH DELIMITER ',' NULL AS ''                                                   CSV HEADER;

-- Copy from the attribute missing codes table into database
\COPY lter_metabase."DataSetAttributeMissingCodes" ("DataSetID","EntitySortOrder","ColumnName","MissingValueCodeID")
FROM '/home/greg/GitHub/lter_metabase_utils/copy_tables/metabase_tables-AttributeMissingCodes_20210301.csv'
WITH DELIMITER ',' NULL AS ''
CSV HEADER;
