-- keep 1 partition.  count is 460.
explain plan for select count(*) from orders_parts_rowgr where int_id > -3024.5 and int_id < -2564.5;
