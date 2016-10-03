-- keep partitions 1 and 2.  count is 3100.
select count(*) from orders_parts_hive where bigint_id <= 75;
