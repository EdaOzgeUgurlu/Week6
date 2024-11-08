--1. film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız:
SELECT DISTINCT replacement_cost FROM film ORDER BY replacement_cost;

--2. film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
SELECT COUNT(DISTINCT replacement_cost) AS unique_replacement_cost_count FROM film;

--3. film tablosunda bulunan film isimlerinde (title) kaç tanesi T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
SELECT COUNT(*) AS count_title_T_and_rating_G FROM film WHERE title LIKE 'T%' AND rating = 'G';

--4. country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
SELECT COUNT(*) AS count_5_character_countries FROM country WHERE LENGTH(country) = 5;

--5. city tablosundaki şehir isimlerinin kaç tanesi 'R' veya 'r' karakteri ile biter?
SELECT COUNT(*) AS count_cities_ending_with_R FROM city WHERE city LIKE '%R' OR city LIKE '%r';