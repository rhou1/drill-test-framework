-- keep 2 partitions.  count is 922.
select count(*) from orders_parts_rowgr where cast(int_id as double) > -3024.5 and cast(int_id as float) < -2102.5;
