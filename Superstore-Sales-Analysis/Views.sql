--Kategori Analizi (View Kullanımı ile)
create view vw_Category_Performance as
select
Category,
sum(Sales) as TotalSales,
sum(Profit) as TotalProfit
from dbo.Superstore
group by Category;

select * from vw_Category_Performance;

--Bölge Analizi
create view vw_Region_Performance as
select
Region,
sum(Sales) as TotalSales,
sum(profit) as TotalProfit
from dbo.Superstore
group by Region;

select * from vw_Region_Performance;

--Ürün Analizi
create view vw_Product_Performance as
select top(10)
[Product Name],
sum(Sales) as TotalSales,
sum(Profit) as TotalProfit
from dbo.Superstore
group by [Product Name] order by TotalSales desc;

select * from vw_Product_Performance;