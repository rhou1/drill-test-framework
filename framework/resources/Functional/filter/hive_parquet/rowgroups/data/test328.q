-- keep 2 partitions.  count is 2.
select count(*) from orders_parts_rowgr where float_id > cast(3058.5 as int) and float_id < cast(3061.6 as bigint);
