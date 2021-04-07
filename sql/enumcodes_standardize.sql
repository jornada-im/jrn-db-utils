--Mesquite dune vegtype
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'vegtype_MesquiteDune', "Definition" = 'Mesquite dune vegetation type'
where "Definition" ilike 'Mesquite dune%'
and ("Code" ilike 'M' or "Code" ilike 'mesq%')
;

--Grassland vegtype
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'vegtype_Grassland', "Definition" = 'Grassland vegetation type'
where "Definition" ilike '%grassland%'
and ("Code" ilike 'G' or "Code" ilike 'grass%')
and ("DataSetID" < '210262000' or "DataSetID" > '210262010')-- exclude ecotone, see below
;


--Creosote vegtype
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'vegtype_Creosote', "Definition" = 'Creosote shrubland vegetation type'
where "Definition" ilike '%creosote%'
and ("Code" ilike 'C' or "Code" ilike 'creosote%')
;

--Playa vegtype
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'vegtype_Playa', "Definition" = 'Playa vegetation type (grassland)'
where "Definition" ilike '%playa%'
and ("Code" ilike 'P' or "Code" ilike 'playa')
;

--tarbush vegtype
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'vegtype_Tarbush', "Definition" = 'Tarbush vegetation type'
where "Definition" ilike '%tarbush%'
and ("Code" ilike 'T' or "Code" ilike 'tarbush')
;

--IBPE site
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'site_IBPE', "Definition" = 'IBP Exclosure site (grassland)'
where "Code" like '%IBPE'
or "Definition" ilike '%g-ibpe%'
and ("DataSetID" <> '210001001' and "DataSetID" <> '210001003')-- exclude when sitename in plot def
;

--BASN site
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'site_BASN', "Definition" = 'Basin site (grassland at lower trailer)'
where "Code" like '%BASN'
or "Definition" ilike '%g-basn%'
;

--SUMM site
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'site_SUMM', "Definition" = 'Mt. Summerford site (grassland)'
where "Code" like '%SUMM'
or "Definition" ilike '%g-summ%'
and ("DataSetID" <> '210001001' and "DataSetID" <> '210001003')-- exclude when sitename in plot def
;

--RABB site
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'site_RABB', "Definition" = 'Rabbit rain gauge site (mesquite)'
where "Code" ilike '%RABB'
or "Definition" ilike '%m-rabb%'
;

--WELL site
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'site_WELL', "Definition" = 'West well site (mesquite)'
where "Code" ilike '%WELL'
or "Definition" ilike '%m-well%'
;

--NORT site
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'site_NORT', "Definition" = 'North natural vegetation exclosure site (mesquite)'
where "Code" ilike '%NORT'
or "Definition" ilike '%m-nort%'
;

--COLL site
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'site_COLL', "Definition" = 'College Ranch site (playa)'
where "Code" ilike '%COLL'
or "Definition" ilike '%p-coll%'
;

--TOBO site
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'site_TOBO', "Definition" = 'Tobosa tank site (playa)'
where "Code" like '%TOBO'
or "Definition" ilike '%p-tobo%'
;

--SMAL site
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'site_SMAL', "Definition" = 'Small site (playa)'
where "Code" ilike 'SMAL'
or "Definition" ilike '%smal%'
and "Code" not like 'SMLM' -- this is different in rain gauge dataset
;

--EAST site
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'site_EAST', "Definition" = 'East of Jornada road tarbush site (tarbush)'
where "Code" like '%EAST'
or "Definition" ilike '%t-east%'
;

--TAYL site
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'site_TAYL', "Definition" = 'Taylor well site (tarbush)'
where "Code" like '%TAYL'
or "Definition" ilike '%t-tayl%'
;

--WEST site
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'site_WEST', "Definition" = 'West of Jornada road tarbush site (tarbush)'
where "Code" ilike '%WEST'
or "Definition" ilike '%t-west%'
;

