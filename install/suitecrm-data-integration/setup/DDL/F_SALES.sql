DROP TABLE IF EXISTS `F_SALES` ;
CREATE TABLE `F_SALES` (
  `SALE_ID` VARCHAR(36) DEFAULT NULL,
  `INVOICE_TK` INT DEFAULT NULL,
  `PRODUCT_TK` INT DEFAULT NULL,
  `BILLING_ACCOUNT_TK` INT DEFAULT NULL,
  `ASSIGNED_USER_TK` INT DEFAULT NULL,
  `SALE_PAID_DATE_TK` INT DEFAULT NULL,
  `SALE_QUANTITY` DECIMAL(18, 4) DEFAULT NULL,
  `SALE_COST_PRICE_AMOUNT` DECIMAL(26, 6) DEFAULT NULL,
  `SALE_LIST_PRICE_AMOUNT` DECIMAL(26, 6) DEFAULT NULL,
  `SALE_DISCOUNT_AMOUNT` DECIMAL(26, 6) DEFAULT NULL,
  `SALE_UNIT_PRICE_AMOUNT` DECIMAL(26, 6) DEFAULT NULL,
  `SALE_VAT_VALUE` DOUBLE DEFAULT NULL,
  `SALE_TOTAL_VAT_AMOUNT` DECIMAL(26, 6) DEFAULT NULL,
  `SALE_TOTAL_DISCOUNT_AMOUNT` DOUBLE DEFAULT NULL,
  `SALE_TOTAL_AMOUNT` DECIMAL(26, 6) DEFAULT NULL,
  KEY `IDX_F_SALES_LKP` (`SALE_ID`)
);
