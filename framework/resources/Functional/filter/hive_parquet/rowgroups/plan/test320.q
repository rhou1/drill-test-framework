-- keep 2 partitions.  count is 2.  test casting with float_id.  also test rowgroup boundaries for HIGH order priority file.
explain plan for select count(*) from orders_parts_rowgr where float_id > -6 and float_id < -3;
