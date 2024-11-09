# Employee Veritabanı İşlemleri

Bu dosya, `employee` tablosunu oluşturma, tabloya veri ekleme, güncelleme ve silme işlemlerini içermektedir.

## İçindekiler
1. [Tablo Oluşturma](#1-tablo-oluşturma)
2. [Veri Ekleme](#2-veri-ekleme)
3. [Veri Güncelleme](#3-veri-güncelleme)
4. [Veri Silme](#4-veri-silme)

---

### 1. Tablo Oluşturma

Aşağıdaki SQL komutu, `employee` adında bir tablo oluşturur. Bu tablo `id`, `name`, `birthday` ve `email` sütunlarını içerir.

```sql
CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);
```

### 2. Veri Ekleme

`employee` tablosuna 50 adet örnek veri eklemek için `Mockaroo` servisi kullanılmıştır. Aşağıda örnek veri ekleme komutlarından birkaçı verilmiştir:

```sql
INSERT INTO employee (name, birthday, email) VALUES ('Alyse Dessant', '2024-09-22', 'adessant0@networkadvertising.org');
INSERT INTO employee (name, birthday, email) VALUES ('Thorstein Brimmacombe', '2024-02-18', 'tbrimmacombe1@4shared.com');
-- Devamında toplamda 50 adet veri eklenmiştir.
```

### 3. Veri Güncelleme

`employee` tablosundaki veriler üzerinde belirli koşullara göre güncelleme işlemleri yapılmıştır. İşte örnek güncelleme komutları:

```sql
UPDATE employee SET name = 'Eda Özge' WHERE id = 1;
UPDATE employee SET email = 'edaozge@gmail.com' WHERE name = 'Lincoln Cheale';
UPDATE employee SET name = 'Lincoln Cheale' WHERE birthday = '1994-01-05';
UPDATE employee SET birthday = '2024-08-22' WHERE email = 'lcheale1a@google.de';
UPDATE employee SET email = 'hbickell1d@archive.org' WHERE id = 10;
```

### 4. Veri Silme

Tablodan belirli koşullara göre veri silme işlemleri gerçekleştirilmiştir. İşte örnek silme komutları:

```sql
DELETE FROM employee WHERE id = 8;
DELETE FROM employee WHERE name = 'Lincoln Cheale';
DELETE FROM employee WHERE email = 'hbickell1d@archive.org';
DELETE FROM employee WHERE id = 100;
DELETE FROM employee WHERE birthday = '2024-08-22';
```
