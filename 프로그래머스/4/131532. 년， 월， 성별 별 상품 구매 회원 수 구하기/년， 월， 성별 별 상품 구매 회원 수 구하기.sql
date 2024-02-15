-- 코드를 입력하세요
-- SELECT to_char(b.sales_date, 'YYYY') as year, 
-- to_char(b.sales_date, 'DD') as month,
-- a.gender,
-- count(user_id) as users
-- from user_info a
-- inner join online_sale b
-- where a.gender is not null
-- group by to_char(b.sales_date, 'YYYY'), to_char(b.sales_date, 'DD'), a.gender
-- order by to_char(b.sales_date, 'YYYY'), to_char(b.sales_date, 'DD'), a.gender

select extract(year from b.sales_date) as year,
extract(month from b.sales_date) as month,
a.gender,
count(distinct a.user_id) as users
from user_info a
inner join online_sale b
on a.user_id = b.user_id
where a.gender is not null
group by extract(year from b.sales_date), extract(month from b.sales_date), a.gender
order by extract(year from b.sales_date), extract(month from b.sales_date), a.gender