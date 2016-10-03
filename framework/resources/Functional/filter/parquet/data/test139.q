-- keep partitions 2, 3.  count is 2
select count(*) from orders_parts where (int_id > -6 and int_id < -3);
