--/****** Object:  ForeignKey [FK_Loc_Count_Location]    Script Date: 06/27/2012 16:52:24 ******/
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Loc_Count_Location]') AND parent_object_id = OBJECT_ID(N'[dbo].[Loc_Count]'))
--ALTER TABLE [dbo].[Loc_Count] DROP CONSTRAINT [FK_Loc_Count_Location]
--GO
--/****** Object:  ForeignKey [FK_Location_Acc]    Script Date: 06/27/2012 16:52:24 ******/
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Location_Acc]') AND parent_object_id = OBJECT_ID(N'[dbo].[Location]'))
--ALTER TABLE [dbo].[Location] DROP CONSTRAINT [FK_Location_Acc]
--GO
--/****** Object:  ForeignKey [FK_Mach_Count_Loc_Count]    Script Date: 06/27/2012 16:52:26 ******/
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Mach_Count_Loc_Count]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
--ALTER TABLE [dbo].[Mach_Count] DROP CONSTRAINT [FK_Mach_Count_Loc_Count]
--GO
--/****** Object:  ForeignKey [FK_Mach_Count_Machine_col_Machine_ID]    Script Date: 06/27/2012 16:52:26 ******/
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Mach_Count_Machine_col_Machine_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
--ALTER TABLE [dbo].[Mach_Count] DROP CONSTRAINT [FK_Mach_Count_Machine_col_Machine_ID]
--GO
--/****** Object:  ForeignKey [FK_Machine_Location]    Script Date: 06/27/2012 16:52:26 ******/
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Machine_Location]') AND parent_object_id = OBJECT_ID(N'[dbo].[Machine]'))
--ALTER TABLE [dbo].[Machine] DROP CONSTRAINT [FK_Machine_Location]
--GO
--/****** Object:  Table [dbo].[Mach_Count]    Script Date: 06/27/2012 16:52:26 ******/
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Mach_Count_Loc_Count]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
--ALTER TABLE [dbo].[Mach_Count] DROP CONSTRAINT [FK_Mach_Count_Loc_Count]
--GO
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Mach_Count_Machine_col_Machine_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
--ALTER TABLE [dbo].[Mach_Count] DROP CONSTRAINT [FK_Mach_Count_Machine_col_Machine_ID]
--GO
--IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Mach_Count_Record_Modified_Date]') AND type = 'D')
--BEGIN
--ALTER TABLE [dbo].[Mach_Count] DROP CONSTRAINT [DF_Mach_Count_Record_Modified_Date]
--END
--GO
--IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Mach_Count_Modifiers_Login]') AND type = 'D')
--BEGIN
--ALTER TABLE [dbo].[Mach_Count] DROP CONSTRAINT [DF_Mach_Count_Modifiers_Login]
--END
--GO
--IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Mach_Count]') AND type in (N'U'))
--DROP TABLE [dbo].[Mach_Count]
--GO
--/****** Object:  Table [dbo].[Machine]    Script Date: 06/27/2012 16:52:26 ******/
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Machine_Location]') AND parent_object_id = OBJECT_ID(N'[dbo].[Machine]'))
--ALTER TABLE [dbo].[Machine] DROP CONSTRAINT [FK_Machine_Location]
--GO
--IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Machine_Machine_Modify_Date]') AND type = 'D')
--BEGIN
--ALTER TABLE [dbo].[Machine] DROP CONSTRAINT [DF_Machine_Machine_Modify_Date]
--END
--GO
--IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Machine_Modifiers_Login]') AND type = 'D')
--BEGIN
--ALTER TABLE [dbo].[Machine] DROP CONSTRAINT [DF_Machine_Modifiers_Login]
--END
--GO
--IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Machine]') AND type in (N'U'))
--DROP TABLE [dbo].[Machine]
--GO
--/****** Object:  Table [dbo].[Loc_Count]    Script Date: 06/27/2012 16:52:24 ******/
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Loc_Count_Location]') AND parent_object_id = OBJECT_ID(N'[dbo].[Loc_Count]'))
--ALTER TABLE [dbo].[Loc_Count] DROP CONSTRAINT [FK_Loc_Count_Location]
--GO
--IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Loc_Count_Record_Modified_Date]') AND type = 'D')
--BEGIN
--ALTER TABLE [dbo].[Loc_Count] DROP CONSTRAINT [DF_Loc_Count_Record_Modified_Date]
--END
--GO
--IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Loc_Count_Modifiers_Login]') AND type = 'D')
--BEGIN
--ALTER TABLE [dbo].[Loc_Count] DROP CONSTRAINT [DF_Loc_Count_Modifiers_Login]
--END
--GO
--IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Loc_Count]') AND type in (N'U'))
--DROP TABLE [dbo].[Loc_Count]
--GO
--/****** Object:  Table [dbo].[Location]    Script Date: 06/27/2012 16:52:24 ******/
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Location_Acc]') AND parent_object_id = OBJECT_ID(N'[dbo].[Location]'))
--ALTER TABLE [dbo].[Location] DROP CONSTRAINT [FK_Location_Acc]
--GO
--IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Location]') AND type in (N'U'))
--DROP TABLE [dbo].[Location]
--GO
--/****** Object:  Table [dbo].[Machine_Transaction_History]    Script Date: 06/27/2012 16:52:26 ******/
--IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Machine_Transaction_History_Record_Modify_Date]') AND type = 'D')
--BEGIN
--ALTER TABLE [dbo].[Machine_Transaction_History] DROP CONSTRAINT [DF_Machine_Transaction_History_Record_Modify_Date]
--END
--GO
--IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Machine_Transaction_History_Modifiers_Login]') AND type = 'D')
--BEGIN
--ALTER TABLE [dbo].[Machine_Transaction_History] DROP CONSTRAINT [DF_Machine_Transaction_History_Modifiers_Login]
--END
--GO
--IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Machine_Transaction_History]') AND type in (N'U'))
--DROP TABLE [dbo].[Machine_Transaction_History]
--GO
--/****** Object:  Table [dbo].[Acc]    Script Date: 06/27/2012 16:52:24 ******/
--IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Acc_Record_Modified_Date]') AND type = 'D')
--BEGIN
--ALTER TABLE [dbo].[Acc] DROP CONSTRAINT [DF_Acc_Record_Modified_Date]
--END
--GO
--IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Acc_Modifiers_Login]') AND type = 'D')
--BEGIN
--ALTER TABLE [dbo].[Acc] DROP CONSTRAINT [DF_Acc_Modifiers_Login]
--END
--GO
--IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Acc]') AND type in (N'U'))
--DROP TABLE [dbo].[Acc]
--GO
--/****** Object:  Table [dbo].[Expenses_Monthly]    Script Date: 06/27/2012 16:52:26 ******/
--IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Expense_Monthy_Record_Modified_Date]') AND type = 'D')
--BEGIN
--ALTER TABLE [dbo].[Expenses_Monthly] DROP CONSTRAINT [DF_Expense_Monthy_Record_Modified_Date]
--END
--GO
--IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Expenses_Monthly_Modifiers_Login]') AND type = 'D')
--BEGIN
--ALTER TABLE [dbo].[Expenses_Monthly] DROP CONSTRAINT [DF_Expenses_Monthly_Modifiers_Login]
--END
--GO
--IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_Monthly]') AND type in (N'U'))
--DROP TABLE [dbo].[Expenses_Monthly]
--GO
--/****** Object:  UserDefinedFunction [dbo].[fn_GetLoginOfSPID]    Script Date: 06/27/2012 16:52:29 ******/
--IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_GetLoginOfSPID]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
--DROP FUNCTION [dbo].[fn_GetLoginOfSPID]
--GO
--/****** Object:  Table [dbo].[LocMachCountOrder]    Script Date: 06/27/2012 16:52:25 ******/
--IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LocMachCountOrder]') AND type in (N'U'))
--DROP TABLE [dbo].[LocMachCountOrder]
--GO
--/****** Object:  Table [dbo].[LU_MachineClass]    Script Date: 06/27/2012 16:52:25 ******/
--IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LU_MachineClass]') AND type in (N'U'))
--DROP TABLE [dbo].[LU_MachineClass]
--GO
--/****** Object:  Table [dbo].[LU_TransactionType]    Script Date: 06/27/2012 16:52:25 ******/
--IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LU_TransactionType]') AND type in (N'U'))
--DROP TABLE [dbo].[LU_TransactionType]
--GO
--/****** Object:  Login [ACER-1240D29348\Owner]    Script Date: 06/27/2012 16:52:27 ******/
--IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'ACER-1240D29348\Owner')
--DROP LOGIN [ACER-1240D29348\Owner]
--GO
--/****** Object:  Login [BUILTIN\Users]    Script Date: 06/27/2012 16:52:27 ******/
--IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'BUILTIN\Users')
--DROP LOGIN [BUILTIN\Users]
--GO
--/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 06/27/2012 16:52:27 ******/
--IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT AUTHORITY\SYSTEM')
--DROP LOGIN [NT AUTHORITY\SYSTEM]
--GO
--/****** Object:  Login [Subscription-1]    Script Date: 06/27/2012 16:52:27 ******/
--IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'Subscription-1')
--DROP LOGIN [Subscription-1]
--GO
/****** Object:  Login [ACER-1240D29348\Owner]    Script Date: 06/27/2012 16:52:27 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'ACER-1240D29348\Owner')
CREATE LOGIN [ACER-1240D29348\Owner] FROM WINDOWS WITH DEFAULT_DATABASE=[Action_Amusements_Winhost], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 06/27/2012 16:52:27 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'BUILTIN\Users')
CREATE LOGIN [BUILTIN\Users] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 06/27/2012 16:52:27 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT AUTHORITY\SYSTEM')
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [Subscription-1]    Script Date: 06/27/2012 16:52:27 ******/
/* For security reasons the login is created disabled and with a random password. */
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'Subscription-1')
CREATE LOGIN [Subscription-1] WITH PASSWORD=N'i¾ð¢Uy<¬Ý®KNôØK 5øâ<àë!£', DEFAULT_DATABASE=[Action_Amusements_Winhost], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
EXEC sys.sp_addsrvrolemember @loginame = N'Subscription-1', @rolename = N'dbcreator'
GO
ALTER LOGIN [Subscription-1] DISABLE
GO
/****** Object:  Table [dbo].[LU_TransactionType]    Script Date: 06/27/2012 16:52:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LU_TransactionType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LU_TransactionType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Code] [int] NOT NULL,
	 [RowVersion] [rowversion] null,
 CONSTRAINT [PK_LU_TransactionType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[LU_TransactionType] ON
INSERT [dbo].[LU_TransactionType] ([ID], [Type], [Description], [Code]) VALUES (1, N'Machine', NULL, 1)
INSERT [dbo].[LU_TransactionType] ([ID], [Type], [Description], [Code]) VALUES (2, N'Add Hardware', NULL, 2)
INSERT [dbo].[LU_TransactionType] ([ID], [Type], [Description], [Code]) VALUES (4, N'Upgrade', NULL, 3)
INSERT [dbo].[LU_TransactionType] ([ID], [Type], [Description], [Code]) VALUES (5, N'Retire Machine', NULL, 4)
SET IDENTITY_INSERT [dbo].[LU_TransactionType] OFF
/****** Object:  Table [dbo].[LU_MachineClass]    Script Date: 06/27/2012 16:52:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LU_MachineClass]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LU_MachineClass](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ClassCode] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[RowVersion] [rowversion] null,
 CONSTRAINT [PK_LU_MachineClass_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[ClassCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_LU_MachineClass] UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[LU_MachineClass] ON
INSERT [dbo].[LU_MachineClass] ([ID], [Name], [Description], [ClassCode]) VALUES (1, N'Regular Arcade', N'This class of machine has no meters, plush, inventory, or unique tax rate.', N'1')
INSERT [dbo].[LU_MachineClass] ([ID], [Name], [Description], [ClassCode]) VALUES (3, N'JukeBox', N'This class of machine has selectors, a percent of Coins In goes to content provider. It and also may have an internet fee and sometimes different tax rate.', N'2')
INSERT [dbo].[LU_MachineClass] ([ID], [Name], [Description], [ClassCode]) VALUES (5, N'Crane', N'This class of machine has meters and plush to keep track of.', N'3')
INSERT [dbo].[LU_MachineClass] ([ID], [Name], [Description], [ClassCode]) VALUES (6, N'Vending', N'This class of machine may have meters has inventory to keep track of.', N'4')
INSERT [dbo].[LU_MachineClass] ([ID], [Name], [Description], [ClassCode]) VALUES (8, N'Vending with Meters', N'This class of machine may have meters has inventory to keep track of. It also uses meters.', N'5')
SET IDENTITY_INSERT [dbo].[LU_MachineClass] OFF
/****** Object:  Table [dbo].[LocMachCountOrder]    Script Date: 06/27/2012 16:52:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LocMachCountOrder]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LU_LocMachCountOrder](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Loc_Code] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Alias] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Count_Order] [decimal](6, 2) NULL,
	[Comments] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RowVersion] [rowversion] null,
 CONSTRAINT [PK_LocMachCountOrder] PRIMARY KEY CLUSTERED 
(
	[Loc_Code] ASC,
	[Alias] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetLoginOfSPID]    Script Date: 06/27/2012 16:52:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_GetLoginOfSPID]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[fn_GetLoginOfSPID]
(
	-- Add the parameters for the function here
	-- nothing needs to be passed in
)
RETURNS NVARCHAR(50)
AS
BEGIN
	-- Declare the return variable here
	DECLARE  @Current_Login NVARCHAR(50)

	-- Add the T-SQL statements to compute the return value here
	declare @SPID table (ID int, SYS_USER NVARCHAR(50), USR NVARCHAR(50))
insert into @SPID  (ID,SYS_USER,USR)
SELECT @@SPID AS ''ID'', SYSTEM_USER  ''sys_Login'', USER AS ''User Name'' 
select  @Current_Login = substring(SYS_USER,CHARINDEX(''\'',SYS_USER)+1,LEN(SYS_USER) - CHARINDEX(''\'',SYS_USER)+1)
from  @Spid


	-- Return the result of the function
	RETURN  @Current_Login 

END
' 
END
GO
/****** Object:  Table [dbo].[Expenses_Monthly]    Script Date: 06/27/2012 16:52:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--drop table Expenses_Monthly
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_Monthly]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Expenses_Monthly](
	[Expenses_Monthly_ID] [int] IDENTITY(1,1) NOT NULL,
	[Sellor] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[invoice] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Year_Month] [date] NOT NULL,
	[Supply] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Cost] [money] NOT NULL,
	[Tax] [money] NOT NULL,
	[Shipping_Cost] [money] NOT NULL,
	[Pay_Method] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Asset] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Details] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Notes] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Comments] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Record_Modify_Date] [datetime2] NULL CONSTRAINT [DF_Expense_Monthy_Record_Modify_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [nvarchar](50)  COLLATE SQL_Latin1_General_CP1_CI_AS not NULL CONSTRAINT [DF_Expenses_Monthly_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
	[Data_Is_Dummy] [bit] not NULL,
	[Flagged_for_Deletion] [bit] NOT NULL, RowVersion [timestamp] null,
 CONSTRAINT [PK_Expenses_Monthly] PRIMARY KEY CLUSTERED 
(
	[Sellor] ASC,
	[Year_Month] ASC,
	[Supply] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Expenses_Monthly] ON
INSERT [dbo].[Expenses_Monthly] ([Expenses_Monthly_ID], [Sellor], [invoice], [Year_Month], [Supply], [Cost], [Tax], [Shipping_Cost], [Pay_Method], [Asset], [Details], [Notes], [Comments], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (4, N'STAPLE STORE', NULL, CAST(0x26350B00 AS Date), N'Batteries', 120.0000, 3.0000, 0.0000, N'Card Visa', NULL, NULL, NULL, NULL, NULL, N'Owner', 1, 0)
SET IDENTITY_INSERT [dbo].[Expenses_Monthly] OFF
/****** Object:  Table [dbo].[Acc]    Script Date: 06/27/2012 16:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Acc]') AND type in (N'U'))
BEGIN
--drop table [Acc]
CREATE TABLE [dbo].[Acc](
	[Acc_ID] [int] IDENTITY(1,1) NOT NULL,
	[Acc_Name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Acc_Code] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Address1] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Begin_Date] [date] NOT NULL,
	[End_Date] [date] NULL,
	[Is_Active] [bit] NOT NULL,
	[Acc_Details] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address2] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[City] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[State_Province_Territory] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Country] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Postal_Code] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_FirstName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_LastName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_Cell] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_Email] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Acc_Office_Phone] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Acc_Office_Fax] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Other_Office_Phone] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Other_Office_Fax] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POC_FirstName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POC_LastName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POC_Role] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POC_Email] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POC_Cell] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Notes] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Comments] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Record_Modify_Date] [datetime2] NULL CONSTRAINT [DF_Acc_Record_Modify_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS  CONSTRAINT [DF_Acc_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
	[Data_Is_Dummy] [bit] NOT NULL,
	[Flagged_for_Deletion] [bit] NOT NULL, RowVersion [timestamp] null,
 CONSTRAINT [PK_Clustered_Acc_col_Acc_Code] PRIMARY KEY CLUSTERED 
(
	[Acc_Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_Acc_col_Acc_Name] UNIQUE NONCLUSTERED 
(
	[Acc_Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Acc] ON
INSERT [dbo].[Acc] ([Acc_ID], [Acc_Name], [Acc_Code], [Address1], [Begin_Date], [End_Date], [Is_Active], [Acc_Details], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Acc_Office_Phone], [Acc_Office_Fax], [Other_Office_Phone], [Other_Office_Fax], [POC_FirstName], [POC_LastName], [POC_Role], [POC_Email], [POC_Cell], [Notes], [Comments], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (8, N'JJ Restaurants INC', N'JJRestaurants', NULL, CAST(0xB8250B00 AS Date), NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, Null, N'sa', 1, 0)
INSERT [dbo].[Acc] ([Acc_ID], [Acc_Name], [Acc_Code], [Address1], [Begin_Date], [End_Date], [Is_Active], [Acc_Details], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Acc_Office_Phone], [Acc_Office_Fax], [Other_Office_Phone], [Other_Office_Fax], [POC_FirstName], [POC_LastName], [POC_Role], [POC_Email], [POC_Cell], [Notes], [Comments], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (3, N'Marvel Arcades', N'MarvelArc', NULL, CAST(0x4C320B00 AS Date), NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'should update time', Null, N'sa', 1, 0)
INSERT [dbo].[Acc] ([Acc_ID], [Acc_Name], [Acc_Code], [Address1], [Begin_Date], [End_Date], [Is_Active], [Acc_Details], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Acc_Office_Phone], [Acc_Office_Fax], [Other_Office_Phone], [Other_Office_Fax], [POC_FirstName], [POC_LastName], [POC_Role], [POC_Email], [POC_Cell], [Notes], [Comments], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (4, N'Not Assigned', N'Not Assigned', NULL, CAST(0x5BFF0A00 AS Date), NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Not Asigned is for Machine''s Location not yet assigned.', Null, N'sa', 1, 0)
INSERT [dbo].[Acc] ([Acc_ID], [Acc_Name], [Acc_Code], [Address1], [Begin_Date], [End_Date], [Is_Active], [Acc_Details], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Acc_Office_Phone], [Acc_Office_Fax], [Other_Office_Phone], [Other_Office_Fax], [POC_FirstName], [POC_LastName], [POC_Role], [POC_Email], [POC_Cell], [Notes], [Comments], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (7, N'Shooters', N'Shoot-Flagler', NULL, CAST(0x972C0B00 AS Date), NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, Null, N'sa', 1, 0)
SET IDENTITY_INSERT [dbo].[Acc] OFF
/****** Object:  Table [dbo].[Machine_Transaction_History]    Script Date: 06/27/2012 16:52:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Machine_Transaction_History]') AND type in (N'U'))
BEGIN
--drop table Machine_Transaction_History
CREATE TABLE [dbo].[Machine_Transaction_History](
	[Machine_Transaction_History_ID] [int] IDENTITY(1,1) NOT NULL,
	[Transaction_Date] [date] not NULL,
	[TransactionTypeCode] [int] NOT NULL,
	[Cost] [smallmoney] NULL,
	[Details] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Comments] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Record_Modify_Date] [datetime2] NULL CONSTRAINT [DF_Machine_Transaction_History_Record_Modify_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_Machine_Transaction_History_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
	[Data_Is_Dummy] [bit] not NULL,
	[Flagged_for_Deletion] [bit] NOT NULL, RowVersion [timestamp] null,
 CONSTRAINT [PK_Machine_Transaction_History] PRIMARY KEY CLUSTERED 
(
	[Machine_Transaction_History_ID] ASC,
	[Transaction_Date] ASC,
	[TransactionTypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Trigger [TRG_AFTER_IsActive_AFTER_Acc]    Script Date: 06/27/2012 16:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TRG_AFTER_IsActive_AFTER_Acc]'))
EXEC dbo.sp_executesql @statement = N'

CREATE TRIGGER [dbo].[TRG_AFTER_IsActive_AFTER_Acc]
		   ON  [dbo].[Acc]
		   AFTER INSERT,UPDATE
		AS 
		BEGIN
			
			UPDATE [Acc]
			SET Is_Active = ''false''
			where End_Date   < GetDate()
			
			UPDATE [Acc]
			SET Is_Active = ''true''
			where End_Date   IS NULL OR End_Date >= GetDate()
		END


'
GO
/****** Object:  Table [dbo].[Location]    Script Date: 06/27/2012 16:52:24 ******/
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
	[Location_Name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Location_Code] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Acc_Code] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Loc_Begin_Date] [date] NOT NULL,
	[Loc_End_Date] [date] NULL,
	[Is_Active] [bit] NOT NULL,
	[Address1] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address2] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[City] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[State_Province_Territory] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Country] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Postal_Code] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact1_FirstName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact1_LastName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact1_Role] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact1_Email] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact1_Cell] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact2_FirstName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact2_LastName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact2_Role] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact2_Email] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact2_Cell] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_FirstName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_LastName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_Cell] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_Email] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Location_Office_Phone] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Location_Bar_Phone] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email_for_Sales_Report] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Notes1] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Notes2] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Comments] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tax_Percente_State] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tax_Percente_County] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tax_Percente_Other] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Split_Percent] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Record_Modify_Date] [datetime2]  NULL,
	[Modifiers_Login] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Data_Is_Dummy] [bit] NOT NULL,
	[Flagged_for_Deletion] [bit] NOT NULL, RowVersion [timestamp] null,
 CONSTRAINT [PK_Clustered_Location_col_Loc_Code] PRIMARY KEY CLUSTERED 
