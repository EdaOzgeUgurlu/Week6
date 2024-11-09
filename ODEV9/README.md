# INNER JOIN Sorguları

Bu dosya, `city`, `country`, `customer`, `payment` ve `rental` tabloları arasında INNER JOIN kullanarak veri birleştirme işlemlerini içermektedir.

## İçindekiler
1. [City ve Country Tabloları İçin INNER JOIN](#1-city-ve-country-tabloları-için-inner-join)
2. [Customer ve Payment Tabloları İçin INNER JOIN](#2-customer-ve-payment-tabloları-için-inner-join)
3. [Customer ve Rental Tabloları İçin INNER JOIN](#3-customer-ve-rental-tabloları-için-inner-join)

---

### 1. City ve Country Tabloları İçin INNER JOIN

`city` ve `country` tablolarında bulunan şehir (`city`) ve ülke (`country`) isimlerini birlikte görebileceğimiz INNER JOIN sorgusu:

```sql
SELECT city.city, country.country
FROM city
INNER JOIN country ON city.country_id = country.country_id;
```

**Açıklama:** Bu sorgu, `city` ve `country` tablolarını `country_id` sütunu üzerinden birleştirir. Sonuç olarak, her iki tablodan şehir ve ülke isimlerini birlikte görüntüler.

---

### 2. Customer ve Payment Tabloları İçin INNER JOIN

`customer` tablosu ile `payment` tablosundaki `payment_id`, `first_name` ve `last_name` isimlerini birlikte görebileceğimiz INNER JOIN sorgusu:

```sql
SELECT payment.payment_id, customer.first_name, customer.last_name
FROM payment
INNER JOIN customer ON payment.customer_id = customer.customer_id;
```

**Açıklama:** Bu sorgu, `customer` ve `payment` tablolarını `customer_id` sütunu üzerinden birleştirir ve `payment_id`, `first_name`, `last_name` sütunlarını birlikte gösterir.

---

### 3. Customer ve Rental Tabloları İçin INNER JOIN

`customer` tablosu ile `rental` tablosundaki `rental_id`, `first_name` ve `last_name` isimlerini birlikte görebileceğimiz INNER JOIN sorgusu:

```sql
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM rental
INNER JOIN customer ON rental.customer_id = customer.customer_id;
```

**Açıklama:** Bu sorgu, `customer` ve `rental` tablolarını `customer_id` sütunu üzerinden birleştirir ve `rental_id`, `first_name`, `last_name` sütunlarını birlikte görüntüler.
