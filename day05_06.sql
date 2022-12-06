
Select * FROM manav

---Urun ismine gore urunu alan toplam kisi sayisi

SELECT urun_adi, count (isim) From manav
GROUP BY urun_adi;

Select isim , count (urun_adi) From manav
Group By isim;
