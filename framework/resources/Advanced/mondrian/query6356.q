select store.store_name as c0, time_by_day.the_year as c1, time_by_day.quarter as c2, time_by_day.month_of_year as c3, product_class.product_family as c4, product_class.product_department as c5, product_class.product_category as c6, product_class.product_subcategory as c7, product.brand_name as c8, customer.state_province as c9, customer.city as c10, sum(sales_fact_1997.store_sales) as m0 from store as store, sales_fact_1997 as sales_fact_1997, time_by_day as time_by_day, product_class as product_class, product as product, customer as customer where sales_fact_1997.store_id = store.store_id and store.store_name = 'Store 14' and sales_fact_1997.time_id = time_by_day.time_id and time_by_day.the_year = 1997 and time_by_day.quarter = 'Q1' and time_by_day.month_of_year = 1 and sales_fact_1997.product_id = product.product_id and product.product_class_id = product_class.product_class_id and product_class.product_family = 'Drink' and product_class.product_department = 'Alcoholic Beverages' and product_class.product_category = 'Beer and Wine' and product_class.product_subcategory = 'Wine' and product.brand_name in ('Portsmouth', 'Top Measure', 'Walrus') and sales_fact_1997.customer_id = customer.customer_id and customer.state_province = 'CA' and customer.city in ('Daly City', 'Novato', 'Palo Alto') group by store.store_name, time_by_day.the_year, time_by_day.quarter, time_by_day.month_of_year, product_class.product_family, product_class.product_department, product_class.product_category, product_class.product_subcategory, product.brand_name, customer.state_province, customer.city;
