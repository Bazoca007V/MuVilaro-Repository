USE [MuOnline]
GO

/****** Object:  StoredProcedure [dbo].[WZ_GetGremorySerial]    Script Date: 2/10/2022 18:19:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[WZ_GetGremorySerial]
AS
BEGIN	
	DECLARE @ItemSerial	int
	SET NOCOUNT ON
	BEGIN TRANSACTION

		UPDATE GameServerInfo SET @ItemSerial = GremoryCount = GremoryCount + 1
			
		IF ( @@Error <> 0 )
		BEGIN
			ROLLBACK TRANSACTION
			SELECT -1
		END 
		ELSE
		BEGIN
			COMMIT TRANSACTION				
			SELECT @ItemSerial
		END
END
GO


