refresh table metadata l_3level;
explain plan for select o_orderkey from l_3level where dir0=1 and dir1='one' and dir2 = date '2015-7-12';
