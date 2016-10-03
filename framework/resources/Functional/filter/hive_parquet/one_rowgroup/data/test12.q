-- keep partitions 1 and 4.  count is 3025.
select count(*) from orders_parts_hive where bigint_id = -2000 or bigint_id is null;
