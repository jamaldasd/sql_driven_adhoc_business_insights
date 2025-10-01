# SQL Ad-hoc Business Insights (AtliQ Hardware)

This folder contains 10 ad-hoc SQL queries for AtliQ Hardware (FMCG).  
Each file includes the SQL, its objective, expected output, key insight, and recommendation.  
*(Raw datasets are confidential and not included.)*  

Focus areas: **Sales & Finance analysis**  

---

## Ad-hoc Requests

1. **01_apac_markets.sql — APAC Markets for “AtliQ Exclusive”**  
   - **Objective:** List APAC markets where customer “AtliQ Exclusive” has sales.  
   - **Key Insight:** Presence in multiple APAC markets with gaps in coverage.  
   - **Recommendation:** Double down on strong markets; assess white-space markets for expansion.  

2. **02_unique_products_yoy.sql — Unique Products YoY (2020 → 2021)**  
   - **Objective:** Compare unique product counts in FY2020 vs FY2021.  
   - **Key Insight:** Unique SKUs increased by **+36%** (245 → 334).  
   - **Recommendation:** Scale successful categories; evaluate low performers for pruning.  

3. **03_products_by_segment.sql — Product Portfolio by Segment**  
   - **Objective:** Count unique products per segment.  
   - **Key Insight:** Accessories & Notebooks dominate; Networking has the fewest SKUs.  
   - **Recommendation:** Strengthen top segments, cautiously expand Networking.  

4. **04_segment_increase_yoy.sql — Segment Growth YoY**  
   - **Objective:** Find absolute difference in unique products by segment (2021 − 2020).  
   - **Key Insight:** Accessories had the highest increase; Networking grew **+3 SKUs** (6 → 9).  
   - **Recommendation:** Scale Accessories further; watch Networking growth (good % but small base).  

5. **05_high_low_cost.sql — Highest & Lowest Manufacturing Cost**  
   - **Objective:** Identify SKUs with highest and lowest manufacturing costs.  
   - **Key Insight:** Wide cost gap between premium and entry SKUs.  
   - **Recommendation:** Focus margin strategies on premium SKUs; ensure low-cost SKUs remain profitable.  

6. **06_top_discounts.sql — Top Customers by Avg Discount (India, FY2021)**  
   - **Objective:** Identify Indian customers with highest avg discounts.  
   - **Key Insight:** Large retail accounts (Flipkart, Croma, Amazon) receive the highest discounts.  
   - **Recommendation:** Reevaluate discount policies to balance volume vs margin.  

7. **07_atliq_exclusive_sales.sql — Monthly Gross Sales for “AtliQ Exclusive”**  
   - **Objective:** Report monthly gross sales (Sep–Aug fiscal).  
   - **Key Insight:** Sharp dip Apr–May 2020, strong rebound Nov 2020 peak (> $20M), FY2021 stabilized ~ $10–13M/month.  
   - **Recommendation:** Optimize inventory for Q1 festival peaks; prepare contingency plans for mid-year dips.  

8. **08_sold_quantity_quarters.sql — Max Sold Quantity Quarter (FY2021)**  
   - **Objective:** Identify quarter with max sold quantity.  
   - **Key Insight:** Q1 (Sep–Nov 2020) drove highest demand (festival effect).  
   - **Recommendation:** Ramp production/logistics for Q1; stimulate demand in weaker quarters.  

9. **09_sales_by_channel.sql — Channel Contribution (FY2021)**  
   - **Objective:** Compute gross sales and % contribution by channel.  
   - **Key Insight:** Retail dominated at **73%**, Direct ~15%, Distributors ~11%.  
   - **Recommendation:** Diversify channels; strengthen Direct to reduce retail dependency.  

10. **10_top_products_division.sql — Top 3 Products by Division (FY2021)**  
    - **Objective:** Rank top 3 products within each division by sold quantity.  
    - **Key Insight:** Demand highly concentrated in a few products within each division.  
    - **Recommendation:** Promote best-sellers and review laggards for rationalization.  

---

## 📌 Conclusion  
The SQL ad-hoc analysis provided **targeted Sales & Finance insights** for AtliQ Hardware:  
- Growth opportunities in SKUs and regions.  
- Risks from channel dependence and discounting.  
- Profitability levers in product cost structure.  

Together, the insights helped leadership prioritize **cost optimization, channel strategy, and product focus**, demonstrating the value of SQL-driven analytics in real business decision-making.  
