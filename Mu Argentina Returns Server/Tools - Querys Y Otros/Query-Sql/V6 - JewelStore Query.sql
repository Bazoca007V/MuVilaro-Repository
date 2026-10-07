USE [MuOnline]
GO

/****** Object:  Table [dbo].[XTR_JewelStore]    Script Date: 06/28/2020 19:30:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[XTR_JewelStore](
	[Account] [varchar](50) NOT NULL,
	[Bless] [int] NOT NULL,
	[Soul] [int] NOT NULL,
	[Chaos] [int] NOT NULL,
	[Life] [int] NOT NULL,
 CONSTRAINT [PK_XTR_JewelStore] PRIMARY KEY CLUSTERED 
(
	[Account] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[XTR_JewelStore] ADD  CONSTRAINT [DF_XTR_JewelStore_Bless]  DEFAULT ((0)) FOR [Bless]
GO

ALTER TABLE [dbo].[XTR_JewelStore] ADD  CONSTRAINT [DF_XTR_JewelStore_Chaos]  DEFAULT ((0)) FOR [Chaos]
GO

ALTER TABLE [dbo].[XTR_JewelStore] ADD  CONSTRAINT [DF_XTR_JewelStore_Life]  DEFAULT ((0)) FOR [Life]
GO


