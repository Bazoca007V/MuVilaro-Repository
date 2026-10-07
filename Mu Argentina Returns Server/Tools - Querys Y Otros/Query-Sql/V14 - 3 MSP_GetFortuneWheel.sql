USE [MuOnline]
GO

IF OBJECT_ID('MSP_GetFortuneWheel', 'P') IS NOT NULL  
   DROP PROCEDURE [dbo].[MSP_GetFortuneWheel]
GO  

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[MSP_GetFortuneWheel]
	@Name varchar(10)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM FortuneWheel WHERE Name = @Name
END
GO

