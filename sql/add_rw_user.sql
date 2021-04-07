
GRANT USAGE ON SCHEMA lter_metabase TO read_write_user_jrndev;
--GRANT USAGE ON SCHEMA lter_metabase TO read_only_user;


--
-- Name: SCHEMA mb2eml_r; Type: ACL; Schema: -; Owner: %db_owner%
--

GRANT USAGE ON SCHEMA mb2eml_r TO read_write_user_jrndev;
--GRANT USAGE ON SCHEMA mb2eml_r TO read_only_user;


--
-- Name: SCHEMA pkg_mgmt; Type: ACL; Schema: -; Owner: %db_owner%
--

GRANT USAGE ON SCHEMA pkg_mgmt TO read_write_user_jrndev;
--GRANT USAGE ON SCHEMA pkg_mgmt TO read_only_user;


--
-- Name: TABLE "DataSet"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."DataSet" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."DataSet" TO read_only_user;


--
-- Name: TABLE "DataSetAttributeEnumeration"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."DataSetAttributeEnumeration" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."DataSetAttributeEnumeration" TO read_only_user;


--
-- Name: TABLE "DataSetAttributeMissingCodes"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

--GRANT SELECT ON TABLE lter_metabase."DataSetAttributeMissingCodes" TO read_only_user;


--
-- Name: TABLE "DataSetAttributes"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."DataSetAttributes" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."DataSetAttributes" TO read_only_user;


--
-- Name: TABLE "DataSetEntities"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."DataSetEntities" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."DataSetEntities" TO read_only_user;


--
-- Name: TABLE "DataSetKeywords"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."DataSetKeywords" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."DataSetKeywords" TO read_only_user;


--
-- Name: TABLE "DataSetMethod"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."DataSetMethod" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."DataSetMethod" TO read_only_user;


--
-- Name: TABLE "DataSetMethodInstruments"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."DataSetMethodInstruments" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."DataSetMethodInstruments" TO read_only_user;


--
-- Name: TABLE "DataSetMethodProtocols"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."DataSetMethodProtocols" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."DataSetMethodProtocols" TO read_only_user;


--
-- Name: TABLE "DataSetMethodProvenance"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT ON TABLE lter_metabase."DataSetMethodProvenance" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."DataSetMethodProvenance" TO read_only_user;


--
-- Name: TABLE "DataSetMethodSoftware"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."DataSetMethodSoftware" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."DataSetMethodSoftware" TO read_only_user;


--
-- Name: TABLE "DataSetPersonnel"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."DataSetPersonnel" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."DataSetPersonnel" TO read_only_user;


--
-- Name: TABLE "DataSetSites"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."DataSetSites" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."DataSetSites" TO read_only_user;


--
-- Name: TABLE "DataSetTaxa"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."DataSetTaxa" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."DataSetTaxa" TO read_only_user;


--
-- Name: TABLE "DataSetTemporal"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."DataSetTemporal" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."DataSetTemporal" TO read_only_user;


--
-- Name: TABLE "EMLFileTypes"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."EMLFileTypes" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."EMLFileTypes" TO read_only_user;


--
-- Name: TABLE "EMLKeywordTypes"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."EMLKeywordTypes" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."EMLKeywordTypes" TO read_only_user;


--
-- Name: TABLE "EMLMeasurementScaleDomains"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."EMLMeasurementScaleDomains" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."EMLMeasurementScaleDomains" TO read_only_user;


--
-- Name: TABLE "EMLMeasurementScales"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."EMLMeasurementScales" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."EMLMeasurementScales" TO read_only_user;


--
-- Name: TABLE "EMLNumberTypes"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."EMLNumberTypes" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."EMLNumberTypes" TO read_only_user;


--
-- Name: TABLE "EMLStorageTypes"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."EMLStorageTypes" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."EMLStorageTypes" TO read_only_user;


--
-- Name: TABLE "EMLUnitDictionary"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."EMLUnitDictionary" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."EMLUnitDictionary" TO read_only_user;


--
-- Name: TABLE "EMLUnitTypes"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."EMLUnitTypes" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."EMLUnitTypes" TO read_only_user;


--
-- Name: TABLE "ListCodes"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."ListCodes" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."ListCodes" TO read_only_user;


--
-- Name: TABLE "ListKeywordThesauri"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."ListKeywordThesauri" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."ListKeywordThesauri" TO read_only_user;


--
-- Name: TABLE "ListKeywords"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."ListKeywords" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."ListKeywords" TO read_only_user;


--
-- Name: TABLE "ListMethodInstruments"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."ListMethodInstruments" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."ListMethodInstruments" TO read_only_user;