--CALI site
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'site_CALI', "Definition" = 'Caliche site (creosote shrubland)'
where "Code" ilike '%CALI'
or "Definition" ilike '%c-cali%'
and ("DataSetID" <> '210001001' and "DataSetID" <> '210001003')-- exclude when sitename in plot def
;

--GRAV site
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'site_GRAV', "Definition" = 'Gravel site (creosote shrubland)'
where "Code" ilike '%GRAV'
or "Definition" ilike '%c-grav%'
;

--SAND site
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'site_SAND', "Definition" = 'Sand site (creosote shrubland; formerly UPTR - upper trailer)'
where "Code" ilike '%SAND'
or "Definition" ilike '%c-sand%'
;

--Control treatments
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'trt_control', "Definition" = 'Control'
where "Code" ilike 'C'
and ("Definition" ilike '%control%' and "Definition" not ilike '%transect%')
and ("DataSetID" <> '210308001' and "DataSetID" <> '210308002')-- exclude conmod
;

--Control LTER transects
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'lter_transect_C', "Definition" = 'Control - LTER transect'
where "Code" ilike 'C'
and "ColumnName" ilike '%transect%'
;

--Treatment LTER transects
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'lter_transect_T', "Definition" = 'Fert Treatment - LTER transect'
where "Code" ilike 'T'
and "ColumnName" ilike '%transect%'
;

--Alternate control LTER transects
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'lter_transect_X', "Definition" = 'Alternate Control - LTER transect'
where "Code" ilike 'X'
and "ColumnName" ilike '%transect%'
;

--Plot A
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'plot_A', "Definition" = 'Plot A'
where "Code" ilike 'A'
and "Definition" ilike '%plot%'
;

--Plot B
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'plot_B', "Definition" = 'Plot B'
where "Code" ilike 'B'
and "Definition" ilike '%plot%'
;

--Plot C
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'plot_C', "Definition" = 'Plot C'
where "Code" ilike 'C'
and ("Definition" ilike '%plot%' and "Definition" not ilike '%control%')
;

--Plot D
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'plot_D', "Definition" = 'Plot D'
where "Code" ilike 'D'
and "Definition" ilike '%plot%'
;

--Plot E
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'plot_E', "Definition" = 'Plot E'
where "Code" ilike 'E'
and "Definition" ilike '%plot%'
;

--Rep 1
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'rep_1', "Definition" = 'Replicate 1'
where "Code" ilike '1'
and "Definition" ilike '%repl%'
;

--Rep 2
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'rep_2', "Definition" = 'Replicate 2'
where "Code" ilike '2'
and "Definition" ilike '%rep%'
;

--Rep 3
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'rep_3', "Definition" = 'Replicate 3'
where "Code" ilike '3'
and "Definition" ilike '%rep%'
;

--Rep 4
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'rep_4', "Definition" = 'Replicate 4'
where "Code" ilike '4'
and "Definition" ilike '%rep%'
;

--Rep 5
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'rep_5', "Definition" = 'Replicate 5'
where "Code" ilike '5'
and "Definition" ilike '%rep%'
;

--Rep C
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'rep_C', "Definition" = 'Composite replicate'
where "Code" ilike 'C'
and "Definition" ilike '%rep%'
;

--Annual
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'habit_annual', "Definition" = 'Annual'
where ("Code" ilike 'A' or "Code" ilike 'Annual')
and "Definition" ilike '%annual%'
;

--Perennial
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'habit_perennial', "Definition" = 'Perennial'
where ("Code" ilike 'P' or "Code" ilike 'Perennial')
and "Definition" ilike '%peren%'
;

--Biennial
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'habit_biennial', "Definition" = 'Biennial'
where "Code" ilike 'B'
and "Definition" ilike '%bi%'
;

--Annual or per
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'habit_ann_per', "Definition" = 'Annual or perennial'
where "Code" ilike 'AP'
and "Definition" ilike '%per%'
;

--Bi or per
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'habit_bi_per', "Definition" = 'Biennial or perennial'
where "Code" ilike 'BP'
and "Definition" ilike '%per%'
;

