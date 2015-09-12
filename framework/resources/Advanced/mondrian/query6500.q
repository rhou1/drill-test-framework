select time_by_day.the_year as c0, store.store_name as c1, employee_closure.supervisor_id as c2, sum(salary.salary_paid) as m0 from time_by_day as time_by_day, salary as salary, store as store, employee as employee, employee_closure as employee_closure where salary.pay_date = time_by_day.the_date and time_by_day.the_year = 1997 and salary.employee_id = employee.employee_id and employee.store_id = store.store_id and salary.employee_id = employee_closure.employee_id and employee_closure.supervisor_id in (20, 25, 53, 56, 88, 99) group by time_by_day.the_year, store.store_name, employee_closure.supervisor_id;
