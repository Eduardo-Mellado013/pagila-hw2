/*
 * Create a report that shows the total revenue per month and year.
 *
 * HINT:
 * This query is very similar to the previous problem,
 * but requires an additional JOIN.
 */

SELECT
    EXTRACT(YEAR FROM rental_date) AS "Year",
    EXTRACT(MONTH FROM rental_date) AS "Month",
    SUM(amount) AS "Total Revenue" 
FROM rental
join payment USING (rental_id)
GROUP BY 
    ROLLUP ("Year", "Month")
ORDER BY "Year";
