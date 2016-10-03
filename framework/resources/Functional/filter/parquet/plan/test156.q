-- keep partition 5.  count is 1.
explain plan for select count(*) from orders_parts where time_id > '04:38:48.827' and time_id < '03:50:00.127';
