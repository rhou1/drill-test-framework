-- keep partition 1.  count is 1.
select count(*) from orders_parts where (int_id = -3000) and (bigint_id = -3000) and (float_id = -3000.0) and (double_id = -3000.0) and (date_id = '2008-07-17') and (timestamp_id = '2016-09-30 21:16:12.873') and (time_id = '00:27:15.873');
