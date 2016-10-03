-- keep no partitions.  count is 0
explain plan for select count(*) from orders_parts where (date_id = '2008-06-22') or (date_id < '2008-06-23') or (date_id > '2049-07-17') or (date_id = '2049-07-18');
