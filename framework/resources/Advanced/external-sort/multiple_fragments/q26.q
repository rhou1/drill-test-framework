ALTER SESSION SET `exec.sort.disable_managed` = false;
alter session set `planner.width.max_per_node` = 10;
alter session set `planner.width.max_per_query` = 25;
alter session set `planner.enable_hashagg` = false;
select count(*) from (select d.col1 from (select distinct columns[0] col1 from dfs.`/drill/testdata/resource-manager/250wide.tbl`) d order by concat(d.col1, 'ASDF'))d2 where d2.col1 = 'askjdhfjhfds';
ALTER SESSION RESET `exec.sort.disable_managed`;
alter session reset `planner.width.max_per_node`;
alter session reset `planner.width.max_per_query`;
alter session reset `planner.enable_hashagg`;
