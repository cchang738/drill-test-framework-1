explain plan for select columns[0], columns[1], columns[4], columns[10], columns[13] from `/drill/testdata/partition_pruning/hive/text/lineitem_hierarchical_intstring` where dir0=extract(year from date '1993-01-01') and columns[0] > 29600 and dir1='nov';