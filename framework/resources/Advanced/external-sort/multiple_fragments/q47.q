ALTER SESSION SET `exec.sort.disable_managed` = false;
alter session set `planner.memory.max_query_memory_per_node` = 5524288000;
alter session set `planner.enable_decimal_data_type` = true;
select count(*) from (select * from dfs.`/drill/testdata/resource-manager/all_types_large` order by missing11) d where d.missing3 is false;
alter session reset `planner.enable_decimal_data_type`;
ALTER SESSION RESET `exec.sort.disable_managed`;
alter session reset `planner.memory.max_query_memory_per_node`;