--
-- Name: TABLE "ListMethodProtocols"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."ListMethodProtocols" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."ListMethodProtocols" TO read_only_user;


--
-- Name: TABLE "ListMethodSoftware"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."ListMethodSoftware" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."ListMethodSoftware" TO read_only_user;


--
-- Name: TABLE "ListPeople"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."ListPeople" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."ListPeople" TO read_only_user;


--
-- Name: TABLE "ListPeopleID"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."ListPeopleID" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."ListPeopleID" TO read_only_user;


--
-- Name: TABLE "ListSites"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."ListSites" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."ListSites" TO read_only_user;


--
-- Name: TABLE "ListTaxa"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."ListTaxa" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."ListTaxa" TO read_only_user;


--
-- Name: TABLE "ListTaxonomicProviders"; Type: ACL; Schema: lter_metabase; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE lter_metabase."ListTaxonomicProviders" TO read_write_user_jrndev;
--GRANT SELECT ON TABLE lter_metabase."ListTaxonomicProviders" TO read_only_user;


--
-- Name: TABLE boilerplate; Type: ACL; Schema: mb2eml_r; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE mb2eml_r.boilerplate TO read_write_user_jrndev;
--GRANT SELECT ON TABLE mb2eml_r.boilerplate TO read_only_user;


--
-- Name: TABLE vw_custom_units; Type: ACL; Schema: mb2eml_r; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE mb2eml_r.vw_custom_units TO read_write_user_jrndev;
--GRANT SELECT ON TABLE mb2eml_r.vw_custom_units TO read_only_user;


--
-- Name: TABLE vw_eml_associatedparty; Type: ACL; Schema: mb2eml_r; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE mb2eml_r.vw_eml_associatedparty TO read_write_user_jrndev;
--GRANT SELECT ON TABLE mb2eml_r.vw_eml_associatedparty TO read_only_user;


--
-- Name: TABLE vw_eml_attributecodedefinition; Type: ACL; Schema: mb2eml_r; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE mb2eml_r.vw_eml_attributecodedefinition TO read_write_user_jrndev;
--GRANT SELECT ON TABLE mb2eml_r.vw_eml_attributecodedefinition TO read_only_user;


--
-- Name: TABLE vw_eml_attributes; Type: ACL; Schema: mb2eml_r; Owner: %db_owner%
--

GRANT SELECT ON TABLE mb2eml_r.vw_eml_attributes TO read_write_user_jrndev;
--GRANT SELECT ON TABLE mb2eml_r.vw_eml_attributes TO read_only_user;


--
-- Name: TABLE vw_eml_boilerplate; Type: ACL; Schema: mb2eml_r; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE mb2eml_r.vw_eml_boilerplate TO read_write_user_jrndev;
--GRANT SELECT ON TABLE mb2eml_r.vw_eml_boilerplate TO read_only_user;


--
-- Name: TABLE vw_eml_bp_people; Type: ACL; Schema: mb2eml_r; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE mb2eml_r.vw_eml_bp_people TO read_write_user_jrndev;
--GRANT SELECT ON TABLE mb2eml_r.vw_eml_bp_people TO read_only_user;


--
-- Name: TABLE maintenance_changehistory; Type: ACL; Schema: pkg_mgmt; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE pkg_mgmt.maintenance_changehistory TO read_write_user_jrndev;
--GRANT SELECT ON TABLE pkg_mgmt.maintenance_changehistory TO read_only_user;


--
-- Name: TABLE vw_eml_changehistory; Type: ACL; Schema: mb2eml_r; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE mb2eml_r.vw_eml_changehistory TO read_write_user_jrndev;
--GRANT SELECT ON TABLE mb2eml_r.vw_eml_changehistory TO read_only_user;


--
-- Name: TABLE vw_eml_creator; Type: ACL; Schema: mb2eml_r; Owner: %db_owner%
--

--GRANT SELECT ON TABLE mb2eml_r.vw_eml_creator TO read_only_user;
GRANT SELECT,INSERT,UPDATE ON TABLE mb2eml_r.vw_eml_creator TO read_write_user_jrndev;


--
-- Name: TABLE vw_eml_dataset; Type: ACL; Schema: mb2eml_r; Owner: %db_owner%
--

GRANT SELECT ON TABLE mb2eml_r.vw_eml_dataset TO read_write_user_jrndev;
--GRANT SELECT ON TABLE mb2eml_r.vw_eml_dataset TO read_only_user;


--
-- Name: TABLE vw_eml_entities; Type: ACL; Schema: mb2eml_r; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE mb2eml_r.vw_eml_entities TO read_write_user_jrndev;
--GRANT SELECT ON TABLE mb2eml_r.vw_eml_entities TO read_only_user;


