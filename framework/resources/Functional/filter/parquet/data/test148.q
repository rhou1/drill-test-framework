-- keep partitions 2, 3.  count is 2
select count(*) from orders_parts where (float_id > -6 and float_id < -3);
