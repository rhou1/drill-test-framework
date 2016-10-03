-- keep partition 5.  count is 10
explain plan for select bigint_id from orders_parts_hive where bigint_id >= 11111 and bigint_id <= 11120;
