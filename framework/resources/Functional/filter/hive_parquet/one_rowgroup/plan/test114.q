-- keep partition 5.  count is 10
explain plan for select int_id, bigint_id, float_id, double_id, timestamp_id from orders_parts_hive where date_id >= '2042-10-07' and date_id <= '2042-10-16';
