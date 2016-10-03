-- keep 7 partitions.  count is 2488.
explain plan for select count(*) from orders_parts_rowgr where cast(bigint_id as bigint) < 11976 and cast(bigint_id as bigint) > 9487.5;
