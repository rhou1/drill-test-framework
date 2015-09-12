select time_by_day.the_year as c0, warehouse.warehouse_name as c1, sum(inventory_fact_1997.units_shipped) as m0 from time_by_day as time_by_day, inventory_fact_1997 as inventory_fact_1997, warehouse as warehouse where inventory_fact_1997.time_id = time_by_day.time_id and time_by_day.the_year = 1997 and inventory_fact_1997.warehouse_id = warehouse.warehouse_id group by time_by_day.the_year, warehouse.warehouse_name;
