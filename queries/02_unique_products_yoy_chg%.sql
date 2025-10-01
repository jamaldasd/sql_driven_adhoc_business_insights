/* --------------------------------------------------------
   Ad-hoc Request 02: Unique Products YoY Growth
   --------------------------------------------------------
   Objective:
   Compare the number of unique products sold in 2020 vs 2021 
   to help leadership assess portfolio expansion and identify 
   growth opportunities in product assortment.

   Input Tables:
   - fact_sales_monthly

   Expected Output:
   - unique_products_2020
   - unique_products_2021
   - percentage_change

   Key Insight:
   - Product portfolio expanded by +36% YoY (245 → 334 unique products), 
     showing strong SKU growth in Accessories and Networking.

   Recommendation:
   - Leverage expansion by doubling down on high-growth categories 
     and re-evaluating low-performing SKUs to optimize product mix.
--------------------------------------------------------- */

with cte1 as(select
	count(distinct case when fiscal_year=2020 then product_code end )as unique_products_2020,
    count(distinct case when fiscal_year=2021 then product_code end )as unique_products_2021
from 
	fact_sales_monthly)

select 
	unique_products_2020,unique_products_2021,
	round((unique_products_2021-unique_products_2020)*100/unique_products_2020,2) as percentage_chg 
from 
	cte1
    
