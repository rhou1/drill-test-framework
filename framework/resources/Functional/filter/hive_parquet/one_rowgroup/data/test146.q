-- keep partitions 2, 3.  count is 2
select count(*) from orders_parts_hive where (double_id >= -5.0 and double_id <= -4.0);
