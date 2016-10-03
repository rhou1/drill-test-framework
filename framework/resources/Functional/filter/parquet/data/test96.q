-- keep all partition.  count is 7024.
select count(*) from orders_parts where (int_id > -3000 and int_id < -1999) or (bigint_id > -3000 and bigint_id < -1999) or (float_id > -3000.0 and float_id < -1999.0) or (double_id > 0.0 and double_id < 1001.0) or (date_id >= '2027-09-16' and date_id <= '2030-06-11') or (timestamp_id is null) or (time_id >= '03:57:34.827' and time_id <= '04:14:13.827');
