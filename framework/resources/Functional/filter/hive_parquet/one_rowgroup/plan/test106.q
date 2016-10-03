-- keep partition 5.  count is 10
explain plan for select int_id from orders_parts_hive where int_id >= 11111 and int_id <= 11120;