--
-- Name: TABLE vw_eml_geographiccoverage; Type: ACL; Schema: mb2eml_r; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE mb2eml_r.vw_eml_geographiccoverage TO read_write_user_jrndev;
--GRANT SELECT ON TABLE mb2eml_r.vw_eml_geographiccoverage TO read_only_user;


--
-- Name: TABLE vw_eml_instruments; Type: ACL; Schema: mb2eml_r; Owner: %db_owner%
--

GRANT SELECT ON TABLE mb2eml_r.vw_eml_instruments TO read_write_user_jrndev;
--GRANT SELECT ON TABLE mb2eml_r.vw_eml_instruments TO read_only_user;


--
-- Name: TABLE vw_eml_keyword; Type: ACL; Schema: mb2eml_r; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE mb2eml_r.vw_eml_keyword TO read_write_user_jrndev;
--GRANT SELECT ON TABLE mb2eml_r.vw_eml_keyword TO read_only_user;


--
-- Name: TABLE vw_eml_methodstep_description; Type: ACL; Schema: mb2eml_r; Owner: %db_owner%
--

GRANT SELECT ON TABLE mb2eml_r.vw_eml_methodstep_description TO read_write_user_jrndev;
--GRANT SELECT ON TABLE mb2eml_r.vw_eml_methodstep_description TO read_only_user;


--
-- Name: TABLE vw_eml_missingcodes; Type: ACL; Schema: mb2eml_r; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE mb2eml_r.vw_eml_missingcodes TO read_write_user_jrndev;
--GRANT SELECT ON TABLE mb2eml_r.vw_eml_missingcodes TO read_only_user;


--
-- Name: TABLE vw_eml_protocols; Type: ACL; Schema: mb2eml_r; Owner: %db_owner%
--

GRANT SELECT ON TABLE mb2eml_r.vw_eml_protocols TO read_write_user_jrndev;
--GRANT SELECT ON TABLE mb2eml_r.vw_eml_protocols TO read_only_user;


--
-- Name: TABLE vw_eml_provenance; Type: ACL; Schema: mb2eml_r; Owner: %db_owner%
--

GRANT SELECT ON TABLE mb2eml_r.vw_eml_provenance TO read_write_user_jrndev;
--GRANT SELECT ON TABLE mb2eml_r.vw_eml_provenance TO read_only_user;


--
-- Name: TABLE vw_eml_software; Type: ACL; Schema: mb2eml_r; Owner: %db_owner%
--

GRANT SELECT ON TABLE mb2eml_r.vw_eml_software TO read_write_user_jrndev;
--GRANT SELECT ON TABLE mb2eml_r.vw_eml_software TO read_only_user;


--
-- Name: TABLE vw_eml_taxonomy; Type: ACL; Schema: mb2eml_r; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE mb2eml_r.vw_eml_taxonomy TO read_write_user_jrndev;
--GRANT SELECT ON TABLE mb2eml_r.vw_eml_taxonomy TO read_only_user;


--
-- Name: TABLE vw_eml_temporalcoverage; Type: ACL; Schema: mb2eml_r; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE mb2eml_r.vw_eml_temporalcoverage TO read_write_user_jrndev;
--GRANT SELECT ON TABLE mb2eml_r.vw_eml_temporalcoverage TO read_only_user;


--
-- Name: TABLE cv_cra; Type: ACL; Schema: pkg_mgmt; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE pkg_mgmt.cv_cra TO read_write_user_jrndev;
--GRANT SELECT ON TABLE pkg_mgmt.cv_cra TO read_only_user;


--
-- Name: TABLE cv_maint_freq; Type: ACL; Schema: pkg_mgmt; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE pkg_mgmt.cv_maint_freq TO read_write_user_jrndev;
--GRANT SELECT ON TABLE pkg_mgmt.cv_maint_freq TO read_only_user;


--
-- Name: TABLE cv_mgmt_type; Type: ACL; Schema: pkg_mgmt; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE pkg_mgmt.cv_mgmt_type TO read_write_user_jrndev;
--GRANT SELECT ON TABLE pkg_mgmt.cv_mgmt_type TO read_only_user;


--
-- Name: TABLE cv_network_type; Type: ACL; Schema: pkg_mgmt; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE pkg_mgmt.cv_network_type TO read_write_user_jrndev;
--GRANT SELECT ON TABLE pkg_mgmt.cv_network_type TO read_only_user;


--
-- Name: TABLE cv_spatial_extent; Type: ACL; Schema: pkg_mgmt; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE pkg_mgmt.cv_spatial_extent TO read_write_user_jrndev;
--GRANT SELECT ON TABLE pkg_mgmt.cv_spatial_extent TO read_only_user;


