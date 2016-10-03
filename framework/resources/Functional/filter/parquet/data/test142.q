-- keep partitions 1, 2.  count is 2
select count(*) from orders_parts where (time_id >=  '01:17:10.873' and time_id <= '01:17:55.160');
