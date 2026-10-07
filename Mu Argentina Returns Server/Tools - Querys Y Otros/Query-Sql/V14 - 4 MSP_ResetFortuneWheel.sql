USE [MuOnline]
GO

IF OBJECT_ID('MSP_ResetFortuneWheel', 'P') IS NOT NULL  
   DROP PROCEDURE [dbo].[MSP_ResetFortuneWheel]
GO  

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[MSP_ResetFortuneWheel]
	@ID varchar(4096)
AS
BEGIN
	UPDATE FortuneWheel SET Count = 0 WHERE Wheel IN (SELECT * FROM dbo.SplitString(@ID))
END
GO

