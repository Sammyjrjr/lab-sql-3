use sakila;
-- 1 How many distinct (different) actors' last names are there?
select * from actor;
select distinct last_name from actor;
-- 2 In how many different languages where the films originally produced? (Use the column language_id from the film table)
select * from film;
select count(*) from film where language_id;
-- 3 How many movies were released with "PG-13" rating?
select * from film;
select * from film where rating = "PG-13";
-- 4 Get 10 the longest movies from 2006.
select * from film;
select * from film order by length desc limit 10;
-- 5 How many days has been the company operating (check DATEDIFF() function)?
select * from rental;
select * from rental order by rental_date desc;  -- 14-02-2006 the last rental date
select * from rental order by rental_date asc; -- 24-05-2005 the first rental date
-- I don't know how to finish the operation with the code. (If I have to do it I'll do it by rest one by the other and take the days)
-- 6 Show rental info with additional columns month and weekday. Get 20.
select *,date_format(rental_date, '%b') as month,date_format(rental_date, '%a') as weekday from rental limit 20;
-- 7 Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
-- I don't know 
-- 8 How many rentals were in the last month of activity?
select count(*) as 'rental last month' from rental where datediff(last_update, rental_date) <30;