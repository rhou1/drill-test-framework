ALTER SESSION SET `exec.sort.disable_managed` = false;
alter session set `planner.width.max_per_node` = 1;
alter session set `planner.disable_exchanges` = true;
alter session set `planner.memory.max_query_memory_per_node` = 1073741824;
alter session set `planner.enable_hashagg` = false;
select count(*) from (select d.col1 from (select distinct columns[0] col1 from dfs.`/drill/testdata/resource-manager/250wide.tbl`) d order by concat(d.col1, 'ASDF'))d2 where d2.col1 = 'askjdhfjhfds';
ALTER SESSION SET `exec.sort.disable_managed` = true;
alter session set `planner.width.max_per_node` = 17;
alter session set `planner.disable_exchanges` = false;
alter session set `planner.memory.max_query_memory_per_node` = 2147483648;
alter session set `planner.enable_hashagg` = true;
