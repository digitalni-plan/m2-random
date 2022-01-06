-- Sanitize existing db from production

-- All is served from same url
DELETE FROM core_config_data
WHERE (
	path LIKE 'web/unsecure/%_url'
	OR path LIKE 'web/secure/%_url'
) and scope_id > 0;

-- Update web address
-- UPDATE core_config_data
-- SET value = 'https://testinstance.test/'
-- WHERE (
-- 	path LIKE 'web/unsecure/%_url'
-- 	OR path LIKE 'web/secure/%_url'
-- ) and scope_id = 0;

-- Delete payment configurations
DELETE FROM core_config_data
WHERE path LIKE '%payway%shop_id'
 OR path LIKE '%payway%secret_key';

-- Delete customer tables
DELETE FROM customer_entity;
DELETE FROM customer_grid_flat;

-- Delete sales order tables
DELETE FROM sales_order;
DELETE FROM sales_order_grid;

-- Delete invoice tables
DELETE FROM sales_invoice;
DELETE FROM sales_invoice_grid;

-- Delete credit memo tables
DELETE FROM sales_creditmemo;
DELETE FROM sales_creditmemo_grid;
