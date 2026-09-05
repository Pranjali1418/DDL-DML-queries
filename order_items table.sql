SELECT * FROM batch1346_db.order_items;
INSERT INTO order_items
(order_item_id, order_id, product_id, quantity, unit_price)
VALUES
(1, 1, 1, 2, 60.00),
(2, 1, 3, 2, 35.00),
(3, 2, 2, 5, 45.00),
(4, 3, 4, 3, 120.00),
(5, 4, 5, 5, 30.00);
SELECT *FROM order_items;