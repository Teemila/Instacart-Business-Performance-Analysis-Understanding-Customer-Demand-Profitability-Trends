# Instacart-Business-Performance-Analysis-Understanding-Customer-Demand-Profitability-Trends-Using-PowerBi-and-SQL
The Instacart Sales and Profit Analysis tracks and improves operations for a grocery delivery platform from 2015 to 2023. It turns large volumes of data into simple, interactive insights, showing trends across departments, products, and time to better understand customer demand and profitability.
# Instacart Business Performance Analysis Project Write-up

## Project Introduction

Instacart is a leading online grocery delivery service that bridges the gap between customers and personal shoppers to provide convenient access to everyday essentials. This project utilizes **Power BI** for visualization and **SQL** for data extraction to analyze high-volume transactional data. The analysis aims to uncover critical insights into top-selling products, peak shopping windows, and departmental profitability to drive evidence-based decisions .

## Problem Statement
As Instacart scales, the primary challenge lies in navigating the complexities of customer behavior and thin profit margins. Without a centralized, granular view of performance, the business faces uncertainties regarding:
* **Operational Inefficiencies:** Difficulty in aligning staffing and systems with peak shopping hours.
* **Profitability Gaps:** Maintaining a stable but relatively low 10% profit margin across diverse categories .
* **Data Silos:** A lack of clarity on which specific products or "aisles" are driving value versus those that are underperforming or misclassified .

## Project Overview
The core objective of this analysis is to evaluate Instacart's historical data to enhance the customer experience and improve the bottom line . The project targets five specific goals :
1.  **Understand Shopping Patterns:** Identify how and when customers interact with the platform.
2.  **Evaluate Product Performance:** Rank departments and individual products by volume and revenue.
3.  **Analyze Sales Trends:** Monitor profitability fluctuations over time.
4.  **Identify Peak Times:** Pinpoint the busiest hours to optimize logistics.
5.  **Weekend demands:** To identify what products are mostly sold on weekends.
6.  **Data-Driven Recommendations:** Generate actionable strategies for inventory and marketing.

## Detailed Analysis Write-up

### 1. High-Level Key Performance Indicators (KPIs)
The platform demonstrates massive scale and consistent engagement :
* **Total Revenue:** $158.37 Million.
* **Total Profit:** $15.84 Million, representing a **10% Profit Margin**.
* **Customer Volume:** 63,000 active customers placing **1.05 Million orders**.
* **Average Profit per Order:** Approximately $15.10.

While the sales volume is strong, the 10% margin indicates a need for strategic cost management and a shift toward higher-margin items .

### 2. Operational Demand & Trends
Order volume is heavily concentrated during the day, creating a distinct "Peak Window" :
* **Peak Hours:** The busiest shopping window occurs between **10:00 AM and 4:00 PM**, with orders peaking at roughly 88,000 per hour.
* **Logistics Impact:** This concentration suggests that personal shoppers and system resources must be most robust during midday to prevent delivery delays.
* **Monthly Seasonality:** Revenue peaks in January and March before declining steadily across the year, reaching its lowest level in June,  indicating a potential seasonal demand pattern.

### 3. Departmental & Product Performance
The analysis breaks down revenue by department and product :
* **Top Revenue Departments:** **Personal Care** and **Snacks** are the primary drivers of platform revenue.
* **Top Performers:** Top-selling products include "Tender White Meat Chicken" and "Chicken with Rice Soup," which drive consistent repeat volume .
* **Worst Performers:** Products like "Caramel Macchiato Creamer" and "Duck Mousse with Port Wine" generate negligible revenue (under $250), indicating they may be taking up valuable digital or physical shelf space .

### 4. Aisles & Data Quality
* **Profit Aisles:** The top aisles like candy chocolate and ice cream with the most orders (20K–26K+) generate the highest profit, confirming that volume drives performance.
* **Classification Issues:** An "Unknown" category was found to account for 26.9K orders and over $406K in profit, representing a significant data gap that hinders accurate analytics .

<img width="1221" height="726" alt="Screenshot 2026-03-20 213639" src="https://github.com/user-attachments/assets/0d2e1a52-fc15-4ccb-8097-c835ca44b81d" />


<img width="1212" height="728" alt="Screenshot 2026-03-21 133252" src="https://github.com/user-attachments/assets/9e0ba879-d6e8-48f8-bbf0-cb2e30d9fb90" />


## Strategic Business Recommendations

Based on the data, the following four strategies are recommended :

1.  **Operational Peak Alignment:** Align warehouse staffing, system maintenance, and "shopper" availability specifically with the **10 AM – 4 PM window** to handle the 80K+ hourly order surges.
2.  **Margin-Focused Marketing:** Shift promotional budgets toward high-demand aisles and departments while also leveraging top products demand on weekends.
3.  **Inventory Rationalization:** Conduct a review to remove or replace underperforming products (e.g., Caramel Macchiato Creamer) that do not contribute to growth. Align inventory and marketing by increasing capacity ahead of peak periods and tightening inventory levels during the low sales period to minimize overstock risk.
4.  **Data Integrity Fix:** Resolve the "Unknown" aisle classification. Correcting this category will allow for better product discovery and more accurate departmental reporting.

## Conclusion
This analysis of Instacart’s business performance highlights a platform with a massive, loyal customer base and healthy revenue of $158M . The findings emphasize that while aisles like candy chocolate and departments like personal care  drive volume, the future of Instacart’s profitability lies in its ability to optimize for midday demand surges and refine its product mix toward higher-margin aisles . By implementing the recommended operational alignments and data quality fixes, Instacart can improve its 10% margin and ensure more efficient, data-driven growth.
