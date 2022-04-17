WITH relevant_reviews AS (
	SELECT *
	FROM vine_table
	WHERE total_votes >= 20
),
helpful_votes AS (
	SELECT *
	FROM relevant_reviews
	WHERE CAST(helpful_votes AS FLOAT) / CAST(total_votes AS FLOAT) >=0.5
),
vine_reviews AS (
	SELECT * 
	FROM helpful_votes
	WHERE vine = 'Y'
),
non_vine_reviews AS (
	SELECT * 
	FROM helpful_votes
	WHERE vine = 'N'
)

SELECT 
	review_type,
	total_reviews,
	five_star_reviews,
	ROUND(100.0 * (five_star_reviews / CAST(total_reviews AS FLOAT))) as five_star_per	
FROM (
	SELECT 
		'PAID' as review_type,
		COUNT(review_id) as total_reviews,
		COUNT(review_id) FILTER(WHERE star_rating = 5) as five_star_reviews
	FROM vine_reviews
	GROUP BY 1

	UNION 

	SELECT 
		'UNPAID' as review_type,
		COUNT(review_id) as total_reviews,
		COUNT(review_id) FILTER(WHERE star_rating = 5) as five_star_reviews
	FROM non_vine_reviews
	GROUP BY 1
) as sq

-- CONFIRMS that all reviews are from unpaid accounts
-- SELECT vine, COUNT(*)
-- FROM vine_table
-- GROUP BY 1
