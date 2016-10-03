-- keep 6 partitions.  count is 2769.
explain plan for select count(*) from orders_parts_rowgr where cast(int_id as bigint) > -3024.5 and cast(int_id as double) < -255;
