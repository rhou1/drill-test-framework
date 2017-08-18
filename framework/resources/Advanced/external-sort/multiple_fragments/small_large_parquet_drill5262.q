ALTER SESSION SET `exec.sort.disable_managed` = false;
alter session set `planner.memory.max_query_memory_per_node` = 201273600;
alter session set `planner.width.max_per_query` = 20;
select count(*) from (select * from dfs.`/drill/testdata/resource-manager/small_large_parquet` order by col1 desc) d; 
ALTER SESSION RESET `exec.sort.disable_managed`;
alter session reset `planner.memory.max_query_memory_per_node`;
alter session reset `planner.width.max_per_query`;
