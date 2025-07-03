USE Walmart;

--Checking if data has imported properly
SELECT COUNT(*) FROM walmart_sales;

SELECT * FROM walmart_sales;

--Checking for Null or Missing values
SELECT * FROM walmart_sales WHERE Store_Number IS NULL;
SELECT * FROM walmart_sales WHERE Date IS NULL;
SELECT * FROM walmart_sales WHERE Weekly_Sales IS NULL;
SELECT * FROM walmart_sales WHERE Holiday_Flag IS NULL;
SELECT * FROM walmart_sales WHERE Temperature IS NULL;
SELECT * FROM walmart_sales WHERE Fuel_Price IS NULL;
SELECT * FROM walmart_sales WHERE CPI IS NULL;
SELECT * FROM walmart_sales WHERE Unemployment IS NULL;

--Some basic descriptive stats
SELECT 
	SUM(CAST(Weekly_Sales AS BIGINT)) AS Total_Sales,
	AVG(CAST(Weekly_Sales AS BIGINT)) AS Average_Sales,
	MAX(Weekly_Sales) AS Maximum_Sales,
	MIN(Weekly_Sales) AS Minimum_Sales
FROM walmart_sales;

--Holiday Impact Analysis
--comparING weekly sales during holidays vs non-holidays.
SELECT Holiday_Flag,
      AVG(CAST(Weekly_Sales AS BIGINT)) AS avg_sales,
      SUM(CAST(Weekly_Sales AS BIGINT)) AS total_sales
FROM walmart_sales
GROUP BY Holiday_Flag;

--High Sales (Sales More than Average)
SELECT COUNT(*) FROM walmart_sales 
WHERE Weekly_Sales > 1122887;

SELECT * FROM walmart_sales 
WHERE Weekly_Sales > 1122887;

--Store level performance
SELECT Store_number, SUM(Weekly_Sales) AS total_sales
FROM walmart_sales
GROUP BY Store_Number
ORDER BY total_sales DESC;




