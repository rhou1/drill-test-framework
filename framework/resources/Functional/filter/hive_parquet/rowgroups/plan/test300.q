-- keep no partitions.  count is 0.  test casting with int_id.  also test rowgroup boundaries for URGENT file.
explain plan for select count(*) from orders_parts_rowgr where int_id < -3024.0;
