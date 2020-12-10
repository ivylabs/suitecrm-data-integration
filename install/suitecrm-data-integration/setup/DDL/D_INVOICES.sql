DROP TABLE IF EXISTS `D_INVOICES`;
CREATE TABLE `D_INVOICES` (
  `INVOICE_TK` BIGINT(20) NOT NULL,
  `VERSION` INT(11) DEFAULT NULL,
  `DATE_FROM` DATETIME DEFAULT NULL,
  `DATE_TO` DATETIME DEFAULT NULL,
  `INVOICE_ID` VARCHAR(36) DEFAULT NULL,
  `INVOICE_NAME` VARCHAR(255) DEFAULT NULL,
  `INVOICE_DESCRIPTION` TEXT,
  `INVOICE_NUMBER` INT(11) DEFAULT NULL,
  `INVOICE_STATUS` VARCHAR(100) DEFAULT NULL,
  `INVOICE_DELETED` CHAR(1) DEFAULT NULL,
  `INVOICE_CURRENCY_ID` VARCHAR(36) DEFAULT NULL,
  `INVOICE_QUOTE_NUMBER` INT(11) DEFAULT NULL,
  PRIMARY KEY (`INVOICE_TK`),
  KEY `IDX_D_INVOICES_TK` (`INVOICE_TK`),
  KEY `IDX_D_INVOICES_LKP` (`INVOICE_ID`)
);
