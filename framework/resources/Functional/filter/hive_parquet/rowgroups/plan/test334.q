-- keep 8 partitions.  count is 2976.
explain plan for select count(*) from orders_parts_rowgr where (cast(double_id as float) > 3600 and cast(double_id as int) < 4600) or (cast(double_id as float) > 4599 and cast(double_id as int) < 9601);
