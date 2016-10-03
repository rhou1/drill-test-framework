-- keep 2 partitions.  count is 2.
explain plan for select count(*) from orders_parts_rowgr where cast(float_id as double) > 2318.5 and cast(float_id as bigint) < 2321;
