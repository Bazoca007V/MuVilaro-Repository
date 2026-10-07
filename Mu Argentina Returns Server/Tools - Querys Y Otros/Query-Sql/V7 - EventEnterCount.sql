
/****** Object:  Table [dbo].[XTR_EventEnterCount]    Script Date: 10/25/2020 10:35:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[XTR_EventEnterCount](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[BloodCastle] [int] NOT NULL,
	[ChaosCastle] [int] NOT NULL,
	[DevilSquare] [int] NOT NULL,
	[DoppelGanger] [int] NOT NULL,
	[ImperialGuardianWeek] [int] NOT NULL,
	[IlussionTemple] [int] NOT NULL,
 CONSTRAINT [PK_XTR_EventEnterCount_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

