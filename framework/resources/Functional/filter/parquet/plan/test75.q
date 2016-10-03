-- keep no partitions.  count is 0
explain plan for select count(*) from orders_parts where (timestamp_id = '2016-09-30 20:51:12.873') or (timestamp_id < '2016-09-30 20:52:12.873') or (timestamp_id > '2016-10-11 06:51:38.986') or (timestamp_id = '2016-10-11 06:52:38.986');
