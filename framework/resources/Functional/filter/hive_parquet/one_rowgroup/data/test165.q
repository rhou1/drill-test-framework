-- keep partition 1.  count is 0.
select count(*) from orders_parts_hive where ((int_id > -3025 and int_id < -2000) or (int_id > 3060 and int_id < 6002)) and ((int_id > -2001 and int_id < -4) or (int_id > 9025 and int_id < 11976));
