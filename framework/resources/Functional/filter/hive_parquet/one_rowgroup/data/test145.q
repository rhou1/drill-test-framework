-- keep partitions 2, 3.  count is 2
select count(*) from orders_parts_hive where (float_id >= -5.0 and float_id <= -4.0);
