USE Northwind
GO

DROP FUNCTION dbo.fullname
GO

CREATE FUNCTION dbo.fullname
(
	@tenNhanVien int
)
RETURNS nvarchar(100)
AS
BEGIN
	DECLARE @kq nvarchar(100)
	SELECT @kq = LastName + ' ' + FirstName
	FROM Employees
	WHERE EmployeeID = @tenNhanVien
	RETURN @kq
END
GO

PRINT dbo.fullname(5)