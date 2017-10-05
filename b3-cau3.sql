USE Northwind
GO

CREATE FUNCTION dbo.SLKHCuaMotQG(@TenQG nvarchar(50))
RETURNS int
AS
BEGIN 
	DECLARE @kq int
	SELECT @kq = COUNT(EmployeeID)
	FROM Customers
	WHERE Country = @TenQG
	RETURN @kq
END
GO

PRINT dbo.SLKHCuaMotQG(N'USA')
GO