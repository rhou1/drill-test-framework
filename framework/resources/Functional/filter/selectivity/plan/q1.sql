alter session set `planner.filter.min_selectivity_estimate_factor` = 0.0;
explain plan including all attributes for select * from lineitem;
alter session set `planner.filter.min_selectivity_estimate_factor` = 0.0;
