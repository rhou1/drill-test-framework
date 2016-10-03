-- keep 1 partition.  count is 194.
explain plan for select count(*) from orders_parts_rowgr where bigint_id < 11975.5 and bigint_id > 11781.5;
