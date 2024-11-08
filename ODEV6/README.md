1. **Rental Rate Sütunundaki Değerlerin Ortalaması**
   ```sql
   SELECT AVG(rental_rate) FROM film;
   ```
   Bu sorgu, `film` tablosundaki `rental_rate` sütunundaki tüm değerlerin ortalamasını verir.

2. **'C' Karakteri ile Başlayan Film Sayısı**
   ```sql
   SELECT COUNT(title) FROM film WHERE title ~~* 'C%';
   ```
   Bu sorgu, `film` tablosundaki `title` sütununda bulunan ve "C" harfi ile başlayan tüm film başlıklarının sayısını verir. `~~*` operatörü, büyük-küçük harf duyarsız eşleşme yapar ve PostgreSQL'e özgüdür.

3. **Rental Rate'i 0.99 Olan En Uzun Film Süresi**
   ```sql
   SELECT MAX(length) FROM film WHERE rental_rate = 0.99;
   ```
   Bu sorgu, `rental_rate` değeri 0.99 olan filmlerden en uzun (`length` sütunundaki) filmin uzunluğunu (dakika olarak) verir.

4. **150 Dakikadan Uzun Filmler için Farklı Replacement Cost Değer Sayısı**
   ```sql
   SELECT COUNT(DISTINCT(replacement_cost)) FROM film WHERE length > 150;
   ```
   Bu sorgu, uzunluğu 150 dakikadan fazla olan filmler arasında, kaç farklı `replacement_cost` değeri olduğunu verir.


