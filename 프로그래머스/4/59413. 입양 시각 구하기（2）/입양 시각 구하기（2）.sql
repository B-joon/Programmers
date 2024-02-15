-- 코드를 입력하세요
select b.hour, nvl(a.count, 0) as count
from (select 
count(to_char(datetime, 'FMHH24')) as count, 
to_char(datetime, 'FMHH24') as hour
from animal_outs
group by to_char(datetime, 'FMHH24')) a
right outer join
(select level-1 as hour from dual connect by level <= 24) b
 on a.hour = b.hour
order by b.hour

