-- keep 2 partitions.  count is 2.
select count(*) from orders_parts_rowgr where cast(float_id as float) > 2783 and cast(float_id as float) < 2785.5;
