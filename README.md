# 📊 SQL-Driven Ad-hoc Business Insights | AtliQ Hardware (FMCG)

This project contains **10 real-world ad-hoc business requests** solved using SQL for **AtliQ Hardware**, a global FMCG company.  
The analysis simulates how data analysts answer stakeholder requests and provide **actionable insights**.  

⚠️ **Note:** Raw datasets are confidential and not shared. Only SQL queries, schema documentation, results, and summaries are provided.

---

## 📌 Project Overview

Business stakeholders from **Sales, Finance, Marketing, and Supply Chain** raised **10 ad-hoc requests** to address questions such as:
- Which APAC markets should we prioritize for AtliQ Exclusive?  
- How many unique products were launched YoY?  
- Which customers receive the highest discounts?  
- Which channels and products drive most of the sales?  

This project demonstrates how to convert business requests into **SQL queries**, extract insights, and deliver **data-driven recommendations**.

---

## 🛠️ Tech Stack

- **SQL** (MySQL/PostgreSQL) → Querying, joins, aggregations, window functions  
- **Schema Documentation** → Fact & dimension table mapping  
- **Excel / CSV Exports** → Tabular summaries  
- **PowerPoint** → Final presentation (in `/reports/`)  
- **GitHub** → Version control & portfolio hosting  

---

## 🔎 Methodology

The approach followed the **business analytics workflow**:

1. **Understand the request**  
   - Translate stakeholder questions into precise problem statements.  
2. **Explore schema**  
   - Identify required tables (fact & dimension).  
   - Document schema (`schema.md`).  
3. **Write SQL queries**  
   - Each request solved in a separate `.sql` file (`queries `).  
   - Comments explain objective, inputs, expected output, and insights.  
4. **Validate outputs**  
   - Review query results for accuracy (counts, aggregates, consistency).  
5. **Summarize insights**  
   - Convert raw SQL results into business insights (`/reports/insights_summary.md`).  
6. **Visualize findings**  
   - Build **Power BI visuals** (tables, charts) from SQL outputs.  
7. **Deliver recommendations**  
   - Strategic takeaways compiled into a presentation (`/reports/SQL_PROJECT_PPT_ENHANCED.pdf`).
---

## 📂 Repository Structure  

```text
SQL_Driven_Ad-hoc_Business_Insights/
│
├── queries/                     # Individual SQL files (one per ad-hoc request)
│   ├── 01_apac_exclusive.sql
│   ├── 02_unique_products_yoy.sql
│   ├── 03_products_by_segment.sql
│   ├── ...
│   └── 10_top_products_division.sql
│
├── schema.md                    # Database schema documentation
├── star_schema_atliq.png        # ERD diagram (visual schema)
├── SQL_PROJECT_PPT_ENHANCED.pptx # Presentation with insights
└── README.md                    # This file
```

---

## 📸 Reports Preview  

👉 Below are sample visuals created from SQL query outputs (for presentation purposes):  

![Customer Contribution](images/customer_contribution.png)  
*Less than 1% of customers contributed ~60% of total revenue.*  

![Sales by Channel](images/sales_channel.png)  
*Retail channel dominated FY2021 with ~73% of total sales.*  

![Discount Impact](images/discount_impact.png)  
*High discounts offered to top customers reduced profit margins significantly.*  

---

## 📈 Key Takeaways

- **APAC Market Expansion:** Regional growth opportunities identified for AtliQ Exclusive.  
- **Portfolio Growth:** Unique product count grew by +36% YoY.  
- **Seasonality:** Clear sales peaks in Q1 (festive season), requiring proactive inventory planning.  
- **Channel Risk:** Over-dependence on Retail channel highlights need for diversification.  

---

## 📈 Key Learnings

- How to **translate vague business questions** into precise SQL queries.  
- Designing **joins, aggregations, CTEs, and window functions** to solve real-world problems.  
- Importance of **clear documentation** and storytelling for stakeholders.  
- Building a complete **end-to-end analytics case study** for portfolio presentation.  

---

## 🚀 Results Delivered

- 10 SQL ad-hoc requests solved with clear documentation.  
- Leadership-level insights on **markets, products, segments, discounts, channels, and divisions**.  
- Recommendations to improve **sales strategy, margin management, and product portfolio balance**.

---

## 📑 Deliverables

- SQL Queries → [`/queries/`](queries)  
- Schema Documentation → [`/data/schema.md`](schema.md)  
- Insights Summary → [`/reports/insights_summary.md`](./reports/insights_summary.md)  
- Final Presentation → [`/reports/SQL_PROJECT_PPT_ENHANCED.pdf`](./reports/SQL_PROJECT_PPT_ENHANCED.pdf)  

---

## 🧑‍💻 Author

**Mohammad Navaman Jamadar**  
*Data Analyst & Machine Learning Practitioner*  
- 📌 Skills: SQL, Power BI, Excel, Python, Data Analysis  
- 🔗 [LinkedIn Profile](#) | [GitHub Portfolio](#) | [Portfolio](https://codebasics.io/portfolio/Mohammad-Navaman-Jamadar)

---

