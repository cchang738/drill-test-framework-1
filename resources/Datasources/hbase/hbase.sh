#!/bin/bash

set -x
set -e
export HBASE_CLASSPATH_PREFIX=`hadoop classpath`

echo "Dropping/Creating HBase tables voter and student."
resources/Datasources/hbase/createHbaseTables.sh

wait

echo "Loading HBase table voter using MapReduce."
hbase org.apache.hadoop.hbase.mapreduce.ImportTsv -Dmapred.map.tasks.speculative.execution=false -Dmapred.reduce.tasks.speculative.execution=false -Dimporttsv.columns=HBASE_ROW_KEY,onecf:name,twocf:age,twocf:registration,threecf:contributions,threecf:voterzone,fourcf:create_date voter /drill/testdata/hbase/votertab

echo "Loading HBase table student using MapReduce."
hbase org.apache.hadoop.hbase.mapreduce.ImportTsv -Dmapred.map.tasks.speculative.execution=false -Dmapred.reduce.tasks.speculative.execution=false -Dimporttsv.columns=HBASE_ROW_KEY,onecf:name,twocf:age,threecf:gpa,fourcf:studentnum,fivecf:create_date student /drill/testdata/hbase/studenttab

set +x
