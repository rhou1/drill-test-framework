ALTER SESSION SET `exec.sort.disable_managed` = false;
alter session set `planner.memory.max_query_memory_per_node` = 10737418240;
alter session set `planner.width.max_per_query` = 17;
alter session set `planner.width.max_per_node` = 10;
select count(*) from (select * from dfs.`/drill/testdata/resource-manager/nums.tbl` order by columns[0]) d where d.columns[0] = '4041054511';
ALTER SESSION RESET `exec.sort.disable_managed`;
alter session reset `planner.width.max_per_query`;
alter session reset `planner.memory.max_query_memory_per_node`;
alter session reset `planner.width.max_per_node`;
