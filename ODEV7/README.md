1. **Filmleri Rating Değerlerine Göre Gruplama**
   ```sql
   SELECT rating, COUNT(*) FROM film GROUP BY rating;
   ```
   Bu sorgu, `film` tablosundaki filmleri `rating` değerine göre gruplar ve her bir gruptaki film sayısını listeler.

2. **50’den Fazla Filme Sahip Replacement Cost Değerlerini Getirme**
   ```sql
   SELECT replacement_cost, COUNT(*) 
   FROM film 
   GROUP BY replacement_cost 
   HAVING COUNT(*) > 50;
   ```
   Bu sorgu, `film` tablosundaki filmleri `replacement_cost` sütununa göre gruplar ve yalnızca 50’den fazla filme sahip `replacement_cost` değerlerini ve bu değerlere karşılık gelen film sayılarını listeler.

3. **Customer Tablosundaki Store ID'ye Göre Müşteri Sayısını Getirme**
   ```sql
   SELECT store_id, COUNT(*) FROM customer GROUP BY store_id;
   ```
   Bu sorgu, `customer` tablosundaki `store_id` sütununa göre müşteri sayısını gruplar ve her mağaza (`store_id`) için müşteri sayısını döndürür.

4. **En Fazla Şehir Barındıran Country ID’yi Bulma**
   ```sql
   SELECT country_id, COUNT(*) 
   FROM city 
   GROUP BY country_id 
   ORDER BY COUNT(*) DESC 
   LIMIT 1;
   ```
   Bu sorgu, `city` tablosundaki şehirleri `country_id` sütununa göre gruplar ve şehir sayısına göre azalan sırayla sıralar. En fazla şehir barındıran `country_id` değeri ve şehir sayısını verir.
