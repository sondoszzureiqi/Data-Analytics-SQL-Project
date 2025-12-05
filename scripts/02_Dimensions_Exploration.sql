/*
==========================  Dimensions Exploration  ==========================

Purpose:
    - Examine the structure and contents of dimension tables.

Key SQL Functions:
    - DISTINCT: Identifies unique values within a column.
    - ORDER BY: Sorts results to improve readability.

==============================================================================
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
FROM gold.dim_products
ORDER BY category, subcategory, product_name;
