-- keep partition 1.  overlapping ranges.  count is 2500.
select count(*) from orders_parts_hive where (int_id > -3000 and int_id < -1999) or (bigint_id > -2500 and bigint_id < -1499) or (float_id > -2000.0 and float_id < -999.0) or (double_id > -1500.0 and double_id < -499.0) or (date_id > '2012-05-17' and date_id < '2015-02-12') or (timestamp_id > '2016-10-01 18:56:12.873' and timestamp_id < '2016-10-02 11:37:12.873');
