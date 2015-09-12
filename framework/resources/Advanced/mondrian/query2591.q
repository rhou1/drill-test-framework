select store.store_state as c0, store.store_city as c1, time_by_day.the_year as c2, time_by_day.quarter as c3, time_by_day.month_of_year as c4, sum(sales_fact_1997.unit_sales) as m0 from store as store, sales_fact_1997 as sales_fact_1997, time_by_day as time_by_day where sales_fact_1997.store_id = store.store_id and store.store_state = 'CA' and store.store_city in ('Los Angeles', 'San Francisco') and sales_fact_1997.time_id = time_by_day.time_id and time_by_day.the_year = 1997 and time_by_day.quarter = 'Q1' and time_by_day.month_of_year = 2 group by store.store_state, store.store_city, time_by_day.the_year, time_by_day.quarter, time_by_day.month_of_year;
