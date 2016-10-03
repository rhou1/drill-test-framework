-- keep all partition.  count is 7024.
select count(*) from orders_parts_hive where (int_id > -3000 and int_id < -1999) or (bigint_id > 0 and bigint_id < 1001) or (float_id > 4000.1 and float_id < 5001.0) or (double_id is null) or (date_id >= '2042-10-07' and date_id <= '2045-07-02') or (timestamp_id > '2016-10-05 17:56:25.406' and timestamp_id < '2016-10-06 10:37:25.406');
