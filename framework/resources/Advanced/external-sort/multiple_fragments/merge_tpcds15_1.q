-- start query 15 in stream 0 using template query15.tpl 
ALTER SESSION SET `exec.sort.disable_managed` = false;
alter session set `planner.memory.max_query_memory_per_node` = 10737418240;
alter session set `planner.enable_hashjoin` = false;
alter session set `planner.width.max_per_query` = 1000;
alter session set `planner.width.max_per_node` = 17;
SELECT ca_zip, 
               Sum(cs_sales_price) 
FROM   catalog_sales, 
       customer, 
       customer_address, 
       date_dim 
WHERE  cs_bill_customer_sk = c_customer_sk 
       AND c_current_addr_sk = ca_address_sk 
       AND ( Substr(ca_zip, 1, 5) IN ( '85669', '86197', '88274', '83405', 
                                       '86475', '85392', '85460', '80348', 
                                       '81792' ) 
              OR ca_state IN ( 'CA', 'WA', 'GA' ) 
              OR cs_sales_price > 500 ) 
       AND cs_sold_date_sk = d_date_sk 
       AND d_qoy = 1 
       AND d_year = 1998 
GROUP  BY ca_zip 
ORDER  BY ca_zip;
alter session reset `planner.enable_hashjoin`;
ALTER SESSION RESET `exec.sort.disable_managed`;
alter session reset `planner.memory.max_query_memory_per_node`;
alter session reset `planner.width.max_per_query`;
alter session reset `planner.width.max_per_node`;
