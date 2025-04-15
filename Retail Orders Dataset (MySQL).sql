use ccdb;

select * from orders;

select Order_Date, monthname(Order_Date) from orders;

select Order_Date, extract(month from Order_Date) from orders;

select round(sum(Total_Price),2) from orders;

select count(distinct Order_ID) from orders;

select * from orders
order by Total_Price desc;


select * from orders
where year(Order_Date) = 2017
order by Total_Price desc
limit 5;


SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(Total_Price) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    orders
GROUP BY 
    YEAR(order_date), MONTH(order_date);



