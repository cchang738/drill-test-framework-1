select store.store_city as c0, store.store_postal_code as c1 from store as store where (store.store_state = 'Zacatecas') and UPPER(store.store_city) = UPPER('Hidalgo') group by store.store_city, store.store_postal_code order by store.store_city ASC NULLS LAST;