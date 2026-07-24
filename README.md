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
* **Regional Leadership:** The West and East regions drive the highest total revenue, but are severely impacted by negative profit margins across all sales representatives.
* **Channel Performance:** The Online sales channel outperforms Retail in total revenue across almost all product categories, particularly in Clothing and Electronics.
* **Margin Erosion:** Discovered that transactions flagged with a 'Discount_Issue_Flag' accounted for **$40.28M (67.49%)** in revenue, negatively impacting the overall profit margin and driving the entire portfolio to a **-7%** loss. 

## 🖼️ Dashboard Preview
<img width="2000" height="1156" alt="image" src="https://github.com/user-attachments/assets/4e56e334-01c5-45fe-ac6b-585b8cf2b7f9" />

## 🚀 How to Run the SQL Queries
1. Download the `clean_sales_data.csv` file from this repository.
2. Open MySQL Workbench and run the `schema_setup.sql` script to create the table.
3. Import the CSV data using the Table Data Import Wizard.
4. Run the queries inside the `analysis_queries.sql` file to generate insights.
