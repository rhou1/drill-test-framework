#!/bin/sh
source conf/drillTestConfig.properties

hadoop fs -test -d /drill/testdata/tpcds/parquet/sf1000_views ;if [ `echo $?` -eq 1 ]; then hadoop fs -mkdir /drill/testdata/tpcds/parquet/sf1000_views; fi

if [ -z "$PASSWORD" ]
then
  ${DRILL_HOME}/bin/sqlline -n ${USERNAME} -u "jdbc:drill:schema=dfs.tpcds_sf1000_parquet_views;drillbit=${DRILL_STORAGE_PLUGIN_SERVER}"  --run=${DRILL_TEST_DATA_DIR}/Datasources/tpcds/createViewsParquet_sf1000.sql
else
  ${DRILL_HOME}/bin/sqlline -n ${USERNAME} -p ${PASSWORD} -u "jdbc:drill:schema=dfs.tpcds_sf1000_parquet_views;drillbit=${DRILL_STORAGE_PLUGIN_SERVER}"  --run=${DRILL_TEST_DATA_DIR}/Datasources/tpcds/createViewsParquet_sf1000.sql
fi 
