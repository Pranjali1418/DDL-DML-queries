CREATE DATABASE batch1346_db;

USE batch1346_db;

CREATE TABLE student (
    stud_roll INT PRIMARY KEY,
    stud_name VARCHAR(100),
    marks INT,
    phone BIGINT,
    email VARCHAR(100),
    course VARCHAR(100)
);

CREATE TABLE branches (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100),
    branch_city VARCHAR(100)
);

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(100),
    registration_date DATE
);

CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    salary DECIMAL(10,2),
    branch_id INT,
    FOREIGN KEY (branch_id) REFERENCES branches(branch_id)
);

CREATE TABLE product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(100),
    price DECIMAL(10,2),
    stock INT
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    branch_id INT,
    order_date DATE,
    payment_mode VARCHAR(50),
    status VARCHAR(50),
    order_total DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (branch_id) REFERENCES branches(branch_id)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

CREATE TABLE sales (
    sales_id INT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    quantity INT,
    sales_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);