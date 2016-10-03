-- keep partitions 2, 3.  count is 2
select count(*) from orders_parts where (double_id > -6 and double_id < -3);
