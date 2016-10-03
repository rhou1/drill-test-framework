-- keep partitions 1,2,3,4,5.  count is 3028.
select count(*) from orders_parts where (bigint_id = -3024) or (bigint_id = 0) or (bigint_id = 4000) or (bigint_id is null) or (bigint_id = 11975);
