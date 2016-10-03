-- keep partition 2.  count is 1.
explain plan for select count(*) from orders_parts where (bigint_id > -5 and bigint_id < -3);
