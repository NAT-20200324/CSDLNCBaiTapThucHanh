USE Northwind
GO

DROP FUNCTION dbo.ChaoBan
GO

CREATE FUNCTION ChaoBan(@ten varchar(100))
RETURNS nvarchar(100)
AS
BEGIN
	RETURN 'Xin chao ban ' + @ten
END
GO

PRINT dbo.ChaoBan('Trung')
GO