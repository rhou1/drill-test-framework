-- keep 2 partitions.  count is 195.
select count(*) from orders_parts_rowgr where bigint_id < cast(11975.5 as bigint) and bigint_id > cast(11779.5 as int);
