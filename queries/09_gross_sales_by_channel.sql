/* --------------------------------------------------------
   Ad-hoc Request 09: Sales Contribution by Channel (FY2021)
   --------------------------------------------------------
   Objective:
   Calculate gross sales by channel in FY2021 and determine 
   each channel’s contribution percentage, to give leadership 
   visibility into revenue dependence on different channels.

   Input Tables:
   - fact_sales_monthly
   - fact_gross_price
   - dim_customer

   Expected Output:
   - channel
   - gross_sales_amount
   - percentage_contribution

   Key Insight:
   - Retail channel dominated FY2021 with ~73% of total sales 
     (~$1.2B), while Direct (~15%) and Distributor (~11%) 
     contributed significantly less.  
   - Heavy reliance on Retail poses risk of channel concentration.

   Recommendation:
   - Diversify revenue streams by strengthening Direct channel 
     to improve margins and reduce dependence on Retail.  
   - Build distributor partnerships selectively to balance reach 
     with profitability.  
   - Align channel strategy with long-term growth and resilience.
--------------------------------------------------------- */

select 
    c.channel,
    round(sum(s.sold_quantity * g.gross_price)/1000000, 2) as gross_sales_mln,
    round(
        100 * sum(s.sold_quantity * g.gross_price) / sum(sum(s.sold_quantity * g.gross_price)) over(),
        2
    ) as percentage
from fact_sales_monthly s
join dim_customer c
    on c.customer_code = s.customer_code
join fact_gross_price g
    on g.product_code = s.product_code
    and g.fiscal_year = s.fiscal_year
where s.fiscal_year = 2021
group by c.channel
order by percentage desc;
