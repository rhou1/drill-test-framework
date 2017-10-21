ALTER SESSION SET `exec.sort.disable_managed` = false;
alter session set `planner.memory.max_query_memory_per_node` = 10737418240;
alter session set `planner.width.max_per_query` = 17;
alter session set `planner.width.max_per_node` = 10;
select * from (select * from dfs.`/drill/testdata/resource-manager/data1.tsv` order by columns[0]) d where d.columns[0] = 'Q4OUV/SLOWDRILL/Q4OUV!5LJ2JUFLJE4';
ALTER SESSION RESET `exec.sort.disable_managed`;
alter session reset `planner.memory.max_query_memory_per_node`;
alter session reset `planner.width.max_per_query`;
alter session reset `planner.width.max_per_node`;
