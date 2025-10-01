/* --------------------------------------------------------
   Ad-hoc Request 10: Top 3 Products by Division (FY2021)
   --------------------------------------------------------
   Objective:
   Identify and rank the top 3 products within each division 
   by total sold quantity in FY2021, giving leadership insight 
   into the best-performing products per division.

   Input Tables:
   - fact_sales_monthly
   - dim_product

   Expected Output:
   - division
   - product_name
   - total_sold_quantity
   - division_rank (1–3 within each division)

   Key Insight:
   - Each division is dominated by a small set of products 
     (e.g., Pen Drives in N & S divisions).  
   - PC division shows weaker product performance compared to 
     Accessories and Notebooks.

   Recommendation:
   - Reinforce top-performing products to sustain divisional sales.  
   - Reassess strategy for divisions with low-performing products 
     (e.g., PC division).  
   - Encourage diversification to avoid over-reliance on a single SKU.
--------------------------------------------------------- */

with cte as (
    select 
        p.division,
        p.product_code,
        p.product,
        sum(s.sold_quantity) as total_sold_qty,
        rank() over(partition by p.division order by sum(s.sold_quantity) desc) as rnk
    from fact_sales_monthly s
    join dim_product p
        on p.product_code = s.product_code
    where s.fiscal_year = 2021
    group by p.division, p.product_code, p.product
)
select *
from cte
where rnk <= 3;


