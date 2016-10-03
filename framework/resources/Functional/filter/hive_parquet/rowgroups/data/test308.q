-- keep 8 partitions.  count is 3021.
select count(*) from orders_parts_rowgr where int_id > cast(-3025 as float) and int_id < cast(-3 as double);
