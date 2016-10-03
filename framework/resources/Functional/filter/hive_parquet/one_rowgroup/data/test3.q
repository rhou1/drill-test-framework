-- keep partition 3
select count(*) from orders_parts_hive where int_id >= 4000 and int_id <= 4999;
