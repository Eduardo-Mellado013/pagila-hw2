/*
 * Use a subquery to select the film_id and title columns
 * for all films whose rental_rate is greater than the average.
 * Use the film table and order by title.
 *
 * HINT:
 * The following tutorial has a solution for this problem:
 * https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-correlated-subquery/
 */

SELECT film_id, title 
FROM film f
WHERE rental_rate > (
    SELECT AVG(rental_rate)
    FROM film)
ORDER BY title;
