--keep partition 3.  Count is 3.
explain plan for select * from orders_parts where (((int_id > -3000 and bigint_id < -2500) or (bigint_id > -2400 and int_id < -2000)) or (float_id > -5 and double_id < 1000) or (double_id > 3060 and float_id < 6000) or (int_id > 9025 and int_id < 11976)) and (int_id in (10, -20, 1000, -100, 2000, -3000, 3283, 3284, 3285, 4000, 4100, 4200, 4300, 4400, 4500, 4600, 4700, 4800, 4900)) and ((int_id > 2000 and int_id < 3061) or (int_id > 3200 and int_id < 3300)) and (((((((bigint_id > 50) and (float_id in (-5.0, 5.0, 50.0, 500.0, 5000.0, 11000.0))) or (float_id > -2100 and bigint_id < 6000)) and (double_id in (-10, 10, 100, 1000, 10000))) or (bigint_id > 3000 and bigint_id < 4000)) and (int_id < -1500)) or (int_id > 3250 and int_id < 3400)) and ((int_id > 10000 and int_id < 11000) or (int_id > 3270 and int_id < 3500)) and (int_id > 3280 and int_id < 3290);
