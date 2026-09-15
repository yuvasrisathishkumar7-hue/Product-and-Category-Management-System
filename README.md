# E-COMMERCE ORDER MANAGEMENT DATABASE SYSTEM

## WEEK 2: PRODUCT AND CATEGORY MANAGEMENT SYSTEM

## PROJECT OVERVIEW

The **E-Commerce Order Management Database System** is designed to organize and manage important product information in an e-commerce environment. This project focuses on the **Product and Category Management Module** and covers Category and Product table design, relationships, constraints, product record insertion, CRUD operations, and category-wise product analysis.

## OBJECTIVES

- Analyze the requirements of the Product and Category Management System.
- Identify the Category and Product entities required for the module.
- Design the Category and Product tables with appropriate attributes.
- Create tables with suitable keys and constraints.
- Establish a relationship between Category and Product.
- Insert category and product records into the tables.
- Perform Create, Read, Update, and Delete operations on product records.
- Analyze products based on their categories and prices.
- Verify the database operations through execution outputs.

## ENTITIES IDENTIFIED

The following entities are used for the Week 2 Product and Category Management System:

- **Category**
- **Product**

## CATEGORY TABLE

The Category table is designed with the following attributes and constraints:

| Field Name | Data Type | Constraint |
|---|---|---|
| Category_ID | INT | PRIMARY KEY, AUTO_INCREMENT |
| Category_Name | VARCHAR(50) | UNIQUE, NOT NULL |
| Description | VARCHAR(200) | — |

## PRODUCT TABLE

The Product table is designed with the following attributes and constraints:

| Field Name | Data Type | Constraint |
|---|---|---|
| Product_ID | INT | PRIMARY KEY, AUTO_INCREMENT |
| Product_Name | VARCHAR(100) | NOT NULL |
| Category_ID | INT | FOREIGN KEY, NOT NULL |
| Price | DECIMAL(10,2) | NOT NULL, CHECK |
| Stock_Quantity | INT | NOT NULL, DEFAULT 0, CHECK |

## DATABASE OPERATIONS

The project implements the following operations for managing product and category records:

- **CREATE** – Creates the Category and Product tables.
- **INSERT** – Adds category and product records.
- **SELECT** – Retrieves category and product information.
- **UPDATE** – Modifies existing product information.
- **DELETE** – Removes a product record.
- **JOIN** – Displays products along with their categories.
- **COUNT** – Counts products in each category.
- **MAX** – Finds the highest-priced product in each category.
- **AVG** – Calculates the average product price category-wise.

## SQL SCRIPT

The SQL script is organized into the following execution steps:

1. Select Existing Database
2. Create Category Table
3. Create Product Table
4. View Table Structures
5. Insert Category Records
6. Insert 15 Product Records
7. Read Category Records
8. Read Product Records
9. Add New Product
10. Display Product Records
11. Update Product Record
12. Display Updated Product Record
13. Delete Product Record
14. Display Final Product Records
15. Display Products Under Each Category
16. Count Number of Products in Each Category
17. Find Highest-Priced Product in Each Category
18. Add 10 More Product Records
19. Display Categories Having Exactly 5 Products
20. Find Average Product Price Category-Wise
21. Display Product Price Category-Wise

## CATEGORY-WISE PRODUCT ANALYSIS

The project performs analysis to:

- Display all products under each category.
- Count the number of products in each category.
- Find the highest-priced product in each category.
- Identify categories having exactly 5 products.
- Calculate the average product price category-wise.
- Display product prices category-wise.

## OUTPUT VERIFICATION

The project includes step-by-step output screenshots corresponding to the SQL operations. The screenshots provide evidence of table creation, table structures, category and product record insertion, CRUD operations, and category-wise product analysis.

## CONCLUSION

The project establishes a structured **Product and Category Management Module** for the E-Commerce Order Management Database System. It covers table design, relationships, constraints, record insertion, CRUD operations, and category-wise analysis. The SQL execution results are verified through the corresponding output screenshots.
