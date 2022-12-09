-- DISTINCT KULLANIMI
CREATE TABLE maas 
(
id int, 
musteri_isim varchar(50),
maas int 
);
INSERT INTO maas VALUES (10, 'Ali', 5000); 
INSERT INTO maas VALUES (10, 'Ali', 7500); 
INSERT INTO maas VALUES (20, 'Veli', 10000); 
INSERT INTO maas VALUES (30, 'Ayse', 9000); 
INSERT INTO maas VALUES (20, 'Ali', 6500); 
INSERT INTO maas VALUES (10, 'Adem', 8000); 
INSERT INTO maas VALUES (40, 'Veli', 8500); 
INSERT INTO maas VALUES (20, 'Elif', 5500);
SELECT * FROM maas
-- Musteri urun tablosundan urun isimlerini tekrarsız(grup) listeleyiniz
--GROUP BY ÇÖZÜMÜ
SELECT urun_isim FROM musteri_urun
GROUP BY urun_isim

--DISTINCT ÇÖZÜMÜ
SELECT DISTINCT(urun_isim) FROM musteri_urun;
-- Tabloda kaç farklı meyve vardır
SELECT urun_isim, count(urun_isim) FROM musteri_urun
GROUP BY urun_isim
-- FETCH NEXT () ROW ONLY / OFFSET / LIMIT
-- Musteri urun tablosundan ilk üç kaydı listeleyiniz
SELECT * FROM musteri_urun ORDER BY urun_id
FETCH NEXT 3 ROW ONLY
-- LIMIT
SELECT * FROM musteri_urun ORDER BY urun_id
limit 3
-- Musteri urun tablosundan ilk kaydı listeleyiniz
SELECT * FROM musteri_urun ORDER BY urun_id
limit 1
-- Müsteri urun tablosundan son üç kaydı listeleyiniz
SELECT * FROM musteri_urun ORDER BY urun_id DESC
limit 3
-- EN yüksek maası alan müsteriyi listeleyiniz
SELECT * FROM maas ORDER BY maas DESC limit 1
-- Maas tablosundan en yüksek ikinci maası listeleyiniz
SELECT * FROM maas ORDER BY maas DESC offset 1 limit 1
/*
OFFSET --> Satır atlamak istediğimizde offset komutunu kullanırız
*/
SELECT * FROM maas ORDER BY maas desc
OFFSET 1 
FETCH NEXT 1 ROW ONLY
-- Maas tablosundan en düşük dördüncü maası listeleyiniz
SELECT * FROM maas ORDER BY maas offset 3 limit 2









