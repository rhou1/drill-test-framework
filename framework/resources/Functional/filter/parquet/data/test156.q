-- keep partition 4.  count is 1.
select count(*) from orders_parts where time_id > '03:49:39.827' and time_id < '03:49:41.827' and time_id is not null;
