/****** Object:  Table [dbo].[Group]    Script Date: 07/27/2010 15:40:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Group]') AND type in (N'U'))
DROP TABLE [dbo].[Group]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 07/27/2010 15:40:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Group]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Group](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NOT NULL,
	[Tag] [nvarchar](5) NOT NULL,
	[IsSquad] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Group_IsSquad]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Group] ADD  CONSTRAINT [DF_Group_IsSquad]  DEFAULT ((0)) FOR [IsSquad]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Group_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Group] ADD  CONSTRAINT [DF_Group_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
END

GO
