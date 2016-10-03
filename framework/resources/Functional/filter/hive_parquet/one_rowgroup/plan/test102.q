-- keep partition 5.  count is 1
explain plan for select * from orders_parts_hive where int_id = 11111;