--spring
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'season_spring', "Definition" = 'Spring'
where ("Code" ilike 'S' or "Code" ilike '%spring%')
and "Definition" ilike '%spring%'
;

--summer
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'season_summer', "Definition" = 'Summer'
where ("Code" ilike 'S' or "Code" ilike '%summer%')
and "Definition" ilike '%summer%'
;

--fall
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'season_fall', "Definition" = 'Fall'
where ("Code" ilike 'F' or "Code" ilike '%fall%')
and "Definition" ilike '%fall%'
;

--winter
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'season_winter', "Definition" = 'Winter'
where ("Code" ilike 'W' or "Code" ilike '%winter%')
and "Definition" ilike '%winter%'
;

--check hist yes
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'checkhist_yes', "Definition" = 'Measurement problem or comment recorded in history file'
where "Code" ilike '1'
and ("Definition" ilike '%problem%' or "Definition" ilike '%hist%')
and ("DataSetID" <> '210379001' and "DataSetID" <> '210379002') --NOAA datasets seem more specific
;

--check hist no
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'checkhist_no', "Definition" = 'No measurement problem or comment recorded'
where "Code" ilike '0'
and ("Definition" ilike '%problem%' or "Definition" ilike '%hist%')
and ("DataSetID" <> '210379001' and "DataSetID" <> '210379002') --NOAA datasets seem more specific
;

--form stem-succ
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'form_stemsucc', "Definition" = 'Stem succulent form'
where "Code" ilike 'ST-SU'
and "ColumnName" ilike '%form%'
;

--form leaf-succ
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'form_leafsucc', "Definition" = 'Leaf succulent form'
where "Code" ilike 'LF-SU'
and "ColumnName" ilike '%form%'
;

--form grass
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'form_gram', "Definition" = 'Grass or graminoid form'
where "Code" ilike '%GRA%'
and "ColumnName" ilike '%form%'
;

--form shrub
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'form_shrub', "Definition" = 'Shrub form'
where "Code" ilike 'shrub%'
and "ColumnName" ilike '%form%'
;

--form sub-shrub
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'form_subshrub', "Definition" = 'Sub-shrub form'
where ("Code" ilike 's-shr' or "Code" ilike '%subsh%')
and "ColumnName" ilike '%form%'
;

--form vine
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'form_vine', "Definition" = 'Vine form'
where "Code" ilike 'vine'
and "ColumnName" ilike '%form%'
;

--form forb
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'form_forb', "Definition" = 'Forb or broad-leaved herb form'
where "Definition" ilike '%forb%'
and "ColumnName" ilike '%form%'
;

--form unknown
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'form_unknown', "Definition" = 'Unknown form'
where "Definition" ilike '%unk%'
and "ColumnName" ilike '%form%'
;

--ps pathway c3
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'cpath_c3', "Definition" = 'C3 photosynthetic pathway'
where "Code" ilike '%c3%'
and "ColumnName" ilike '%path%'
;

--ps pathway c4
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'cpath_c4', "Definition" = 'C4 photosynthetic pathway'
where "Code" ilike '%c4%'
and "ColumnName" ilike '%path%'
;

--ps pathway CAM
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'cpath_cam', "Definition" = 'CAM photosynthetic pathway'
where "Definition" ilike '%CAM%'
and "ColumnName" ilike '%path%'
;

--phenology vegetative
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'phen_vegetative', "Definition" = 'Vegetative'
where "Definition" ilike '%veg%'
and "ColumnName" ilike '%phen%'
;

--phenology reproductive
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'phen_flower', "Definition" = 'Flowering or reproductive state'
where "Definition" ilike '%flow%'
and "ColumnName" ilike '%phen%'
;

--phenology dead
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'phen_dead', "Definition" = 'Dead'
where "Definition" ilike '%dead%'
and "ColumnName" ilike '%phen%'
;

--Gravelly ridges site
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'site_gravelly', "Definition" = 'Gravelly ridges site'
where "Code" ilike '%G%'
and "Definition" ilike '%gravelly%'
and "DataSetID" <> '210392001' --Excluding because it says exclosure, which may be different
;

