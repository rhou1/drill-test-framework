-- keep partitions 1, 3, 5.  count is 8911.
explain plan for select count(*) from orders_parts where (date_id >= '2008-06-23' and date_id <= '2016-09-28') or (timestamp_id >= '2016-10-05 02:17:25.406' and timestamp_id <= '2016-10-07 03:17:25.406') or (time_id >= '03:49:40.827' and time_id <= '04:38:49.827');
