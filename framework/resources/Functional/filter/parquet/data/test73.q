-- keep no partitions.  count is 0
select count(*) from orders_parts where (double_id = -3025.0) or (double_id < -3024.0) or (double_id > 11975.0) or (double_id = 11976.0);
