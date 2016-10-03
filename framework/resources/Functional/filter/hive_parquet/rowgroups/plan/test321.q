-- keep 2 partition.  count is 2.
explain plan for select count(*) from orders_parts_rowgr where float_id > 466.5 and float_id < 468.5;
