-- keep partition 2.  count is 3065.
explain plan for select count(*) from orders_parts where (double_id >= -4 and double_id <= 3060);
