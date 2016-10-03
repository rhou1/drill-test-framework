-- keep partition 1, 3, 5.  count is 8911.
select count(*) from orders_parts_hive where (int_id > -3025 and int_id < -4) or (bigint_id > 3060 and bigint_id < 6002) or (float_id > 9025.0 and float_id < 11976);
