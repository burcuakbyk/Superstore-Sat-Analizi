--Kar Marjı Hesaplama
create function fn_Profit_Margin
(
@Sales float,
@Profit float
)
returns float
as
begin
return(@Profit/@Sales)*100
end;

select
[Product Name],
dbo.fn_Profit_Margin(Sales,Profit) AS Profit_Margin
from dbo.Superstore

SELECT
    name,
    type_desc
FROM sys.objects
WHERE name = 'fn_Profit_Margin';

EXEC sp_helptext 'dbo.fn_Profit_Margin';
SELECT dbo.fn_Profit_Margin(1000, 250) AS Profit_Margin;
