-- 코드를 입력하세요
select a.user_id, a.nickname, 
a.city || ' ' || a.street_address1 || ' ' || a.street_address2 as 전체주소,
regexp_replace(a.tlno, '(02|.{3})(.+)(.{4})', '\1-\2-\3') as 전화번호
from used_goods_user a
inner join (
            select count(b.writer_id) as deal_count, a.user_id
            from used_goods_user a
            right outer join used_goods_board b
            on a.user_id = b.writer_id
            group by a.user_id
            having count(b.writer_id) >= 3) b
on a.user_id = b.user_id
order by user_id desc