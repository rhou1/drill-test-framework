-- keep partitions 1,2,3,4.  count is 5025.
select count(*) from orders_parts where (time_id > '00:27:15.873' and time_id <= '00:43:55.873') or (time_id >= '01:17:59.160' and time_id < '01:34:39.160') or (time_id = '02:25:15.073') or time_id is null;
