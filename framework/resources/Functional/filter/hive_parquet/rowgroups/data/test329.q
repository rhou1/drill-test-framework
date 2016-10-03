-- keep 7 partitions.  count is 2790.
select count(*) from orders_parts_rowgr where cast(cast(float_id as bigint) as double) < cast(cast(2785.5 as int) as bigint) and cast(cast(float_id as double) as int) > cast(cast(-4.5 as bigint) as float);
