-- 코드를 입력하세요
SELECT animal_id, name
from 
(select a.animal_id, a.name
from animal_ins a
inner join animal_outs b
on a.animal_id = b.animal_id
order by trunc(b.datetime) - trunc(a.datetime) desc)
where rownum < 3