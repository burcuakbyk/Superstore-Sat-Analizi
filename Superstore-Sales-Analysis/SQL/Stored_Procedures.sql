--Kategori Analizi
create procedure sp_Sales_By_Category
@category nvarchar(50)
as
begin

select
Category,
sum(Sales) as TotalSales,
sum(Profit) as TotalProfit
from dbo.Superstore
where Category=@category
group by Category

end;

select distinct(Category) from dbo.Superstore;

exec sp_Sales_By_Category 'Technology';

--Bölge Analizi
create procedure sp_Sales_By_Region
@region nvarchar(50)
as
begin

select
region,
sum(Sales) as TotalSales,
sum(Profit) as TotalProfit
from dbo.Superstore
where Region=@region
group by Region

end;

select distinct(Region) from dbo.Superstore

exec sp_Sales_By_Region 'East'
