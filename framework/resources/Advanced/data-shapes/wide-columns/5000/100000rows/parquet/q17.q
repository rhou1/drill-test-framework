select max(length(str_fixed)), max(length(str_null)), min(length(str_empty)), max(length(str_empty_null)), min(length(str_var_null_empty)), max(length(str_fixed_null_empty)) from widestrings where tinyint_var < -120 group by str_var;
