/*
 * Select the title of all 'G' rated movies that have the 'Trailers' special feature.
 * Order the results alphabetically.
 *
 * HINT:
 * Use `unnest(special_features)` in a subquery.
 */

SELECT title
FROM film
WHERE rating = 'G'
  AND 'Trailers' IN (SELECT unnest(special_features))
ORDER BY title;

