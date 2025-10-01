/* --------------------------------------------------------
   Ad-hoc Request 04: Segment Increase (2021 vs 2020)
   --------------------------------------------------------
   Objective:
   Find which product segment had the largest increase in 
   unique products between 2020 and 2021, to show leadership 
   where the portfolio is expanding fastest.

   Input Tables:
   - fact_sales_monthly
   - dim_product

   Expected Output:
   - segment
   - unique_products_2020
   - unique_products_2021
   - difference (Δ = 2021 - 2020)

   Key Insight:
   - Accessories showed the highest increase in product count, 
     while Networking grew modestly with +3 products (from 6 → 9).

   Recommendation:
   - Focus on Accessories for scale-driven growth while monitoring 
     Networking as an emerging but smaller opportunity.
--------------------------------------------------------- */



WITH cte1 AS (
SELECT 
	f.product_code,
	f.fiscal_year,
	p.segment
FROM fact_sales_monthly f
JOIN dim_product p
ON f.product_code = p.product_code
)
select 
	segment,count(distinct case when fiscal_year=2020 then  product_code end ) as product_count_2020,
    count(distinct case when fiscal_year=2021 then  product_code end) as product_count_2021,
    count(distinct case when fiscal_year=2021 then  product_code end ) -
    count(distinct case when fiscal_year=2020 then  product_code end) as differnce
from cte1
group by segment 
order by differnce desc

    
