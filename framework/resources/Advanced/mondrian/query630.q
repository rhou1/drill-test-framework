select store.store_country as c0, time_by_day.the_year as c1, product.product_name as c2, sum(sales_fact_1997.store_sales) as m0 from store as store, sales_fact_1997 as sales_fact_1997, time_by_day as time_by_day, product as product where sales_fact_1997.store_id = store.store_id and store.store_country = 'USA' and sales_fact_1997.time_id = time_by_day.time_id and time_by_day.the_year = 1997 and sales_fact_1997.product_id = product.product_id group by store.store_country, time_by_day.the_year, product.product_name;
