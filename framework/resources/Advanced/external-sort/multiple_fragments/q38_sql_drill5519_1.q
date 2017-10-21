ALTER SESSION SET `exec.sort.disable_managed` = false;
alter session set `planner.memory.max_query_memory_per_node` = 10737418240;
alter session set `planner.width.max_per_query` = 100;
alter session set `planner.width.max_per_node` = 10;
select count(*) from (select * from (select flatten(flatten(lst_lst)) num from dfs.`/drill/testdata/resource-manager/nested-large.json`) d order by d.num) d1 where d1.num < -1;
ALTER SESSION RESET `exec.sort.disable_managed`;
alter session reset `planner.memory.max_query_memory_per_node`;
alter session reset `planner.width.max_per_query`;
alter session reset `planner.width.max_per_node`;
