-- keep all partition.  count is 3030.
select count(*) from orders_parts_hive where (int_id = 10000) or (bigint_id = -2000) or (float_id = -1000) or (double_id = 0) or (date_id ='2027-09-16') or (timestamp_id is null);
