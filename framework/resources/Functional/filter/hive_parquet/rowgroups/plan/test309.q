-- keep 7 partitions.  count is 2561.
explain plan for select count(*) from orders_parts_rowgr where cast(cast(int_id as double) as bigint) > cast(cast(-2565 as float) as double) and cast(cast(int_id as bigint) as float) < cast(cast(-3 as double) as int);
