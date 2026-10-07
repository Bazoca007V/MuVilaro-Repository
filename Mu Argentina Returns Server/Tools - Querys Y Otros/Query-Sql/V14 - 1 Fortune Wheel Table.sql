USE [MuOnline]
GO

/****** Object:  Table [dbo].[FortuneWheel]    Script Date: 02/11/2023 22:45:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FortuneWheel](
	[Name] [varchar](10) NOT NULL,
	[Wheel] [int] NULL,
	[Count] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FortuneWheel] ADD  CONSTRAINT [DF_FortuneWheel_Count]  DEFAULT ((0)) FOR [Count]
GO

