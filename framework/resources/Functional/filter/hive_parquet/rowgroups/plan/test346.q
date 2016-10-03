-- keep 4 partitions.  count is 976.
explain plan for select count(*) from orders_parts_rowgr where (cast(double_id as double) > 4000 and cast(double_id as double) < 11000.5) and (cast(double_id as double) > 5500 and cast(double_id as double) < 9500.5);
