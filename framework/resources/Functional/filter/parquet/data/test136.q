-- keep partitions 1, 2.  count is 2
select count(*) from orders_parts where (date_id >  '2016-09-27' and date_id < '2016-09-30');
