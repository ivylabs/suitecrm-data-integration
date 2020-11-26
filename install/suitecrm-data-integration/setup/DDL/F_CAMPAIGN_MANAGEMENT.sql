DROP TABLE IF EXISTS `F_CAMPAIGN_MANAGEMENT`;
CREATE TABLE `F_CAMPAIGN_MANAGEMENT` (
  `CAMPAIGN_ID` VARCHAR(36) DEFAULT NULL,
  `CAMPAIGN_TK` INT(11) DEFAULT NULL,
  `CAMPAIGN_START_DATE_TK` INT(11) DEFAULT NULL,
  `CAMPAIGN_END_DATE_TK` INT(11) DEFAULT NULL,
  `ASSIGNED_USER_TK` INT(11) DEFAULT NULL,
  `CAMPAIGN_BUDGET`DECIMAL(26,6) DEFAULT NULL,
  `CAMPAIGN_ACTUAL_COST` DECIMAL(26,6) DEFAULT NULL,
  `CAMPAIGN_EXPECTED_COST` DECIMAL(26,6) DEFAULT NULL,
  `CAMPAIGN_EXPECTED_REVENUE` DECIMAL(26,6) DEFAULT NULL,
  KEY `IDX_F_CAMPAIGN_MANAGEMENT_LKP` (`CAMPAIGN_ID`)
);
