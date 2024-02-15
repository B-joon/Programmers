-- 코드를 입력하세요
SELECT name from
(select row_number() over(order by datetime) as rnum, name from animal_ins)
where rnum = 1