USE [MuOnline]
GO

/****** Object:  Table [dbo].[ResetSystem]    Script Date: 22/2/2022 18:00:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ResetSystem](
	[Name] [varchar](10) NOT NULL,
	[Strength] [int] NULL,
	[Dexterity] [int] NULL,
	[Vitality] [int] NULL,
	[Energy] [int] NULL,
	[Leadership] [int] NULL,
	[AutoReset] [tinyint] NOT NULL,
	[PointsLeft] [int] NOT NULL,
 CONSTRAINT [PK_ResetSystem] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[ResetSystem] ADD  CONSTRAINT [DF_ResetSystem_Leadership]  DEFAULT ((0)) FOR [Leadership]
GO

ALTER TABLE [dbo].[ResetSystem] ADD  CONSTRAINT [DF_ResetSystem_AutoReset]  DEFAULT ((0)) FOR [AutoReset]
GO

ALTER TABLE [dbo].[ResetSystem] ADD  CONSTRAINT [DF_ResetSystem_LeftPoints]  DEFAULT ((0)) FOR [PointsLeft]
GO

