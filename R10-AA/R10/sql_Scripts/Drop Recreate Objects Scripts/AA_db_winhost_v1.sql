USE [Action_Amusements_Winhost]
GO
/****** Object:  ForeignKey [FK_Location_Location_Count]    Script Date: 05/11/2012 09:53:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Location_Location_Count]') AND parent_object_id = OBJECT_ID(N'[dbo].[Location_Count]'))
ALTER TABLE [dbo].[Location_Count] DROP CONSTRAINT [FK_Location_Location_Count]
GO
/****** Object:  ForeignKey [FK_Machine_ID_Machine_one_to_Mach_Count_many]    Script Date: 05/11/2012 09:53:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Machine_ID_Machine_one_to_Mach_Count_many]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
ALTER TABLE [dbo].[Mach_Count] DROP CONSTRAINT [FK_Machine_ID_Machine_one_to_Mach_Count_many]
GO
/****** Object:  Table [dbo].[Location_Count]    Script Date: 05/11/2012 09:53:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Location_Location_Count]') AND parent_object_id = OBJECT_ID(N'[dbo].[Location_Count]'))
ALTER TABLE [dbo].[Location_Count] DROP CONSTRAINT [FK_Location_Location_Count]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Location_Count]') AND type in (N'U'))
DROP TABLE [dbo].[Location_Count]
GO
/****** Object:  Table [dbo].[Mach_Count]    Script Date: 05/11/2012 09:53:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Machine_ID_Machine_one_to_Mach_Count_many]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
ALTER TABLE [dbo].[Mach_Count] DROP CONSTRAINT [FK_Machine_ID_Machine_one_to_Mach_Count_many]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Mach_Count]') AND type in (N'U'))
DROP TABLE [dbo].[Mach_Count]
GO
/****** Object:  Table [dbo].[Machine]    Script Date: 05/11/2012 09:53:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Machine]') AND type in (N'U'))
DROP TABLE [dbo].[Machine]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 05/11/2012 09:53:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Location]') AND type in (N'U'))
DROP TABLE [dbo].[Location]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 05/11/2012 09:53:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Location]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Location](
	[Location_ID] [int] IDENTITY(1,1) NOT NULL,
	[Location_Name] [varchar](50) NOT NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State_Province_Territory] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Postal_Code] [varchar](50) NULL,
	[Contact_Name1] [varchar](50) NULL,
	[Contact_Name2] [varchar](50) NULL,
	[Owner_Name] [varchar](50) NULL,
	[Contact1_Email] [varchar](50) NULL,
	[Contact1_Cell] [varchar](50) NULL,
	[Contact2_Email] [varchar](50) NULL,
	[Contact2_Cell] [varchar](50) NULL,
	[Owner_Cell] [varchar](50) NULL,
	[Owner_Email] [varchar](50) NULL,
	[Location_Phone] [varchar](50) NULL,
	[Email_for_Sales_Report] [varchar](50) NULL,
	[Notes1] [varchar](250) NULL,
	[Notes2] [varchar](250) NULL,
	[Comments] [varchar](250) NULL,
	[Location_Is_Active] [bit] NOT NULL,
	[Data_Is_Dummy] [bit] NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[Location_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_Location_col_Location_Name] UNIQUE NONCLUSTERED 
(
	[Location_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Machine]    Script Date: 05/11/2012 09:53:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Machine]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Machine](
	[Machine_ID] [int] IDENTITY(1,1) NOT NULL,
	[Alias] [varchar](50) NOT NULL,
	[Machine_Name] [varchar](50) NULL,
	[Serial] [varchar](80) NULL,
	[Cost] [money] NULL,
	[Keys_1] [varchar](50) NULL,
	[Keys_2] [varchar](50) NULL,
	[Keys_3] [varchar](50) NULL,
	[External_Key] [varchar](50) NULL,
	[Purchased_From] [varchar](50) NULL,
	[Machine_Notes] [varchar](200) NULL,
	[Current_Mach_Location] [varchar](50) NULL,
 CONSTRAINT [PK_Machine] PRIMARY KEY CLUSTERED 
(
	[Machine_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Machine]') AND name = N'UK_Machine_col_Alias')
CREATE NONCLUSTERED INDEX [UK_Machine_col_Alias] ON [dbo].[Machine] 
(
	[Alias] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mach_Count]    Script Date: 05/11/2012 09:53:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Mach_Count]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Mach_Count](
	[Mach_Count_ID] [int] IDENTITY(1,1) NOT NULL,
	[Machine_ID] [int] NOT NULL,
	[Machine_CoinsIn] [money] NOT NULL,
	[Machine_Expense_1] [money] NULL,
	[Machine_Expense_2] [money] NULL,
	[Machine_Expense_3] [money] NULL,
	[Machine_Expense_1_Description] [varchar](50) NULL,
	[Machine_Expense_2_Description] [varchar](50) NULL,
	[Machine_Expense_3_Description] [varchar](50) NULL,
 CONSTRAINT [PK_NON_Clusterted_Mach_Count_col_Machine_Count_ID] PRIMARY KEY NONCLUSTERED 
(
	[Mach_Count_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Mach_Count]') AND name = N'IX_Mach_Count_Clustered_on_Machine_ID_Column')
CREATE CLUSTERED INDEX [IX_Mach_Count_Clustered_on_Machine_ID_Column] ON [dbo].[Mach_Count] 
(
	[Mach_Count_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location_Count]    Script Date: 05/11/2012 09:53:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Location_Count]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Location_Count](
	[Location_Count_ID] [int] IDENTITY(1,1) NOT NULL,
	[Location_ID] [int] NOT NULL,
	[Gross] [money] NOT NULL,
	[Tax] [money] NOT NULL,
	[Tax_Percent] [varchar](10) NOT NULL,
	[Split_Operator] [money] NOT NULL,
	[Split_Location] [money] NOT NULL,
	[Split_Percent] [varchar](10) NOT NULL,
	[Notes] [varchar](50) NOT NULL,
	[Machine_Count_Order] [int] NOT NULL,
 CONSTRAINT [PK_Location_Count] PRIMARY KEY NONCLUSTERED 
(
	[Location_Count_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_Location_Location_Count]    Script Date: 05/11/2012 09:53:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Location_Location_Count]') AND parent_object_id = OBJECT_ID(N'[dbo].[Location_Count]'))
ALTER TABLE [dbo].[Location_Count]  WITH CHECK ADD  CONSTRAINT [FK_Location_Location_Count] FOREIGN KEY([Location_ID])
REFERENCES [dbo].[Location] ([Location_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Location_Location_Count]') AND parent_object_id = OBJECT_ID(N'[dbo].[Location_Count]'))
ALTER TABLE [dbo].[Location_Count] CHECK CONSTRAINT [FK_Location_Location_Count]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Location_Count', N'CONSTRAINT',N'FK_Location_Location_Count'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'One to Many Location_Id \ Location_id ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Location_Count', @level2type=N'CONSTRAINT',@level2name=N'FK_Location_Location_Count'
GO
/****** Object:  ForeignKey [FK_Machine_ID_Machine_one_to_Mach_Count_many]    Script Date: 05/11/2012 09:53:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Machine_ID_Machine_one_to_Mach_Count_many]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
ALTER TABLE [dbo].[Mach_Count]  WITH CHECK ADD  CONSTRAINT [FK_Machine_ID_Machine_one_to_Mach_Count_many] FOREIGN KEY([Machine_ID])
REFERENCES [dbo].[Machine] ([Machine_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Machine_ID_Machine_one_to_Mach_Count_many]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
ALTER TABLE [dbo].[Mach_Count] CHECK CONSTRAINT [FK_Machine_ID_Machine_one_to_Mach_Count_many]
GO
