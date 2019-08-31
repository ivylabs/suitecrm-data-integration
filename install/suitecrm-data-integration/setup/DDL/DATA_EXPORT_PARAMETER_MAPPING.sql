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
