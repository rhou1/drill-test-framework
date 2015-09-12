select time_by_day.the_year as c0 from time_by_day as time_by_day, sales_fact_1997 as sales_fact_1997, store as store, customer as customer where sales_fact_1997.time_id = time_by_day.time_id and sales_fact_1997.store_id = store.store_id and sales_fact_1997.customer_id = customer.customer_id and store.store_country = 'USA' and store.store_state = 'CA' and store.store_city in ('Alameda', 'Beverly Hills', 'Los Angeles', 'San Diego', 'San Francisco') and store.store_name in ('HQ', 'Store 6', 'Store 7', 'Store 24', 'Store 14') and customer.country = 'USA' and customer.state_province = 'CA' and customer.city in ('Altadena', 'Arcadia', 'Bellflower', 'Berkeley', 'Beverly Hills', 'Burbank', 'Burlingame', 'Chula Vista', 'Colma', 'Concord', 'Coronado', 'Daly City', 'Downey', 'El Cajon', 'Fremont', 'Glendale', 'Grossmont', 'Imperial Beach', 'La Jolla', 'Lakewood', 'La Mesa', 'Lemon Grove', 'Lincoln Acres', 'Long Beach', 'Los Angeles', 'Mill Valley', 'National City', 'Newport Beach', 'Novato', 'Oakland', 'Palo Alto', 'Pomona', 'Redwood City', 'Richmond', 'San Carlos', 'San Diego', 'San Francisco', 'San Gabriel', 'San Jose', 'Santa Cruz', 'Santa Monica', 'Spring Valley', 'Torrance', 'West Covina', 'Woodland Hills') group by time_by_day.the_year order by time_by_day.the_year ASC NULLS LAST;
