-- keep partition 5.  count is 10
select int_id, bigint_id, float_id, double_id, date_id, timestamp_id, time_id from orders_parts where time_id >= '03:57:34.827' and time_id <= '03:57:43.827';
