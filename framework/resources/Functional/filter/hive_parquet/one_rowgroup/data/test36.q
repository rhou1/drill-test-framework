-- keep partitions 1,2,3,4.  count is 5025.
select count(*) from orders_parts_hive where (date_id > '2008-07-17' and date_id <= '2011-04-13') or (date_id >= '2016-10-03' and date_id < '2019-06-30') or (date_id = '2027-09-16') or date_id is null;
