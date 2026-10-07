USE [MuOnline]
GO

IF OBJECT_ID('MSP_AddCountFortuneWheel', 'P') IS NOT NULL  
   DROP PROCEDURE [dbo].[MSP_AddCountFortuneWheel]
GO  

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[MSP_AddCountFortuneWheel]
	@Name varchar(10),
	@Type int,
	@Wheel int
AS
BEGIN

	IF NOT EXISTS (SELECT Count FROM FortuneWheel WHERE Name = @Name AND Wheel = @Wheel)
		BEGIN
			INSERT INTO FortuneWheel (Name, Wheel, Count) VALUES (@Name, @Wheel, 1)
		END
	ELSE
		BEGIN
			IF @Type = 1
				BEGIN
					UPDATE FortuneWheel SET Count = (Count - 1) WHERE Name = @Name AND Wheel = @Wheel
				END
			ELSE
				BEGIN
					UPDATE FortuneWheel SET Count = (Count + 1) WHERE Name = @Name AND Wheel = @Wheel
				END
			
		END
END
GO

