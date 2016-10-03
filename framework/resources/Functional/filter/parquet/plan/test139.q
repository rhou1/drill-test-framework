-- keep partitions 1, 2.  count is 2
explain plan for select count(*) from orders_parts where (int_id > -6 and int_id < -3);
