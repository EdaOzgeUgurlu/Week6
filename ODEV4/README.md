### 1. **Film Tablosunda Bulunan `replacement_cost` Sütununda Bulunan Birbirinden Farklı Değerleri Sıralayınız:

```sql
SELECT DISTINCT replacement_cost
FROM film
ORDER BY replacement_cost;
```

**Açıklama:**  
Bu sorgu, `film` tablosundaki `replacement_cost` sütununda bulunan birbirinden farklı değerleri alır ve bunları artan sırayla sıralar. `DISTINCT` ifadesi, yalnızca benzersiz değerleri seçer.

### 2. **Film Tablosunda Bulunan `replacement_cost` Sütununda Birbirinden Farklı Kaç Tane Veri Vardır?

```sql
SELECT COUNT(DISTINCT replacement_cost) AS unique_replacement_cost_count
FROM film;
```

**Açıklama:**  
Bu sorgu, `film` tablosundaki `replacement_cost` sütununda kaç tane benzersiz (distinct) değer bulunduğunu sayar. `COUNT(DISTINCT ...)` fonksiyonu, yalnızca farklı değerleri sayar.

### 3. **Film Tablosunda Bulunan Film İsimlerinde (title) Kaç Tanesi `T` Karakteri ile Başlar ve Aynı Zamanda `rating` 'G' ye Eşittir?

```sql
SELECT COUNT(*) AS count_title_T_and_rating_G
FROM film
WHERE title LIKE 'T%' AND rating = 'G';
```

**Açıklama:**  
Bu sorgu, `film` tablosundaki film isimlerinden, ismi `T` harfi ile başlayan ve `rating` değeri 'G' olan filmleri sayar. `LIKE 'T%'` ifadesi, `title` sütununda ismi 'T' harfi ile başlayan tüm kayıtları seçerken, `rating = 'G'` ifadesi 'G' derecesine sahip olanları filtreler.

### 4. **Country Tablosunda Bulunan Ülke İsimlerinden (country) Kaç Tanesi 5 Karakterden Oluşmaktadır?

```sql
SELECT COUNT(*) AS count_5_character_countries
FROM country
WHERE LENGTH(country) = 5;
```

**Açıklama:**  
Bu sorgu, `country` tablosundaki `country` sütununda uzunluğu tam olarak 5 karakter olan ülke isimlerini sayar. `LENGTH` fonksiyonu, metin alanlarının uzunluğunu hesaplar.

### 5. **City Tablosundaki Şehir İsimlerinin Kaç Tanesi 'R' veya 'r' Karakteri ile Biter?

```sql
SELECT COUNT(*) AS count_cities_ending_with_R
FROM city
WHERE city LIKE '%R' OR city LIKE '%r';
```

**Açıklama:**  
Bu sorgu, `city` tablosundaki şehir isimlerinden sonu 'R' veya 'r' harfiyle bitenleri sayar. `%R` ifadesi, şehir isminin sonunun 'R' harfi ile bitenleri seçerken, `%r` ifadesi küçük harf 'r' ile bitenleri seçer.

---

## Kullanım

Bu sorguları kullanarak veritabanınızdaki `film`, `country`, ve `city` tablolarındaki verilere yönelik analizler yapabilirsiniz. Her bir sorgu, belirli bir kriteri karşılayan verileri saymak ya da sıralamak için kullanılır. Sorguların her biri, veri kümesinin anlamlı bir şekilde analize edilmesini sağlar. 

## Öneriler

- Veritabanı yönetim sisteminizin SQL diline uygun fonksiyonları kullanmanız önemlidir. Örneğin, bazı veritabanlarında karakter uzunluğu hesaplama için `CHAR_LENGTH()` veya `LEN()` fonksiyonları kullanılabilir.
- Bu sorguları, istediğiniz diğer tablolara uyarlamak için tabloların ve sütunların adlarını değiştirebilirsiniz.
