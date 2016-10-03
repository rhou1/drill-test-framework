-- keep 1 partitions.  count is 0.
select count(*) from orders_parts_rowgr where (cast(double_id as float) > 3600 and cast(double_id as int) < 4600) and (cast(double_id as float) > 4599 and cast(double_id as int) < 9601);
