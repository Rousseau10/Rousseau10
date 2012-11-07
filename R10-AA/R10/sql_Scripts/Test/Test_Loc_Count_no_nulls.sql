USE [Action_Amusements_Winhost]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Loc_Count_Location_cols_Location_ID_Cascading_Update_Delete]') AND parent_object_id = OBJECT_ID(N'[dbo].[Loc_Count]'))
ALTER TABLE [dbo].[Loc_Count] DROP CONSTRAINT [FK_Loc_Count_Location_cols_Location_ID_Cascading_Update_Delete]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Loc_Count_Record_Modified_Date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Loc_Count] DROP CONSTRAINT [DF_Loc_Count_Record_Modified_Date]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Loc_Count_Modifiers_Login]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Loc_Count] DROP CONSTRAINT [DF_Loc_Count_Modifiers_Login]
END

GO

USE [Action_Amusements_Winhost]
GO

/****** Object:  Table [dbo].[Loc_Count]    Script Date: 05/29/2012 21:57:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Loc_Count]') AND type in (N'U'))
DROP TABLE [dbo].[Loc_Count]
GO

USE [Action_Amusements_Winhost]
GO


CREATE TABLE [dbo].[Test_Loc_Count](
	[Loc_Count_ID] [int] IDENTITY(1,1) not NULL,
	[Location_ID] [int] NULL,
	[Loc_Count_Date] [date] NULL,
	[CoinsIn] [money] NULL,
	[Tax_State] [money] NULL,
	[Tax_County] [money] NULL,
	[Tax_Other] [money] NULL,
	[Tax_Total] [money] NULL,
	[Gross] [money]  NULL,
	[Split_Operator] [money] NULL,
	[Split_Location] [money] NULL,
	[Advance] [money] NULL,
	[Notes] [varchar](50) NULL,
	[Counter_FirstName] [varchar](50) NULL,
	[Counter_LastName] [varchar](50) NULL,
	[Record_Modified_Date] [datetime]  NULL,
	[Modifiers_Login] [varchar](50) NULL,
	[Data_Is_Dummy] [bit] NULL,
	[Flagged_for_Deletion] [bit] NULL)
 

GO




