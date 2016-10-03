-- keep partition 5.  count is 10
select int_id, bigint_id, double_id, date_id, timestamp_id, time_id from orders_parts where float_id >= 11111.0 and float_id <= 11120.9;
