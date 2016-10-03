-- keep partitions 1,2,3,4,5.  count is 3028.
explain plan for select count(*) from orders_parts where (float_id = -3024) or (float_id = 0) or (float_id = 4000) or (float_id is null) or (float_id = 11975);
