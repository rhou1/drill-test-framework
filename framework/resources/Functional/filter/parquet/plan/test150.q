-- keep partition 1.  count is 1.
explain plan for select count(*) from orders_parts where (int_id > -6 and int_id < -4);
