-- keep 8 partitions.  count is 1500.
select count(*) from orders_parts_rowgr where (double_id > cast(4799.5 as int) and double_id < cast(5000.6 as bigint)) or (double_id > cast(5399.5 as int) and double_id < cast(5500.6 as bigint)) or (double_id > cast(5899.5 as int) and double_id < cast(9124.6 as bigint)) or (double_id > cast(9999.5 as int) and double_id < cast(11000.6 as bigint));
