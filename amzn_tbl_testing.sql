SELECT COUNT(*) FROM review_id_table;

SELECT pg_size_pretty( pg_total_relation_size('review_id_table') );

SELECT COUNT(*) FROM products_table;

SELECT pg_size_pretty( pg_total_relation_size('products_table') );

SELECT COUNT(*) FROM customers_table;

SELECT pg_size_pretty( pg_total_relation_size('customers_table') );

SELECT COUNT(*) FROM vine_table;

SELECT pg_size_pretty( pg_total_relation_size('vine_table') );
