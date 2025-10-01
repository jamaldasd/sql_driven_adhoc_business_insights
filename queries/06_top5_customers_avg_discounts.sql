/* --------------------------------------------------------
   Ad-hoc Request 06: Top Customers by Average Discount (India, FY2021)
   --------------------------------------------------------
   Objective:
   Identify the top customers in India who received the 
   highest average pre-invoice discounts in FY2021, giving 
   leadership visibility into discount-heavy accounts.

   Input Tables:
   - dim_customer
   - fact_pre_invoice_deductions

   Expected Output:
   - customer_code
   - customer_name
   - avg_discount_percentage

   Key Insight:
   - Large retail customers (e.g., Flipkart, Croma, Amazon) 
     received the steepest discounts, significantly impacting 
     overall margins.

   Recommendation:
   - Reassess discount policies for top accounts to balance 
     competitive positioning with margin protection.
--------------------------------------------------------- */


with cte1 as (select 
	c.customer_code,
	c.customer,c.market,
    pre.fiscal_year,
    pre.pre_invoice_discount_pct
from 
	dim_customer c
join 
	fact_pre_invoice_deductions pre
on pre.customer_code =c.customer_code)

select customer_code,customer,round(avg(pre_invoice_discount_pct)*100,2) as average_discount_percentage 
from cte1 
where fiscal_year=2021 and market="India"
group by customer_code,customer
order by average_discount_percentage desc
limit 5