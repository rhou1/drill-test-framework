ALTER SESSION SET `exec.sort.disable_managed` = false;
alter session set `planner.width.max_per_node` = 1;
alter session set `planner.disable_exchanges` = true;
alter session set `planner.width.max_per_query` = 1;
alter session set `planner.memory.max_query_memory_per_node` = 152428800;
select count(*) from (
  select * from (
    select s1.type type, flatten(s1.rms.rptd) rptds, s1.rms, s1.uid 
    from (
      select d.type type, d.uid uid, flatten(d.map.rm) rms from dfs.`/drill/testdata/resource-manager/nested-large.json` d order by d.uid
    ) s1
  ) s2
  order by s2.rms.mapid
);
ALTER SESSION RESET `exec.sort.disable_managed`;
alter session reset `planner.width.max_per_node`;
alter session reset `planner.disable_exchanges`;
alter session reset `planner.width.max_per_query`;
alter session reset `planner.memory.max_query_memory_per_node`;
