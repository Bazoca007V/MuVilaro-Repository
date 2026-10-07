USE [MuOnline]
GO
/****** Object:  StoredProcedure [dbo].[WZ_CreateCharacter]    Script Date: 10/08/2020 14:21:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
ALTER Procedure [dbo].[WZ_CreateCharacter] 
	@AccountID		varchar(10),
	@Name			varchar(10),
	@Class			tinyint	
AS
Begin

	SET NOCOUNT ON
	SET	XACT_ABORT ON
	DECLARE		@Result		tinyint

	SET @Result = 0x00	

	--====================================================================================
	--	Check if Character Name Exists 
	--====================================================================================
	If EXISTS ( SELECT  Name  FROM  Character WHERE Name = @Name )
	begin
		SET @Result	= 0x01					
		GOTO ProcEnd						
	end 

	BEGIN TRAN
	--====================================================================================
	--	Check Account on CharacterList
	--====================================================================================
	If NOT EXISTS ( SELECT  Id  FROM  AccountCharacter WHERE Id = @AccountID )
		begin
			INSERT INTO dbo.AccountCharacter(Id, GameID1, GameID2, GameID3, GameID4, GameID5, GameID6, GameID7, GameID8, GameID9, GameID10, GameIDC) 
			VALUES(@AccountID, @Name, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

			SET @Result  = @@Error
		end 
	else
		begin
			--====================================================================================
			-- Try to Create Character
			--====================================================================================
			Declare @g1 varchar(10), @g2 varchar(10), @g3 varchar(10), @g4 varchar(10), @g5 varchar(10), @g6 varchar(10), @g7 varchar(10), @g8 varchar(10), @g9 varchar(10), @g10 varchar(10)		
			SELECT @g1=GameID1, @g2=GameID2, @g3=GameID3, @g4=GameID4, @g5=GameID5, @g6=GameID6, @g7=GameID7, @g8=GameID8, @g9=GameID9, @g10=GameID10 FROM dbo.AccountCharacter Where Id = @AccountID 			

			if( ( @g1 Is NULL) OR (Len(@g1) = 0))
				begin
					UPDATE AccountCharacter SET  GameID1 = @Name
					WHERE Id = @AccountID
										
					SET @Result  = @@Error
				end 
			else	 if( @g2  Is NULL OR Len(@g2) = 0)
				begin
					UPDATE AccountCharacter SET  GameID2 = @Name
					WHERE Id = @AccountID

					SET @Result  = @@Error
				end 
			else	 if( @g3  Is NULL OR Len(@g3) = 0)
				begin			
					UPDATE AccountCharacter SET  GameID3 = @Name
					WHERE Id = @AccountID

					SET @Result  = @@Error
				end 
			else	 if( @g4 Is NULL OR Len(@g4) = 0)
				begin
					UPDATE AccountCharacter SET  GameID4 = @Name
					WHERE Id = @AccountID

					SET @Result  = @@Error
				end 
			else	 if( @g5 Is NULL OR Len(@g5) = 0)
				begin
					UPDATE AccountCharacter SET  GameID5 = @Name
					WHERE Id = @AccountID

					SET @Result  = @@Error
				end 	
			else	 if( @g6 Is NULL OR Len(@g6) = 0)
				begin
					UPDATE AccountCharacter SET  GameID6 = @Name
					WHERE Id = @AccountID

					SET @Result  = @@Error
				end	
			else	 if( @g7 Is NULL OR Len(@g7) = 0)
				begin
					UPDATE AccountCharacter SET  GameID7 = @Name
					WHERE Id = @AccountID

					SET @Result  = @@Error
				end
			else	 if( @g8 Is NULL OR Len(@g8) = 0)
				begin
					UPDATE AccountCharacter SET  GameID8 = @Name
					WHERE Id = @AccountID

					SET @Result  = @@Error
				end
			else	 if( @g9 Is NULL OR Len(@g9) = 0)
				begin
					UPDATE AccountCharacter SET  GameID9 = @Name
					WHERE Id = @AccountID

					SET @Result  = @@Error
				end
			else	 if( @g10 Is NULL OR Len(@g10) = 0)
				begin
					UPDATE AccountCharacter SET  GameID10 = @Name
					WHERE Id = @AccountID

					SET @Result  = @@Error
				end
			else 
				--//No Space
				begin					
					SET @Result	= 0x03							
					GOTO TranProcEnd								
				end 			 
		end 

	--====================================================================================
	--	Insert into Character and Select data from DefaultClassType
	--====================================================================================
	if( @Result <> 0 )
		begin
			GOTO TranProcEnd		
		end 
	else
		begin
			INSERT INTO dbo.Character(AccountID, Name, cLevel, LevelUpPoint, Class, Strength, Dexterity, Vitality, Energy, Leadership, Inventory, MagicList, 
					Life, MaxLife, Mana, MaxMana, BP, MaxBP, Shield, MaxShield, MapNumber, MapPosX, MapPosY, MDate, LDate, Quest, DbVersion, EffectList )
			SELECT @AccountID As AccountID, @Name As Name, Level, LevelUpPoint, @Class As Class, 
				Strength, Dexterity, Vitality, Energy, Leadership, Inventory, MagicList, Life, MaxLife, Mana, MaxMana, 0, 0, 0, 0, MapNumber, MapPosX, MapPosY,
				getdate() As MDate, getdate() As LDate, Quest, DbVersion, EffectList
			FROM  DefaultClassType WHERE Class = @Class				

			SET @Result = @@Error
		end 

TranProcEnd:	-- GOTO
	IF ( @Result  <> 0 )
		ROLLBACK TRAN
	ELSE
		COMMIT	TRAN

ProcEnd:
	SET NOCOUNT OFF
	SET	XACT_ABORT OFF


	SELECT
	   CASE @Result
	      WHEN 0x00 THEN 0x01
	      WHEN 0x01 THEN 0x00
	      WHEN 0x03 THEN 0x03
	      ELSE 0x02
	   END AS Result 
End
