# SQL Sorguları-Odev1

Bu dosya, verilen SQL sorgularını açıklamakta ve her bir sorgunun ne iş yaptığını göstermektedir. Aşağıdaki sorgular, belirli koşullar altında verileri filtrelemekte ve belirli sütunları seçmektedir.

## 1. Film Tablosundaki `title` ve `description` Sütunlarını Sıralama

### Sorgu:
```sql
SELECT title, description FROM film;
```

### Açıklama:
Bu sorgu, **film** tablosundaki sadece `title` (film başlığı) ve `description` (film açıklaması) sütunlarındaki verileri sıralar. Tüm filmler bu iki sütun üzerinden listelenir.

## 2. Film Uzunluğu (Length) 60'dan Büyük ve 75'ten Küçük Olan Filmleri Sıralama

### Sorgu:
```sql
SELECT * FROM film WHERE length > 60 AND length < 75;
```

### Açıklama:
Bu sorgu, **film** tablosundaki tüm sütunlardaki verileri sıralar, ancak yalnızca `length` (film uzunluğu) 60'tan büyük ve 75'ten küçük olan filmleri getirir. Yani, yalnızca belirli uzunluktaki filmler filtrelenir.

## 3. `rental_rate` 0.99 ve `replacement_cost` 12.99 veya 28.99 Olan Filmleri Sıralama

### Sorgu:
```sql
SELECT * FROM film WHERE (rental_rate = 0.99 AND replacement_cost = 12.99) 
   OR replacement_cost = 28.99;
```

### Açıklama:
Bu sorgu, **film** tablosundaki tüm verileri filtreler. İki koşuldan biri sağlanıyorsa, o film seçilir:
- `rental_rate` 0.99 ve `replacement_cost` 12.99 olan filmler
- `replacement_cost` 28.99 olan filmler

Koşullar `OR` bağlacı ile birleştirilmiştir, yani her iki durumdan biri doğruysa sonuç döndürülür.

## 4. `first_name` 'Mary' Olan Müşterinin `last_name` Değerini Getirme

### Sorgu:
```sql
SELECT last_name FROM customer WHERE first_name = 'Mary';
```

### Açıklama:
Bu sorgu, **customer** tablosunda `first_name` sütununda 'Mary' değerine sahip olan müşterilerin `last_name` (soyadı) değerini döndürür. Sadece `first_name` 'Mary' olan müşterilerin soyadları gösterilecektir.

## 5. Film Uzunluğu (Length) 50'den Büyük OLMAYIP Aynı Zamanda `rental_rate` 2.99 veya 4.99 OLMAYAN Filmleri Sıralama

### Sorgu:
```sql
SELECT * FROM film WHERE NOT length > 50 AND NOT (rental_rate = 2.99 OR rental_rate = 4.99);
```

### Açıklama:
Bu sorgu, **film** tablosundaki tüm verileri filtreler, ancak iki koşuldan her ikisinin de doğru olması gerekir:
1. Film uzunluğu 50'den büyük **olmamalıdır** (`NOT length > 50`).
2. `rental_rate` 2.99 veya 4.99 **olmamalıdır** (`NOT (rental_rate = 2.99 OR rental_rate = 4.99)`).

Bu sorgu, belirli film uzunluğu ve kira oranlarına sahip olmayan filmleri listeler.

---

## Kullanım

Bu SQL sorguları, genellikle veritabanındaki belirli koşullara göre veri çekmek için kullanılır. Aşağıdaki adımları takip ederek sorguları veritabanınızda çalıştırabilirsiniz:

1. Veritabanı yönetim aracınızı (örn. MySQL Workbench, PgAdmin, vb.) açın.
2. Sorguları yazın veya yapıştırın.
3. İlgili veritabanını seçin ve sorguyu çalıştırın.

### Örnek Kullanım:
Veritabanınıza bağlıysanız ve sorguyu çalıştırdığınızda, örneğin **film** tablosundaki belirli koşullara göre dönen sonuçları görebilirsiniz.

---

## Ekstra Bilgiler

- **`SELECT`** komutu, veritabanındaki verileri sorgulamak için kullanılır.
- **`WHERE`** komutu, veri filtrelemesi yaparak sadece belirtilen koşulları sağlayan verileri getirir.
- **`AND`** ve **`OR`** komutları, birden fazla koşulu birleştirerek mantıksal işlem yapılmasına olanak tanır.
- **`NOT`** komutu, koşulun tersini alır. 
