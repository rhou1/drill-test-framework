-- keep partitions 1, 2.  count is 2
explain plan for select count(*) from orders_parts where (int_id >= -5 and int_id <= -4);
