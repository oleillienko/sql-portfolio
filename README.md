# sql-portfolio
SQL scripts from a business analytics course covering joins, subqueries, data cleaning, date functions, and Looker Studio. Focused on real-world tasks like campaign reporting, KPI tracking, and multi-source data analysis.

SQL Portfolio
This repository contains SQL scripts completed during a business analytics course. Each script reflects a practical data task, using real campaign datasets to practice core skills like aggregation, filtering, and performance analysis.

Files & Descriptions
hw2.sql
Aggregates Facebook Ads campaign data by date and campaign ID. Calculates total spend, impressions, clicks, conversions, and marketing performance metrics: CPC, CPM, CTR, ROMI.

hw2 additional task.sql
Bonus task: Finds the top-performing campaign (by ROMI) among those with over 500,000 in spend.

HW 3.sql
Combines Google and Facebook Ads data using a Common Table Expression (CTE). Tags each record with its media source, aggregates daily performance metrics, and prepares a unified dataset for reporting.

Key Concepts Used
WITH (CTEs)
UNION ALL
Aggregation functions (SUM, AVG)
Grouping by multiple fields
Conditional filtering (to prevent division by zero)
Purpose
This project demonstrates the SQL skills used in a Business Analyst or Marketing Analyst role: combining multi-source data, creating KPIs, and preparing results for dashboards or reporting tools.
