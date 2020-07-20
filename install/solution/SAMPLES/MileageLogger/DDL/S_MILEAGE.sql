CREATE TABLE S_MILEAGE
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
, start_mileage DECIMAL(18, 2)
, end_mileage DECIMAL(18, 2)
, mileage_reason VARCHAR(100)
, mileage_date DATETIME
, user_id_c VARCHAR(36)
, ml_vehicle_id_c VARCHAR(36)
)
;