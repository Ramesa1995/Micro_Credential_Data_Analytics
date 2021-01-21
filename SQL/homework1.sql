/* Rameasa arna 
Question 1 */
select * from customer 

-- Question 2 
select first_name, last_name, email from customer

-- Question 3
select * from film

-- Question 4
select distinct release_year from film

-- Question 5 

select distinct rental_rate from film

-- Question 6

select email from customer
where first_name = 'Nancy'
and last_name = 'Thomas'

-- Question 7 
select address, phone from address
where address = '259 Ipoh Drive'

-- Question 8

select * from customer
where  store_id = 1
and address_id > 150

-- Question 9
select * from payment
where amount = 4.99
or amount = 1.99

-- Question 10

select * from payment
where amount > 5


