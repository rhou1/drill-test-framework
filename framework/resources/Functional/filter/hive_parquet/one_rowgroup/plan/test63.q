-- keep partitions 1,2,3,4,5.  count is 3028.
explain plan for select count(*) from orders_parts_hive where (double_id = -3024) or (double_id = 0) or (double_id = 4000) or (double_id is null) or (double_id = 11975);
