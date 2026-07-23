# 📊 Sales & Profitability Analytics Pipeline

## 📝 Project Overview
This project is an end-to-end data analytics pipeline designed to evaluate corporate sales performance, rank regional sales representatives, and identify margin erosion caused by discounting issues. The goal was to transform raw, unstructured data into actionable business intelligence for executive decision-making.

## 🛠️ Tech Stack Used
* **Data Cleaning:** Google Sheets 
* **Database Management & Querying:** MySQL (Window Functions, Aggregations, Joins)
* **Data Visualization:** Power BI (DAX, Interactive Dashboards, Data Modeling)

## 📂 Dataset Information
The analysis is based on a dataset of 1,000+ sales records containing the following key variables:
* **Metrics:** `Sales_Amount`, `Quantity_Sold`, `Total_Cost`, `Profit`, `Profit_Margin`
* **Dimensions:** `Region`, `Sales_Rep`, `Product_Category`, `Sales_Channel`
* **Operational Flags:** `Discount_Issue_Flag` 

## ⚙️ Methodology & Process
1. **Data Preparation:** Cleansed the initial dataset in Google Sheets, removing blank columns and formatting dates to ensure smooth database ingestion.
2. **Data Modeling (MySQL):** 
   * Created a structured database schema (`sales_project`).
   * Executed Data Definition Language (DDL) to structure data types.
   * Engineered complex queries utilizing `RANK() OVER(PARTITION BY...)` to evaluate regional sales rep performance.
3. **Data Visualization (Power BI):**
   * Imported the SQL database into Power BI.
   * Created custom DAX measures for `Total Revenue`, `Total Profit`, and `Overall Profit Margin`.
   * Designed a dynamic dashboard featuring conditional formatting (heat maps) and drill-down capabilities by Quarter.

## 💡 Key Business Insights
* **Regional Leadership:** [Insert your finding about the top region/rep here].
* **Channel Performance:** [Insert finding about Retail vs. Online sales here].
* **Margin Erosion:** Discovered that transactions flagged with a `Discount_Issue_Flag` accounted for [Insert % or $ amount] in revenue, negatively impacting the overall profit margin by [Insert %]. 

## 🖼️ Dashboard Preview
![Insert an image of your Power BI Dashboard here](link_to_your_dashboard_image.png)

## 🚀 How to Run the SQL Queries
1. Download the `clean_sales_data.csv` file from this repository.
2. Open MySQL Workbench and run the `schema_setup.sql` script to create the table.
3. Import the CSV data using the Table Data Import Wizard.
4. Run the queries inside the `analysis_queries.sql` file to generate insights.
