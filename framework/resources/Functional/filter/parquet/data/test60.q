-- keep partitions 1,2,3,4,5.  count is 3028.
select count(*) from orders_parts where (int_id = -3024) or (int_id = 0) or (int_id = 4000) or (int_id is null) or (int_id = 11975);
