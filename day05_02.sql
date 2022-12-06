-- ORDER BY CLAUSE--> ORDER BY komutu belli bir field’a gore NATURAL ORDER olarak siralama
--yapmak icin kullanilir

/*
Tablolardaki verileri sıralamak için ORDER BY komutu kullanırız
Büyükten küçüğe yada küçükten büyüğe sıralama yapabiliriz
Default olarak küçükten büyüğe sıralama yapar
Eğer BÜYÜKTEN KÜÇÜĞE sıralmak istersek ORDER BY komutundan sonra DESC komutunu kullanırız
*/


CREATE TABLE insanlar3
(
ssn char(9),
isim varchar(50),
soyisim varchar(50),  
adres varchar(50)
);
INSERT INTO insanlar3 VALUES(123456789, 'Ali','Can', 'Istanbul');
INSERT INTO insanlar3 VALUES(234567890, 'Veli','Cem', 'Ankara');  
INSERT INTO insanlar3 VALUES(345678901, 'Mine','Bulut', 'Ankara');  
INSERT INTO insanlar3 VALUES(256789012, 'Mahmut','Bulut', 'Istanbul'); 
INSERT INTO insanlar3 VALUES (344678901, 'Mine','Yasa', 'Ankara');  
INSERT INTO insanlar3 VALUES (345678901, 'Veli','Yilmaz', 'Istanbul');

Select * From insanlar3

--Insanlar tablosundaki datalari adres’e gore siralayin..

SELECT * FROM insanlar3 ORDER BY adres

--Insanlar tablosundaki ismi Mine olanlari SSN sirali olarak listeleyin...

SELECT * FROM insanlar3 WHERE isim = 'Mine' ORDER BY ssn
	
/*	NOT : Order By komutundan sonra field ismi yerine field numarasi da kullanilabilir
Insanlar tablosundaki soyismi Bulut olanlari isim sirali olarak listeleyin*/

SELECT * FROM insanlar3 WHERE soyisim = 'Bulut' ORDER BY 2

--Insanlar tablosundaki tum kayitlari SSN numarasi buyukten kucuge olarak siralayin

SELECT * FRom Insanlar3  ORDER BY ssn DEsc

-- Insanlar tablosundaki tum kayitlari isimler Natural sirali, Soyisimler ters sirali olarak listeleyin

SELECT * From insanlar3 ORDER BY isim ASC, soyisim DESC; 

-- İsim ve soyisim değerlerini soyisim kelime uzunluklarına göre sıralayınız
 SELECT isim, soyisim FROM insanlar3 ORDER BY Length(soyisim) DESC;
 /*
Eğer sutun uzunluğuna göre sıralamak istersek LENGTH komutu kullanırız 
Ve yine uzunluğu büyükten küçüğe sıralamak istersek sonuna DESC komutunu ekleriz
*/

-- Tüm isim ve soyisim değerlerini aynı sutunda çağırarak her bir sütun değerini uzunluğuna göre sıralayınız

Select isim||' '||soyisim AS isim_soyisim FROM insanlar3 ORDER BY Length (isim||soyisim)

SElect isim ||''|| soyisim AS isim_soyisim FRoM insanlar3 ORDER BY Length (isim)+ Length (soyisim)

SELECT CONCAT (isim, ' ', soyisim) AS isim_soyisim From insanlar3 ORDER BY LEngth (isim) + Length (soyisim)

select isim || ' ' || soyisim as isim_soyisim from insanlar3 order by length (concat(isim, soyisim));
