-- keep partitions 2, 3.  count is 2
select count(*) from orders_parts_hive where (bigint_id >= -5 and bigint_id <= -4);
