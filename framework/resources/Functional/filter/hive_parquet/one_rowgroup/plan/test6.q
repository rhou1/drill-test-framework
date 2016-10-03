-- keep partition 5
explain plan for select count(*) from orders_parts_hive where int_id > 10975;
