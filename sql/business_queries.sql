-- Total Revenue
SELECT SUM(Revenue) AS total_revenue
FROM retail;

-- Total Customers
SELECT COUNT(DISTINCT Customer ID) AS total_customers
FROM retail;

-- Monthly Revenue
SELECT 
    YEAR(InvoiceDate) AS year,
    MONTH(InvoiceDate) AS month,
    SUM(Revenue) AS monthly_revenue
FROM retail
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY year, month;

-- Top 10 Customers
SELECT 
    Customer ID,
    SUM(Revenue) AS total_spent
FROM retail
GROUP BY CustomerID
ORDER BY total_spent DESC
LIMIT 10;

-- Revenue by Country
SELECT 
    Country,
    SUM(Revenue) AS total_revenue
FROM retail
GROUP BY Country
ORDER BY total_revenue DESC;
