/* --------------------------------------------------------
   Ad-hoc Request 08: Quarter with Maximum Sold Quantity (FY2021)
   --------------------------------------------------------
   Objective:
   Identify which quarter in FY2021 recorded the highest total 
   sold quantity, giving leadership visibility into peak demand 
   periods and seasonality patterns.

   Input Tables:
   - fact_sales_monthly
 
   Expected Output:
   - quarter
   - total_sold_quantity (sorted desc)

   Key Insight:
   - Q1 (Sep–Nov 2020) showed the highest sold quantities, 
     driven by festive season demand and recovery momentum 
     after COVID disruptions.  
   - Other quarters remained steady at lower levels, with 
     occasional dips (e.g., Q3 Apr–Jun 2021).

   Recommendation:
   - Prioritize inventory build-up and marketing spend in Q1.  
   - Explore strategies to boost Q3 demand where volumes dip.  
   - Use seasonal trend data to improve forecasting accuracy.
--------------------------------------------------------- */




with cte1 as(select *,
month(date) as month
,case 
	when month(date)in(9,10,11) then "Q1"
    when month(date)in(12,1,2) then "Q2"
    when month(date)in(3,4,5) then "Q3"
    when month(date)in(6,7,8) then "Q4"
end as quarter
from fact_sales_monthly )

select quarter ,sum(sold_quantity) as total_sold_quantity  
from cte1 
where fiscal_year=2020
group by quarter
order by  total_sold_quantity desc