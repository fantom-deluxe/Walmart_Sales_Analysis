# Walmart Sales Data Analysis

This project analyzes Walmart’s historical weekly sales data using Python, SQL, and Power BI to uncover trends, identify revenue-driving factors, and visualize store-wise performance over time.

## Objective

- Analyze weekly sales data to uncover store-wise trends and seasonality
- Examine how holidays and external factors (temperature, fuel price, CPI, unemployment) influence sales
- Build a professional Power BI dashboard for interactive insights

## Files Included

- `Cleaned_Walmart_Sales.csv` – Preprocessed dataset used for analysis
- `Walmart_Notebook.ipynb` – Python notebook for EDA, visualizations, and correlation analysis
- `SQLQuery1.sql` – SQL queries for slicing, aggregating, and summarizing sales data
- `Walmart_Sales_Dashboard.pbix` – Power BI dashboard with store-wise visual insights
- `Dataset` – Contains the original raw dataset in csv file.

## Dataset Source

- **Original Source**: [Kaggle – Walmart Sales Forecasting]
- The dataset contains weekly sales records for multiple Walmart stores over several years with economic indicators.
  
## Dataset Overview

| Column Name      | Description |
|------------------|-------------|
| `Store_Number`   | Unique ID for each Walmart store |
| `Date`           | Week-ending date of sales |
| `Weekly_Sales`   | Total weekly sales per store |
| `Holiday_Flag`   | 1 = holiday week, 0 = regular week |
| `Temperature`    | Weekly average temperature (°F) |
| `Fuel_Price`     | Fuel price during the week |
| `CPI`            | Consumer Price Index |
| `Unemployment`   | Unemployment rate percentage |

## Tools & Technologies

- **Python**: Pandas, Matplotlib (EDA & visualization)
- **SQL**: Microsoft SQL Server (querying and aggregations)
- **Power BI**: Visual dashboard development
- **Jupyter Notebook**: Interactive data exploration

## Project Steps

1. **Data Cleaning (Python):**
   - Standardized date formats and removed invalid commas in `Weekly_Sales`
   - Converted columns to appropriate data types
   - Exported the cleaned data for SQL and Power BI use

2. **Exploratory Data Analysis (Python):**
   - Investigated weekly sales distribution
   - Analyzed sales trends during holidays vs non-holidays
   - Examined correlations with temperature, fuel price, CPI, and unemployment

3. **SQL Analysis:**
   - Filtered sales by store, holiday flag, and seasonal periods
   - Aggregated weekly and average sales
   - Joined and queried cleaned dataset to prepare for dashboard import

4. **Power BI Dashboard:**
   - Created store-wise and time-wise interactive visuals
   - Compared sales in holiday vs non-holiday weeks
   - Visualized effects of fuel price, CPI, and unemployment on sales

## Key Insights

- Sales are significantly higher during certain holidays like Super Bowl and Thanksgiving.
- Some stores consistently outperform others — suggesting possible strategic advantages.
- Economic indicators like CPI and unemployment show mild correlations with sales dips or stagnation.
- Fuel price fluctuation impacts overall store visits and sales.
