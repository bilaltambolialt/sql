# Write your MySQL query statement below
select p.product_id, round(ifnull(sum(us.units*p.price)/sum(us.units),0),2) as average_price
from prices p
LEFT join unitssold us
on p.product_id = us.product_id AND 
us.purchase_date between p.start_date and p.end_date
group by p.product_id;