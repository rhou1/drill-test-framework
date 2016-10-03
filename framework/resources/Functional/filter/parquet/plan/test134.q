-- keep partitions 1, 3, 5.  count is 8911.
explain plan for select count(*) from orders_parts where (date_id > '2008-06-22' and date_id < '2016-09-29') or (timestamp_id > '2016-10-05 02:16:25.406' and timestamp_id < '2016-10-07 03:18:25.406') or (time_id > '03:49:39.827' and time_id < '04:38:50.827');
