/* --------------------------------------------------------
   Ad-hoc Request 05: Highest vs Lowest Manufacturing Cost Products
   --------------------------------------------------------
   Objective:
   Identify the products with the highest and lowest 
   manufacturing costs to help leadership understand 
   the cost spectrum of the portfolio.

   Input Tables:
   - fact_manufacturing_cost
   - dim_product

   Expected Output:
   - product_code
   - product_name
   - manufacturing_cost
   (Top 1 highest-cost product and Top 1 lowest-cost product)

   Key Insight:
   - The cost gap between premium and entry-level products is 
     extremely wide, highlighting pricing and margin variation.

   Recommendation:
   - Leverage premium products for higher margins, while reviewing 
     low-cost products to ensure profitability and competitiveness.
--------------------------------------------------------- */

with cte1 as (select 
	p.product_code,
    p.product,
    mc.manufacturing_cost,
    p.segment,
    p.category ,p.division,p.variant
from 
	fact_manufacturing_cost mc
join 
	dim_product p
on p.product_code=mc.product_code)

select 
	product_code , product , manufacturing_cost 
from cte1
where manufacturing_cost =(select min(manufacturing_cost)  from cte1)
or manufacturing_cost=(select max(manufacturing_cost)  from cte1)




