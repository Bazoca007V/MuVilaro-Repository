USE [MuOnline]
GO

IF OBJECT_ID('MSP_SetKillLog', 'P') IS NOT NULL  
   DROP PROCEDURE [dbo].[MSP_SetKillLog]
GO  

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MSP_SetKillLog]
	@Name1 varchar(10), /* Killer */
	@Name2 varchar(10), /* Killed */
	@Class1 int,
	@L1 int,
	@R1 int,
	@MR1 int,
	@GName1 varchar(8),
	@Class2 int,
	@L2 int,
	@R2 int,
	@MR2 int,
	@GName2 varchar(8),
	@DateTime int
AS
BEGIN
	SET NOCOUNT ON;
	
	IF NOT EXISTS (SELECT 1 FROM KillLog WHERE (Name1 = @Name1 AND Name2 = @Name2) OR (Name1 = @Name2 AND Name2 = @Name1))
		BEGIN
			INSERT INTO KillLog (Name1, Name2, KD1, KD2, Class1, L1, R1, MR1, GName1, Class2, L2, R2, MR2, GName2, DateTime) 
			VALUES (@Name1, @Name2, 1, 0, @Class1, @L1, @R1, @MR1, @GName1, @Class2, @L2, @R2, @MR2, @GName2, @DateTime)
		END
	ELSE
		BEGIN
			DECLARE @GetName1 varchar(10), @GetName2 varchar(10)
			SELECT @GetName1=Name1, @GetName2=Name2 FROM KillLog WHERE (Name1=@Name1 AND Name2=@Name2) OR ( Name1=@Name2 AND Name2=@Name1)

			IF (@GetName1 = @Name1)
				BEGIN
					UPDATE KillLog SET KD1 = KD1 + 1,
						Class1 = @Class1, L1 = @L1, R1 = @R1, MR1 = @MR1, GName1 = @GName1,
						Class2 = @Class2, L2 = @L2, R2 = @R2, MR2 = @MR2, GName2 = @GName2,
						DateTime = @DateTime WHERE Name1 = @Name1 AND Name2 = @Name2
				END
			ELSE
				BEGIN
					UPDATE KillLog SET KD2 = KD2 + 1,
						Class2 = @Class1, L2 = @L1, R2 = @R1, MR2 = @MR1, GName2 = @GName1,
						Class1 = @Class2, L1 = @L2, R1 = @R2, MR1 = @MR2, GName1 = @GName2,
						DateTime = @DateTime WHERE Name2 = @Name1 AND Name1 = @Name2
				END
		END
END
GO

