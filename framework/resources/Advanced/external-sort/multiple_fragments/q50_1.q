ALTER SESSION SET `exec.sort.disable_managed` = false;
alter session set `planner.memory.max_query_memory_per_node` = 10737418240;
alter session set `planner.width.max_per_query` = 10;
alter session set `planner.width.max_per_node` = 5;
select count(*) from (select * from (select columns[0] col1, FQN, filepath, filename, suffix from dfs.`/drill/testdata/resource-manager/250wide-small.tbl` order by filepath, filename,FQN,suffix))d where d.filename = 'ljdfhwuehnoiueyf';
ALTER SESSION RESET `exec.sort.disable_managed`;
alter session reset `planner.memory.max_query_memory_per_node`;
alter session reset `planner.width.max_per_query`;
alter session reset `planner.width.max_per_node`;
