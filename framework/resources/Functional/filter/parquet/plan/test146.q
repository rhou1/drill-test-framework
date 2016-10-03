-- keep partitions 1, 2.  count is 2
explain plan for select count(*) from orders_parts where (double_id >= -5.0 and double_id <= -4.0);
