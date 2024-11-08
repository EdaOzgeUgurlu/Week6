# SQL Sorguları README Dosyası-Odev2
### 1. **Film Tablosundaki Verileri `replacement_cost` Koşuluyla Sıralama**

#### Sorgu:
```sql
SELECT * FROM film 
WHERE replacement_cost BETWEEN 12.99 AND 16.99;
```

#### Açıklama:
Bu sorgu, `film` tablosundaki tüm sütunlardan verileri seçer. Ancak, yalnızca `replacement_cost` (değişim maliyeti) değeri **12.99 ile 16.99 arasında** olan satırlar döndürülür. `BETWEEN` operatörü, belirtilen iki değer arasındaki verileri sorgulamak için kullanılır.

---

### 2. **Actor Tablosundaki `first_name` ve `last_name` Koşuluyla Sıralama**

#### Sorgu:
```sql
SELECT first_name, last_name 
FROM actor 
WHERE first_name IN ('Penelope', 'Nick', 'Ed');
```

#### Açıklama:
Bu sorgu, `actor` tablosundaki `first_name` ve `last_name` sütunlarındaki verileri sıralar. Ancak, yalnızca `first_name` sütununda **'Penelope', 'Nick' veya 'Ed'** değerlerinden birine sahip olan satırlar döndürülür. `IN` operatörü, belirtilen bir dizi değeri sorgulamak için kullanılır.

---

### 3. **Film Tablosundaki Verileri `rental_rate` ve `replacement_cost` Koşuluyla Sıralama**

#### Sorgu:
```sql
SELECT * FROM film 
WHERE rental_rate IN (0.99, 2.99, 4.99) 
AND replacement_cost IN (12.99, 15.99, 28.99);
```

#### Açıklama:
Bu sorgu, `film` tablosundaki tüm sütunlardan verileri seçer. Ancak, yalnızca iki koşulu karşılayan satırlar döndürülür:
1. `rental_rate` (kira ücreti) değeri **0.99, 2.99 veya 4.99** olan satırlar.
2. `replacement_cost` (değişim maliyeti) değeri **12.99, 15.99 veya 28.99** olan satırlar.
