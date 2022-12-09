--UNION OPERATOR

--Iki farkli sorgulamanin sonucunu birlestiren islemdir. Secilen Field SAYISI ve DATA TYPE’i ayni 
olmalidir.
 SELECt * FROM personel1
-- 1) Maasi 4000’den cok olan isci isimlerini ve 5000 liradan fazla maas alinan
-- sehirleri gosteren sorguyu yaziniz

SELECT sehir AS isci_veya_sehir_ismi ,maas FROM personel1 
WHERE maas >5000 
UNION-- iki sorguyu birlestirerek verir.
SELECT isim AS isci_veya_sehir_ismi , maas
FROM personel1
WHERE maas > 4000;


--Mehmet Ozturk ismindeki kisilerin aldigi maaslari ve Istanbul’daki personelin maaslarini
--bir tabloda gosteren sorgu yaziniz...

SELECT sehir AS isci_veya_sehir_ismi ,maas
FROM personel1
WHERE sehir='Istanbul' 
UNION
SELECT isim AS isci_veya_sehir_ismi , maas 
FROM personel1
WHERE isim = 'Mehmet Ozturk';

SELECT sehir,maas FROM personel WHERE sehir='Istanbul' 
ORDER BY maas DESC-- order by kucukten buyuge; sonunda desc dersek byukten kucuge siralar....

CREATE TABLE personel2
(
id int,
isim varchar(50),  
sehir varchar(50), 
maas int,  
sirket varchar(20),

CONSTRAINT personel_pk PRIMARY KEY (id)
	);
INSERT INTO personel2 VALUES(123456789, 'Ali Yilmaz', 'Istanbul', 5500, 'Honda');  
INSERT INTO personel2 VALUES(234567890, 'Veli Sahin', 'Istanbul', 4500, 'Toyota');  
INSERT INTO personel2 VALUES(345678901, 'Mehmet Ozturk', 'Ankara', 3500, 'Honda');  
INSERT INTO personel2 VALUES(456789012, 'Mehmet Ozturk', 'Izmir', 6000, 'Ford');  
INSERT INTO personel2 VALUES(567890123, 'Mehmet Ozturk', 'Ankara', 7000, 'Tofas');  
INSERT INTO personel2 VALUES(456715012, 'Veli Sahin', 'Ankara', 4500, 'Ford');  
INSERT INTO personel2 VALUES(123456710, 'Hatice Sahin', 'Bursa', 4500, 'Honda');

SELECT * FROM PERSONEL2

CREATE TABLE personel_bilgi  (
id int,
tel char(10) UNIQUE ,  
cocuk_sayisi int,
CONSTRAINT personel_bilgi_fk FOREIGN KEY (id) REFERENCES personel2(id)
);

INSERT INTO personel_bilgi VALUES(123456789, '5302345678', 5);  
INSERT INTO personel_bilgi VALUES(234567890, '5422345678', 4);
INSERT INTO personel_bilgi VALUES(345678901, '5354561245', 3);
INSERT INTO personel_bilgi VALUES(456789012, '5411452659', 3);
INSERT INTO personel_bilgi VALUES(567890123, '5551253698', 2);
INSERT INTO personel_bilgi VALUES(456789012, '5524578574', 2);
INSERT INTO personel_bilgi VALUES(123456710, '5537488585', 1);

select * from personel2
select * from personel_bilgi


-- id’si 123456789 olan personelin    Personel tablosundan sehir ve maasini, 
-- personel_bilgi  tablosundan da tel ve cocuk sayisini yazdirin...

SELECT sehir, maas FROM personel2 WHERE id='123456789'

UNION
SELECT tel,cocuk_sayisi FROM personel_bilgi WHERE id= '123456789';


--UNIOUN ALL--
/* UNION TEKRARLI VERILERI TEKE DUSURUR VE BIZE O SEKILDE SONUC VEERIR...
UNION ALL ISE; TEKRARLI VERILERLE BIRLIKTE TUM SORGULARI GETIRIR...*/
--1) Personel tablosundada maasi 5000’den az olan tum isimleri ve maaslari bulunuz...

SELECT isim,maas  FROM personel2  WHERE maas<5000
UNION ALL
SELECT isim,maas  FROM personel2  WHERE maas<5000;

