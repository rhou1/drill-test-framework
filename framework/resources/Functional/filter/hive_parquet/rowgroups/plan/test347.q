-- keep 4 partitions.  count is 975.
explain plan for select count(*) from orders_parts_rowgr where (cast(double_id as double) > 5500 and cast(double_id as int) < 10000.5) and (cast(double_id as bigint) > 3500.5 and cast(double_id as float) < 9500);
