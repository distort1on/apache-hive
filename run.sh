#!/bin/bash

docker exec -t hive-server /bin/bash -c '
hive -f /pkg/flights_table.hql &&
awk -F "," '\''{print $5 "," $12}'\'' /pkg/dataset/flights.csv > /pkg/dataset/flights_selected_columns.csv &&
hadoop fs -put /pkg/dataset/flights_selected_columns.csv hdfs://namenode:8020/user/hive/warehouse/flightsdb.db/flights &&
hadoop fs -put /pkg/dataset/airlines.csv hdfs://namenode:8020/user/hive/warehouse/flightsdb.db/airlines &&
hive -f /pkg/query.hql
'