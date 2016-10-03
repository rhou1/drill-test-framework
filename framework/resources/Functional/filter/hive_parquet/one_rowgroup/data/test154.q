-- keep partition 3.  count is 1.
select count(*) from orders_parts_hive where date_id > '2033-03-08' and date_id < '2041-06-20' and date_id is not null;
