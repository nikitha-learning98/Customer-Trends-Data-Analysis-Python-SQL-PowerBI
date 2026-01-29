--- Revenue by Gender ---
select
gender,
sum(purchase_amount) as revenue
from dbo.table_name 
group by gender
order by revenue


--- High-Spending Discount users ---
select 
customer_id,
purchase_amount
from dbo.table_name 
where discount_applied='Yes' and purchase_amount>=(select AVG(purchase_amount) from dbo.table_name)
order by purchase_amount DESC

--- Top 5 products by Review_Rating ---
select top 5
item_purchased,
round(Avg(review_rating),2)
from dbo.table_name
group by item_purchased
order by Avg(review_rating) DESC

--- Comapre Average purchase amount between standard and express shipping  ---
select shipping_type,
AVG(purchase_amount)
from dbo.table_name
where shipping_type in ('Standard','Express')
group by shipping_type

--- Comparing average spend and total revenue across subscription status ---
select 
subscription_status, 
count(customer_id) as total_customers,
sum(purchase_amount) as total_revenue,
AVG(purchase_amount) as average_spend
from dbo.table_name
group by subscription_status
order by total_revenue, average_spend

--- Top 5 products that has highest percentage of purchases with discounts applied ---
select top 5
item_purchased,
round(100*sum(case when discount_applied='Yes' then 1 else 0 end)/COUNT(*),2) as discount_rate
from dbo.table_name
group by item_purchased
order by discount_rate desc

--- Segment customers into New, Returning, and Loyal segments based on purchase history and show the count of each segment. ---
with cte_customer_type as(
select customer_id,
previous_purchases,
case 
	when previous_purchases=1 then 'New'
	when previous_purchases between 2 and 10 then 'Returning'
	Else 'Loyal'
end as customer_segment
from dbo.table_name
)

select 
customer_segment,
count(*) as number_of_customers
from cte_customer_type
group by customer_segment;


--- Top 3 most purchased products within each category ---
with cte_item_counts as(
select category,
item_purchased,
count(customer_id) as total_orders,
Row_number() over(partition by category order by count(customer_id) DESC) as item_rank
from dbo.table_name 
group by category,item_purchased
)

select item_rank, category, item_purchased, total_orders from cte_item_counts
where item_rank <=3


--- checks if customers with >5 purchases are subscribed. ---
select 
subscription_status,
count(customer_id) as repeat_buyers
from dbo.table_name
where previous_purchases>5
group by subscription_status

--- Revenue by age_group ---
select 
age_group,
sum(purchase_amount) as total_revenue
from dbo.table_name
group by age_group
order by total_revenue desc

