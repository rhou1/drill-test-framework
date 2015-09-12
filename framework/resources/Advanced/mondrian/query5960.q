select employee_manager.management_role as c0, store.store_type as c1 from employee as employee, employee as employee_manager, inventory_fact_1997 as inventory, store as store where employee.supervisor_id = employee_manager.employee_id and inventory.product_id = employee.employee_id and inventory.warehouse_id = store.store_id group by employee_manager.management_role, store.store_type order by employee_manager.management_role ASC NULLS LAST, store.store_type ASC NULLS LAST;
