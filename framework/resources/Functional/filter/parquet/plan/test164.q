-- keep partition 1.  count is 3020.
explain plan for select count(*) from orders_parts where ((int_id > -3025 and int_id < -4) or (int_id > 3060 and int_id < 6002)) and ((int_id > -3025 and int_id < -4) or (int_id > 9025 and int_id < 11976));
