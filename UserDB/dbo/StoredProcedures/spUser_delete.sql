﻿CREATE PROCEDURE [dbo].[spUser_Delete]
	@id int
AS
BEGIN
	DELETE
	FROM
		[dbo].[User]
	WHERE
		Id = @id;
		-- TODO change to archive to an archiveTable
END