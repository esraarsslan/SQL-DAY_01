/*
1.Data Query Language (Veri Sorgulama Dili - DQL)
SELECT: veritabanındaki verileri alır.
2.Data Manipulation Language (Veri Kullanma Dili - DML)
INSERT:Veritabanına yeni veri ekler.
DELETE:Veritabanındaki verileri siler
UPDATE:Veritabanındaki verileri günceller.
3.Data Definition Language (Veri Tanimlama Dili - DDL)
DROP: Bir veritabanını veya veritabanı içindeki tabloyu siler.
ALTER: Bir veritabanı veya veritabanı içindeki tabloyu günceller.
CREATE:Bir veritabanı veya veritabanı içinde tablo oluşturur.*/


CREATE TABLE parent
(
vergi_no int PRIMARY KEY,
firma_ismi VARCHAR(50),
irtibat_ismi VARCHAR(50)
);
INSERT INTO parent VALUES (101, 'IBM', 'Kim Yon');
INSERT INTO parent VALUES (102, 'Huawei', 'Çin Li');
INSERT INTO parent VALUES (103, 'Erikson', 'Maki Tammen');
INSERT INTO parent VALUES (104, 'Apple', 'Adam Eve');
select * from parent;
CREATE TABLE child
(
ted_vergino int,
urun_id int,
urun_isim VARCHAR(50),
musteri_isim VARCHAR(50),
CONSTRAINT fk FOREIGN KEY(ted_vergino) REFERENCES parent(vergi_no)
);
INSERT INTO child VALUES(101, 1001,'Laptop', 'Ayşe Can');
INSERT INTO child VALUES(102, 1002,'Phone', 'Fatma Aka');
INSERT INTO child VALUES(102, 1003,'TV', 'Ramazan Öz');
INSERT INTO child VALUES(102, 1004,'Laptop', 'Veli Han');
INSERT INTO child VALUES(103, 1005,'Phone', 'Canan Ak');
INSERT INTO child VALUES(104, 1006,'TV', 'Ali Bak');
INSERT INTO child VALUES(104, 1007,'Phone', 'Aslan Yılmaz');
select * from child;

--SORU 1: child tablosuna ted_verginosu 101 olan veri girişi yapınız

	INSERT into child values(101, 2000, 'Araba', 'Burak');

-SORU 2: .child tablosuna ted_verginosu 105 olan veri girişi yapınız.
-- yapamayiz soruyu. Cunku parent tabloda olmayan primary key ile child tabloya veri girisi yapilamaz...

--SORU 3: child tablosuna ted_vergino null olan veri girişi yapınız..
	Insert into child values ( null, 2400, 'Taksi', 'Esra');
	
--SORU 4: .parent tablosundaki vergi_no 101 olan veriyi siliniz.
--child tablo silinmeden parent dan silinemez...

--SORU 5: child tablosundaki ted_vergino 101 olan verileri siliniz...

Delete from child where ted_vergino =101;

--SORU 6: .parent tablosundaki vergi_no 101 olan veriyi siliniz...

DElete from parent where vergi_no = 101;

		-SORU 7: .parent tablosunu siliniz.
		
		---SILEMEYIZ...
--SORU 8: child tablosunu siliniz

DROP TABLE  CHILD

--SORU 9: .parent tablosunu siliniz

DROP TABLE  parent