--
-- Name: TABLE cv_spatial_type; Type: ACL; Schema: pkg_mgmt; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE pkg_mgmt.cv_spatial_type TO read_write_user_jrndev;
--GRANT SELECT ON TABLE pkg_mgmt.cv_spatial_type TO read_only_user;


--
-- Name: TABLE cv_spatio_temporal; Type: ACL; Schema: pkg_mgmt; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE pkg_mgmt.cv_spatio_temporal TO read_write_user_jrndev;
--GRANT SELECT ON TABLE pkg_mgmt.cv_spatio_temporal TO read_only_user;


--
-- Name: TABLE cv_status; Type: ACL; Schema: pkg_mgmt; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE pkg_mgmt.cv_status TO read_write_user_jrndev;
--GRANT SELECT ON TABLE pkg_mgmt.cv_status TO read_only_user;


--
-- Name: TABLE cv_temporal_type; Type: ACL; Schema: pkg_mgmt; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE pkg_mgmt.cv_temporal_type TO read_write_user_jrndev;
--GRANT SELECT ON TABLE pkg_mgmt.cv_temporal_type TO read_only_user;


--
-- Name: TABLE pkg_core_area; Type: ACL; Schema: pkg_mgmt; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE pkg_mgmt.pkg_core_area TO read_write_user_jrndev;
--GRANT SELECT ON TABLE pkg_mgmt.pkg_core_area TO read_only_user;


--
-- Name: TABLE pkg_sort; Type: ACL; Schema: pkg_mgmt; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE pkg_mgmt.pkg_sort TO read_write_user_jrndev;
--GRANT SELECT ON TABLE pkg_mgmt.pkg_sort TO read_only_user;


--
-- Name: TABLE pkg_state; Type: ACL; Schema: pkg_mgmt; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE pkg_mgmt.pkg_state TO read_write_user_jrndev;
--GRANT SELECT ON TABLE pkg_mgmt.pkg_state TO read_only_user;


--
-- Name: TABLE version_tracker_metabase; Type: ACL; Schema: pkg_mgmt; Owner: %db_owner%
--

GRANT SELECT ON TABLE pkg_mgmt.version_tracker_metabase TO read_write_user_jrndev;
--GRANT SELECT ON TABLE pkg_mgmt.version_tracker_metabase TO read_only_user;


--
-- Name: TABLE vw_backlog; Type: ACL; Schema: pkg_mgmt; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE pkg_mgmt.vw_backlog TO read_write_user_jrndev;
--GRANT SELECT ON TABLE pkg_mgmt.vw_backlog TO read_only_user;


--
-- Name: TABLE vw_cataloged; Type: ACL; Schema: pkg_mgmt; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE pkg_mgmt.vw_cataloged TO read_write_user_jrndev;
--GRANT SELECT ON TABLE pkg_mgmt.vw_cataloged TO read_only_user;


--
-- Name: TABLE vw_draft_anticipated; Type: ACL; Schema: pkg_mgmt; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE pkg_mgmt.vw_draft_anticipated TO read_write_user_jrndev;
--GRANT SELECT ON TABLE pkg_mgmt.vw_draft_anticipated TO read_only_user;


--
-- Name: TABLE vw_drafts_bak; Type: ACL; Schema: pkg_mgmt; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE pkg_mgmt.vw_drafts_bak TO read_write_user_jrndev;
--GRANT SELECT ON TABLE pkg_mgmt.vw_drafts_bak TO read_only_user;


--
-- Name: TABLE vw_im_plan; Type: ACL; Schema: pkg_mgmt; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE pkg_mgmt.vw_im_plan TO read_write_user_jrndev;
--GRANT SELECT ON TABLE pkg_mgmt.vw_im_plan TO read_only_user;


--
-- Name: TABLE vw_pub; Type: ACL; Schema: pkg_mgmt; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE pkg_mgmt.vw_pub TO read_write_user_jrndev;
--GRANT SELECT ON TABLE pkg_mgmt.vw_pub TO read_only_user;


--
-- Name: TABLE vw_self; Type: ACL; Schema: pkg_mgmt; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE pkg_mgmt.vw_self TO read_write_user_jrndev;
--GRANT SELECT ON TABLE pkg_mgmt.vw_self TO read_only_user;


--
-- Name: TABLE vw_temporal; Type: ACL; Schema: pkg_mgmt; Owner: %db_owner%
--

GRANT SELECT,INSERT,UPDATE ON TABLE pkg_mgmt.vw_temporal TO read_write_user_jrndev;
--GRANT SELECT ON TABLE pkg_mgmt.vw_temporal TO read_only_user;

