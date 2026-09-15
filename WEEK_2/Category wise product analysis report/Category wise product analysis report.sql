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

-- Step 5: Insert Category Records
INSERT INTO Category
(Category_Name, Description)
VALUES
('Mobile Accessories', 'Accessories for mobile phones'),
('Footwear', 'Different types of footwear'),
('Stationery', 'School and office stationery items'),
('Kitchen Items', 'Useful products for kitchen'),
('Beauty Products', 'Personal care and beauty products');


-- Step 6: Insert 15 Product Records
INSERT INTO Product
(Product_Name, Category_ID, Price, Stock_Quantity)
VALUES
('Power Bank', 1, 1299.00, 25),
('USB Cable', 1, 299.00, 50),
('Phone Stand', 1, 450.00, 35),

('Sports Shoes', 2, 2200.00, 30),
('Sandals', 2, 850.00, 45),
('Slippers', 2, 450.00, 55),

('Notebook', 3, 120.00, 80),
('Pen Set', 3, 180.00, 60),
('School Bag', 3, 950.00, 25),

('Water Bottle', 4, 550.00, 40),
('Lunch Box', 4, 750.00, 30),
('Electric Kettle', 4, 1800.00, 15),

('Face Wash', 5, 350.00, 40),
('Body Lotion', 5, 480.00, 35),
('Hair Serum', 5, 650.00, 20);


-- Step 7: Read Category Records
SELECT * FROM Category;


-- Step 8: Read Product Records
SELECT * FROM Product;



-- Step 9: CREATE - Add New Product
INSERT INTO Product
(Product_Name, Category_ID, Price, Stock_Quantity)
VALUES
('Wireless Mouse', 1, 799.00, 30);


-- Step 10: READ - Display Product Records
SELECT * FROM Product;


-- Step 11: UPDATE - Update Product Record
UPDATE Product
SET Price = 899.00,
    Stock_Quantity = 35
WHERE Product_ID = 16;

-- Step 12: Display Updated Product Record
SELECT * FROM Product
WHERE Product_ID = 16;


-- Step 13: DELETE - Delete Product Record
DELETE FROM Product
WHERE Product_ID = 16;

-- Step 14: Display Final Product Records
SELECT * FROM Product;

-- Step 15: Display all products under each category
SELECT c.Category_Name, p.Product_Name, p.Price, p.Stock_Quantity
FROM Category c
JOIN Product p ON c.Category_ID = p.Category_ID
ORDER BY c.Category_Name, p.Product_Name;

-- Step 16: Count number of products in each category
SELECT c.Category_Name, COUNT(p.Product_ID) AS Total_Products
FROM Category c
LEFT JOIN Product p ON c.Category_ID = p.Category_ID
GROUP BY c.Category_Name;

-- Step 17: Find highest-priced product in each category
SELECT c.Category_Name, p.Product_Name, p.Price
FROM Product p
JOIN Category c ON p.Category_ID = c.Category_ID
WHERE p.Price = (
    SELECT MAX(p2.Price)
    FROM Product p2
    WHERE p2.Category_ID = p.Category_ID
);


-- Step 18: Add 10 More Product Records
INSERT INTO Product
(Product_Name, Category_ID, Price, Stock_Quantity)
VALUES
('Car Charger', 1, 599.00, 30),
('Bluetooth Speaker', 1, 1499.00, 20),

('Canvas Shoes', 2, 1600.00, 25),
('Flip Flops', 2, 350.00, 50),

('Marker Set', 3, 250.00, 45),
('Drawing Book', 3, 150.00, 60),

('Frying Pan', 4, 900.00, 25),
('Spice Rack', 4, 650.00, 30),

('Sunscreen', 5, 550.00, 35),
('Lip Balm', 5, 180.00, 50);


-- Step 19: Display categories having exactly 5 products
SELECT c.Category_Name, COUNT(p.Product_ID) AS Total_Products
FROM Category c
JOIN Product p ON c.Category_ID = p.Category_ID
GROUP BY c.Category_Name
HAVING COUNT(p.Product_ID) = 5;

-- Step 19: Find average product price category-wise
SELECT c.Category_Name, ROUND(AVG(p.Price), 2) AS Avg_Price
FROM Category c
JOIN Product p ON c.Category_ID = p.Category_ID
GROUP BY c.Category_Name;

-- Step 20: Find product price category-wise
SELECT c.Category_Name, p.Product_Name, p.Price
FROM Category c
JOIN Product p ON c.Category_ID = p.Category_ID
ORDER BY c.Category_Name, p.Price;