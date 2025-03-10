/*
 * Count the number of movies that contain each type of special feature.
 * Order the results alphabetically be the special_feature.
 */

SELECT unnest(special_features) AS special_features,
count(special_features)
FROM film
GROUP BY unnest(special_features) ORDER by special_features;
