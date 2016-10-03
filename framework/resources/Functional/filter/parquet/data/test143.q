-- keep partitions 2, 3.  count is 2
select count(*) from orders_parts where (int_id >= -5 and int_id <= -4);
