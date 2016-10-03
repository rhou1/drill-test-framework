-- keep 2 partitions.  count is 649.
explain plan for select count(*) from orders_parts_rowgr where cast(bigint_id as double) < 11975.5 and cast(bigint_id as float) > 11326.5;
