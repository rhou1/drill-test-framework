-- keep partition 2.  count is 1.
explain plan for select count(*) from orders_parts_hive where (float_id > 3059.0 and float_id < 3061.0);
