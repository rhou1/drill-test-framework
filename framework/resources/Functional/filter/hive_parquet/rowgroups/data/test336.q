-- keep 5 partitions.  count is 500.
select count(*) from orders_parts_rowgr where (cast(double_id as double) > 3430 and cast(double_id as double) < 3630.5) or (cast(double_id as double) > 4500 and cast(double_id as double) < 4600.5) or (cast(double_id as double) > 5400 and cast(double_id as double) < 5500.5) or (cast(double_id as double) > 5900 and cast(double_id as double) < 6000.5);
