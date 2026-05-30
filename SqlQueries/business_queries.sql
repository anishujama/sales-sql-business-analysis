-- Revenue & Profit Analysis
--   find total revenue of company
select round(sum(Total_Amount),2) as Total_revenue
from sales_data;

--   Total Profit of company
select round(sum(Profit),2) as Total_profit
from sales_data;

--   Average order values
select round(sum(Total_amount),2) as Average_order_value
from sales_data;

-- Product Analysis
--  Top 5 product by revenue
select Product_name,
	round(sum(Total_amount),2) as Revenue	
    from sales_data
group by Product_name
order by Revenue desc 
limit 5;

--  Lowest 5 product by revenue
select Product_name,
	round(sum(Total_amount),2) as Revenue	
    from sales_data
group by Product_name
order by Revenue asc 
limit 5;

-- Top 5 product by profit 
select product_name,
	round(sum(Profit),2) as profit
    from sales_data
group by product_name
order by profit desc
limit 5;

-- Lowest 5 product by profit
select product_name,
	round(sum(Profit),2) as profit
    from sales_data
group by product_name
order by profit asc
limit 5;

-- Category analysis
-- Revenue by category
select category,
	round(sum(Total_amount),2) as Revenue	
    from sales_data
group by Category
order by Revenue desc ;

-- Profit by category
select category,
	round(sum(Profit),2) as Revenue	
    from sales_data
group by Category
order by Revenue desc ;

-- Regional analysis
-- Sales by Region
SELECT Region,
       ROUND(SUM(Total_Amount),2) AS Revenue
FROM sales_data
GROUP BY Region
ORDER BY Revenue DESC;

-- profit by region 
SELECT Region,
       ROUND(SUM(profit),2) AS profit
FROM sales_data
GROUP BY Region
ORDER BY profit DESC;

-- Top 10 customer by spending money
SELECT Customer_Name,
       ROUND(SUM(Total_Amount),2) AS Total_Spent
FROM sales_data
GROUP BY Customer_Name
ORDER BY Total_Spent DESC
LIMIT 10;

-- Lowest 10 customer by spending money
select customer_name,
round(sum(Total_amount),2) as total_spent
from sales_data
group by customer_name
order by total_spent asc
limit 10;

-- Payment analysis
SELECT Payment_Method,
       COUNT(*) AS Transactions
FROM sales_data
GROUP BY Payment_Method
ORDER BY Transactions DESC;

-- sales channel analsis
-- online vs offline revenue 
SELECT Sales_Channel,
       ROUND(SUM(Total_Amount),2) AS Revenue
FROM sales_data
GROUP BY Sales_Channel;


-- online vs offline profit
select sales_channel,
round(sum(profit),2) as profit
from sales_data
group by sales_channel

select * from sales_data




