select avg(cast(case columns[0] when '' then 0 else columns[0] end as int)) as soldd, avg(cast(case columns[1] when '' then 0 else columns[1] end as bigint)) as soldt, avg(cast(case columns[2] when '' then 0 else columns[2] end as float)) as itemsk, avg(cast(case columns[3] when '' then 0 else columns[3] end as decimal(18,9))) as custsk, min(cast(case columns[4] when '' then 0 else columns[4] end as varchar(20))) as cdemo, max(cast(columns[5] as varchar(20))) as hdemo, sum(cast(case columns[10] when '' then 0 else columns[10] end as int)) as quantities from `store_sales.dat` group by cast(case columns[0] when '' then 0 else columns[0] end as int), cast(case columns[1] when '' then 0 else columns[1] end as bigint), cast(case columns[2] when '' then 0 else columns[2] end as float), cast(case columns[3] when '' then 0 else columns[3] end as decimal(18,9)), cast(columns[4] as varchar(20)), columns[5], columns[6], columns[7], columns[8], columns[9] order by soldd desc, soldt desc, itemsk desc limit 20;
