--Q1:What are the top 5 depts by revenue
select
	d.department,
	sum(o.quantity * p.unit_price) as revenue
from orders as o
join products as p on o.product_id = p.product_id
join departments as d on d.department_id = p.department_id
group by d.department
order by revenue desc
limit 5;

--Q2: What are top 3 products we sold most during the weekends?
select * from products

SELECT 
  p.product_name,
  o.order_dow,
  sum(o.quantity) as total_quantity_sold
from products as p
join orders as o on p.product_id = o.product_id
where o.order_dow IN ('0','6')
group by p.product_name, o.order_dow
order by total_quantity_sold desc
limit 3;

SELECT 
  p.product_name,
  sum(o.quantity) as total_quantity_sold
from orders as o
join products as p on o.product_id = p.product_id
where o.order_dow in ('0', '6')
group by p.product_name
order by total_quantity_sold desc
limit 3;

--correct
SELECT
    p.product_name,
    SUM(o.quantity) AS Total_Quantity_Sold
FROM orders o
JOIN products p
    ON o.product_id = p.product_id
WHERE o.order_dow IN ('0', '6')
GROUP BY p.product_name
ORDER BY Total_Quantity_Sold DESC
LIMIT 3;


--Q3:Does bread generate more profits than alcoholic products?

select 
	d.department,
	sum ((p.unit_price - p.unit_cost) * o.quantity) as total_profit
from products as p
join departments as d on d.department_id = p.department_id
join orders as o on o.product_id = p.product_id
where d.department in ('bakery','alcohol')
group by d.department
order by total_profit desc;


select 
    case 
        when p.product_name = 'Bread' then 'Bread'
        when d.department = 'alcohol' then 'Alcohol'
    end as product_category,
    sum((p.unit_price - p.unit_cost) * o.quantity) as total_profit
from products as p
join departments as d on d.department_id = p.department_id
join orders as o on o.product_id = p.product_id
where p.product_name = 'Bread'
   or d.department = 'alcohol'
group by product_category;

--correct query
select 
    case 
        when p.product_name like '%Bread%' then 'Bread'
        when d.department like '%alcohol%' then 'Alcohol'
    end as product_category,
    sum((p.unit_price - p.unit_cost) * o.quantity) as total_profit
from products as p
join departments as d on d.department_id = p.department_id
join orders as o on o.product_id = p.product_id
where p.product_name like '%Bread%'
   or d.department like '%alcohol%'
group by product_category
order by total_profit desc;


SELECT 
    d.department,
    SUM(o.quantity)                    AS total_units_sold,
    SUM(o.quantity * p.unit_price)     AS total_revenue,
    SUM(o.quantity *p.unit_cost)       AS total_cost,
    SUM(o.quantity * p.unit_price) - SUM(o.quantity *p.unit_cost)       AS total_profit
FROM orders AS o
JOIN products AS p ON o.product_id = p.product_id
JOIN departments AS d ON p.department_id = d.department_id
WHERE d.department IN ('bakery', 'alcohol')
GROUP BY d.department
ORDER BY total_profit DESC;


SELECT 
    d.department,
    a.aisle,
    SUM(o.quantity * p.unit_price) - SUM(o.quantity *p.unit_cost)   AS total_profit
FROM orders AS o
JOIN products AS p ON o.product_id = p.product_id
JOIN departments AS d ON p.department_id = d.department_id
JOIN aisle AS a ON p.aisle_id = a.aisle_id
WHERE d.department IN ('bread', 'alcohol')
	or a.aisle IN ('bread', 'alcohol')
GROUP BY d.department, a.aisle
ORDER BY d.department, total_profit DESC;

--Q4:Which products have not been sold at all?
SELECT COUNT(*) 
FROM Products p
LEFT JOIN orders o
    ON p.Product_ID = o.Product_ID
WHERE o.Product_ID IS NULL;

 select p.product_name, p.product_id
from products p
left join orders o on p.product_id = o.product_id
where o.product_id is null;
