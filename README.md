# 📱 iPhone Sales Analytics

An end-to-end data analytics project analyzing iPhone sales performance across products, customers, countries, storage configurations, payment methods, and time.

## 📌 Business Question

**What drives iPhone sales performance across products, customers, countries, and time?**

## 🎯 Project Objectives

- Analyze overall sales and order performance
- Identify top-performing iPhone models
- Compare sales across countries
- Analyze storage preferences and unit sales
- Understand payment-method patterns
- Examine monthly sales trends
- Explore transaction quantity and price relationships
- Build interactive dashboards for business insights

## 🛠️ Tools & Technologies

- **SQL / MySQL** — Data querying and business analysis
- **Python** — Data cleaning, EDA, and visualization
- **Pandas & NumPy** — Data manipulation and analysis
- **Matplotlib** — Data visualization
- **Power BI** — Interactive dashboard development
- **DAX** — KPI and analytical measures
- **Git & GitHub** — Version control and project documentation

## 🔄 Analytics Workflow

```text
Raw Dataset
     ↓
SQL Analysis
     ↓
Python Data Cleaning & EDA
     ↓
Power BI Data Modeling & DAX
     ↓
Interactive Dashboard
     ↓
Business Insights



📊 Dataset

The dataset contains 100 iPhone sales orders with the following fields:
Order ID
Customer Name
Country
iPhone Model
Storage
Color
Quantity
Price
Sale Date
Payment Method
The dataset covers sales from January 2025 to May 2025.

📈 Key Results

Metric
Result
Total Orders
100
Total Units Sold
333
Total Sales
$146,875
Average Order Value
$1,468.75
Product Performance
iPhone 14 Pro generated the highest sales at $36,612.
iPhone 15 Pro Max generated $30,366 in sales.
The iPhone 14 Pro and iPhone 15 Pro Max together accounted for approximately 45.6% of total sales.
Geographic Performance
USA generated $33,451 in sales.
UK generated $33,148.
Canada generated $26,289.
Storage Performance
256GB recorded the highest unit volume with 127 units.
128GB recorded 107 units.
512GB recorded 99 units.
Monthly Sales
January: $46,129
February: $28,362
March: $39,029
April: $29,559
May: $3,796
Note: May contains data only through May 1, so it should not be interpreted as a complete-month decline.

🧮 SQL Analysis

SQL was used to analyze:
Overall sales performance
Sales by iPhone model
Sales by country
Sales by storage
Model and storage combinations
Monthly sales trends
Payment methods
Sales by color
Orders by quantity
Top transaction records
Model sales ranking and sales share.

🐍 Python EDA

Python was used for:
Dataset inspection
Data-type validation
Date conversion
Missing-value checks
Duplicate checks
Descriptive statistics
Category analysis
Quantity vs. transaction-price analysis
Correlation analysis
IQR-based outlier detection
Sales trend visualization
Product and country analysis

📊 Power BI Dashboard

The Power BI dashboard provides interactive analysis of:
Total Sales
Total Orders
Total Units Sold
Average Order Value
Average Selling Price
Sales trends
Sales by iPhone model
Sales by country
Units by storage
Sales by payment method
Sales by model and storage
Sales by color
Orders by quantity
Customer/order-level details

Dashboard Preview

Page 1 — Sales Overview

Page 2 — Product & Customer Insights

📁 Project Structure

iphone-sales-analytics/
│
├── data/
│   └── iphone_sales_dataset.csv
│
├── sql/
│   └── iphone_sales_analysis.sql
│
├── python/
│   └── iphone_sales_eda.ipynb
│
├── powerbi/
│   └── iphone-sales-dashboard.pbix
│
└── screenshots/
    ├── sql/
    ├── python/
    └── powerbi/

⚠️ Data Note

Price is treated as the transaction/order-level sales value in this analysis. It was not multiplied by Quantity, as the source data was analyzed using Price as the recorded transaction value.
This project focuses on descriptive analysis of the provided dataset. The results represent patterns within this dataset and should not be interpreted as causal conclusions about the broader iPhone market.

👤 Author

Adip Deb
BCA Graduate | Aspiring Data Analyst
Skills: SQL • Python • Excel • Power BI • Data Visualization • Data Analysis


