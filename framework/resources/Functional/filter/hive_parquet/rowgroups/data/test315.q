-- keep 6 partitions.  count is 2487.
select count(*) from orders_parts_rowgr where cast(bigint_id as int) < 11975.5 and cast(bigint_id as double) > 9488;
