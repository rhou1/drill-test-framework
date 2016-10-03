-- keep partition 2.  count is 3065.
select count(*) from orders_parts_hive where (double_id > -5 and double_id < 3061);
