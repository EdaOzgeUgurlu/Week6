# SQL Sorguları-Odev5

Bu belge, üç farklı SQL sorgusunun ne yaptığını ve nasıl çalıştığını açıklamaktadır. Sorgular, belirli koşullara göre veritabanındaki filmleri ve müşteri bilgilerini sıralamak amacıyla yazılmıştır.

## 1. Film Tablosunda 'n' ile Bitimleyen En Uzun 5 Filmi Sıralama

**Sorgu:**
```sql
SELECT * FROM film WHERE title LIKE '%n' ORDER BY length DESC LIMIT 5;
```

**Açıklama:**
Bu sorgu, `film` tablosundaki film isimlerinin sonu 'n' harfi ile biten filmleri sorgular. `WHERE title LIKE '%n'` koşulu ile yalnızca ismi 'n' harfi ile biten filmler seçilir. Sonrasında bu filmler, `length` (film süresi) sütununa göre azalan sırayla (`ORDER BY length DESC`) sıralanır ve en uzun 5 film (`LIMIT 5`) görüntülenir.

---

## 2. Film Tablosunda 'n' ile Başlayan En Kısa İkinci 5 Filmi Sıralama

**Sorgu:**
```sql
SELECT * FROM film WHERE title LIKE 'n%' ORDER BY length ASC LIMIT 5 OFFSET 5;
```

**Açıklama:**
Bu sorgu, `film` tablosundaki film isimlerinin 'n' harfi ile başlayan filmleri sorgular. `WHERE title LIKE 'n%'` koşulu ile ismi 'n' harfi ile başlayan filmler seçilir. Sonrasında bu filmler, `length` (film süresi) sütununa göre artan sırayla (`ORDER BY length ASC`) sıralanır. `LIMIT 5 OFFSET 5` ifadesi, sıralanan listeden ikinci 5 film grubunu getirir, yani ilk 5 filmi atlar ve sonrasındaki 5 filmi gösterir.

---

## 3. Store ID 1 Olan Müşterilerin Soyadına Göre Azalan Sıralama

**Sorgu:**
```sql
SELECT * FROM customer WHERE store_id = 1 ORDER BY last_name DESC LIMIT 4;
```

**Açıklama:**
Bu sorgu, `customer` tablosunda `store_id` değeri 1 olan müşterilerin bilgilerini sorgular. `WHERE store_id = 1` koşulu ile yalnızca store_id'si 1 olan müşteriler seçilir. Bu müşteriler, `last_name` (soyadı) sütununa göre azalan sırayla (`ORDER BY last_name DESC`) sıralanır ve en üstteki 4 müşteri (`LIMIT 4`) seçilir.

---

