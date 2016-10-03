-- keep partitions 1, 2.  count is 2
explain plan for select count(*) from orders_parts where (float_id > -6 and float_id < -3);
