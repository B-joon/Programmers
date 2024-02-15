-- 코드를 입력하세요
SELECT trunc(price, -4) as price_group, count(trunc(price, -4)) as products
from product
group by trunc(price, -4)
order by trunc(price, -4)