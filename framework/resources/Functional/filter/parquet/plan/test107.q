-- keep partition 5.  count is 10
explain plan for select bigint_id, float_id, double_id, date_id, timestamp_id, time_id from orders_parts where int_id >= 11111 and int_id <= 11120;
