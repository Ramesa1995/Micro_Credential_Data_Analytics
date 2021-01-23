/* Rameasa arna 
lesson 5 : Joins and uninons */

-- 1. Join the film to the film_actor table.

select * from film 
inner join film_actor
on film.film_id = film_actor.film_id

-- 2. Join the actor table to the film_actor table. 

select actor.actor_id, actor.first_name, actor.last_name, film_actor.film_id, film_actor.last_update from actor 
inner join film_actor
on actor.actor_id = film_actor.actor_id

-- 3. Try to join the actor, film_actor, and film table together (3 joins!)
select * from actor 
inner join film_actor
on actor.actor_id = film_actor.actor_id
inner join film
on film.film_id = film_actor.film_id

