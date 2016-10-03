-- keep no partitions.  count is 0.  test casting with bigint_id.  also test rowgroup boundaries for LOW order priority file.
select count(*) from orders_parts_rowgr where bigint_id > 11975;
