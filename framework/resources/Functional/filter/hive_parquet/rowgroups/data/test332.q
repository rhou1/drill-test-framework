-- keep 8 partitions.  count is 2977.
select count(*) from orders_parts_rowgr where (double_id > cast(3999.5 as double) and double_id < cast(10000.5 as float)) or (double_id > cast(4239.5 as double) and double_id < cast(9500.5 as float));
