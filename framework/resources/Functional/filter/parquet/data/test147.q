-- keep partitions 2, 3.  count is 2
select count(*) from orders_parts where (bigint_id > -6 and bigint_id < -3);
