
USE [Action_Amusements_Winhost]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Machine_Transaction_History_Record_Modify_Date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Machine_Transaction_History] DROP CONSTRAINT [DF_Machine_Transaction_History_Record_Modify_Date]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Machine_Transaction_History_Modifiers_Login]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Machine_Transaction_History] DROP CONSTRAINT [DF_Machine_Transaction_History_Modifiers_Login]
END

GO

USE [Action_Amusements_Winhost]
GO

/****** Object:  Table [dbo].[Machine_Transaction_History]    Script Date: 06/27/2012 19:01:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Machine_Transaction_History]') AND type in (N'U'))
DROP TABLE [dbo].[Machine_Transaction_History]
GO

USE [Action_Amusements_Winhost]
GO

/****** Object:  Table [dbo].[Machine_Transaction_History]    Script Date: 06/27/2012 19:01:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Machine_Transaction_History](
	[Machine_Transaction_History_ID] [int] IDENTITY(1,1) NOT NULL,
	Alias nvarchar(50) not null,
	[Transaction_Date] [date] NOT NULL,
	[TypeCode] [nvarchar](50) NOT NULL,
	[Cost] [smallmoney] NULL,
	[Description] [nvarchar](250) NULL,
	[Comments] [nvarchar](250) NULL,
	[Record_Modify_Date] [datetime2](7) NULL,
	[Modifiers_Login] [nvarchar](50) NOT NULL,
	[Data_Is_Dummy] [bit] NOT NULL,
	[Flagged_for_Deletion] [bit] NOT NULL,
	[RowVersion] [timestamp] NULL,
 CONSTRAINT [PK_Machine_Transaction_History] PRIMARY KEY CLUSTERED 
(
	Alias ASC,
	
	[Transaction_Date] ASC
	
	
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Machine_Transaction_History] ADD  CONSTRAINT [DF_Machine_Transaction_History_Record_Modify_Date]  DEFAULT (getdate()) FOR [Record_Modify_Date]
GO

ALTER TABLE [dbo].[Machine_Transaction_History] ADD  CONSTRAINT [DF_Machine_Transaction_History_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()) FOR [Modifiers_Login]
GO








USE [Action_Amusements_Winhost]
GO

/****** Object:  Table [dbo].[LU_TransactionType]    Script Date: 06/27/2012 18:56:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LU_TransactionType]') AND type in (N'U'))
DROP TABLE [dbo].[LU_TransactionType]
GO

USE [Action_Amusements_Winhost]
GO

/****** Object:  Table [dbo].[LU_TransactionType]    Script Date: 06/27/2012 18:56:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create TABLE [dbo].[LU_TransactionType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	
	[TypeCode] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](200) NULL,
[Comments] [nvarchar](200) NULL,
 CONSTRAINT [PK_LU_TransactionType] PRIMARY KEY CLUSTERED 
(
	[TypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


