USE [MuOnline]
GO

/****** Object:  StoredProcedure [dbo].[WZ_UpdateAccountLevel]    Script Date: 21/12/2020 10:32:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[WZ_UpdateAccountLevel] 
@Account varchar(10),
@AccountLevel int,
@AccountExpireTime int
AS
BEGIN

SET NOCOUNT ON
SET XACT_ABORT ON

DECLARE @CurrentAccountLevel int
DECLARE @CurrentAccountExpireDate smalldatetime

SELECT @CurrentAccountLevel=AccountLevel,@CurrentAccountExpireDate=AccountExpireDate FROM MEMB_INFO WHERE memb___id=@Account

IF(@CurrentAccountLevel = '0')
BEGIN
	SET @CurrentAccountLevel = @AccountLevel
	SET @CurrentAccountExpireDate = DATEADD(second,@AccountExpireTime,getdate())
END
ELSE
BEGIN
	SET @CurrentAccountLevel = @AccountLevel
	SET @CurrentAccountExpireDate = DATEADD(second,@AccountExpireTime,@CurrentAccountExpireDate)
END

UPDATE MEMB_INFO SET AccountLevel=@CurrentAccountLevel,AccountExpireDate=@CurrentAccountExpireDate WHERE memb___id=@Account

SET NOCOUNT OFF
SET XACT_ABORT OFF

END


GO

