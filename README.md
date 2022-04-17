# Amazon_Vine_Analysis
Chapter 16 of UCB Data Science Bootcamp - Big Data w/ AWS &amp; Spark

### Analysis Overview

The purpose of this analysis is do determine the breakdown of Amazon online video reviews for vine (Paid) and (Unpaid) accounts, and to determine the number and percentage of five-star reviews for each category.

Data set used: https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Digital_Video_Download_v1_00.tsv.gz

### Results
  * How many Vine reviews and non-Vine reviews were there?
	- Vine reviews: 0
	- Non-vine review: 11371
  * How many Vine reviews were 5 star? How many non-Vine reviews were 5 star?
	- Five Star Vine Reviews: 0 (out of population of 0)
	- Five Star Non-Vine Reviews: 4675
  * What percentage of Vine reviews were 5 stars? What percentage of non-Vine reviews were 5 stars?
	- Vine Reviews: N/A
	- Non-Vine Reviews: 41%

### Analysis

No bias was detected on the category of Paid vs Unpaid accounts, since our dataset did not include paid accounts. There could be bias towards early reviews that accumulated a lot of votes, since our query filters out all reviews with fewer than 20 votes; we could potentially lower this threshold to see how this changes our final breakdown. We could also filter out to include only verified purchasers for a cleaner data set. 

Notes: 
 Main Analysis File: vine_analysis.sql
 	-- Bottom of the file includes a test / proof query that all accounts are unpaid
 		-- proof output: vine_breakdown.csv
	-- Output file: vine_final_breakdown.csv
	-- ETL Setup File: Amazon_Reviews_ETL.ipynb