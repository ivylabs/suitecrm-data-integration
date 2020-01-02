CREATE TABLE S_VEHICLES
(
  id VARCHAR(36)
, name VARCHAR(255)
, date_entered DATETIME
, date_modified DATETIME
, modified_user_id VARCHAR(36)
, created_by VARCHAR(36)
, description TEXT
, deleted BOOLEAN
, assigned_user_id VARCHAR(36)
, make VARCHAR(255)
, model VARCHAR(255)
, fuel_type VARCHAR(100)
)
;