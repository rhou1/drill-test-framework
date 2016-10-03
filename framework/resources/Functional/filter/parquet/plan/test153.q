-- keep partition 3.  count is 1.
explain plan for select count(*) from orders_parts where (double_id > 3060.0 and float_id < 3062.0);
