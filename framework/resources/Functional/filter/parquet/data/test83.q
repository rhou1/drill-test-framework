-- keep null partition.  count is 11976.
select count(*) from orders_parts where double_id is not null;
