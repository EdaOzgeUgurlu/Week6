# DVD Rental Veritabanı Sorguları

Bu dosya, PostgreSQL üzerinde çalışan `dvdrental` örnek veritabanı kullanılarak yapılmış SQL sorgularını içermektedir. Sorgular, film uzunlukları, kiralama ücretleri ve müşteri alışveriş sayıları gibi farklı analizler yapmak için hazırlanmıştır.

## Sorgular ve Açıklamaları

### 1. Ortalama Film Uzunluğundan Fazla Olan Filmlerin Sayısı

**Açıklama**: Bu sorgu, `film` tablosunda film uzunluğu (`length` sütunu) ortalama film uzunluğundan büyük olan filmlerin sayısını bulur.

```sql
SELECT COUNT(*) AS film_sayisi
FROM film
WHERE length > (SELECT AVG(length) FROM film);
```

### 2. En Yüksek Kiralama Ücretine Sahip Filmlerin Sayısı

**Açıklama**: Bu sorgu, `film` tablosunda en yüksek `rental_rate` değerine sahip kaç tane film olduğunu sayar.

```sql
SELECT COUNT(*) AS film_sayisi
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);
```

### 3. En Düşük Kiralama Ücreti ve En Düşük Yerine Koyma Maliyetine Sahip Filmler

**Açıklama**: Bu sorgu, `film` tablosunda en düşük `rental_rate` ve en düşük `replacement_cost` değerine sahip filmleri sıralar.

```sql
SELECT *
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
AND replacement_cost = (SELECT MIN(replacement_cost) FROM film)
ORDER BY title;
```

### 4. En Fazla Sayıda Alışveriş Yapan Müşteriler

**Açıklama**: Bu sorgu, `payment` tablosunda en fazla sayıda alışveriş yapan müşterileri, müşteri kimliği (`customer_id`) ve toplam alışveriş sayısı ile birlikte listeler.

```sql
SELECT customer_id, COUNT(*) AS toplam_alisveris
FROM payment
GROUP BY customer_id
ORDER BY toplam_alisveris DESC;
```