-- keep partition 5.  count is 10
select int_id, bigint_id, float_id, date_id, timestamp_id, time_id from orders_parts where double_id >= 11111.0 and double_id <= 11120.9;
