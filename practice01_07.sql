-- urunler tablosundaki urun_id değeri 1004'ten büyük olanların urun_id’sini 1 arttırın..

update urunler
SET urun_id = urun_id +1 where urun_id >1004 ;
 select *  from urunler
 
 -- urunler tablosundaki tüm ürünlerin urun_id değerini ted_vergino sutun değerleri ile toplayarak güncelleyiniz.
 
 update urunler
 SET urun_id = urun_id+ ted_vergino
 
 DELETE FROM urunler
 
 UPDATE URUNLER
 SET  urun_isim = ( Select firma_ismi FROM tedarikciler WHERE irtibat_ismi =' Adam Eve')
 WHERE musteri_isim = 'Ali Bak'