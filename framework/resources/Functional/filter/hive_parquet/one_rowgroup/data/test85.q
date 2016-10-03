-- keep null partition.  count is 11976.
select count(*) from orders_parts_hive where timestamp_id is not null;
