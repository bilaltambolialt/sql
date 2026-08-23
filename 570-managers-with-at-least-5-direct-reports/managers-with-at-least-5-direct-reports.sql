# Write your MySQL query statement below
select e.name 
from Employee e
 join employee r
on e.id = r.managerId
group by r.managerId
having count(r.managerId) >= 5;