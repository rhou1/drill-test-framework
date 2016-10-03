-- keep 5 partitions.  count is 1711.
explain plan for select count(*) from orders_parts_rowgr where (cast(double_id as bigint) > 4499.5 and cast(double_id as int) < 9500.5) and (cast(double_id as bigint) > 3999.5 and cast(double_id as int) < 9234.5);
