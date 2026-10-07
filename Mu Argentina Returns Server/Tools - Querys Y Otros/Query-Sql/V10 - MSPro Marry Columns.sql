USE MuOnline;  
GO  
BEGIN TRY  
	EXEC sp_rename 'Marry.Character', 'Name1', 'COLUMN';  
	EXEC sp_rename 'Marry.MarryCharacter', 'Name2', 'COLUMN';  
	EXEC sp_rename 'Marry.MarriedOn', 'MarryDate', 'COLUMN';  
	PRINT '[MSPro] Query Executed!';
END TRY  
BEGIN CATCH  
	PRINT '[MSPro] Failed to change Marry columns Name';
END CATCH
GO  