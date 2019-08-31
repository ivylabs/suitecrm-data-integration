DROP TABLE IF EXISTS EMAIL_TEMPLATES;
CREATE TABLE EMAIL_TEMPLATES
(
  emailID VARCHAR(32)
, emailSubject VARCHAR(256)
, emailMessage TINYTEXT
, emailTemplate VARCHAR(128)
)
;
INSERT INTO EMAIL_TEMPLATES (emailID,emailSubject,emailMessage,emailTemplate) VALUES ('mainJobError','The Data Warehouse Has Failed To Update','Please check the latest logs file.',null);
INSERT INTO EMAIL_TEMPLATES (emailID,emailSubject,emailMessage,emailTemplate) VALUES ('mainJobSuccess','The Data Warehouse Has Updated Successfully','The Dataware has been updated with the latest data from SuiteCRM',null);
INSERT INTO EMAIL_TEMPLATES (emailID,emailSubject,emailMessage,emailTemplate) VALUES ('testEmail','SuoteCRM ANalytics Test Email','The SMTP Server is configured correctly',null);