--Aeolian site
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'site_aeolian', "Definition" = 'Aeolian site'
where "Code" ilike '%A%'
and "Definition" ilike '%aeolian%'
;

--Dona Ana site
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'site_donaana', "Definition" = 'Dona Ana site'
where "Code" ilike '%D%'
and "Definition" ilike '%Dona%'
and "DataSetID" <> '210392001' --Excluding because it says exclosure, which may be different
;

--Soildist codes study 086 - set to concatenate columns
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj086_' || "ColumnName" || '_' || "Code"
where "ColumnName" ilike '%soildist%'
;

--loc codes study013 - set to concatenate columns
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj013_loc_' || "Code"
where "ColumnName" ilike '%location%'
;

--Block codes
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'block_' || "Code"
where "ColumnName" ilike '%block%'
and "Definition" not ilike '%exclosure%'
;

--SMES treatment codes
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj086_trt_' || "Code"
where ("DataSetID" > '210086000' and "DataSetID" < '210086020')
and "ColumnName" ilike 'tr%'
;

--SMES rabbit surv codes
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj086_susp_' || "Code"
where ("DataSetID" > '210086000' and "DataSetID" < '210086020')
and "ColumnName" ilike 'spe%'
;

--SMES sm mammal codes
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'spcode_' || "Code"
where ("DataSetID" > '210086000' and "DataSetID" < '210086020')
and "ColumnName" ilike 'spp%'
;

--SMES survey, route, recap, repro and other codes
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj086_' || substr("ColumnName",0,4) || '_' || "Code"
where ("DataSetID" > '210086000' and "DataSetID" < '210086020')
and ("ColumnName" ilike 're%' or "ColumnName" ilike 'dir%' or "ColumnName" ilike 'ro%'
or "ColumnName" ilike 'sex%' or "ColumnName" ilike 'mar%' or "ColumnName" ilike 'ag%'
or "ColumnName" ilike 'inc%' or "ColumnName" ilike 'dea%')
;

--prj 120 custom codes
--select *, 'prj120_' || substr("ColumnName",0,6) || '_' || "Code" as "CodeID2" 
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj120_' || substr("ColumnName",0,6) || '_' || "Code"
where ("DataSetID" > '210120000' and "DataSetID" < '210120020')
and ("ColumnName" ilike 'tr%' or "ColumnName" ilike 'fe%')
;
--prj 121 custom codes
--select *, 'prj121_' || 'qflag_' || "Code" as "CodeID2" 
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj121_' || 'qflag_' || "Code"
where ("DataSetID" > '210121000' and "DataSetID" < '210121020')
and "ColumnName" ilike 'qfl%'
;

--prj 127 custom codes
--select *, 'prj127_' || 'qflag_' || "Code" as "CodeID2" 
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj127_' || 'qflag_' || "Code"
where ("DataSetID" > '210127000' and "DataSetID" < '210127020')
and "ColumnName" ilike 'qfl%'
;

--prj 128 custom codes
--select *, 'prj128_' || 'qflag_' || "Code" as "CodeID2" 
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj128_' || 'qflag_' || "Code"
where ("DataSetID" > '210128000' and "DataSetID" < '210128020')
and "ColumnName" ilike '%qfl%'
;

--prj228 - multiple codes
--select * , 'prj228_' || substr("ColumnName",0,5) || '_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj228_' || substr("ColumnName",0,5) || '_' || "Code"
where ("DataSetID" > '210228000' and "DataSetID" < '210228020')
and ("ColumnName" ilike 'tr%' or "ColumnName" ilike 'sta%' or "ColumnName" ilike 'win%'
or "ColumnName" ilike 'coll%')
;

--BSNE codes- multiple
--select * , 'BSNE_qwt_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'BSNE_qwt_' || "Code"
where  "ColumnName" ilike 'qwt'
;

--Grassland vegtype for ecotone
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'ecotone_Grassland', "Definition" = 'Grassland habitat portion of site'
where "Definition" ilike '%grassland%'
and "Code" like 'G'
and ("DataSetID" > '210262000' and "DataSetID" < '210262012')-- ecotone
;

