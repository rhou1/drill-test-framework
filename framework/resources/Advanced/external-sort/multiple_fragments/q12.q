ALTER SESSION SET `exec.sort.disable_managed` = false;
alter session set `planner.memory.max_query_memory_per_node` = 14106127360;
select count(*) from (select * from dfs.`/drill/testdata/resource-manager/descending-col-length-4k.tbl` order by columns[0])d where d.columns[0] = 'ljdfhwuehnoiueyf';
ALTER SESSION SET `exec.sort.disable_managed` = true;
alter session set `planner.memory.max_query_memory_per_node` = 2147483648;
