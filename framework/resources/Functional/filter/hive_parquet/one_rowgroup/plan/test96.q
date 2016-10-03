-- keep all partition.  count is 7024.
explain plan for select count(*) from orders_parts_hive where (int_id > 9500 and int_id < 10501) or (bigint_id > -3000 and bigint_id < -1999) or (float_id > -3000.0 and float_id < -1999.0) or (double_id > 0.0 and double_id < 1001.0) or (date_id >= '2027-09-16' and date_id <= '2030-06-11') or (timestamp_id is null);
