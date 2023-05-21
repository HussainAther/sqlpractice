SELECT 
    DATE(rental_date) AS date,
    COUNT(*) AS rentals
FROM
    rental
WHERE
    rental_date >= '2005-05-24 00:00:00' AND rental_date <= '2005-06-02 23:59:59'
GROUP BY
    DATE(rental_date)
ORDER BY
    DATE(rental_date) ASC;

