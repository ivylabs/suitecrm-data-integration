DROP TABLE IF EXISTS `S_OPPORTUNITIES_AUDIT`;
CREATE TABLE S_OPPORTUNITIES_AUDIT
(
  id VARCHAR(36)
, parent_id VARCHAR(36)
, date_created DATETIME
, created_by VARCHAR(36)
, field_name VARCHAR(100)
, data_type VARCHAR(100)
, before_value_string VARCHAR(255)
, after_value_string VARCHAR(255)
, before_value_text TEXT
, after_value_text TEXT
)
;
