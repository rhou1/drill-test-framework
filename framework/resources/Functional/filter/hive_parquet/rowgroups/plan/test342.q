-- keep 7 partitions.  count is 2237.
explain plan for select count(*) from orders_parts_rowgr where (double_id > cast(3999.5 as double) and double_id < cast(10000.5 as float)) and (double_id > cast(4239.5 as double) and double_id < cast(9500.5 as float));
