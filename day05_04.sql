--GROUP BY CLAUSE
/*
Group By komutu sonuçları bir veya daha fazla sütuna göre gruplamak için SELECT
komutuyla birlikte kullanılır.
*/
CREATE TABLE manav
(
isim varchar(50), 
Urun_adi varchar(50),  
Urun_miktar int
);
INSERT INTO manav VALUES( 'Ali', 'Elma', 5);
INSERT INTO manav VALUES('Ayse', 'Armut', 3);
INSERT INTO manav VALUES('Veli', 'Elma', 2);  
INSERT INTO manav VALUES('Hasan', 'Uzum', 4);  
INSERT INTO manav VALUES('Ali', 'Armut', 2);  
INSERT INTO manav VALUES('Ayse', 'Elma', 3);  
INSERT INTO manav VALUES('Veli', 'Uzum', 5);  
INSERT INTO manav VALUES('Ali', 'Armut', 2);  
INSERT INTO manav VALUES('Veli', 'Elma', 3);  
INSERT INTO manav VALUES('Ayse', 'Uzum',2);

select * from manav

-- ISME GORE ALINAN TOPLAM URUNLERI BULUN

SELECT isim, sum ( urun_miktar)AS  aldigi_toplam_urun FROM manav
Group By isim


-- Isme gore alinan toplam urunleri bulun ve bu urunleri buyukten kucuge listeleyiniz

SELECT isim, sum ( urun_miktar)AS  aldigi_toplam_urun FROM manav
Group By isim
Order BY aldigi_toplam_urun DESC