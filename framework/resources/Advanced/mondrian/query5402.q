select product.brand_name as c0 from product as product, product_class as product_class where product.product_class_id = product_class.product_class_id and (product_class.product_subcategory = 'Beer' and product_class.product_category = 'Beer and Wine' and product_class.product_department = 'Alcoholic Beverages' and product_class.product_family = 'Drink') and UPPER(product.brand_name) = UPPER('Pearl') group by product.brand_name order by product.brand_name ASC NULLS LAST;
