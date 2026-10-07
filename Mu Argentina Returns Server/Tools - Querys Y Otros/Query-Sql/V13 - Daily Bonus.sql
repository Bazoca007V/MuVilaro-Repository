USE [MuOnline]
GO

/****** Object:  Table [dbo].[DailyBonus]    Script Date: 6/1/2023 18:23:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DailyBonus]') AND type in (N'U'))
DROP TABLE [dbo].[DailyBonus]
GO

/****** Object:  Table [dbo].[DailyBonus]    Script Date: 6/1/2023 18:23:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DailyBonus](
	[Name] [varchar](10) NOT NULL,
	[Day0] [tinyint] NOT NULL,
	[Day1] [tinyint] NOT NULL,
	[Day2] [tinyint] NOT NULL,
	[Day3] [tinyint] NOT NULL,
	[Day4] [tinyint] NOT NULL,
	[Day5] [tinyint] NOT NULL,
	[Day6] [tinyint] NOT NULL,
 CONSTRAINT [PK_DailyBonus] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DailyBonus] ADD  CONSTRAINT [DF_DailyBonus_Day0]  DEFAULT ((0)) FOR [Day0]
GO

ALTER TABLE [dbo].[DailyBonus] ADD  CONSTRAINT [DF_DailyBonus_Day1]  DEFAULT ((0)) FOR [Day1]
GO

ALTER TABLE [dbo].[DailyBonus] ADD  CONSTRAINT [DF_DailyBonus_Day2]  DEFAULT ((0)) FOR [Day2]
GO

ALTER TABLE [dbo].[DailyBonus] ADD  CONSTRAINT [DF_DailyBonus_Day3]  DEFAULT ((0)) FOR [Day3]
GO

ALTER TABLE [dbo].[DailyBonus] ADD  CONSTRAINT [DF_DailyBonus_Day4]  DEFAULT ((0)) FOR [Day4]
GO

ALTER TABLE [dbo].[DailyBonus] ADD  CONSTRAINT [DF_DailyBonus_Day5]  DEFAULT ((0)) FOR [Day5]
GO

ALTER TABLE [dbo].[DailyBonus] ADD  CONSTRAINT [DF_DailyBonus_Day6]  DEFAULT ((0)) FOR [Day6]
GO