--Shrub vegtype for ecotone
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'ecotone_Shrubland', "Definition" = 'Shrubland habitat portion of site'
where "Definition" ilike '%shrub%'
and "Code" like 'S'
and ("DataSetID" > '210262000' and "DataSetID" < '210262012')
;

--Ecotone vegtype for ecotone
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'ecotone_Ecotone', "Definition" = 'Ecotone habitat portion of site'
where "Definition" ilike '%eco%'
and "Code" like 'E'
and ("DataSetID" > '210262000' and "DataSetID" < '210262012')
;

--Sala Global Change precip shelters
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'gcPPT_trt_' || "Code"
where ("Code" like '0.2' or "Code" like '0.5' or "Code" like '1' or "Code" like '1.5' or "Code" like '1.8')
and ("DataSetID" = '210278001' or "DataSetID" = '210278002'
or "DataSetID" = '210328001' or "DataSetID" = '210409001'or "DataSetID" = '210409002'
or "DataSetID" = '210328002' or "DataSetID" = '210409003')
--and ("ColumnName" ilike '%water%' or "ColumnName" ilike '%ppt%')
;

--Sala Global Change other
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj278_' || substr("ColumnName",0,6) || '_' || "Code"
where ("DataSetID" = '210278001' or "DataSetID" = '210278002')
and ("ColumnName" ilike '%N_trt%' or "ColumnName" ilike '%pr_de%')
;

--live
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'status_alive', "Definition" = 'Organism(s) alive at time of observation'
where "Definition" ilike '%live%'
and "Code" ilike '%L%'
;

--dead
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'status_dead', "Definition" = 'Organism(s) dead at time of observation'
where "Definition" ilike '%dead%'
and "ColumnName" ilike 'live_dead'
and "Code" ilike '%D%'
;

--prj287 - flags
--select * , 'prj287_qflag_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj287_qflag_' || "Code"
where "DataSetID" = '210287001'
and "ColumnName" ilike 'QF_%'
;

--prj287 - transect methods
--select * , 'methd_' || substr(replace("Definition", ' ','_'), 0, 8)
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'methd_' || substr(replace("Definition", ' ','_'), 0, 8)
where "DataSetID" = '210287001'
and "ColumnName" ilike 'method'
;

--rain gauges
--select * , 'instrument_' || lower("Code")
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'instmt_' || lower("Code")
where ("Code" ilike '%rg' or "Code" ilike '%rain%' or "Code" ilike '%Auto%'
or "Code" ilike '%standard%' or "Code" ilike '%weigh%') 
;

--More sites
--select * , 'site_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'site_' || "Code"
where ("Code" ilike '%Geomet%' or "Code" ilike '%Burn%' or "Code" ilike '%ranch%' 
or "Code" ilike '%Scrape%' or "Code" ilike '%Parker%' or "Code" ilike '%beetle%'
or "Code" ilike '%term%' or "Code" ilike '%biod%' or "Code" ilike '%TRAN%'
or "Code" ilike '%LTWS%')
and ("ColumnName" ilike 'site' or "ColumnName" ilike 'name' or "ColumnName" ilike 'sample')
;

--Common sp codes
--select * , 'spcode_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'spcode_' || "Code"
where ("Code" ilike '%BOER%' or "Code" ilike '%PRGL%' or "Code" ilike '%FLCE%'
or "Code" ilike '%MUPO%' or "Code" ilike '%SPCO%'or "Code" ilike '%LATR%'
or "Code" ilike '%DAPU%' or "Code" ilike '%PAIN%' or "Code" ilike '%BAAB%')
and "ColumnName" ilike 'sp%'
;

--Control conmod treatments (no conmods)
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'conmod_control', "Definition" = 'Control plot - conmods absent'
where "Code" ilike 'C'
and "Definition" ilike '%control%'
and ("DataSetID" > '210308000' and "DataSetID" < '210308010')-- exclude when sitename in plot def
;

