--1 film tablosundan 'K' karakteri ile başlayan en uzun ve replacement_cost u en düşük 4 filmi sıralayınız.

select * from film 
where title like 'K%' 
order by length desc,replacement_cost desc
limit 4

--2 film tablosunda içerisinden en fazla sayıda film bulunduran rating kategorisi hangisidir?

select rating,count(*) from film 
group by rating
order by count(*) desc
limit 1

--3 cutomer tablosunda en çok alışveriş yapan müşterinin adı nedir?

select first_name from customer
where customer_id  =   (select customer_id from payment
						group by customer_id
						order by count(*) desc
						limit 1)

--4 category tablosundan kategori isimlerini ve kategori başına düşen film sayılarını sıralayınız.


select category.name,count(*) from film_category
left join category on film_category.category_id = category.category_id
left join film on film_category.film_id = film.film_id
group by category.name
select count(*) from film

--5 film tablosunda isminde en az 4 adet 'e' veya 'E' karakteri bulunan kaç tane film vardır?

select count(*) from film	
where title ilike '%e%e%e%e%'








