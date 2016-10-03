-- keep partition 5.  count is 10
explain plan for select int_id, bigint_id, float_id, double_id, date_id, time_id from orders_parts where timestamp_id >= '2016-10-09 13:36:38.986' and timestamp_id <= '2016-10-09 13:45:38.986';
