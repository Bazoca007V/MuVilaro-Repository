USE [MuOnline]

-- Change Table from 16 Bytes to 24
ALTER TABLE dbo.XTR_QuestInfo ALTER COLUMN Data VARBINARY(24);  
GO  

-- Update Data and Add missing Info
UPDATE dbo.XTR_QuestInfo SET Data = Data + 0xFFFF0000FFFF0000;
GO