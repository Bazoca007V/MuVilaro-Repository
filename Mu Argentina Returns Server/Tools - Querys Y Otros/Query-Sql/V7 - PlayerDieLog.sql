USE [muonline]
GO

/****** Object:  Table [dbo].[XTR_PlayerDieLog]    Script Date: 11/24/2020 17:59:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[XTR_PlayerDieLog](
	[Player1] [varchar](50) NULL,
	[Player2] [varchar](50) NULL,
	[Map] [int] NULL,
	[X] [int] NULL,
	[Y] [int] NULL,
	[Status] [int] NULL,
	[Date] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


