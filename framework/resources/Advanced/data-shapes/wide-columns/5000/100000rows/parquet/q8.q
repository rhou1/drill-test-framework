select str_fixed, str_var, str_null, str_empty, str_empty_null, str_var_null_empty, str_fixed_null_empty, count(*) from widestrings  where length(str_empty) > 0 and dec_var_prec5_sc2 < -100 group by str_fixed, str_var, str_null, str_empty, str_empty_null, str_var_null_empty, str_fixed_null_empty;
