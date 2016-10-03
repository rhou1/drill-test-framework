-- keep partition 5.  count is 10
explain plan for select int_id, float_id, double_id, date_id, timestamp_id from orders_parts_hive where bigint_id >= 11111 and bigint_id <= 11120;
