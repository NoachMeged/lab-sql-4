-- Get film ratings.
select rating from sakila.film;

-- Get release years.
select release_year from sakila.film;

-- Get all films with ARMAGEDDON in the title.
select distinct title from sakila.film
where title regexp 'ARMAGEDDON';

-- Get all films with APOLLO in the title.
select distinct title from sakila.film
where title regexp 'APOlLO';

-- Get all films with APOLLO in the title.
select distinct title from sakila.film
where title regexp 'APOlLO$';

-- Get all films with word DATE in the title.
select distinct title from sakila.film
where title regexp 'DATE';
-- Get 10 films with the longest title
SELECT title, LENGTH(title) AS title_length
FROM sakila.film
ORDER BY title_length DESC
LIMIT 10;
-- Get 10 the longest films.
SELECT *
FROM sakila.film
ORDER BY length DESC
LIMIT 10;
-- How many films include Behind the Scenes content?
SELECT COUNT(*)
FROM sakila.film
WHERE special_features LIKE '%Behind the Scenes%';

-- List films ordered by release year and title in alphabetical order.
SELECT film_id, title, release_year
FROM sakila.film
ORDER BY release_year, title;