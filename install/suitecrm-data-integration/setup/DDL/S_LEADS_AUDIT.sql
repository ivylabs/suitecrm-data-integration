DROP TABLE IF EXISTS `S_LEADS_AUDIT`;
CREATE TABLE `S_LEADS_AUDIT` (
  `id` varchar(36) DEFAULT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` varchar(255) DEFAULT NULL,
  `after_value_text` varchar(255) DEFAULT NULL
);
