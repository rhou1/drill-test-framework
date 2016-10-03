-- keep partitions 1, 2.  count is 2
select count(*) from orders_parts_hive where (date_id >=  '2016-09-28' and date_id <= '2016-09-29');