--Conmod treatments (Conmods)
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'conmod_trt', "Definition" = 'Treatment plot - central treatment plots have conmods present; treatment buffer plots do not'
where "Code" ilike '%T%'
and "Definition" ilike '%treat%'
and ("DataSetID" > '210308000' and "DataSetID" < '210308010')-- exclude when sitename in plot def
;

--prj308 line
--select * , 'prj308_ln_' || substr(replace("Code", ' ',''), 0, 9) as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj308_ln_' || substr(replace("Code", ' ',''), 0, 9)
where ("DataSetID" > '210308000' and "DataSetID" < '210308009')
and "ColumnName" ilike '%line%'
;

--prj308 wpos
--select * , 'prj308_wpos_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj308_wpos_' || "Code"
where ("DataSetID" > '210308000' and "DataSetID" < '210308009')
and "ColumnName" ilike '%pos%'
;

--prj308 other
--select * , 'prj308_' || substr("ColumnName", 0, 5) || '_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj308_' || substr("ColumnName", 0, 5) || '_' || "Code"
where ("DataSetID" > '210308000' and "DataSetID" < '210308009')
and ("ColumnName" ilike 'samp%' or "ColumnName" ilike 'grow%')
;

--prj351 quadrats
--select * , 'jerQ_status_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'jerQ_status_' || "Code"
where ("DataSetID" > '210351000' and "DataSetID" < '210351009')
and "ColumnName" ilike '%status%'
;

--prj379 precip
--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj379_pc_1', "Definition" = 'Discrepancy between JER and NOAA data sources. Precip value recorded is considered correct. See History Log for more information.'
where "Code" ilike '1'
--and ("Definition" ilike '%problem%' or "Definition" ilike '%hist%')
and ("DataSetID" > '210379000' and "DataSetID" < '210379009')
;

--select * from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj379_pc_0', "Definition" = 'No problem with precipitation measurement.'
where "Code" ilike '0'
--and ("Definition" ilike '%problem%' or "Definition" ilike '%hist%')
and ("DataSetID" > '210379000' and "DataSetID" < '210379009')
;

--prj379 comment
--select * , 'prj379_comm_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj379_comm_' || "Code"
where ("DataSetID" > '210379000' and "DataSetID" < '210379009')
and "ColumnName" like 'prec_comment'
;

-- prj392 misc spcodes
--select * , 'prj392_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj392_' || "Code"
where ("DataSetID" > '210392000' and "DataSetID" < '210392009')
and "Code" like '%.%'
;

-- prj392 treatments
--select * , 'prj392_' || substr("ColumnName",0,7) || '_trt_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj392_' || substr("ColumnName",0,7) || '_trt_' || "Code"
where ("DataSetID" > '210392000' and "DataSetID" < '210392009')
and "ColumnName" like '%trt%'
;

-- prj407 qflags
--select * , 'prj407_qflag_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj407_qflag_' || "Code"
where ("DataSetID" > '210407000' and "DataSetID" < '210407009')
and "ColumnName" like 'q_flag'
;

-- prj425 netaffil
--select * , 'netaffil_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'netaffil_' || "Code"
where ("DataSetID" > '210425000' and "DataSetID" < '210425009')
and "ColumnName" like 'affil%'
;

-- prj461 layer
--select * , 'prj461_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj461_' || "Code"
where ("DataSetID" > '210461000' and "DataSetID" < '210461009')
and "ColumnName" like 'layer'
;

-- prj015 qflag
--select * , 'prj015_qflag_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj015_qflag_' || "Code"
where ("DataSetID" > '210015000' and "DataSetID" < '210015009')
and "ColumnName" like 'q_flag'
;

-- prj385 trt
--select * , 'prj385_trt_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj385_trt_' || "Code"
where ("DataSetID" > '210385000' and "DataSetID" < '210385015')
and "ColumnName" like 'T%'
;

-- prj385 inc
--select * , 'prj385_inc_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj385_inc_' || "Code"
where ("DataSetID" > '210385000' and "DataSetID" < '210385015')
and "ColumnName" like 'IN%'
;

