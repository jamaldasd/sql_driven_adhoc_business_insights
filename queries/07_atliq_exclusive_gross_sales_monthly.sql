/* --------------------------------------------------------
   Ad-hoc Request 07: Monthly Gross Sales for "AtliQ Exclusive"
   --------------------------------------------------------
   Objective:
   Generate monthly gross sales for the customer "AtliQ Exclusive"
   (Fiscal Year: Sep–Aug) to provide leadership with visibility into
   sales trends, disruptions, and seasonal opportunities.

   Input Tables:
   - fact_sales_monthly
   - dim_customer
   - fact_gross_price

   Expected Output:
   - month
   - year
   - gross_sales_amount

   Key Insight:
   - Sales collapsed during Apr–May 2020 due to COVID disruption.
   - Explosive rebound in Nov 2020 (> $20M) during festive season.
   - FY2021 stabilized at ~$10–13M/month with occasional dips 
     (e.g., Apr 2021 ~$7M), showing resilience but volatility risk.

   Recommendation:
   - Prioritize Q1 (Sep–Nov) campaigns to maximize festive peaks.
   - Strengthen resilience for Q3/Q4 to mitigate dips.
   - Use post-2020 recovery momentum to drive retention programs
     and explore new APAC market opportunities.
--------------------------------------------------------- */


with cte1 as (select 
	s.date,
    c.customer,
    s.fiscal_year,
    s.sold_quantity,
    g.gross_price,
    round((s.sold_quantity *g.gross_price),2) as gross_sales_amt
from 
	fact_sales_monthly s
join
	dim_customer c
on c.customer_code =s.customer_code
join 
	fact_gross_price g
on g.product_code =s.product_code
and g.fiscal_year=s.fiscal_year )
    
select 
	monthname(date) as month,
    year(date)as year,
    sum(gross_sales_amt) as total_gross_sales 
from cte1 where customer="Atliq Exclusive"
group by month ,year

