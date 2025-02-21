
/*
===============================================================================
Dimensions Exploration
===============================================================================
Purpose:
    - To explore the structure of dimension tables.
	
SQL Functions Used:
    - DISTINCT
    - ORDER BY
===============================================================================
*/

-- Retrieve a list of unique countries from which customers originate
SELECT DISTINCT 
    country 
FROM gold.dim_customers
ORDER BY country;

-- Retrieve a list of unique categories, subcategories, and products
SELECT DISTINCT 
    category, 
    subcategory, 
    product_name 
FROM gold.dim_products where category is not null
ORDER BY category, subcategory, product_name;

-- Retrieve the count of distinct products sold  
SELECT COUNT(DISTINCT product_key) AS count  
FROM gold.fact_sales;  

-- Calculate the average customer ID for each country  
SELECT  
    country,  
    AVG(customer_id) AS sum  
FROM gold.dim_customers  
GROUP BY country;  

-- Count the number of marital status records for each gender  
SELECT  
    gender,  
    COUNT(marital_status) AS sum  
FROM gold.dim_customers  
GROUP BY gender;  

-- Retrieve all customer records  
SELECT *  
FROM gold.dim_customers;  

-- Retrieve the earliest and latest birthdate of customers  
SELECT  
    MIN(birthdate) AS minBirthDate,  
    MAX(birthdate) AS maxBirthDate  
FROM gold.dim_customers;  

-- Retrieve the top 5 customer records  
SELECT TOP 5 *  
FROM gold.dim_customers;  

-- Retrieve a list of unique customer creation dates  
SELECT DISTINCT  
    create_date  
FROM gold.dim_customers;  


select distinct create_date from gold.dim_customers;