-- keep 12 partitions.  count is 4417.  test casting with double_id.  also test ranges of rows using "or" for MEDIUM order priority file.
select count(*) from orders_parts_rowgr where (double_id > 3059 and double_id < 3520) or (double_id >= 3061 and double_id <= 10500);
