-- keep partition 1, 3, 5.  count is 8911.
explain plan for select count(*) from orders_parts_hive where (int_id >= -3024 and int_id <= -5) or (bigint_id >= 3061 and bigint_id <= 6001) or (float_id >= 9026.0 and float_id <= 11975);
