select promotion.promotion_name as c0 from promotion as promotion where UPPER(promotion.promotion_name) = UPPER('Time.Time By Week55') group by promotion.promotion_name order by promotion.promotion_name ASC NULLS LAST;
