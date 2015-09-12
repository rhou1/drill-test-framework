select time_by_day.the_year as c0, time_by_day.quarter as c1, product_class.product_family as c2, product_class.product_department as c3, product_class.product_category as c4, product_class.product_subcategory as c5, product.brand_name as c6, customer.gender as c7, sum(sales_fact_1997.store_cost) as m0, sum(sales_fact_1997.store_sales) as m1 from time_by_day as time_by_day, sales_fact_1997 as sales_fact_1997, product_class as product_class, product as product, customer as customer where sales_fact_1997.time_id = time_by_day.time_id and time_by_day.the_year = 1997 and time_by_day.quarter in ('Q1', 'Q2') and sales_fact_1997.product_id = product.product_id and product.product_class_id = product_class.product_class_id and product_class.product_department in ('Alcoholic Beverages', 'Baked Goods', 'Baking Goods', 'Beverages', 'Breakfast Foods', 'Canned Foods', 'Canned Products', 'Dairy', 'Deli', 'Eggs', 'Frozen Foods', 'Meat', 'Produce') and product_class.product_category in ('Baking Goods', 'Beer and Wine', 'Bread', 'Breakfast Foods', 'Canned Anchovies', 'Canned Clams', 'Canned Oysters', 'Canned Sardines', 'Canned Shrimp', 'Canned Soup', 'Canned Tuna', 'Carbonated Beverages', 'Dairy', 'Drinks', 'Eggs', 'Frozen Desserts', 'Frozen Entrees', 'Fruit', 'Hot Beverages', 'Jams and Jellies', 'Meat', 'Packaged Vegetables', 'Pizza', 'Pure Juice Beverages', 'Side Dishes', 'Specialty', 'Vegetables') and product_class.product_subcategory in ('Anchovies', 'Bagels', 'Beer', 'Bologna', 'Canned Fruit', 'Canned Vegetables', 'Cereal', 'Cheese', 'Chocolate', 'Clams', 'Coffee', 'Cooking Oil', 'Cottage Cheese', 'Deli Meats', 'Deli Salads', 'Eggs', 'Flavored Drinks', 'French Fries', 'Fresh Chicken', 'Fresh Fruit', 'Frozen Chicken', 'Frozen Vegetables', 'Hamburger', 'Hot Dogs', 'Ice Cream', 'Jam', 'Jelly', 'Juice', 'Milk', 'Muffins', 'Nuts', 'Oysters', 'Pancake Mix', 'Pancakes', 'Peanut Butter', 'Pizza', 'Popsicles', 'Preserves', 'Sardines', 'Sauces', 'Shrimp', 'Sliced Bread', 'Soda', 'Soup', 'Sour Cream', 'Spices', 'Sugar', 'TV Dinner', 'Tofu', 'Tuna', 'Waffles', 'Wine', 'Yogurt') and product.brand_name in ('American', 'Applause', 'BBB Best', 'Best', 'Better', 'Big City', 'Big Time', 'Blue Label', 'Blue Medal', 'Booker', 'Bravo', 'CDR', 'Carlson', 'Carrington', 'Club', 'Colony', 'Cutting Edge', 'Ebony', 'Even Better', 'Excellent', 'Fabulous', 'Fantastic', 'Footnote', 'Genteel', 'Gerolli', 'Giant', 'Golden', 'Good', 'Gorilla', 'Great', 'Green Ribbon', 'Hermanos', 'High Top', 'Imagine', 'Jeffers', 'Johnson', 'Jumbo', 'Just Right', 'Lake', 'Landslide', 'Modell', 'Moms', 'National', 'Pearl', 'PigTail', 'Plato', 'Pleasant', 'Portsmouth', 'Quick', 'Radius', 'Red Spade', 'Ship Shape', 'Skinner', 'Special', 'Sphinx', 'Super', 'Swell', 'Tell Tale', 'Token', 'Top Measure', 'Toucan', 'Tri-State', 'Urban', 'Walrus', 'Washington') and sales_fact_1997.customer_id = customer.customer_id and customer.gender = 'F' group by time_by_day.the_year, time_by_day.quarter, product_class.product_family, product_class.product_department, product_class.product_category, product_class.product_subcategory, product.brand_name, customer.gender;
