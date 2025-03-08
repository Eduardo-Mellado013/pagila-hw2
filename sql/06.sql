/*
 * Management wants to purchase new films that they don't already have.
 * Select a list of all films in the film table that are not in the inventory table.
 *
 * NOTE:
 * This can be solved by either using a LEFT JOIN or by using the NOT IN clause and a subquery.
 * For this problem, you should use the NOT IN clause;
 * in problem 06b you will use the LEFT JOIN clause.
 */

SELECT title
FROM film
WHERE film_id NOT IN (
    SELECT film_id
    FROM inventory
);
