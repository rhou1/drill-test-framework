-- keep partition 5.  count is 10
select int_id, float_id, double_id, date_id, timestamp_id, time_id from orders_parts where bigint_id >= 11111 and bigint_id <= 11120;
