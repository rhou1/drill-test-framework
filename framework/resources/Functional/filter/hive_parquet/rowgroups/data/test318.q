-- keep 8 partitions.  count is 2951.
select count(*) from orders_parts_rowgr where bigint_id < cast(11976 as float) and bigint_id > cast(6000 as double);
