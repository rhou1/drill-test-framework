select store.store_state as c0, time_by_day.the_year as c1, time_by_day.quarter as c2, count(sales_fact_1997.product_id) as m0, count(distinct sales_fact_1997.customer_id) as m1 from store as store, sales_fact_1997 as sales_fact_1997, time_by_day as time_by_day where sales_fact_1997.store_id = store.store_id and store.store_state in ('DF', 'WA') and sales_fact_1997.time_id = time_by_day.time_id and time_by_day.the_year = 1997 and time_by_day.quarter = 'Q2' group by store.store_state, time_by_day.the_year, time_by_day.quarter;
