-- keep partition 5.  count is 1.
explain plan for select count(*) from orders_parts where timestamp_id > '2016-10-09 05:41:38.986' and timestamp_id < '2016-10-09 05:43:38.986';
