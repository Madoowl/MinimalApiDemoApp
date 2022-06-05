CREATE PROCEDURE [dbo].[spUser_Update]
	@id int,
	@firstName nvarchar(50),
	@lastName nvarchar(50)
AS
BEGIN
	UPDATE
		[dbo].[User]
	SET 
		FirstName = @firstName,
		LastName = @lastName
	WHERE
		Id = @id;	
END
