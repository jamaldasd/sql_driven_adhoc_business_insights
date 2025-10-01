/* --------------------------------------------------------
   Ad-hoc Request 03: Product Portfolio by Segment
   --------------------------------------------------------
   Objective:
   Provide leadership with visibility into the number of 
   unique products in each segment to assess portfolio 
   balance and identify underrepresented areas.

   Input Tables:
   - dim_product

   Expected Output:
   - segment
   - product_count (unique products per segment)

   Key Insight:
   - Accessories and Notebooks lead with the highest SKU breadth, 
     while Networking has the lowest number of products, indicating 
     a potential portfolio gap.

   Recommendation:
   - Sustain momentum in strong segments and explore strategies 
     to expand the Networking portfolio to strengthen coverage.
--------------------------------------------------------- */

select 
	segment,count(distinct product_code) as product_count
from dim_product 
group by segment 
order by product_count desc

