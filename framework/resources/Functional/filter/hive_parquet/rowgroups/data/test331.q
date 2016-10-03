-- keep 12 partition.  count is 4477.
select count(*) from orders_parts_rowgr where (double_id > 3499.5 and double_id < 11000.5) or (double_id > 3499.5 and double_id < 3745.5) or (double_id > 4801 and double_id < 11000.5);
