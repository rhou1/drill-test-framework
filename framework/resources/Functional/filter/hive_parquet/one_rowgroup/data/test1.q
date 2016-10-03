-- keep partition 1
select count(*) from orders_parts_hive where int_id <= -2025;
