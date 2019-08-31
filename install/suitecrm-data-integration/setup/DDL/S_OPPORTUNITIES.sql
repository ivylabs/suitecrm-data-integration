DROP TABLE IF EXISTS `S_OPPORTUNITIES`;
CREATE TABLE `S_OPPORTUNITIES` (
  `id` VARCHAR(36) DEFAULT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `date_entered` DATETIME DEFAULT NULL,
  `date_modified` DATETIME DEFAULT NULL,
  `modified_user_id` VARCHAR(36) DEFAULT NULL,
  `created_by` VARCHAR(36) DEFAULT NULL,
  `description` TEXT,
  `deleted` CHAR(1) DEFAULT NULL,
  `assigned_user_id` VARCHAR(36) DEFAULT NULL,
  `opportunity_type` VARCHAR(255) DEFAULT NULL,
  `campaign_id` VARCHAR(36) DEFAULT NULL,
  `lead_source` VARCHAR(50) DEFAULT NULL,
  `amount` DOUBLE DEFAULT NULL,
  `amount_usdollar` DOUBLE DEFAULT NULL,
  `currency_id` VARCHAR(36) DEFAULT NULL,
  `date_closed` DATETIME DEFAULT NULL,
  `next_step` VARCHAR(100) DEFAULT NULL,
  `sales_stage` VARCHAR(255) DEFAULT NULL,
  `probability` DOUBLE DEFAULT NULL
);