-- keep partition 1, 2, 3, 5.  count is 11976.
select count(*) from orders_parts_hive where ((int_id > -3025 and int_id < -4) or (int_id > -5 and int_id < 3061)) or ((int_id > -3025 and int_id < -4) or (int_id > 3060 and int_id < 6002)) or ((int_id > -3025 and int_id < -4) or (int_id > 9025 and int_id < 11976));
