USE [Action_Amusements_Winhost]
GO

/****** Object:  Table [dbo].[LU_TransactionType]    Script Date: 06/27/2012 19:21:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LU_TransactionType]') AND type in (N'U'))
DROP TABLE [dbo].[LU_TransactionType]
GO

USE [Action_Amusements_Winhost]
GO

/****** Object:  Table [dbo].[LU_TransactionType]    Script Date: 06/27/2012 19:21:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LU_TransactionType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeCode] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[Comments] [nvarchar](200) NULL,
	RowVersion [timestamp] null,
 CONSTRAINT [PK_LU_TransactionType] PRIMARY KEY CLUSTERED 
(
	[TypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


