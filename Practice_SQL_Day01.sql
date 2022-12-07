create table ogrenciler_p1
(
id int,
isim varchar(40),
adres varchar(100),
sinav_notu int
)
insert into ogrenciler_p1 values(120, 'Ali Can', 'Ankara', 75);
insert into ogrenciler_p1 values(121, 'Veli Mert', 'Trabzon', 85);
insert into ogrenciler_p1 values(122, 'Ayşe Tan', 'Bursa', 65);
insert into ogrenciler_p1 values(123, 'Derya Soylu', 'İstanbul', 95);
insert into ogrenciler_p1 values(124, 'Yavuz Bal', 'Ankara', 85);
insert into ogrenciler_p1 values(125, 'Emre Gül', 'Hatay', 90);
insert into ogrenciler_p1 values(126, 'Harun Reşit', 'Isparta', 100);

select * from ogrenciler_p1

--SORU: ogrenciler tablosundan id ve isim sütununu getiriniz

select id,isim from ogrenciler_p1

--SORU: sınav not 80 den büyük olan öğrencilerin tüm bilgilerini getiriniz

select * from ogrenciler_p1 where sinav_notu>80

--SORU : adresi ankara olan öğrencilerin tüm bilgilerini getririniz

select * from ogrenciler_p1 where adres='Ankara'

--SORU: sınav notu 85 olan ve ANkara da yaşayan öğrenciler

select isim from ogrenciler_p1 where sinav_notu=85 and adres='Ankara'

--SORU: sınav notu 65 veya 85 olan öğrencilerin tüm bilgilerini listeleyin

select * from ogrenciler_p1 where sinav_notu=65 or sinav_notu=85

select * from ogrenciler_p1 where sinav_notu in(65,85)

--SORU: sınav notu 65 ve 85 arasında olan öğrencilerin tüm bilgilerini lisetele

select * from ogrenciler_p1 where sinav_notu between 65 and 85

--SORU: id si 122 ve 125 arasında olmayan öğrencilerin isim ve sınav notu listele

select isim, sinav_notu from ogrenciler_p1 where id not between 122 and 125 

--SORU: sinav notu 75 olan satırı siliniz

delete from ogrenciler_p1 where sinav_notu=75

--SORU: adresi trabzon olan satırı siliniz

delete from ogrenciler_p1 where adres='Trabzon'

--SORU: ismi derya soylu veya yavuz bal olan satırları siliniz

delete from ogrenciler_p1 where isim='Derya Soylu' or isim= 'Yavuz Bal'
delete from ogrenciler_p1 where isim in('Derya Soylu' , 'Yavuz Bal')

--SORU: sınav notu 100 den küçük olan satırları siliniz

delete from ogrenciler_p1 where sinav_notu<100

--SORU: tablonun içindeki tüm satırları siliniz

delete from  ogrenciler_p1

select * from ogrenciler_p1

--SORU: memurlar isminde bir tablo oluşturunuz. id, isim, maas sütunları olsun
-- id sütununda data tipi int olsun ve primary key kısıtlaması olsun
--isim sütunun data tipi varchar(30) olsun. unique kısıtlaması olsun
--maas sütununuun data tipi int olsun. maas 5000 den büyük olsun NOT null kısıtlaması olsun

create table memurlar(
id int PRIMARY KEY,
isim varchar(30) UNIQUE,
maas int CHECK(maas>5000) NOT NULL
)

--SORU: insanlar ismine tablo oluşturun. isim, soyisim sütunları oluşturun isim sütunun data tipi int olsun 
--Primary key kısıtlaması olsun Kısıtlamanın ismi pr_ks olsun
--soyisim sütunun data tipi varchar(30) olsun UNIQUE kısıtlaması olsun kısıtlamanın ismi uni_ks olsun

create table insanlar_p1
(
isim int,
soyisim varchar(30),
CONSTRAINT pr_ks PRIMARY KEY(isim),
CONSTRAINT uni_ks UNIQUE(soyisim)
)















