# DVD Rental Veritabanı JOIN Sorguları

Bu doküman, dvdrental örnek veri tabanı üzerinde gerçekleştirilmiş olan çeşitli JOIN işlemlerini içermektedir.

## Sorgular

### 1. LEFT JOIN - Şehir (city) ve Ülke (country) İsimlerini Görüntüleme

**city** tablosu ile **country** tablosunu birleştirerek her bir şehrin (city) bağlı olduğu ülkeyi (country) görebileceğimiz bir LEFT JOIN sorgusu yapılmıştır. Eşleşmeyen şehir kayıtları için ülke bilgisi `NULL` olacaktır.

```sql
SELECT city.city, country.country
FROM city
LEFT JOIN country ON city.country_id = country.country_id;
```

### 2. RIGHT JOIN - Müşteri (customer) ve Ödeme (payment) Bilgilerini Görüntüleme

**customer** tablosu ile **payment** tablosunda `payment_id` ve müşteri ad-soyad bilgilerini bir araya getiren RIGHT JOIN sorgusu yapılmıştır. Eşleşmeyen ödeme kayıtları için müşteri bilgisi `NULL` olacaktır.

```sql
SELECT payment.payment_id, customer.first_name, customer.last_name
FROM payment
RIGHT JOIN customer ON payment.customer_id = customer.customer_id;
```

### 3. FULL JOIN - Müşteri (customer) ve Kiralama (rental) Bilgilerini Görüntüleme

**customer** ve **rental** tablolarını birleştirerek `rental_id` ve müşteri ad-soyad bilgilerini içeren FULL JOIN sorgusu yapılmıştır. Eşleşmeyen kiralama veya müşteri kayıtları için ilgili alan `NULL` olarak dönecektir.

```sql
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM rental
FULL JOIN customer ON rental.customer_id = customer.customer_id;
```