-- prj385 id
--select * , 'prj385_id_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj385_id_' || "Code"
where ("DataSetID" > '210385000' and "DataSetID" < '210385015')
and "ColumnName" like 'ID%'
;

-- prj385 sample date
--select * , 'prj385_sd_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj385_sd_' || "Code"
where ("DataSetID" > '210385000' and "DataSetID" < '210385015')
and "ColumnName" like 'DA%'
;

-- prj386 trt
--select * , 'prj386_trt_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj386_trt_' || "Code"
where ("DataSetID" > '210386000' and "DataSetID" < '210386015')
and "ColumnName" like 'T%'
;

-- prj386 site
--select * , 'prj386_site_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj386_site_' || "Code"
where ("DataSetID" > '210386000' and "DataSetID" < '210386015')
and "ColumnName" like 'SITE%'
;

-- prj386 sample
--select * , 'prj386_' || lower(substr("ColumnName",0,5))  || '_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj386_' || lower(substr("ColumnName",0,5))  || '_' || "Code"
where ("DataSetID" > '210386000' and "DataSetID" < '210386015')
and ("ColumnName" like 'DIR%' or "ColumnName" like 'DEP%' or "ColumnName" like 'SAMP%')
;

-- prj394 locs
--select * , 'prj394_' || lower(substr("ColumnName",0,5))  || '_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj394_' || lower(substr("ColumnName",0,5))  || '_' || "Code"
where ("DataSetID" > '210394000' and "DataSetID" < '210394015')
and ("ColumnName" like 'SITE%' or "ColumnName" like 'DIST%')
;

-- prj395 locs
--select * , 'prj395_site_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj395_site_' || "Code"
where ("DataSetID" > '210395000' and "DataSetID" < '210395015')
and "ColumnName" like 'SITEID1%'
;

-- prj395 netaffil
--select * , 'netaffil_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'netaffil_' || "Code"
where ("DataSetID" > '210395000' and "DataSetID" < '210395015')
and "ColumnName" like 'SITEID2%'
;

-- prj420 depth
--select * , 'prj420_depth_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj420_depth_' || "Code"
where ("DataSetID" > '210420000' and "DataSetID" < '210420015')
and "ColumnName" like 'dep%'
;

-- prj493 crust
--select * , 'prj493_' || substr("ColumnName", 1,5) || '_' || substr("Code",1,7) as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj493_' || substr("ColumnName", 1,5) || '_' || substr("Code",1,7)
where ("DataSetID" > '210493000' and "DataSetID" < '210493015')
and ("ColumnName" like 'crust%' or "ColumnName" like 'lime%'
or "ColumnName" like 'taxa%')
;

-- prj007 misc
--select * , 'prj007_' || substr("ColumnName", 1,5) || '_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj007_' || substr("ColumnName", 1,5) || '_' || "Code"
where ("DataSetID" > '210007000' and "DataSetID" < '210007015')
and ("ColumnName" like 'sex%' or "ColumnName" like 'rcap%'
or "ColumnName" like 'tail%')
;

-- prj002 misc
--select * , 'prj002_' || substr("ColumnName", 1,5) || '_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj002_' || substr("ColumnName", 1,5) || '_' || "Code"
where ("DataSetID" > '210002000' and "DataSetID" < '210002015')
and ("ColumnName" like 'f' or "ColumnName" like 'gu%')
;

-- prj012 transectid
--select * , 'prj012_tid_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'prj012_tid_' || "Code"
where ("DataSetID" > '210012000' and "DataSetID" < '210012015')
and  "ColumnName" like 'tran%'
;

-- prj002 netaffil
--select * , 'netaffil_' || "Code" as "CodeID2"
--from lter_metabase."DataSetAttributeEnumeration"
update lter_metabase."DataSetAttributeEnumeration"
set "CodeID" = 'netaffil_' || "Code"
where ("DataSetID" > '210002000' and "DataSetID" < '210002015')
and "ColumnName" like 'own%'
;
