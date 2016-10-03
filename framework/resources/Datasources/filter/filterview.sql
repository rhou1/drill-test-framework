alter session set `store.format` = 'parquet';
use dfs.parquet_filter_pushdown;
create or replace view orders_parts_view1 as select cast(int_id as double) my_int, cast(float_id as bigint) my_float from orders_parts where int_id > 3333;
create or replace view orders_parts_view2 as select cast(int_id as double) my_int, cast(float_id as bigint) my_float from orders_parts where int_id > 3333 and float_id <= 4333;
