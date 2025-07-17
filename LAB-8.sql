-- Create the SALES_DATA table
CREATE TABLE SALES_DATA (
    Region VARCHAR(50),
    Product VARCHAR(50),
    Sales_Amount INT,
    Year INT
);

-- Insert records into the table
INSERT INTO SALES_DATA (Region, Product, Sales_Amount, Year) VALUES
('North America', 'Watch', 1500, 2023),
('Europe', 'Mobile', 1200, 2023),
('Asia', 'Watch', 1800, 2023),
('North America', 'TV', 900, 2024),
('Europe', 'Watch', 2000, 2024),
('Asia', 'Mobile', 1000, 2024),
('North America', 'Mobile', 1600, 2023),
('Europe', 'TV', 1500, 2023),
('Asia', 'TV', 1100, 2024),
('North America', 'Watch', 1700, 2024);



-------------------------PART-A------------------------------

--1-Display Total Sales Amount by Region.--

SELECT SUM(SALES_AMOUNT) AS TOTAL_SALE_REGION , REGION
FROM SALES_DATA
GROUP BY Region;

--2-Display Average Sales Amount by Product--

SELECT AVG(SALES_AMOUNT) AS AVG_SALE_PRODUCT , Product
FROM SALES_DATA
GROUP BY Product;

--3-Display Maximum Sales Amount by Year --

SELECT MAX(SALES_AMOUNT) AS MAX_SALE_YEAR , Year
FROM SALES_DATA
GROUP BY Year;

--4-Display Minimum Sales Amount by Region and Year--

SELECT MIN(SALES_AMOUNT) AS MIN_SALE_YEAR_REGION , Year , Region
FROM SALES_DATA
GROUP BY Year , Region;

--5-Count of Products Sold by Region --

SELECT COUNT(PRODUCT) AS COUNT_PRODUCT_REGION , Region
FROM SALES_DATA
GROUP BY Region;

--6-Display Sales Amount by Year and Product --

SELECT SUM(SALES_AMOUNT) AS TOTAL_SALE_YEAR_PRODUCT , Year ,Product
FROM SALES_DATA
GROUP BY Year , Product;

--7-Display Regions with Total Sales Greater Than 5000--

SELECT SUM(SALES_AMOUNT) AS TOTAL_SALE_YEAR_PRODUCT , Region
FROM SALES_DATA
GROUP BY Region
HAVING SUM(SALES_AMOUNT) > 5000;

--8-Display Products with Average Sales Less Than 10000--

SELECT AVG(SALES_AMOUNT) AS TOTAL_SALE_PRODUCT , Product
FROM SALES_DATA
GROUP BY Product
HAVING AVG(SALES_AMOUNT) < 10000;

--9-Display Years with Maximum Sales Exceeding 500--

SELECT MAX(SALES_AMOUNT) AS MAX_SALE_YEAR , Year
FROM SALES_DATA
GROUP BY Year
HAVING MAX(SALES_AMOUNT) > 500;

--10-Display Regions with at Least 3 Distinct Products Sold.--

SELECT COUNT(DISTINCT Product) AS MAX_SALE_YEAR , Region
FROM SALES_DATA
GROUP BY Region
HAVING COUNT(DISTINCT Product) >= 3;

--11-Display Years with Minimum Sales Less Than 1000 --

SELECT MIN(SALES_AMOUNT) AS MAX_SALE_YEAR , Year
FROM SALES_DATA
GROUP BY Year
HAVING MIN(SALES_AMOUNT) < 1000;

--12-Display Total Sales Amount by Region for Year 2023, Sorted by Total Amount --

SELECT SUM(SALES_AMOUNT) AS TOTAL_2023_REGION , Region
FROM SALES_DATA
WHERE Year = 2023
GROUP BY Region
ORDER BY SUM(SALES_AMOUNT);

--13-Find the Region Where 'Mobile' Had the Lowest Total Sales Across All Years.--

SELECT TOP 1 Region , SUM(SALES_AMOUNT) AS TOTAL_YMIN_SALE_MOB , Year 
FROM SALES_DATA
WHERE Product = 'MOBILE'
GROUP BY YEAR , Region
ORDER BY SUM(SALES_AMOUNT);

--14-Find the Product with the Highest Sales Across All Regions in 2023

SELECT TOP 1 PRODUCT , REGION ,  MAX(SALES_AMOUNT) AS TOTAL_2023_PRODU
FROM SALES_DATA
WHERE Year = 2023
GROUP BY Region , Product;

--15-Find Regions Where 'TV' Sales in 2023 Were Greater Than 1000.--

SELECT REGION , SUM(SALES_AMOUNT) AS TOTAL_SALE
FROM SALES_DATA
WHERE Product = 'TV' AND YEAR = 2023
GROUP BY Region
HAVING SUM(SALES_AMOUNT) > 1000;



-----------------------------PART-B-----------------------------


--1-Display Count of Orders by Year and Region, Sorted by Year and Region--

SELECT COUNT(Product) AS TOTAL_PRODUCT , Year , Region
FROM SALES_DATA
GROUP BY Year ,  Region
ORDER BY Year , Region;

--2-Display Regions with Maximum Sales Amount Exceeding 1000 in Any Year, Sorted by Region--

SELECT REGION , MAX(SALES_AMOUNT) AS TOTAL_SALE 
FROM SALES_DATA
GROUP BY Region
HAVING MAX(SALES_AMOUNT) > 1000
ORDER BY Region

--3-Display Years with Total Sales Amount Less Than 10000, Sorted by Year Descending --

SELECT  SUM(SALES_AMOUNT) AS TOTAL_SALE , Year 
FROM SALES_DATA
GROUP BY Year
HAVING SUM(SALES_AMOUNT) < 10000
ORDER BY Year DESC;

--4-Display Top 3 Regions by Total Sales Amount in Year 2024 --

SELECT TOP 3 REGION , SUM(SALES_AMOUNT) AS TOTAL_SALE 
FROM SALES_DATA
WHERE YEAR = 2024
GROUP BY Region
ORDER BY SUM(SALES_AMOUNT) DESC;

--5-Find the Year with the Lowest Total Sales Across All Regions. --

------------------------------------------14 IN A IS WRONG CORRECT IT AND CHECK EVERY QUES.----






