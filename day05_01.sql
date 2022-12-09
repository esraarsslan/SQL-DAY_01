
CREATE TABLE personel1
(
id int,
isim varchar(50), 
sehir varchar(50), 
maas int,  
sirket varchar(20)
);
INSERT INTO personel1 VALUES(123456789, 'Ali Yilmaz', 'Istanbul', 5500, 'Honda');  
INSERT INTO personel1 VALUES(234567890, 'Veli Sahin', 'Istanbul', 4500, 'Toyota');  
INSERT INTO personel1 VALUES(345678901, 'Mehmet Ozturk', 'Ankara', 3500, 'Honda');  
INSERT INTO personel1 VALUES(456789012, 'Mehmet Ozturk', 'Izmir', 6000, 'Ford');  
INSERT INTO personel1 VALUES(567890123, 'Mehmet Ozturk', 'Ankara', 7000, 'Tofas');  
INSERT INTO personel1 VALUES(456789012, 'Veli Sahin', 'Ankara', 4500, 'Ford');  
INSERT INTO personel1 VALUES(123456710, 'Hatice Sahin', 'Bursa', 4500, 'Honda');

SELECT * FROM PERSONEL1;

--1)Isme gore toplam maaslari bulun

 SELECT isim,  SUM (maas) from personel1
 Group BY isim;
 
 -- Personel tablosundaki isimlere gore gruplayiniz.
 
 Select isim From personel1 Group By isim;
 
 
 --- HAVING KULLANIMI
 
 1) Her sirketin MIN maaslarini eger 4000’den buyukse goster...
 
 SELECT * FROM personel1
 
 SELECT sirket,min(maas) AS en_dusuk_maas FROM personel1
 Group BY sirket
 HAVING min (maas)>4000;
 
 /*
	Having komutu yalnizca GROUP BY komutu ile kullanilir
	Eger gruplamadan sonra bir sart varsa HAVING komutu kullanilir
*/

-- 2) Ayni isimdeki kisilerin aldigi toplam gelir 10000 liradan fazla ise ismi
-- ve toplam maasi gosteren sorgu yaziniz....

select isim, sum(maas) as toplam_maas from personel1 
group by isim 
having sum(maas)>10000;
 
 -- Eger bir sehirde calisan personel sayisi 1’den coksa sehir ismini ve personel sayisini veren sorgu yaziniz
SELECT sehir,count(isim) AS toplam_personel_sayisi
FROM personel1 GROUP BY sehir
HAVING COUNT(isim)>1;
 
-- Eger bir sehirde alinan MAX maas 5000’den dusukse sehir ismini ve MAX maasi veren sorgu yaziniz...

SELECT sehir, MAX(maas) as en_yuksek_maas from personel1
GROUP by sehir 
HAVING max(maas)<5000;
 