ALTER SESSION SET `exec.sort.disable_managed` = false;
alter session set `planner.width.max_per_node` = 5;
alter session set `planner.width.max_per_query` = 10;
select count(*) from (select * from dfs.`/drill/testdata/resource-manager/flattened_parquet` order by str) where id = -1;
ALTER SESSION RESET `exec.sort.disable_managed`;
alter session reset `planner.width.max_per_node`;
alter session reset `planner.width.max_per_query`;
