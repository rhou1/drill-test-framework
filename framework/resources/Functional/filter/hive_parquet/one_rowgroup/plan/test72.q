-- keep no partitions.  count is 0
explain plan for select count(*) from orders_parts_hive where (float_id = -3025.0) or (float_id < -3024.0) or (float_id > 11975.0) or (float_id = 11976.0);
