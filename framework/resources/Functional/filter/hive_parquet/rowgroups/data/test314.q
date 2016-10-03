-- keep 3 partitions.  count is 650.
select count(*) from orders_parts_rowgr where cast(bigint_id as int) < 11976 and cast(bigint_id as float) > 11325;
