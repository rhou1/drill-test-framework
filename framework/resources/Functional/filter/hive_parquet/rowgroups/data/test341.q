-- keep no partition.  count is 0.
select count(*) from orders_parts_rowgr where (double_id > 3499.5 and double_id < 11000.5) and (double_id > 3499.5 and double_id < 3745.5) and (double_id > 4801 and double_id < 11000.5);
