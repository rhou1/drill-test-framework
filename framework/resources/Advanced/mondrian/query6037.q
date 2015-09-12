select warehouse.warehouse_name as c0 from warehouse as warehouse where (warehouse.wa_address1 = '234 West Covina Pkwy' and warehouse.warehouse_fax is null) and UPPER(warehouse.warehouse_name) = UPPER('Freeman And Co') group by warehouse.warehouse_name order by warehouse.warehouse_name ASC NULLS LAST;
