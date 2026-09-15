-- E-COMMERCE ORDER MANAGEMENT DATABASE SYSTEM
-- WEEK 2: PRODUCT AND CATEGORY MANAGEMENT SYSTEM

-- Step 1: Select Existing Database
USE ecommerce_data_base;

-- Step 2: Create Category Table
CREATE TABLE Category (
    Category_ID     INT             PRIMARY KEY AUTO_INCREMENT,
    Category_Name   VARCHAR(50)     NOT NULL UNIQUE,
    Description     VARCHAR(200)
);

-- Step 3: Create Product Table
CREATE TABLE Product (
    Product_ID      INT             PRIMARY KEY AUTO_INCREMENT,
    Product_Name    VARCHAR(100)    NOT NULL,
    Category_ID     INT             NOT NULL,
    Price           DECIMAL(10,2)   NOT NULL CHECK (Price > 0),
    Stock_Quantity  INT             NOT NULL DEFAULT 0 CHECK (Stock_Quantity >= 0),
    CONSTRAINT fk_product_category
        FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);


-- Step 4: View Tables
SHOW TABLES;

DESC Category;
DESC Product;