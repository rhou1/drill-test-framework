-- keep 2 partitions.  count is 2.
select count(*) from orders_parts_rowgr where cast(float_id as double) > 1853 and cast(float_id as int) < 1856;
