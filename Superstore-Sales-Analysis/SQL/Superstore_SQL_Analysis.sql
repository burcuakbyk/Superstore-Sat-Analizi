--Bölüm 1: Veriyi Tanıyalım
--1. Tablonun adını kontrol et
select * from dbo.Superstore
--2. İlk 10 satırı görüntüle
select top(10) * from dbo.Superstore
--3.Toplam kayıt sayısı
select count(*) as TotalRows from dbo.Superstore
--4.Bütün sütun isimlerini görelim
select top(1) * from dbo.Superstore

--Bölüm 2: Veri Kontrolü
--Satışlarda boş değer var mı?
select * from dbo.Superstore where Sales is null
--Kâr sütununda boş değer var mı?
select * from dbo.Superstore where Profit is null
--"Veri aktarımı sırasında Profit sütununda 13 kayıt NULL olarak aktarılmıştır. 
--Bu durum veri kalitesi kontrolleri sırasında tespit edilmiş ve analizlerde dikkate alınmıştır.
--Excel'de bu değerler mevcuttur,BOŞ değildir."
--Müşteri adı boş olan kayıt var mı?
select * from dbo.Superstore where [Customer Name] is null

--Bölüm 3:Genel KPI Analizi
--Şimdi Excel'de hesapladığımız KPI'ları SQL ile bulacağız.
--Toplam Satış
select sum(sales) as TotalSales from dbo.Superstore
--Toplam Kâr
select sum(Profit) from dbo.Superstore
--Toplam Sipariş Sayısı
select count(distinct [Order ID]) as TotalOrders from dbo.Superstore
select count([Order ID]) from dbo.Superstore
--Toplam Müşteri Sayısı
select count(distinct [Customer ID]) from dbo.Superstore
--Ortalama Sipariş Tutarı
select round(avg(Sales),2) as AverageSales from dbo.Superstore
--En Büyük Sipariş Tutarı
select max(sales) as MaxSales from dbo.Superstore
--En Küçük Sipariş Tutarı
select min(Sales) as MinSales from dbo.Superstore

--2. Kategori Bazlı Satış Analizi
--"En çok satış hangi kategoriden geliyor ve bu kategori gerçekten kârlı mı?"
select 
category,
round(sum(Sales),2) as TotalSales,
round(sum(Profit),2) as TotalProfit
from dbo.Superstore
group by Category order by TotalSales desc

--3. Bölge Performansı
select 
Region,
round(sum(Sales),2) as TotalSales,
round(sum(Profit),2) as TotalProfit
from dbo.Superstore
group by Region order by TotalSales desc

--4. En Çok Satış Yapan Ürünler
select 
[Product Name],
round(sum(Sales),2) as TotalSales
from dbo.Superstore
group by [Product Name] order by TotalSales desc

select top(10)
[Product Name],
round(sum(Sales),2) as TotalSales
from dbo.Superstore
group by [Product Name] order by TotalSales desc
