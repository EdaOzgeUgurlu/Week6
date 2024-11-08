
## **Sorgular ve Açıklamaları**

### **1. Ülke İsmi 'A' ile Başlayıp, 'a' ile Biten Ülkeleri Sıralama**
**Sorgu:**

```sql
SELECT country 
FROM country 
WHERE country LIKE 'A%a';
```

**Açıklama:**
Bu sorgu, **country** tablosundaki ülke isimlerini tarar ve ismi **'A'** harfi ile başlayıp **'a'** harfi ile biten tüm ülkeleri listeler. 
- **LIKE 'A%a'**: 'A' ile başlayıp 'a' ile biten ülke isimlerini seçer. `%` joker karakteri, 'A' harfini takiben herhangi bir karakter dizisini ifade eder.

---

### **2. En Az 6 Karakterden Oluşan ve Sonu 'n' ile Biten Ülke İsimlerini Sıralama**
**Sorgu:**

```sql
SELECT country 
FROM country 
WHERE LENGTH(country) >= 6 
  AND country LIKE '%n';
```

**Açıklama:**
Bu sorgu, **country** tablosundaki **country** sütunundaki ülke isimlerinden, **en az 6 karakter** uzunluğunda olan ve **sonu 'n'** harfi ile bitenleri listeler.
- **LENGTH(country) >= 6**: Ülke isminin uzunluğu 6 veya daha fazla olmalıdır.
- **country LIKE '%n'**: Ülke isminin sonu **'n'** harfi ile bitmelidir. `%` joker karakteri, ismin önünde herhangi bir karakter dizisi olabileceğini belirtir.

---

### **3. En Az 4 Adet 'T' Karakteri İçeren Film İsimlerini Sıralama**
**Sorgu:**

```sql
SELECT title 
FROM film 
WHERE LENGTH(REPLACE(LOWER(title), 't', '')) <= LENGTH(title) - 4;
```

**Açıklama:**
Bu sorgu, **film** tablosundaki **title** sütunundaki film isimlerinden, içinde **en az 4 adet 'T' harfi** (büyük/küçük fark etmez) bulunanları listeler.
- **LOWER(title)**: Başlıklar küçük harfe dönüştürülür, böylece büyük/küçük harf farkı ortadan kaldırılır.
- **REPLACE(LOWER(title), 't', '')**: 't' harfleri kaldırılır ve bunun sonucunda film başlığındaki 't' harflerinin sayısı hesaplanır.
- **LENGTH(title) - LENGTH(REPLACE(LOWER(title), 't', ''))**: Bu fark, başlıktaki 't' harflerinin sayısını verir. Eğer bu sayı 4 veya daha fazlaysa, film başlığı sorguya dahil edilir.

---

### **4. 'C' ile Başlayan, Uzunluğu 90'dan Büyük ve 'Rental_rate' 2.99 Olan Filmleri Sıralama**
**Sorgu:**

```sql
SELECT * 
FROM film 
WHERE title LIKE 'C%' 
  AND LENGTH(title) > 90 
  AND rental_rate = 2.99;
```

**Açıklama:**
Bu sorgu, **film** tablosundaki **title** sütunundaki başlıkları ve diğer tüm sütunlardaki verileri, **title**'ı **'C'** harfi ile başlayıp, uzunluğu **90'dan büyük** ve **rental_rate**'ı **2.99** olan film kayıtlarını getirir.
- **title LIKE 'C%'**: Film başlıklarının 'C' harfi ile başlamasını sağlar.
- **LENGTH(title) > 90**: Film başlığının uzunluğunun 90 karakterden fazla olmasını sağlar.
- **rental_rate = 2.99**: Film kiralama ücretinin **2.99** olmasını sağlar.

---

## **Veritabanı ve Çalışma Ortamı**
Bu sorgular, bir veritabanı yönetim sisteminde (örneğin **MySQL**, **PostgreSQL**, **SQLite** vb.) çalıştırılabilir. Sorguların doğru çalışabilmesi için veritabanında **country** ve **film** isimli tablolara sahip olmanız gerekmektedir.

---

## **Sistem Gereksinimleri**
- **Veritabanı Yönetim Sistemi (DBMS)**: MySQL, PostgreSQL, SQLite, veya başka bir SQL uyumlu sistem.
- **SQL Bilgisi**: Bu sorguları çalıştırmak için temel SQL bilgisi gereklidir.

---

## **Sonuç ve Çıktılar**
Bu sorgular, veritabanında farklı koşullara göre filtreleme yaparak, kullanıcıların hızlı bir şekilde belirli verilere ulaşmalarını sağlar. Sorguların çıktıları, koşullara uyan verileri sıralayarak veritabanı yönetiminde kullanılabilir.

---

## **Ekstra Notlar**
- Eğer veritabanınızda **REGEXP** veya benzeri düzenli ifade fonksiyonları kullanılıyorsa, bazı sorgular bu fonksiyonları kullanarak daha esnek hale getirilebilir.
- **LENGTH()** fonksiyonu bazı veritabanlarında **CHAR_LENGTH()** olarak da geçebilir. Bu fonksiyonun ismi kullanılan veritabanına göre değişebilir.
