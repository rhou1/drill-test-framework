-- keep partitions 2 and 4.  count is 3025.
select count(*) from orders_parts_hive where float_id = 0 or float_id is null;
