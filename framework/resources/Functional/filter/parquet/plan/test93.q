-- keep all partition.  count is 3030.
explain plan for select count(*) from orders_parts where (int_id = -3000) or (bigint_id = 0) or (float_id = 4000) or (double_id is null) or (date_id = '2042-10-07') or (timestamp_id = '2016-10-09 13:37:38.986') or (time_id = '03:57:36.827');
