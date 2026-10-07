USE [MuOnline]
GO

IF OBJECT_ID('MSP_GetKillLogByChar', 'P') IS NOT NULL  
   DROP PROCEDURE [dbo].[MSP_GetKillLogByChar]
GO  

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[MSP_GetKillLogByChar]
	@Name varchar(10),
	@Target varchar(10)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT TOP 1 * FROM KillLog WHERE (Name1 = @Name AND Name2 = @Target) OR (Name2 = @Name AND Name1 = @Target) ORDER BY DateTime DESC
END
GO