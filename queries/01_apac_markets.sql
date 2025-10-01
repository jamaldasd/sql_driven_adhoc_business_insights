/* --------------------------------------------------------
   Ad-hoc Request 01: APAC Markets for "AtliQ Exclusive"
   --------------------------------------------------------
   Objective:
   Identify all APAC markets where customer "AtliQ Exclusive" is present, 
   to provide leadership with a clear view of regional footprint and 
   highlight potential opportunities for expansion.

   Input Tables:
   - fact_sales
   
   Expected Output:
   - market_name (APAC markets where AtliQ Exclusive has sales activity)

   Key Insight:
   - Mapped "AtliQ Exclusive" presence across APAC countries to reveal 
     geographic coverage and white-space opportunities.

   Recommendation:
   - Use findings to guide strategic decisions on strengthening operations 
     and exploring underpenetrated APAC markets.
--------------------------------------------------------- */

select
	market
from
	dim_customer
where customer="Atliq Exclusive" 
and region="APAC";