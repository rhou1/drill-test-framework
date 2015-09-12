select time_by_day.the_year as c0, count(distinct salary.employee_id) as m0 from time_by_day as time_by_day, salary as salary, store as store, employee as employee where salary.pay_date = time_by_day.the_date and time_by_day.the_year = 1997 and salary.employee_id = employee.employee_id and employee.store_id = store.store_id and store.store_name in ('Store 6', 'Store 7') group by time_by_day.the_year;
