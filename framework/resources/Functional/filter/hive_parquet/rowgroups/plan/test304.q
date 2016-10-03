-- keep 3 partitions.  count is 923.
explain plan for select count(*) from orders_parts_rowgr where cast(int_id as bigint) > -3025 and cast(int_id as float) < -2101;
