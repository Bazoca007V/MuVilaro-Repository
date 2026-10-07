USE [MuOnline]
GO

/****** Object:  Table [dbo].[XTR_QuestInfo]    Script Date: 12/12/2021 18:17:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

-- Drop Table First! (Zero)
IF EXISTS(SELECT * FROM sys.tables WHERE SCHEMA_NAME(schema_id) LIKE 'dbo' AND name like 'XTR_QuestInfo')  
   DROP TABLE [dbo].[XTR_QuestInfo];  
GO

CREATE TABLE [dbo].[XTR_QuestInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](10) NOT NULL,
	[QuestIndex] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[Data] [varbinary](16) NOT NULL,
	[State] [tinyint] NOT NULL,
	[Count] [int] NOT NULL,
	[Date] [int] NOT NULL,
 CONSTRAINT [PK_XTR_QuestInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[XTR_QuestInfo] ADD  CONSTRAINT [DF_XTR_QuestInfo_QuestState]  DEFAULT ((0)) FOR [Type]
GO

ALTER TABLE [dbo].[XTR_QuestInfo] ADD  CONSTRAINT [DF_XTR_QuestInfo_State]  DEFAULT ((0)) FOR [State]
GO

ALTER TABLE [dbo].[XTR_QuestInfo] ADD  CONSTRAINT [DF_XTR_QuestInfo_Count]  DEFAULT ((0)) FOR [Count]
GO

ALTER TABLE [dbo].[XTR_QuestInfo] ADD  CONSTRAINT [DF_XTR_QuestInfo_Date]  DEFAULT ((0)) FOR [Date]
GO

