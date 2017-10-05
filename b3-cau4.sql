USE Northwind
GO

CREATE FUNCTION dbo.SLDonHangCuaKH1(@TenCT nvarchar(50))
RETURNS int
AS
BEGIN
	DECLARE @kq int
	SELECT @kq = COUNT(dbo.Orders.OrderID)
	FROM dbo.Customers, dbo.Orders
	WHERE dbo.Orders.ShipCountry  = 'FRANCE'
	RETURN @kq
END
GO

PRINT dbo.SLDonHangCuaKH1('Ernst Handel')
GO