(
	[Location_Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_Location_col_Location_Name] UNIQUE NONCLUSTERED 
(
	[Location_Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Location]') AND name = N'UC_Non_Clustered_Location_col_Location_ID')
CREATE UNIQUE NONCLUSTERED INDEX [UC_Non_Clustered_Location_col_Location_ID] ON [dbo].[Location] 
(
	[Location_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Location] ON
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code], [Acc_Code], [Loc_Begin_Date], [Loc_End_Date], [Is_Active], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (1, N'Fun Arcade Daytona 1', N'FunArc-Daytona-1', N'MarvelArc', CAST(0xB9330B00 AS Date), NULL, 1, N'1212 Clyde and Morris Blvd.', NULL, N'Daytona Beach', N'FL', N'USA', N'32114', N'Angel', N'DosSanches', N'Manager', N'ADosSanchez215@gmail.com', N'386775230', N'Jared', N'Plounder', N'Assistant Manager', NULL, NULL, N'Henry', N'McLorrey', N'3869802316', N'HMcLorrey@MarvelArcades.com', N'3867234040', NULL, N'LPollock@MarvelArcades.com', N'Email sales reports to Marvel Accant Liz Pollack', NULL, N'Will be moving to new address in October 2012', N'.045', N'.02', NULL, N'0.5', Null, N'Owner', 1, 0)
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code], [Acc_Code], [Loc_Begin_Date], [Loc_End_Date], [Is_Active], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (10, N'Fun Arcade Daytona 2', N'FunArc-Daytona-2', N'MarvelArc', CAST(0xB9330B00 AS Date), NULL, 1, N'310 S. Atlantic Ave.', NULL, N'New Smyrna Beach', N'FL', N'USA', N'32169', N'Raymond', N'Bellot', N'Manager', N'RBellot2005@Gmail.com', N'3862618877', N'Jane', N'Appleton', N'Bartender', NULL, NULL, N'Henry', N'McLorrey', N'9045556815', N'HMCLorrey@MarvelArcades.com', N'3869011291', N'3861094389', N'LPollack@MArvelArcades.com', NULL, NULL, NULL, N'.045', N'.02', NULL, N'.05', Null, N'Owner', 1, 0)
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code], [Acc_Code], [Loc_Begin_Date], [Loc_End_Date], [Is_Active], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (19, N'Fun Arcade Daytona 3', N'FunArc-Daytona-3', N'MarvelArc', CAST(0x46350B00 AS Date), NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'.045', N'0.25', N'.001', N'.5', Null, N'sa', 1, 0)
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code], [Acc_Code], [Loc_Begin_Date], [Loc_End_Date], [Is_Active], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (20, N'Fun Arcade Daytona 5', N'FunArc-Daytona-5', N'MarvelArc', CAST(0x2A2B0B00 AS Date), NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'.6', Null, 'manualMe',1, 0)
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code], [Acc_Code], [Loc_Begin_Date], [Loc_End_Date], [Is_Active], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (21, N'Fun Arcade Daytona 7', N'FunArc-Daytona-7', N'MarvelArc', CAST(0xE2260B00 AS Date), NULL, 1, N'1905 Super Nova Rd.', N'SUite 1609 B-2', N'Daytona Beach', N'Florida', N'US of A', N'32114-6528', N'Jill', N'McGilleycuttie', N'Bartender', N'JMG761@aol.com', N'3864476539', N'Ralph', N'Renaldo', N'Ass. Manager', N'RalphRen_901@verzion.net', N'9049871019', N'Joshua', N'Pouting', N'386998723', N'JP2007@Gmail.com', N'3864567712', N'3864567716', N'JP2007@Gmail.com', N'He is thinking of branching off in 2014', N'Near the ocean, salt air will ruin parts ', N'No Comment', N'.045', N'.002', N'.00175', N'.6', Null, 'manualMe', 1, 0)
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code], [Acc_Code], [Loc_Begin_Date], [Loc_End_Date], [Is_Active], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (5, N'Not Assigned', N'Not Assigned', N'Not Assigned', CAST(0xEFFE0A00 AS Date), NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'0', N'0', N'0',Null, N'RKlouss', 1, 0)
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code], [Acc_Code], [Loc_Begin_Date], [Loc_End_Date], [Is_Active], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (11, N'ShootOuts Sports Bar', N'Shoot-Flagler', N'Shoot-Flagler', CAST(0xB9330B00 AS Date), CAST(0xF1360B00 AS Date), 1, N'927 East Ponce De Oro Ave.', NULL, N'Flagler', N'FL', N'USA', N'32155', N'Sarah', N'Williams', N'Owner/Manager', N'SarahWiliams35@gmail.com', N'3862228989', NULL, NULL, NULL, NULL, NULL, N'Sarah', N'Williams', N'3862228989', N'SarahWiliams35@gmail.com', N'386790939', N'3867900940', N'SarahWiliams35@gmail.com', NULL, NULL, NULL, N'.045', N'.025', N'.001', N'.6', Null, N'Owner', 1, 0)
SET IDENTITY_INSERT [dbo].[Location] OFF
/****** Object:  Table [dbo].[Loc_Count]    Script Date: 06/27/2012 16:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Loc_Count]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Loc_Count](
	[Loc_Count_ID] [int] IDENTITY(1,1) NOT NULL,
	[Location_ID] [int] NOT NULL,
	[Loc_Count_Date] [date] NOT NULL,
	[CoinsIn] [money] NOT NULL,
	[Tax_State] [money] NULL,
	[Tax_County] [money] NULL,
	[Tax_Other] [money] NULL,
	[Tax_Total] [money] NULL,
	[Gross] [money] NOT NULL,
	[Split_Operator] [money] NOT NULL,
	[Split_Location] [money] NOT NULL,
	[Advance] [money] NULL,
	[Notes] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Counter_FirstName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Counter_LastName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Record_Modify_Date] [datetime2] NULL CONSTRAINT [DF_Loc_Count_Record_Modify_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS not NULL CONSTRAINT [DF_Loc_Count_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
	[Data_Is_Dummy] [bit] not NULL,
	[Flagged_for_Deletion] [bit] NOT NULL, RowVersion [timestamp] null,
 CONSTRAINT [PK_Loc_Count] PRIMARY KEY NONCLUSTERED 
(
	[Loc_Count_ID] ASC,
	[Loc_Count_Date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_Non_Clusted_Loc_Count_col_Loc_Count_ID] UNIQUE NONCLUSTERED 
(
	[Loc_Count_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Loc_Count] ON
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (1, 1, CAST(0xB4350B00 AS Date), 570.7500, 25.6800, NULL, NULL, 25.6800, 545.0700, 272.5400, 272.5400, NULL, NULL, N'Randy', N'Brady', Null, N'Owner', 1, 0)
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (2, 1, CAST(0x99350B00 AS Date), 1141.5000, 51.3700, NULL, NULL, 51.3700, 1090.1300, 545.7000, 545.7000, NULL, NULL, N'Walter ', N'Spencer', Null, N'Owner', 1, 0)
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (5, 10, CAST(0xB4350B00 AS Date), 458.0000, 20.6100, NULL, NULL, 20.6100, 473.3900, 236.6700, 235.6700, NULL, NULL, N'Walter', N'Spencer', Null, N'Owner', 1, 0)
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (6, 10, CAST(0x99350B00 AS Date), 916.0000, 41.2200, NULL, NULL, 41.2000, 874.7800, 437.3900, 437.3900, NULL, NULL, N'Walter', N'Spencer', Null, N'Owner', 1, 0)
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (7, 11, CAST(0xB4350B00 AS Date), 414.2500, 18.6500, NULL, NULL, 18.6500, 395.6000, 197.8000, 197.8000, NULL, NULL, N'Randy', N'Brady', Null, N'Owner', 1, 0)
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (10, 10, CAST(0x26350B00 AS Date), 200.0000, 100.0000, 50.0000, 30.0000, 180.0000, 120.0000, 60.0000, 60.0000, 0.0000, NULL, NULL, NULL, Null, N'Owner', 1, 0)
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (12, 10, CAST(0x27350B00 AS Date), 200.0000, 100.0000, 50.0000, 30.0000, 180.0000, 120.0000, 60.0000, 60.0000, 0.0000, NULL, NULL, NULL, Null, N'Owner', 1, 0)
SET IDENTITY_INSERT [dbo].[Loc_Count] OFF
/****** Object:  Trigger [TRG_AFTER_IsActive_AFTER_Location]    Script Date: 06/27/2012 16:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TRG_AFTER_IsActive_AFTER_Location]'))
EXEC dbo.sp_executesql @statement = N'
CREATE TRIGGER [dbo].[TRG_AFTER_IsActive_AFTER_Location]
		   ON  [dbo].[Location]
		   AFTER INSERT,UPDATE
		AS 
		BEGIN
			
			UPDATE [Location]
			SET Is_Active = ''false''
			where Loc_End_Date   < GetDate()
			
			UPDATE [Location]
			SET Is_Active = ''true''
			where Loc_End_Date   IS NULL OR Loc_End_Date >= GetDate()
		END

'
GO
/****** Object:  Table [dbo].[Machine]    Script Date: 06/27/2012 16:52:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Machine]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Machine](
	[Machine_ID] [int] IDENTITY(1,1) NOT NULL,
	[Alias] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Machine_Name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Machine_Class] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Machine_Owner_FirstName] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Machine_Owner_LastName] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Manufacturer] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Purchased_From] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Purchase_Date] [date] NULL,
	[Purchase_Details] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Model] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Serial] [nvarchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Cost] [money] NULL,
	[Shipping_Costs] [money] NULL,
	[Additional_Cost] [money] NULL,
	[Additional_Costs_Details] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Warranty_Details] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Warranty_Expiration_Date] [date] NULL,
	[Keys_1] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Keys_2] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Keys_3] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Keys_4] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[External_Key] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Machine_Count_Order] [int] NULL,
	[Machine_Notes] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Machine_Comments] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Location_Code] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Record_Modify_Date] [datetime2]  NULL,
	[Modifiers_Login] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Data_Is_Dummy] [bit] NOT NULL,
	[Flagged_for_Deletion] [bit] NOT NULL, RowVersion [timestamp] null,
 CONSTRAINT [PK_Machine] PRIMARY KEY CLUSTERED 
(
	[Alias] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Machine]') AND name = N'UC_Non_Clustered_Machine_Col_Machine_ID')
CREATE UNIQUE NONCLUSTERED INDEX [UC_Non_Clustered_Machine_Col_Machine_ID] ON [dbo].[Machine] 
(
	[Machine_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Machine]') AND name = N'UK_Clustered_Machine_col_Alias')
CREATE UNIQUE NONCLUSTERED INDEX [UK_Clustered_Machine_col_Alias] ON [dbo].[Machine] 
(
	[Alias] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Machine', N'INDEX',N'UC_Non_Clustered_Machine_Col_Machine_ID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique Constraint Non Clustered Machine table on  column Machine_ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Machine', @level2type=N'INDEX',@level2name=N'UC_Non_Clustered_Machine_Col_Machine_ID'
GO
SET IDENTITY_INSERT [dbo].[Machine] ON
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], Record_Modify_Date, [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (25, N'Boxer354', N'Boxing Champ', N'1', N'Walter', N'Spencer', N' Brown & Walton', N'Orlando Machines', Null, NULL, N'BoxingChamp840', N'7853DA33S659', 3834.0200, 175.3000, NULL, NULL, NULL, null, N'Box354-1', N'Boxer354-2', NULL, NULL, N'Boxer-354-5', 1, NULL, NULL, N'Shoot-Flagler', Null, N'Owner', 1, 0)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], Record_Modify_Date, [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (22, N'Crane111', N'Crazy Crane', N'3', N'Walter', N'Spencer', N'Brown & Walton', N'Orlando Machines', Null, NULL, N'CrazyCrane400M', N'8965HTD2S', 3024.8700, 138.4000, NULL, NULL, NULL, null, N'Crane101-1', N'Crane101-2', N'Crane101-3', N'Crane101-4', N'Crane101-5', 3, NULL, NULL, N'FunArc-Daytona-2',Null, N'Owner', 1, 0)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], Record_Modify_Date, [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (11, N'Crane88', N'Treasure Crane', N'3', N'Walter', N'Spencer', N'Brokworths Machines , INC', N'Tampa Arcade Warehouse', Null, NULL, N'TreasueCrane-M-923', N'OL969354G34SD2', 2254.8800, 99.0000, NULL, NULL, NULL, NULL, N'Crane88-1', N'Crane88-2', NULL, NULL, N'Crane88-5', 3, NULL, NULL, N'FunArc-Daytona-1', Null, N'Owner', 1, 0)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], Record_Modify_Date, [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (6, N'GoldenTee28', N'Golden Tee II', N'1', N'Walter', N'SPencer', N'Erickson', N'Orlando Machines', Null, NULL, N'GoledenTee450TS', N'786453FR1', 3295.0000, 102.7100, NULL, NULL, NULL, NULL, N'G28-1', N'G28-2', N'G28-3', N'G28-4', N'G28-external', 1, NULL, NULL, N'FunArc-Daytona-1', Null, N'Owner', 1, 0)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], Record_Modify_Date, [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (2, N'Golf471', N'Golden Tee II', N'1', N'Jeffrey', N' Warren', N'EricksONGameCocks', N'Orlando Machines', Null, NULL, N'GoldenTee450TS', N'NULLT6765RR4DSA2', 2750.0000, 150.0000, NULL, NULL, NULL,null , N'G71_1', N'G71_2', N'G71_3', N'G71_4', N'G71_5', 9, NULL, NULL, N'Not Assigned', Null, N'Owner', 1, 0)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], Record_Modify_Date, [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (21, N'JukeBox101', N'Digital JukeBox', N'2', N'Walter ', N'Spencer', N'Music Magnum', N'Orlando Machines', Null, NULL, N'JukeBoxDigitalJ4500', N'4558M8N922', 6398.4300, NULL, NULL, NULL, NULL, NULL, N'J101-1', N'J101-2', NULL, NULL, N'J101-5', 2, NULL, NULL, N'FunArc-Daytona-2', Null, N'Owner', 1, 0)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], Record_Modify_Date, [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (8, N'JukeBox92', N' JukeBox Rocker', N'2', N'Walter', N'Spencer', N'Music Magnum', N'Jacksoneville Amusement Outlet', Null, NULL, N'JukeBox1204s', N'0987HYGT1774', 5361.9200, 191.7800, NULL, NULL, NULL, NULL, N'J92-1', N'J92-2', NULL, NULL, N'J93', 2, NULL, NULL, N'FunArc-Daytona-1', Null, N'Owner', 1, 0)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], Record_Modify_Date, [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (20, N'Taxi159', N'Taxi Driver', N'1', N'Jeffrey', N'Warren', N'Erickson', N'Orlando Machines', Null, NULL, N'TaxiDriverSuperSeries90', N'9834FF5G1', 5324.9800, 126.9000, NULL, NULL, NULL, null, N'Taxi159-1', N'Taxi-159-2', N'Taxi-159-3', NULL, N'Taxi159-5', 1, NULL, NULL, N'FunArc-Daytona-2', Null, N'Owner', 1, 0)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], Record_Modify_Date, [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (23, N'Vendor108', N'Vending Machine', N'4', N'Walter', N'Spencer', N'Snyder, Inc', N'Orlando Machines', Null, NULL, N'GeneralVending98X', N'09LD341Q2', 2150.3100, 55.0000, NULL, NULL, NULL, null, N'Vend108-1', N'Vend108-2', NULL, NULL, N'Vend108-5', 4, NULL, NULL, N'FunArc-Daytona-2',Null, N'Owner', 1, 0)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], Record_Modify_Date, [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (19, N'Vendor78', N'Vending Machine', N'4', N'Walter', N'Spencer', N'Snyder, Inc', N'Orlando Machines', Null, NULL, N'GeneralVender98X', N'E55RT2972W', 2008.2200, NULL, NULL, NULL, NULL, NULL, N'Vend78-1', N'Vend78-2', NULL, NULL, N'Vend78-5', 4, NULL, NULL, N'FunArc-Daytona-1', Null, N'Owner', 1, 0)
SET IDENTITY_INSERT [dbo].[Machine] OFF
/****** Object:  Table [dbo].[Mach_Count]    Script Date: 06/27/2012 16:52:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Mach_Count]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Mach_Count](
	[Mach_Count_ID] [int] IDENTITY(1,1) NOT NULL,
	[Machine_ID] [int] NOT NULL,
	[Loc_Count_ID] [int] NULL,
	[CoinsIn_Cents] [money] NOT NULL,
	[CoinsIn_Bills] [money] NOT NULL,
	[Adjustment_1] [money] NULL,
	[Adjustment_2_Misc] [money] NULL,
	[Adjustment_Total] [money] NULL,
	[CoinsIn_Total] [money] NOT NULL,
	[Adjustment_1_Decription] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Adjustment_2_Misc_Decription] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Meter_Bills] [money] NULL,
	[Meter_Cents] [money] NULL,
	[Meter_Pieces] [smallint] NULL,
	[Record_Modify_Date] [datetime2] NULL CONSTRAINT [DF_Mach_Count_Record_Modify_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS not NULL CONSTRAINT [DF_Mach_Count_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
	[Machine_Data_Is_Dummy] [bit] not NULL,
	[Flagged_for_Deletion] [bit] NOT NULL, RowVersion [timestamp] null,
 CONSTRAINT [PK_NON_Clusterted_Mach_Count_col_Machine_Count_ID] PRIMARY KEY NONCLUSTERED 
(
	[Mach_Count_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Mach_Count] ON
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modify_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (3, 6, 1, 78.5000, 92.2500, 25.0000, NULL, 25.0000, 145.7500, NULL, NULL, NULL, NULL, NULL, Null, N'Owner', 1, 0)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modify_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (4, 8, 1, 102.0000, 65.7500, 15.0000, NULL, 15.0000, 152.7500, NULL, NULL, NULL, NULL, NULL, Null, N'Owner', 1, 0)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modify_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (5, 11, 1, 72.5000, 82.5000, 45.5000, NULL, 45.5000, 109.5000, NULL, NULL, 12765.0000, 902.7500, 54, Null, N'Owner', 1, 0)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modify_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (6, 19, 1, 135.2500, 82.7500, 55.2500, NULL, 55.2500, 162.5700, NULL, NULL, NULL, NULL, NULL, Null, N'Owner', 1, 1)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modify_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (7, 6, 2, 100.0000, 70.0000, NULL, 20.0000, 20.0000, 150.0000, NULL, NULL, NULL, NULL, NULL,Null, N'Owner', 1, 0)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modify_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (8, 8, 2, 100.0000, 70.0000, 20.0000, NULL, 20.0000, 150.0000, NULL, NULL, NULL, NULL, NULL, Null, N'Owner', 1, 0)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modify_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (9, 11, 2, 45.0000, 105.0000, NULL, 19.5000, 19.5000, 150.5000, NULL, NULL, 22874.0000, 15012.2500, 36, Null, N'Owner', 1, 0)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modify_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (10, 19, 2, 60.0000, 90.0000, NULL, NULL, NULL, 150.0000, NULL, NULL, NULL, NULL, NULL, Null, N'Owner', 1, 0)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modify_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (11, 25, 7, 200.0000, 240.2500, NULL, NULL, NULL, 420.2500, NULL, NULL, NULL, NULL, NULL,Null, N'Owner', 1, 0)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modify_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (12, 20, 5, 100.0000, 50.0000, NULL, NULL, NULL, 150.0000, NULL, NULL, NULL, NULL, NULL, Null, N'Owner', 1, 0)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modify_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (13, 21, 5, 100.0000, 140.2500, NULL, NULL, NULL, 140.2500, NULL, NULL, NULL, NULL, NULL, Null, N'Owner', 1, 0)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modify_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (14, 22, 5, 51.0000, 99.0000, NULL, NULL, NULL, 150.0000, NULL, NULL, 9098.0000, 10023.7500, 71, Null, N'Owner', 1, 0)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modify_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (15, 2, 5, 100.0000, 80.0000, 30.0000, NULL, 30.0000, 150.0000, NULL, NULL, NULL, NULL, NULL, Null, N'Owner', 1, 0)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modify_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (16, 20, 6, 50.0000, 100.0000, NULL, NULL, NULL, 150.0000, NULL, NULL, NULL, NULL, NULL, Null, N'Owner', 1, 0)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modify_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (17, 21, 6, 105.0000, 49.0000, NULL, 4.0000, NULL, 150.0000, NULL, NULL, NULL, NULL, NULL, Null, N'Owner', 1, 0)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modify_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (18, 22, 6, 150.0000, 100.0000, 50.0000, NULL, NULL, 150.0000, NULL, NULL, 1110.0000, 10070.5000, 60, Null, N'Owner',1, 0)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modify_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (19, 23, 6, 150.0000, 50.0000, NULL, NULL, NULL, 150.0000, NULL, NULL, NULL, NULL, NULL, Null, N'Owner', 1, 0)
SET IDENTITY_INSERT [dbo].[Mach_Count] OFF
/****** Object:  ForeignKey [FK_Loc_Count_Location]    Script Date: 06/27/2012 16:52:24 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Loc_Count_Location]') AND parent_object_id = OBJECT_ID(N'[dbo].[Loc_Count]'))
ALTER TABLE [dbo].[Loc_Count]  WITH CHECK ADD  CONSTRAINT [FK_Loc_Count_Location] FOREIGN KEY([Location_ID])
REFERENCES [dbo].[Location] ([Location_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Loc_Count_Location]') AND parent_object_id = OBJECT_ID(N'[dbo].[Loc_Count]'))
ALTER TABLE [dbo].[Loc_Count] CHECK CONSTRAINT [FK_Loc_Count_Location]
GO
/****** Object:  ForeignKey [FK_Location_Acc]    Script Date: 06/27/2012 16:52:24 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Location_Acc]') AND parent_object_id = OBJECT_ID(N'[dbo].[Location]'))
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_Acc] FOREIGN KEY([Acc_Code])
REFERENCES [dbo].[Acc] ([Acc_Code])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Location_Acc]') AND parent_object_id = OBJECT_ID(N'[dbo].[Location]'))
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_Acc]
GO
/****** Object:  ForeignKey [FK_Mach_Count_Loc_Count]    Script Date: 06/27/2012 16:52:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Mach_Count_Loc_Count]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
ALTER TABLE [dbo].[Mach_Count]  WITH CHECK ADD  CONSTRAINT [FK_Mach_Count_Loc_Count] FOREIGN KEY([Loc_Count_ID])
REFERENCES [dbo].[Loc_Count] ([Loc_Count_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Mach_Count_Loc_Count]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
ALTER TABLE [dbo].[Mach_Count] CHECK CONSTRAINT [FK_Mach_Count_Loc_Count]
GO
/****** Object:  ForeignKey [FK_Mach_Count_Machine_col_Machine_ID]    Script Date: 06/27/2012 16:52:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Mach_Count_Machine_col_Machine_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
ALTER TABLE [dbo].[Mach_Count]  WITH CHECK ADD  CONSTRAINT [FK_Mach_Count_Machine_col_Machine_ID] FOREIGN KEY([Machine_ID])
REFERENCES [dbo].[Machine] ([Machine_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Mach_Count_Machine_col_Machine_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
ALTER TABLE [dbo].[Mach_Count] CHECK CONSTRAINT [FK_Mach_Count_Machine_col_Machine_ID]
GO
/****** Object:  ForeignKey [FK_Machine_Location]    Script Date: 06/27/2012 16:52:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Machine_Location]') AND parent_object_id = OBJECT_ID(N'[dbo].[Machine]'))
ALTER TABLE [dbo].[Machine]  WITH CHECK ADD  CONSTRAINT [FK_Machine_Location] FOREIGN KEY([Location_Code])
REFERENCES [dbo].[Location] ([Location_Code])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Machine_Location]') AND parent_object_id = OBJECT_ID(N'[dbo].[Machine]'))
ALTER TABLE [dbo].[Machine] CHECK CONSTRAINT [FK_Machine_Location]
GO
