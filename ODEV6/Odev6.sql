--1/film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
select avg(rental_rate) from film;

--2/film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
select Count(title)from film where title ~~* 'C%';

--3/film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
select Max(length) from film where rental_rate = 0.99;

--4/film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?
select Count(distinct(replacement_cost)) from film where length > 150;