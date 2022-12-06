-- ALIASES-->
SELECT * FROM calisanlar2 

CREATE TABLE calisanlar  (
calisan_id char(9),
calisan_isim varchar(50),
calisan_dogdugu_sehir varchar(50)
);
INSERT INTO calisanlar VALUES(123456789, 'Ali Can', 'Istanbul');  
INSERT INTO calisanlar VALUES(234567890, 'Veli Cem', 'Ankara');  
INSERT INTO calisanlar VALUES(345678901, 'Mine Bulut', 'Izmir');

SELECT * FROM  calisanlar

-- EGER IKI SUTUNUN VEERILERINI BIRLESTIRMAK ISTERSEK CONCET || SEMBOLU KULLANIRIZ....

SELECT  calisan_id AS id , calisan_isim || calisan_dogdugu_sehir AS calisan _ bilgisi  FROm calisanlar
		-- 2. YOL
		
SELECT calisan_id AS id, concat (calisan_isim, calisan_dogdugu_sehir)AS calisan_bilgisi FROM calisanlar	

CREATE TABLE insanlar1
(
ssn char(9),
name varchar(50),  
adres varchar(50)
);
INSERT INTO insanlar1 VALUES(123456789, 'Ali Can', 'Istanbul');  
INSERT INTO insanlar1 VALUES(234567890, 'Veli Cem', 'Ankara');  
INSERT INTO insanlar1 VALUES(345678901, 'Mine Bulut', 'Izmir');  
INSERT INTO insanlar1 (ssn, adres) VALUES(456789012, 'Bursa'); 
INSERT INTO insanlar1 (ssn, adres) VALUES(567890123, 'Denizli');
select * from insanlar1
--name sutununda null olan degerleri listeleyelim

SELECT name From insanlar1 WHERE name IS Null

-- Insanlar tablosunda sadece null olmayan degerleri listeleyiniz

SELECT name FROM insanlar1 WHERE name IS NOT Null

-- Insanlar tablosunda null deger almis verileri no name olarak degistiriniz.

UPDATE insanlar1
SET name = 'No Name'

