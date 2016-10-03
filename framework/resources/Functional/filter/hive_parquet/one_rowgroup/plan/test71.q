-- keep no partitions.  count is 0
explain plan for select count(*) from orders_parts_hive where (bigint_id = -3025) or (bigint_id < -3024) or (bigint_id > 11975) or (bigint_id = 11976);
