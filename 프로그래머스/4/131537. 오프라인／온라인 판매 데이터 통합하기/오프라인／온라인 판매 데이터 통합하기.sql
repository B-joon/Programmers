-- 코드를 입력하세요
# select date_format(sales_date, '%Y-%m-%d') as sales_date, product_id, user_id, sales_amount from online_sale
# where sales_date between '2022-03-01 00:00:00' and '2022-03-31 23:59:59'
# order by sales_date, product_id, user_id
# union
# select sales_date, product_id, null, sales_amount from offline_sale
# where sales_date between '2022-03-01 00:00:00' and '2022-03-31 23:59:59'

select date_format(sales_date, '%Y-%m-%d') as sales_date, product_id, user_id, sales_amount
from (
    select sales_date, product_id, user_id, sales_amount from online_sale 
    union all
    select sales_date, product_id, null as user_id, sales_amount from offline_sale
) sales_tb
where sales_date between '2022-03-01 00:00:00' and '2022-03-31 23:59:59'
order by sales_date, product_id, user_id
