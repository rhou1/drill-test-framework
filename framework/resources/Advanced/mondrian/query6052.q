select count(distinct inventory_fact_1997.warehouse_cost) as m0 from warehouse as warehouse, inventory_fact_1997 as inventory_fact_1997 where inventory_fact_1997.warehouse_id = warehouse.warehouse_id and ((warehouse.warehouse_fax is null and warehouse.wa_address2 is null and warehouse.wa_address3 is null) or (warehouse.warehouse_fax = '971-555-6213' and warehouse.wa_address2 is null and warehouse.wa_address3 is null));
