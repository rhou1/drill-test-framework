-- keep partition 1.  count is 1.
explain plan for select count(*) from orders_parts_hive where int_id = -1111;
