select ws.*, sub.str_fixed str_fixed1 from widestrings ws INNER JOIN (select str_fixed, max(tinyint_var) max_ti from widestrings group by str_fixed) sub on ws.tinyint_var = sub.max_ti;
