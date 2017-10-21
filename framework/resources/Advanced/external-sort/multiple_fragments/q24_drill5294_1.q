ALTER SESSION SET `exec.sort.disable_managed` = false;
alter session set `planner.memory.max_query_memory_per_node` = 10737418240;
alter session set `planner.width.max_per_query` = 1000;
alter session set `planner.width.max_per_node` = 17;
select count(*) from (select * from dfs.`/drill/testdata/resource-manager/250wide_files` d where cast(d.columns[1] as int) > 0 order by columns[0]) d1 where d1.columns[0] = 'kjhf';
ALTER SESSION RESET `exec.sort.disable_managed`;
alter session reset `planner.memory.max_query_memory_per_node`;
alter session reset `planner.width.max_per_query`;
alter session reset `planner.width.max_per_node`;
