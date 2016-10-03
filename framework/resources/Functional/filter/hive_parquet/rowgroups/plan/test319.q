-- keep 6 partitions.  count is 2756.
explain plan for select count(*) from orders_parts_rowgr where cast(cast(bigint_id as double) as int) < cast(cast(11782 as float) as double) and cast(cast(bigint_id as int) as float) > cast(cast(6001 as double) as bigint);
