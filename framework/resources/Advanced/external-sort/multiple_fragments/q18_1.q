ALTER SESSION SET `exec.sort.disable_managed` = false;
alter session set `planner.memory.max_query_memory_per_node` = 10737418240;
alter session set `planner.width.max_per_query` = 50;
alter session set `planner.enable_hashjoin` = false;
alter session set `planner.width.max_per_node` = 10;
use dfs.concurrency;
select count(*) from
        dfs.concurrency.customer_nocompression_256_filtered c,
        dfs.concurrency.orders_nocompression_256 o,
        dfs.concurrency.lineitem_nocompression_256 l
    where
        c.c_custkey = o.o_custkey
        and l.l_orderkey = o.o_orderkey;
ALTER SESSION RESET `exec.sort.disable_managed`;
alter session reset `planner.memory.max_query_memory_per_node`;
alter session reset `planner.width.max_per_query`;
alter session reset `planner.enable_hashjoin`;
use dfs.tpcds_sf1_parquet_views;
alter session reset `planner.width.max_per_node`;
