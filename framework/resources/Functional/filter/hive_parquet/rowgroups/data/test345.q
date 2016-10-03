-- keep 3 partitions.  count is 600.
select count(*) from orders_parts_rowgr where (cast(double_id as float) > 5001.5 and cast(double_id as bigint) < 9126) and (cast(double_id as float) > 5501.5 and cast(double_id as bigint) < 9825);
