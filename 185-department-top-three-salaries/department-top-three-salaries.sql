# Write your MySQL query statement below
with highestearner as (select *, dense_rank() over(partition by departmentId order by salary desc) as salary_rank from employee)


select d.name as department, h.name as employee, h.salary
from highestearner h
left join department d
on h.departmentid = d.id
where h.salary_rank <= 3;


# or 