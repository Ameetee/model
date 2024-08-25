-- 1. SQL Statements to Create Tables
-- 1. CUSTOMER Table

CREATE TABLE CUSTOMER (
    customer_id VARCHAR2(20) PRIMARY KEY,
    customer_name VARCHAR2(20) NOT NULL,
    customer_tel NUMBER
);

customer_id: Primary Key
customer_name: Not Null
customer_tel: No specific constraint provided

-- 2. PRODUCT Table
CREATE TABLE PRODUCT (
    product_id VARCHAR2(20) PRIMARY KEY,
    product_name VARCHAR2(20) NOT NULL,
    price NUMBER CHECK (price > 0)
);

product_id: Primary Key
product_name: Not Null
price: Must be positive

-- 3. ORDERS Table

CREATE TABLE ORDERS (
    order_id NUMBER PRIMARY KEY, -- Assuming order_id is a unique identifier for orders
    customer_id VARCHAR2(20),
    product_id VARCHAR2(20),
    quantity NUMBER,
    total_amount NUMBER,
    order_date DATE DEFAULT SYSDATE,
    FOREIGN KEY (customer_id) REFERENCES CUSTOMER(customer_id),
    FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id)
);

customer_id: Foreign Key referencing CUSTOMER(customer_id)
product_id: Foreign Key referencing PRODUCT(product_id)
order_date: Defaults to the current date using SYSDATE

-- 2. SQL Commands to Modify Tables
-- 1. Add a Column to the PRODUCT Table

ALTER TABLE PRODUCT
ADD (category VARCHAR2(20));

-- 2. Add a Column to the ORDERS Table with a Default Value
ALTER TABLE ORDERS
ADD (order_date DATE DEFAULT SYSDATE);

-- Summary
-- Table Creation:
-- Created CUSTOMER, PRODUCT, and ORDERS tables with appropriate columns, constraints, and data types.
-- Table Modification:
-- Added category column to PRODUCT.
-- Added order_date column to ORDERS with a default value of SYSDATE.