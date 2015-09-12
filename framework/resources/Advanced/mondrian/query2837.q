select customer.customer_id as c0, fullname as c1, fullname as c2, customer.gender as c3, customer.marital_status as c4, customer.education as c5, customer.yearly_income as c6 from customer as customer where (customer.city = 'San Carlos' and customer.state_province = 'CA') group by customer.customer_id, fullname, customer.gender, customer.marital_status, customer.education, customer.yearly_income order by fullname ASC NULLS LAST;
