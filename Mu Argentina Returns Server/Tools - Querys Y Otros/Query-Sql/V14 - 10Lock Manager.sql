USE [MuOnline]
GO

/****** Object:  Table [dbo].[LockManager]    Script Date: 11/11/2023 20:43:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LockManager](
	[AccountID] [varchar](10) NOT NULL,
	[MoveItems] [tinyint] NOT NULL,
	[PersonalStore] [tinyint] NOT NULL,
	[ShopBuy] [tinyint] NOT NULL,
	[ShopSell] [tinyint] NOT NULL,
	[JewelBank] [tinyint] NOT NULL,
	[StatsChange] [tinyint] NOT NULL,
	[CommandsUse] [tinyint] NOT NULL,
	[GuildChanges] [tinyint] NOT NULL,
	[CharactersDelete] [tinyint] NOT NULL,
 CONSTRAINT [PK_LockSystem] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[LockManager] ADD  CONSTRAINT [DF_LockSystem_MoveItems]  DEFAULT ((0)) FOR [MoveItems]
GO

ALTER TABLE [dbo].[LockManager] ADD  CONSTRAINT [DF_LockSystem_PersonalStore]  DEFAULT ((0)) FOR [PersonalStore]
GO

ALTER TABLE [dbo].[LockManager] ADD  CONSTRAINT [DF_LockSystem_ShopBuy]  DEFAULT ((0)) FOR [ShopBuy]
GO

ALTER TABLE [dbo].[LockManager] ADD  CONSTRAINT [DF_LockSystem_ShopSell]  DEFAULT ((0)) FOR [ShopSell]
GO

ALTER TABLE [dbo].[LockManager] ADD  CONSTRAINT [DF_LockSystem_JewelBank]  DEFAULT ((0)) FOR [JewelBank]
GO

ALTER TABLE [dbo].[LockManager] ADD  CONSTRAINT [DF_LockSystem_StatsChange]  DEFAULT ((0)) FOR [StatsChange]
GO

ALTER TABLE [dbo].[LockManager] ADD  CONSTRAINT [DF_LockSystem_CommandsUse]  DEFAULT ((0)) FOR [CommandsUse]
GO

ALTER TABLE [dbo].[LockManager] ADD  CONSTRAINT [DF_LockSystem_GuildChanges]  DEFAULT ((0)) FOR [GuildChanges]
GO

ALTER TABLE [dbo].[LockManager] ADD  CONSTRAINT [DF_LockSystem_CharactersDelete]  DEFAULT ((0)) FOR [CharactersDelete]
GO

