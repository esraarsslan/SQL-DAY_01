--- IN CONDITION

DROP TABLE IF exist musteriler
CREATE TABLE musteriler (
urun_id int,
musteri_isim varchar(50), urun_isim varchar(50)
);

INSERT INTO musteriler VALUES (10, 'Mark', 'Orange'); 
INSERT INTO musteriler VALUES (10, 'Mark', 'Orange'); 
INSERT INTO musteriler VALUES (20, 'John', 'Apple'); 
INSERT INTO musteriler VALUES (30, 'Amy', 'Palm'); 
INSERT INTO musteriler VALUES (20, 'Mark', 'Apple'); 
INSERT INTO musteriler VALUES (10, 'Adem', 'Orange');
INSERT INTO musteriler VALUES (40, 'John', 'Apricot'); 
INSERT INTO musteriler VALUES (20, 'Eddie', 'Apple');

SELECT * FROM musteriler

-- Musterler tablosundan urun ismi ornage,apple, apricot olan datalari listeleyiniz.

select * from musteriler where urun_isim = 'orange' or urun_isim ='apple'  or  urun_isim = 'apricot';


-- IN CONDITION

select * from musteriler where urun_isim IN ('ORANGE', 'APPLE', 'APRICOT');

-- NOT IN--YAZDIGIMIZ VERILERIN DISINDAKILERI GETIRIR..
select * from musteriler where urun_isim = 'orange' or urun_isim ='apple'  or  urun_isim = 'apricot';

CONDITION
/*BETWEEN Condition iki mantiksal ifade ile tanimlayabilecegimiz durumlari tek komutla
yazabilme imkani verir. Yazdigimiz 2 sinirda araliga dahildir */


--BETWEEN CONDITION
-- Musteriler tablosundan id' si 20 ile 40 arasinda olan verileri listeleyiniz.

select *from musteriler where urun_id>= 20 and urun_id<=40;

select *from musteriler where urun_id not between 20 and 40 ;