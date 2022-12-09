--INTERSECT OPERATOR
-- INTERSECT (Kesişim)
/*
Farkli iki tablodaki ortak verileri INTERSECT komutu ile getirebiliriz
*/
--Personel tablosundan Istanbul veya Ankara’da calisanlarin id’lerini yazdir
--Personel_bilgi tablosundan 2 veya 3 cocugu olanlarin id lerini yazdirin
SELECT id FROM personel2 WHERE sehir IN ('Istanbul','Ankara')
INTERSECT
SELECT id FROM personel_bilgi WHERE cocuk_sayisi IN (2,3)