-- keep partitions 1, 2.  count is 2
explain plan for select count(*) from orders_parts where (date_id >= '2016-09-28' and date_id <= '2016-09-29');
