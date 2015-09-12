select customer.marital_status as c0, customer.gender as c1, store.store_type as c2 from customer as customer, sales_fact_1997 as sales_fact_1997, store as store where sales_fact_1997.customer_id = customer.customer_id and sales_fact_1997.store_id = store.store_id group by customer.marital_status, customer.gender, store.store_type order by customer.marital_status ASC NULLS LAST, customer.gender ASC NULLS LAST, store.store_type ASC NULLS LAST;
