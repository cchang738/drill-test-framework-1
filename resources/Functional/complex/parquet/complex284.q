select tt.gbyi, sum(tt.soa0.`in`+tt.soa1.fl*tt.soa2.fl) from (select t.gbyi gbyi, t.soa[0] soa0, t.soa[1] soa1, t.soa[2] soa2 from `complex.json` t) tt group by tt.gbyi order by tt.gbyi;