-- keep 2 partitions.  count is 2.
explain plan for select count(*) from orders_parts_rowgr where float_id > cast(934.5 as float) and float_id < cast(936.5 as double);
