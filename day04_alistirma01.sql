create table ogrenciler3
(
id int,
isim varchar(40),
adres varchar(100),
sinav_notu int
);
--- INSERT:Veritabanına yeni veri ekler.
insert into ogrenciler3 values(120, 'Ali Can', 'Ankara', 75);
insert into ogrenciler3 values(121, 'Veli Mert', 'Trabzon', 85);
insert into ogrenciler3 values(122, 'Ayşe Tan', 'Bursa', 65);
insert into ogrenciler3 values(123, 'Derya Soylu', 'Istanbul', 95);
insert into ogrenciler3 values(124, 'Yavuz Bal', 'Ankara', 85);
insert into ogrenciler3 values(125, 'Emre Gül', 'Hatay', 90);
insert into ogrenciler3 values(126, 'Harun Reşit', 'Isparta', 100);

select * from ogrenciler3;

--SORU1: ogrenciler tablosundaki id ve isim sütununu getiriniz
SELECT id,  isim from ogrenciler3;


--SORU: Sınav notu 80'den büyük olan öğrencilerin tüm bilgilerini listele

select * from ogrenciler3 where sinav_notu >80;

--SORU: Adresi Ankara olan ögrencilerin tüm bilgilerini listele

select * from ogrenciler3 where adres ='Ankara'; 

--SORU: Sınav notu 85 ve adresi Ankara olan öğrenci ismini listele

select  isim from ogrenciler3  where sinav_notu = '85' and adres ='Ankara';

--SORU: .Sınav notu 65 veya 85 olan ogrencilerin tüm bilgilerini listele..

select * from ogrenciler3 where sinav_notu = '65' or sinav_notu = '85';

select * from ogrenciler3 where sinav_notu in(65,85)

--SORU: .Sınav notu 65 ve 85 arasında olan ogrencilerin tüm bilgilerini listele

SELECT * from ogrenciler3 where sinav_notu between 65 and 85;

--SORU: .id'si 122 ve 125 arasında olmayan ögrencilerin isim ve sınav notu listele

Select isim , sinav_notu from ogrenciler3 where id not between 122 and 125 ;

--SORU: sinav_notu 75 olan satırı siliniz

DELETE from ogrenciler3 where sinav_notu =75;
--SORU: adres'i Trabzon olan satırı siliniz

DELETE from ogrenciler3 where adres = 'Trabzon';

--SORU: ismi Derya Soylu veya Yavuz Bal olan satırları siliniz

delete from ogrenciler3 where isim= 'Derya Soylu' or isim = 'Yavuz Bal';

--SORU: sınav notu 100 den küçük olan satırları siliniz...

DELETE from ogrenciler3 where sinav_notu<100 ;

---Tablodaki tum satirlari siliniz..

Delete from ogrenciler3;

/*SORU: memurlar isminde bir tablo oluşturunuz. id, isim, maas sutunları olsun.
id sutununun data tipi int olsun. PRİMARY KRY kısıtlaması olsun.
isim sutununun data tipi varchar(30) olsun. UNIQUE kısıtlaması olsun.
maas sutununun data tipi int olsun. maas 5000 buyuk olsun. NOT NULL kısıtlaması olsun.*/

Create table memurlar(
id int PRIMARY KEY ,
isim varchar(30) UNIQUE,
maas int CHECK(maas>5000)NOT NULL
)

/*SORU: insanlar isminde bir tablo oluşturunuz. isim, soyisim sutunları olsun.
isim sutununun data tipi int olsun. PRİMARY KEY kısıtlaması olsun. Kısıtlamanın ismi pr_ks olsun
soyisim sutununun data tipi varchar(30) olsun. UNIQUE kısıtlaması olsun. Kısıtlamanın ismi uni_ks olsun*/

CREATE TABLE insanlar(
isim int,
soyisim  varchar(30), 
CONSTRAINT PR_ks PRIMARY KEY (isim) ,
CONSTRAINT uni_ks UNIQUE (soyisim)
)