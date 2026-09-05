SELECT * FROM batch1346_db.product;
INSERT INTO product
(product_id, product_name, category, price, stock)
VALUES
(1, 'Rice', 'Grocery', 60.00, 100),
(2, 'Sugar', 'Grocery', 45.00, 80),
(3, 'Soap', 'Personal Care', 35.00, 50),
(4, 'Shampoo', 'Personal Care', 120.00, 40),
(5, 'Biscuits', 'Food', 30.00, 70);
SELECT * FROM product;