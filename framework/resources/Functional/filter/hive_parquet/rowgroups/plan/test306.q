-- keep 7 partitions.
explain plan for select count(*) from orders_parts_rowgr where cast(int_id as int) > -3025 and cast(int_id as int) < -254.5;
