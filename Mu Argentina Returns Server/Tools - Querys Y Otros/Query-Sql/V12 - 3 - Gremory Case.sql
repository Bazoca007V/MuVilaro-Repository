USE [MuOnline]
GO

/****** Object:  Table [dbo].[GremoryCase]    Script Date: 26/9/2022 19:54:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[GremoryCase](
	[ID] [int] NOT NULL,
	[Type] [tinyint] NULL,
	[Name] [varchar](11) NULL,
	[ExpireTime] [int] NULL,
	[Item] [varbinary](16) NULL,
	[Origin] [tinyint] NULL,
	[DurationTime] [int] NULL,
 CONSTRAINT [PK_GremoryCase] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[GremoryCase] ADD  CONSTRAINT [DF_GremoryCase_Type]  DEFAULT ((0)) FOR [Type]
GO


