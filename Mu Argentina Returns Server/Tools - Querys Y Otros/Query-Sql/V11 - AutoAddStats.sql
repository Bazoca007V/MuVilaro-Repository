USE [muonlinev11]
GO

/****** Object:  Table [dbo].[AutoAddStats]    Script Date: 23/04/2022 17:16:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AutoAddStats](
	[Name] [varchar](10) NOT NULL,
	[State] [tinyint] NOT NULL,
	[STR] [tinyint] NOT NULL,
	[AGI] [tinyint] NOT NULL,
	[VIT] [tinyint] NOT NULL,
	[ENE] [tinyint] NOT NULL,
	[CMD] [tinyint] NOT NULL,
	[Level] [smallint] NOT NULL,
 CONSTRAINT [PK_AutoAddStats] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[AutoAddStats] ADD  CONSTRAINT [DF_AutoAddStats_Enable]  DEFAULT ((0)) FOR [State
GO

ALTER TABLE [dbo].[AutoAddStats] ADD  CONSTRAINT [DF_AutoAddStats_STR]  DEFAULT ((0)) FOR [STR]
GO

ALTER TABLE [dbo].[AutoAddStats] ADD  CONSTRAINT [DF_AutoAddStats_AGI]  DEFAULT ((0)) FOR [AGI]
GO

ALTER TABLE [dbo].[AutoAddStats] ADD  CONSTRAINT [DF_AutoAddStats_VIT]  DEFAULT ((0)) FOR [VIT]
GO

ALTER TABLE [dbo].[AutoAddStats] ADD  CONSTRAINT [DF_AutoAddStats_ENE]  DEFAULT ((0)) FOR [ENE]
GO

ALTER TABLE [dbo].[AutoAddStats] ADD  CONSTRAINT [DF_AutoAddStats_CMD]  DEFAULT ((0)) FOR [CMD]
GO

ALTER TABLE [dbo].[AutoAddStats] ADD  CONSTRAINT [DF_AutoAddStats_Level]  DEFAULT ((0)) FOR [Level]
GO


