CREATE PROCEDURE [dbo].[spUser_getAll]
AS
BEGIN
	SELECT
		Id, FirstName, LastName
	FROM
		[dbo].[User];
END
