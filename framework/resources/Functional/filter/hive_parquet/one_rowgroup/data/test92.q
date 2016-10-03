-- keep partition 1.  count is 0.
select count(*) from orders_parts_hive where (int_id = -3000) and (bigint_id = -2999) and (float_id = -2998.0) and (double_id = -2997.0) and (date_id = '2008-07-21') and (timestamp_id = '2016-09-30 21:21:12.873');
