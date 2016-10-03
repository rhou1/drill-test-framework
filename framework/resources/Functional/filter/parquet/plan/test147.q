-- keep partitions 1, 2.  count is 2
explain plan for select count(*) from orders_parts where (bigint_id > -6 and bigint_id < -3);
