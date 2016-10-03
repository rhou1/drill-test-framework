-- keep partitions 1, 2.  count is 2
explain plan for select count(*) from orders_parts where (time_id > '01:17:09.873' and time_id < '01:17:56.160');
