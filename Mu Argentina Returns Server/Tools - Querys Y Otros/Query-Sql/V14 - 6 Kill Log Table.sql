USE [MuOnline]
GO

/****** Object:  Table [dbo].[KillLog]    Script Date: 03/11/2023 17:43:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[KillLog](
	[Name1] [varchar](10) NOT NULL,
	[Name2] [varchar](10) NOT NULL,
	[KD1] [int] NOT NULL,
	[Class1] [tinyint] NULL,
	[L1] [smallint] NOT NULL,
	[R1] [smallint] NOT NULL,
	[MR1] [smallint] NOT NULL,
	[GName1] [varchar](8) NULL,
	[Class2] [tinyint] NULL,
	[KD2] [int] NOT NULL,
	[L2] [smallint] NOT NULL,
	[R2] [smallint] NOT NULL,
	[MR2] [smallint] NOT NULL,
	[GName2] [varchar](8) NULL,
	[DateTime] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[KillLog] ADD  CONSTRAINT [DF_KillLog_Kills]  DEFAULT ((0)) FOR [KD1]
GO

ALTER TABLE [dbo].[KillLog] ADD  CONSTRAINT [DF_KillLog_Class1]  DEFAULT ((0)) FOR [Class1]
GO

ALTER TABLE [dbo].[KillLog] ADD  CONSTRAINT [DF_KillLog_L1]  DEFAULT ((0)) FOR [L1]
GO

ALTER TABLE [dbo].[KillLog] ADD  CONSTRAINT [DF_KillLog_R1]  DEFAULT ((0)) FOR [R1]
GO

ALTER TABLE [dbo].[KillLog] ADD  CONSTRAINT [DF_KillLog_MR1]  DEFAULT ((0)) FOR [MR1]
GO

ALTER TABLE [dbo].[KillLog] ADD  CONSTRAINT [DF_KillLog_Class2]  DEFAULT ((0)) FOR [Class2]
GO

ALTER TABLE [dbo].[KillLog] ADD  CONSTRAINT [DF_KillLog_Death]  DEFAULT ((0)) FOR [KD2]
GO

ALTER TABLE [dbo].[KillLog] ADD  CONSTRAINT [DF_KillLog_L2]  DEFAULT ((0)) FOR [L2]
GO

ALTER TABLE [dbo].[KillLog] ADD  CONSTRAINT [DF_KillLog_R2]  DEFAULT ((0)) FOR [R2]
GO

ALTER TABLE [dbo].[KillLog] ADD  CONSTRAINT [DF_KillLog_MR2]  DEFAULT ((0)) FOR [MR2]
GO


