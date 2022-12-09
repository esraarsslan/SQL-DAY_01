/* *  CHİLD TABLODA ON DELETE CASCADE KOMUTU YAZILMAZSA  * *
	
1 - Child tablo silinmeden Parent tablo silinmeye calisilirsa PgAdmin Error verir.
yani Child tablo silinmeden Parent tablo silinemez.
2 - Child tablodaki veri silinmeden Parent tabloda ki veri silinmeye calisilirsa
PgAdmin Error verir. Child tablodaki silindikten sonra Parent tablodaki veri silinebilir.
	* *  CHİLD TABLODA ON DELETE CASCADE KOMUTU YAZILIRSA  * *
	
1 - Child tablo silinmeden Parent tablo silinebilir. PgAdmin buna Error vermez.
2 - Child tablodaki veri silinmeden Parent tablodaki veri silinebilir.PgAdmin buna Error vermez.
Parent tablodaki veriyi siler fakat bu durumda Child tablodaki veri de silinir.
:white_check_mark:
*/



-- SORU1: vergi_no’su 202 olan toptancinin sirket_ismi'ni 'VivoBook' olarak güncelleyeniz.
update toptancilar set sirket_ismi = 'VivoBook'
where vergi_no= '202';
select * from toptancilar;


--  SORU2: toptancilar tablosundaki tüm sirket isimlerini 'NOKIA' olarak güncelleyeniz.
update toptancilar set sirket_ismi = 'NOKIA';
select * from toptancilar;

-- SORU3: vergi_no’su 201 olan toptancinin
--sirket_ismi'ni 'nokia' ve irtibat_ismi’ni 'Canan Can' olarak güncelleyiniz.

Update toptancilar Set sirket_ismi ='nokia',irtibat_ismi ='Canan Can'
where vergi_no =201;

-- SORU4: sirket_ismi nokia olan toptancinin
--irtibat_ismi'ni 'Bilal Han' olarak güncelleyiniz.

Update toptancilar SET irtibat_ismi= 'Bilal Han'  where sirket_ismi= 'nokia';

-- SORU5: malzemeler tablosundaki 'Telefon' değerlerini 'Phone' olarak güncelleyiniz.
Select * From malzemeler ;

Update malzemeler SET malzeme_isim ='Phone'
WHERE  malzeme_isim ='Telefon'

-- SORU6: malzemeler tablosundaki malzeme_id değeri 1004'ten büyük olanların
 --malzeme_id'lerini 1 artırarak güncelleyiniz.public.
 
 Update malzemeler Set malzeme_id=malzeme_id+1 where malzeme_id>1004;
 
 -- SORU7: malzemeler tablosundaki tüm malzemelerin malzeme_id değerini ted_vergino ile toplayarak güncelleyiniz.
 
 Update malzemeler Set malzeme_id= malzeme_id+ted_vergino;
 
 -- SORU8: Malzemeler tablosundaki musteri_isim'i Ali Can olan malzeme_isim'ini,
--toptancılar  tablosunda irtibat_ismi 'Adem Coş' olan sirket_ismi ile güncelleyiniz.
UPDATE malzemeler 
SET malzeme_isim =(select sirket_ismi from toptancilar WHERE irtibat_ismi = 'Adem Coş')
WHERE musteri_isim='Ali Can';
 
 -- SORU9: malzeme_ismi Laptop olan musteri_isim'ini,
 --sirket_ismi Apple’in irtibat_isim'i ile güncelleyiniz.
 
UPDATE malzemeler
SET musteri_isim = (select irtibat_ismi from toptancilar WHERE sirket_ismi = 'Apple')
WHERE malzeme_isim = 'Laptop'

