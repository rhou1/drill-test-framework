-- keep 11 partitions.  count is 3574.
explain plan for select count(*) from orders_parts_rowgr where (cast(double_id as float) > 3500.5 and cast(double_id as bigint) < 5000) or (cast(double_id as float) > 5900.5 and cast(double_id as bigint) < 11000);
