-- keep no partitions.  count is 0
select count(*) from orders_parts where (time_id = '00:26:50.873') or (time_id < '00:26:51.873') or (time_id > '04:38:49.827') or (time_id = '04:38:50.827');
