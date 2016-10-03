-- keep 2 partitions.  count is 2.
explain plan for select count(*) from orders_parts_rowgr where cast(float_id as bigint) > 1392.5 and cast(float_id as int) < 1394.5;
