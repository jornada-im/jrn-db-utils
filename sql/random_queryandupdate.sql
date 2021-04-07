-- Count reuse of Code values in DataSetAttributeEnumeration
SELECT "Code", count (*) 
FROM lter_metabase."DataSetAttributeEnumeration"
group by "Code"
order by "Code"


SELECT "Code", count(*), substring("Code" from 1 for 20) as "first20"
FROM lter_metabase."DataSetAttributeEnumeration"
--where "Code" not like substring("Code" from 1 for 20)
group by "Code", substring("Code" from 1 for 20) 
order by "Code"

/*select "Code", count(*), substring("Code" from 1 for 20) as "first20"
from lter_metabase."DataSetAttributeEnumeration" 
where "Code" not like substring("Code" from 1 for 20)
group by "Code", substring("Code" from 1 for 20)
order by "Code" */


update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = "Code"
where "CodeID" is null 

--Replace  CSV_D with CSV_B
update lter_metabase."DataSetEntities"
set "FileType" = replace("FileType",'csv_D','csv_B')
where "FileType" = 'csv_D'

--find repeated codes with small variations in the first 20 chars
-- could change to first 10, etc
select "Code", count(*), count(distinct "Definition") as "n_defs"
, max("Definition"), min("Definition")
,substr("Definition", 1, 20) as first20
from lter_metabase."DataSetAttributeEnumeration"
group by "Code", substr("Definition", 1, 20)
having count(distinct "Definition") > 1
order by count(distinct "Definition") desc, "Code"
;

--find, then replace values
select * from lter_metabase."DataSetAttributeEnumeration"
--update * from lter_metabase."DataSetAttributeEnumeration"
--set "Definition" = 'Mesquite Dune'
where "Definition" ilike 'Mesquite dune%'
and "Code" like 'M';
