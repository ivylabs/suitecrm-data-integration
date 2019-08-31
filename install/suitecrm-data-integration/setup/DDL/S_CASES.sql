DROP TABLE IF EXISTS `S_CASES`;
CREATE TABLE `S_CASES` (
  `id` VARCHAR(36) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `date_entered` DATETIME DEFAULT NULL,
  `date_modified` DATETIME DEFAULT NULL,
  `modified_user_id` VARCHAR(36) DEFAULT NULL,
  `created_by` VARCHAR(36) DEFAULT NULL,
  `description` TEXT,
  `deleted` CHAR(1) DEFAULT NULL,
  `assigned_user_id` VARCHAR(36) DEFAULT NULL,
  `case_number` INT(11) DEFAULT NULL,
  `type` VARCHAR(255) DEFAULT NULL,
  `status` VARCHAR(100) DEFAULT NULL,
  `priority` VARCHAR(100) DEFAULT NULL,
  `resolution` TEXT,
  `work_log` TEXT,
  `account_id` VARCHAR(36) DEFAULT NULL,
  `state` VARCHAR(100) DEFAULT NULL,
  `contact_created_by_id` VARCHAR(36) DEFAULT NULL
);