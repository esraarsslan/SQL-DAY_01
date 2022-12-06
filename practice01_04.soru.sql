--AGRAGATE METHODLAR

-- Calisanalr2 tablosunda max maasi listeleyelim
SELECT MAX(maas) AS maksimum_maas FROM calisanlar2;

/*
Eger bir sutuna gecici bir isim vermek istersek AS komutunu yazdiktan sonra vermek istedigimiz
ismi yazariz.
*/

-- Calisanalr2 tablosunda mIN maasi listeleyelim

select min(maas) AS en_dusuk_maas from calisanlar2;

-- CALISANLAR TABLOSUNDAKI MAASLARIN TOPLAMINI LISTELEYIN..

SELECT SUM (maas) FROM CALISANLAR2;
---- CALISANLAR TABLOSUNDAKI MAASLARIN ORTALAMASINI LISTELEYIN..

SELECT AVG ( MAAS) FROM CALISANLAR2;
select round (avg(maas),2) from calisanlar2;

select count(*) from calisanlar2; -- satir sayisini veriyor null olsa da sayiyor.

/*
EGER COUNT (*) KULLANIRSAK TABLODAKI TUM SATIRLARIN SAYISNI VERIR.
SUTUN ADI KULLANIRSAK O SUTUNDAKI SAYILARI VERIR.*/

-- Her markanin id’sini, ismini ve toplam kaç şehirde bulunduğunu listeleyen bir SORGU yaziniz

select *from calisanlar2
select * from markalar

select marka_id, marka_isim, 
(select count (sehir) as sehir_sayisi from calisanlar2 -- as gecici atama yapmak icin kullanilir 
 where marka_isim = isyeri) from markalar ; 
 
 -- Her markanin ismini, calisan sayisini ve o markaya ait calisanlarin toplam maaşini listeleyiniz
select marka_isim, calisan_sayisi, 
(select sum (maas) from calisanlar2 where isyeri = marka_isim)
from markalar

-- Her markanin ismini, calisan sayisini ve o markaya ait calisanlarin maksimum ve minumum maaşini listeleyen bir Sorgu yaziniz.

select marka_isim, calisan_sayisi,
(Select max(maas) From calisanlar2 where isyeri =marka_isim),
(Select min(maas) from calisanlar2 where isyeri =marka_isim) as endusukmaas
from markalar;

--VIEW KULLANIMI

CREATE VIEW  maxminmaas
AS
select marka_isim, calisan_sayisi,
(Select max(maas) From calisanlar2 where isyeri =marka_isim),
(Select min(maas) from calisanlar2 where isyeri =marka_isim) as endusukmaas
from markalar;

SELECT * FROM maxminmaas;
