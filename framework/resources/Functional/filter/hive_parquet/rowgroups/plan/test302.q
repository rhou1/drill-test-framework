-- keep 2 partitions.  count is 461.
explain plan for select count(*) from orders_parts_rowgr where int_id > cast(-3024.5 as int) and int_id < cast(-2562.5 as bigint);
