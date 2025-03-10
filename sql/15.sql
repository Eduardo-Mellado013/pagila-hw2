/*
 * Compute the total revenue for each film.
 */

SELECT
  title,
  COALESCE(SUM(amount), 0)::numeric(10,2) AS revenue
FROM film
LEFT JOIN inventory USING (film_id)
LEFT JOIN rental USING (inventory_id)
LEFT JOIN payment USING (rental_id)
GROUP BY title
ORDER BY revenue DESC, title ASC;
