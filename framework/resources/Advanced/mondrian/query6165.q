select customer.state_province as c0 from customer as customer, sales_fact_1997 as sales_fact_1997 where sales_fact_1997.customer_id = customer.customer_id and customer.country = 'USA' group by customer.state_province order by customer.state_province ASC NULLS LAST;
