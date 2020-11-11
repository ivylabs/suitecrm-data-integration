DROP TABLE IF EXISTS `S_CONTRACTS`;
CREATE TABLE `S_CONTRACTS` (
  `id` VARCHAR(36)
  `name` VARCHAR(255)
  `date_entered` DATETIME
  `date_modified` DATETIME
  `modified_user_id` VARCHAR(36)
  `created_by` VARCHAR(36)
  `description` TEXT
  `deleted` BOOLEAN
  `assigned_user_id` VARCHAR(36)
  `reference_code` VARCHAR(255)
  `start_date` DATETIME
  `end_date` DATETIME
  `total_contract_value` DECIMAL(26, 6)
  `total_contract_value_usdollar` DECIMAL(26, 6)
  `currency_id` VARCHAR(36)
  `status` VARCHAR(100)
  `customer_signed_date` DATETIME
  `company_signed_date` DATETIME
  `renewal_reminder_date` DATETIME
  `contract_type` VARCHAR(100)
  `contract_account_id` VARCHAR(36)
  `opportunity_id` VARCHAR(36)
  `contact_id` VARCHAR(36)
  `call_id` VARCHAR(36)
  `total_amt` DECIMAL(26, 6)
  `total_amt_usdollar` DECIMAL(26, 6)
  `subtotal_amount` DECIMAL(26, 6)
  `subtotal_amount_usdollar` DECIMAL(26, 6)
  `discount_amount` DECIMAL(26, 6)
  `discount_amount_usdollar` DECIMAL(26, 6)
  `tax_amount` DECIMAL(26, 6)
  `tax_amount_usdollar` DECIMAL(26, 6)
  `shipping_amount` DECIMAL(26, 6)
  `shipping_amount_usdollar` DECIMAL(26, 6)
  `shipping_tax` VARCHAR(100)
  `shipping_tax_amt` DECIMAL(26, 6)
  `shipping_tax_amt_usdollar` DECIMAL(26, 6)
  `total_amount` DECIMAL(26, 6)
  `total_amount_usdollar` DECIMAL(26, 6)
);
