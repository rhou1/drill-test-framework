-- keep partition 1.  count is 1.
select count(*) from orders_parts_hive where (int_id > -6 and int_id < -4);
