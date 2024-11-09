# Actor ve Customer Tabloları Üzerinde `first_name` Sütunu Sorguları

Bu doküman, `dvdrental` veritabanındaki `actor` ve `customer` tabloları üzerinde `first_name` sütunu ile yapılan SQL sorgularını içermektedir. Sorgular, her iki tablodaki `first_name` değerlerini sıralar, kesişen verileri bulur ve yalnızca `actor` tablosunda bulunan ancak `customer` tablosunda olmayan verileri listeler.

## Sorgular

### 1. Tüm `first_name` Verilerini Sıralama

Bu sorgu, `actor` ve `customer` tablolarındaki `first_name` sütunlarını birleştirir ve her iki tablodaki benzersiz `first_name` verilerini alfabetik sırayla listeler.

```sql
SELECT first_name FROM actor
UNION
SELECT first_name FROM customer
ORDER BY first_name;
```

**Açıklama:**
- `UNION` ifadesi her iki tablodaki verileri birleştirir ve tekrar eden `first_name` değerlerini tek bir kez gösterir.
- `ORDER BY first_name` ifadesi ile sonuçlar alfabetik sıraya göre sıralanır.

### 2. Kesişen `first_name` Verilerini Sıralama

Bu sorgu, `actor` ve `customer` tablolarında ortak olan `first_name` verilerini sıralar.

```sql
SELECT first_name FROM actor
INTERSECT
SELECT first_name FROM customer
ORDER BY first_name;
```

**Açıklama:**
- `INTERSECT` ifadesi, her iki tabloda ortak olan `first_name` değerlerini döndürür.
- `ORDER BY first_name` ifadesi ile sonuçlar alfabetik olarak sıralanır.

### 3. `actor` Tablosunda Bulunan Ancak `customer` Tablosunda Bulunmayan `first_name` Verilerini Sıralama

Bu sorgu, yalnızca `actor` tablosunda bulunan ancak `customer` tablosunda olmayan `first_name` verilerini sıralar.

```sql
SELECT first_name FROM actor
EXCEPT
SELECT first_name FROM customer
ORDER BY first_name;
```

**Açıklama:**
- `EXCEPT` ifadesi, `actor` tablosundaki ancak `customer` tablosunda bulunmayan `first_name` değerlerini döndürür.
- `ORDER BY first_name` ifadesi ile sonuçlar alfabetik sıraya göre sıralanır.

## Notlar

- Bu sorgularda `UNION`, `INTERSECT`, ve `EXCEPT` ifadeleri kullanılarak tablolardaki `first_name` değerleri üzerinde farklı işlemler yapılmıştır.
- `UNION` ifadesi tekrar eden kayıtları tekilleştirirken, `INTERSECT` yalnızca her iki tabloda bulunan ortak kayıtları listeler, `EXCEPT` ise yalnızca ilk tabloda bulunan kayıtları gösterir.
