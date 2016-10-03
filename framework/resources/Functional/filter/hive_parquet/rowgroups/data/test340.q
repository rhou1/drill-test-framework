-- keep 1 partitions.  count is 459.  test casting with double_id.  also test ranges of rows using "and" for MEDIUM order priority file.
select count(*) from orders_parts_rowgr where (double_id > 3059 and double_id < 3520) and (double_id >= 3061 and double_id <= 10500);
