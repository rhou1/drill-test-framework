-- keep partition 5.  count is 10
explain plan for select int_id, bigint_id, double_id, date_id, timestamp_id from orders_parts_hive where float_id >= 11111.0 and float_id <= 11120.9;
