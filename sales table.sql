SELECT * FROM batch1346_db.sales;
INSERT INTO sales
(sales_id, product_id, customer_id, quantity, sales_date, total_amount)
VALUES
(1, 1, 1, 2, '2026-08-21', 120.00),
(2, 2, 2, 5, '2026-08-22', 225.00),
(3, 3, 3, 3, '2026-08-23', 105.00),
(4, 4, 4, 2, '2026-08-24', 240.00),
(5, 5, 5, 4, '2026-08-25', 120.00);
SELECT * FROM sales;