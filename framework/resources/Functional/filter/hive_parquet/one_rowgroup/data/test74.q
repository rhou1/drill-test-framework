-- keep no partitions.  count is 0
select count(*) from orders_parts_hive where (date_id = '2008-06-22') or (date_id < '2008-06-23') or (date_id > '2049-07-17') or (date_id = '2049-07-18');
