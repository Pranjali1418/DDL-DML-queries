SELECT * FROM batch1346_db.orders;
INSERT INTO orders
(order_id, customer_id, branch_id, order_date, payment_mode, status, order_total)
VALUES
(1, 1, 1, '2026-08-21', 'UPI', 'Completed', 300.00),
(2, 2, 2, '2026-08-22', 'Cash', 'Completed', 450.00),
(3, 3, 3, '2026-08-23', 'Card', 'Pending', 600.00),
(4, 4, 1, '2026-08-24', 'UPI', 'Completed', 250.00),
(5, 5, 4, '2026-08-25', 'Cash', 'Cancelled', 150.00);
SELECT * FROM orders;