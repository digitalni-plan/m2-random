# Sanitize existing db from production

# Delete customer tables
DELETE FROM customer_entity;
DELETE FROM customer_grid_flat;

# Delete sales order tables
DELETE FROM sales_order;
DELETE FROM sales_order_grid;

# Delete invoice tables
DELETE FROM sales_invoice;
DELETE FROM sales_invoice_grid;

# Delete credit memo tables
DELETE FROM sales_creditmemo;
DELETE FROM sales_creditmemo_grid;
