-- keep partitions 2, 3.  count is 2
explain plan for select count(*) from orders_parts where (timestamp_id > '2016-10-05 02:14:52.429' and timestamp_id < '2016-10-05 02:18:25.406');
