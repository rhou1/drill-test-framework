select time_by_day.quarter as c0 from time_by_day as time_by_day where (time_by_day.the_year = 1998) and UPPER(time_by_day.quarter) = UPPER('Q3') group by time_by_day.quarter order by time_by_day.quarter ASC NULLS LAST;
