select store_ragged.store_id as c0, store_ragged.store_name as c1, store_ragged.store_type as c2, store_ragged.store_manager as c3 from store_ragged as store_ragged, sales_fact_1997 as sales_fact_1997 where sales_fact_1997.store_id = store_ragged.store_id group by store_ragged.store_id, store_ragged.store_name, store_ragged.store_type, store_ragged.store_manager order by store_ragged.store_id ASC NULLS LAST;