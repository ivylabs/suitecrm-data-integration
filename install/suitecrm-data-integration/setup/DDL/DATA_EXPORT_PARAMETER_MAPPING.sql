DROP TABLE IF EXISTS `DATA_EXPORT_PARAMETER_MAPPING`;
CREATE TABLE DATA_EXPORT_PARAMETER_MAPPING
(
  DATA_EXPORT VARCHAR(256)
, PARAMETER VARCHAR(256)
, PARAMETER_LABEL VARCHAR(256)
, TRANSFORMATION VARCHAR(256)
, DEFAULT_VALUE VARCHAR(256)
)
;CREATE INDEX IDX_DATA_EXPORT_PARAMETER_MAPPING_LKP ON DATA_EXPORT_PARAMETER_MAPPING(DATA_EXPORT, PARAMETER)
;

INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Case Data Export','pCaseClosedDateFilter','Select Case Closed Period','getCasesData','9999-99');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Case Data Export','pCaseCreatedDateFilter','Select Case Created Period','getCasesData','9999-99');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Case Data Export','pCasePriorityFilter','Select Case Priority','getCasesData','All Case Priorities');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Case Data Export','pCaseStateFilter','Select Case State','getCasesData','All Case States');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Case Data Export','pCaseStatusFilter','Select Case Status','getCasesData','All Case Status');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Case Data Export','pCaseTypeFilter','Select Case Type','getCasesData','All Case Types');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Lead Data Report','pLeadSourceFilter','Select Lead Source','getLeadsData','All Lead Sources');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Lead Data Report','pLeadStatusFilter','Select Lead Status','getLeadsData','All Lead Status');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Lead Data Report','pLeadConvertedFilter','Select Lead Converted','getLeadsData','All Lead Converted States');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Lead Data Report','pLeadCreatedDateFilter','Select Lead Created Period','getLeadsData','9999-99');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Lead Data Report','pCampaignFilter','Select Campaign','getLeadsData','All Campaigns');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Lead Data Report','pCampaignStatusFilter','Select Campaign Status','getLeadsData','All Campaign Status');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Lead Data Report','pCampaignTypeFilter','Select Campaign Type','getLeadsData','All Campaign Types');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Lead Data Report','pUserFullNameFilter','Select Assigned Agent','getLeadsData','All Assigned Agents');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Sale Data Export','pProductTypeFilter','Select Product Type','getSalesData','All Product Types');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Sale Data Export','pProductCategoryFilter','Select Product Category','getSalesData','All Product Categories');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Sale Data Export','pInvoiceStatusFilter','Select Invoice Status','getSalesData','All Invoice Status');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Sale Data Export','pAccountTypeFilter','Select Account Type','getSalesData','All Account Types');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Sale Data Export','pAccountIndustryFilter','Select Account Industry','getSalesData','All Account Industries');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Sale Data Export','pUserFullNameFilter','Select Assigned Agent','getSalesData','All Assigned Agents');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Sale Data Export','pSalePaidDateFilter','Select Sale Paid Period','getSalesData','9999-99');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Activity Data Export','pActivityDateFilter','Select Activity Period','getActivityData','9999-99');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Activity Data Export','pActivityTypeFilter','Select Activity Type','getActivityData','All Activity Types');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Activity Data Export','pActivityParentTypeFilter','Select Activity Module','getActivityData','All Activity Modules');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Activity Data Export','pUserFullNameFilter','Select Assigned Agent','getActivityData','All Assigned Agents');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Opportunity Data Export','pOpportunityCreatedDateFilter','Select Opportunity Created Period','getOpportunityData','9999-99');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Opportunity Data Export','pCampaignFilter','Select Campaign','getOpportunityData','All Campaigns');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Opportunity Data Export','pCampaignStatusFilter','Select Campaign Status','getOpportunityData','All Campaign Status');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Opportunity Data Export','pCampaignTypeFilter','Select Campaign Type','getOpportunityData','All Campaign Types');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Opportunity Data Export','pOpportunityFilter','Select Opportunity Type','getOpportunityData','All Opportunity Types');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Opportunity Data Export','pOpportunityLeadSourceFilter','Select Opportunity Lead Source','getOpportunityData','All Opportunity Lead Sources');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Opportunity Data Export','pOpportunitySalesStageFilter','Select Opportunity Sales Stage','getOpportunityData','All Opportunity Sales Stages');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Opportunity Data Export','pUserFullNameFilter','Select Assigned Agent','getOpportunityData','All Assigned Agents');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Opportunity Data Export','pAccountTypeFilter','Select Account Type','getOpportunityData','All Account Types');
INSERT INTO DATA_EXPORT_PARAMETER_MAPPING (DATA_EXPORT,PARAMETER,PARAMETER_LABEL,TRANSFORMATION,DEFAULT_VALUE) VALUES ('Opportunity Data Export','pAccountIndustryFilter','Select Account Industry','getOpportunityData','All Account Industries');
