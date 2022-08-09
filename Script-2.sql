
SELECT film_id 
FROM inventory
GROUP BY film_id 
HAVING COUNT(*) = 7
ORDER BY film_id ASC;

SELECT COUNT(first_name) 
FROM customer
WHERE first_name = 'Willie';

SELECT *
FROM rental;

--Need to get the staff_id that appears the most number of times -- note all the rental ids are unique
SELECT staff_id, COUNT(*)
FROM rental
GROUP BY staff_id 

SELECT COUNT(DISTINCT address)
FROM address

SELECT COUNT(DISTINCT district)
FROM address

SELECT *
FROM film_actor

SELECT film_id, COUNT(*)
FROM film_actor
GROUP BY film_id 
ORDER BY COUNT DESC;

SELECT COUNT(*)
FROM customer 
WHERE store_id = 1 AND last_name LIKE '%es'

SELECT COUNT(*)
FROM payment
WHERE amount HAVING COUNT(*) >= 250;
GROUP BY customer_id BETWEEN 380 AND 430

SELECT *
FROM film

SELECT rating, COUNT(*)
FROM film
GROUP BY rating
ORDER BY COUNT DESC;

SELECT amount, COUNT(*)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(amount) > 250
ORDER BY COUNT DESC;
