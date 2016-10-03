-- keep partitions 2 and 5
explain plan for select count(*) from orders_parts_hive where (float_id > 5 and float_id <= 1005) or (float_id > 9100 and float_id < 10101);
