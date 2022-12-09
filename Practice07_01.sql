create table arac(
id int,
marka varchar(30),
model varchar(30),
fiyat int,
kilometre int,
vites varchar(20)
);
insert into arac values(100, 'Citroen', 'C3', 500000, 5000, 'Otomatik' );
insert into arac values(101, 'Mercedes', 'C180', 900000, 10000, 'Otomatik' );
insert into arac values(102, 'Honda', 'Cıvıc', 400000, 15000, 'Manuel' );
insert into arac values(103, 'Wolkswagen', 'Golf', 350000, 20000, 'Manuel' );
insert into arac values(104, 'Ford', 'Mustang', 750000, 5000, 'Otomatik' );
insert into arac values(105, 'Porsche', 'Panamera', 850000, 5000, 'Otomatik' );
insert into arac values(106, 'Bugatti', 'Veyron', 950000, 5000, 'Otomatik' );
--SORU1: arac tablosundaki en yüksek fiyat'ı listele
SELECT MAX(fiyat) FROM arac;
--SORU2: arac tablosundaki fiyatların toplamını listele
SELECT SUM(fiyat) FROM arac
--SORU3: arac tablosundaki fiyat ortalamalarını listele
SELECT ROUND(AVG(fiyat),2) FROM arac
--SORU4: arac tablosunda kaç tane araç oldugunu listele
SELECT COUNT(id) FROM arac;


CREATE TABLE meslekler
(
id int PRIMARY KEY,
isim VARCHAR(50),
soyisim VARCHAR(50),
meslek CHAR(9),
maas int
);
	
INSERT INTO meslekler VALUES(1, 'Ali', 'Can', 'Doktor', '20000' );
INSERT INTO meslekler VALUES(2, 'Veli', 'Cem', 'Mühendis', '18000');
INSERT INTO meslekler VALUES(3, 'Mine', 'Bulut', 'Avukat', '17000');
INSERT INTO meslekler VALUES(4, 'Mahmut', 'Bulut', 'Ögretmen', '15000');
INSERT INTO meslekler VALUES (5, 'Mine', 'Yasa', 'Teknisyen', '13000');
INSERT INTO meslekler VALUES (6, 'Veli', 'Yilmaz', 'Hemşire', '12000');
INSERT INTO meslekler VALUES(7, 'Ali', 'Can', 'Marangoz', '10000' );
INSERT INTO meslekler VALUES(8, 'Veli', 'Cem', 'Tekniker', '14000'); 
 Select * From meslekler
-- SORU1: meslekler tablosunu isim'e göre sıralayarak sorgulayınız.

Select * from meslekler ORDER BY isim;

Select * From meslekler Order By maas DESC;

-- SORU3: meslekler tablosunda isim'i 'Ali' olanları,
-- maas'a göre büyükten küçüge sıralayarak sorgulayınız..

Select * From meslekler where isim='ALi'order By maas desc; 

-- SORU4: meslekler tablosunda soyisim 'i 'Bulut' olanları,
-- maas sıralı olarak sorgulayınız.
Select * from meslekler where soyisim= 'Bulut' Order By maas;


-- SORU5: meslekler tablosunda id degeri 5 den büyük olan,
-- ilk 2 veriyi listeleyiniz(Limit kullanm,ak gerekir)

Select * From meslekler where id> 5 limit 2;

-- SORU6: meslekler tablosunda maası en yüksek 3 kişinin bilgilerini listeleyiniz..

Select* From meslekler Order By maas Desc limit 3;

-- SORU7: meslekler tablosunda ilk 2 veriden sonra 5 veriyi getirin

Select * From meslekler offset 2 limit 5;

-- SORU8: meslekler tablosunda en yüksek maaşı alan 4. 5. 6. kişilerin bilgilerini listele

Select * From meslekler order by maas desc offset 3 limit 3;

create table filmler
(film_id int,
film_name varchar(30),
category varchar(30)
);
insert into filmler values (1, 'Eyvah Eyvah', 'Komedi');
insert into filmler values (2, 'Kurtlar Vadisi', 'Aksiyon');
insert into filmler values (3, 'Eltilerin Savasi', 'Komedi');
insert into filmler values (4, 'Aile Arasinda', 'Komedi');
insert into filmler values (5, 'GORA', 'Bilim Kurgu');
insert into filmler values (6, 'Organize Isler', 'Komedi');
insert into filmler values (7, 'Babam ve Oglum', 'Dram');


create table aktorler
(id int,
actor_name varchar(30),
film_id int
);
insert into aktorler values (1, 'Ata Demirer', 1);
insert into aktorler values (2, 'Necati Sasmaz', 2);
insert into aktorler values (3, 'Gupse Ozay', 3);
insert into aktorler values (4, 'Engin Gunaydin', 4);
insert into aktorler values (5, 'Cem Yilmaz', 5);
Select * From Filmler;
Select * From Aktorler;

--SORU1: Tüm film_name'leri, category'lerini ve filimlerde oynayan actor_name'leri listeleyiniz.
--*****LEFT JOIN*****
Select film_name, category, actor_name from filmler AS A
left join aktorler AS B
On A.film_id = B.film_id;


--*******RIGHT JOIN******

Select film_name, category, actor_name from filmler AS B
right join aktorler AS B
On A.film_id = B.film_id

-- SORU2: Tüm actor_name'leri ve film_name'lerini listeleyiniz.
--1. YOL---LEFT JOin
select film_name, actor_name from filmler 
full join aktorler on filmler.film_id=aktorler.film_id

elect actor_name,film_name from filmler as A
left join  aktorler as B
on A.film_id= B.film_id;

--2.YOL---Right JOIn
select actor_name,film_name from filmler as B
right join  aktorler as A
on A.film_id= B.film_id;

 






