-- keep partition 3.  count is 1.
select count(*) from orders_parts_hive where (double_id > 3060.0 and float_id < 3062.0);
