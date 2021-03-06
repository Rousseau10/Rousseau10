--changin all to Unicoda (Nvarchar)
USE [Action_Amusements_Winhost]
GO
/****** Object:  ForeignKey [FK_Machine_one_to_Many_Location_col_Loc_Code_Cascading_Update_Delete]    Script Date: 06/23/2012 07:24:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Machine_one_to_Many_Location_col_Loc_Code_Cascading_Update_Delete]') AND parent_object_id = OBJECT_ID(N'[dbo].[Machine]'))
ALTER TABLE [dbo].[Machine] DROP CONSTRAINT [FK_Machine_one_to_Many_Location_col_Loc_Code_Cascading_Update_Delete]
GO
/****** Object:  ForeignKey [FK_Mach_Count_Loc_Count]    Script Date: 06/23/2012 07:24:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Mach_Count_Loc_Count]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
ALTER TABLE [dbo].[Mach_Count] DROP CONSTRAINT [FK_Mach_Count_Loc_Count]
GO
/****** Object:  ForeignKey [FK_Mach_Count_Machine_col_Machine_ID]    Script Date: 06/23/2012 07:24:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Mach_Count_Machine_col_Machine_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
ALTER TABLE [dbo].[Mach_Count] DROP CONSTRAINT [FK_Mach_Count_Machine_col_Machine_ID]
GO
/****** Object:  ForeignKey [FK_Loc_Count_Location_cols_Location_ID_Cascading_Update_Delete]    Script Date: 06/23/2012 07:24:58 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Loc_Count_Location_cols_Location_ID_Cascading_Update_Delete]') AND parent_object_id = OBJECT_ID(N'[dbo].[Loc_Count]'))
ALTER TABLE [dbo].[Loc_Count] DROP CONSTRAINT [FK_Loc_Count_Location_cols_Location_ID_Cascading_Update_Delete]
GO
/****** Object:  Table [dbo].[Mach_Count]    Script Date: 06/23/2012 07:24:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Mach_Count_Loc_Count]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
ALTER TABLE [dbo].[Mach_Count] DROP CONSTRAINT [FK_Mach_Count_Loc_Count]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Mach_Count_Machine_col_Machine_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
ALTER TABLE [dbo].[Mach_Count] DROP CONSTRAINT [FK_Mach_Count_Machine_col_Machine_ID]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Mach_Count_Record_Modified_Date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Mach_Count] DROP CONSTRAINT [DF_Mach_Count_Record_Modified_Date]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Mach_Count_Modifiers_Login]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Mach_Count] DROP CONSTRAINT [DF_Mach_Count_Modifiers_Login]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Mach_Count]') AND type in (N'U'))
DROP TABLE [dbo].[Mach_Count]
GO
/****** Object:  Table [dbo].[Machine]    Script Date: 06/23/2012 07:24:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Machine_one_to_Many_Location_col_Loc_Code_Cascading_Update_Delete]') AND parent_object_id = OBJECT_ID(N'[dbo].[Machine]'))
ALTER TABLE [dbo].[Machine] DROP CONSTRAINT [FK_Machine_one_to_Many_Location_col_Loc_Code_Cascading_Update_Delete]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Machine_Machine_Modify_Date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Machine] DROP CONSTRAINT [DF_Machine_Machine_Modify_Date]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Machine_Modifiers_Login]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Machine] DROP CONSTRAINT [DF_Machine_Modifiers_Login]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Machine]') AND type in (N'U'))
DROP TABLE [dbo].[Machine]
GO
/****** Object:  Table [dbo].[Machine_Transaction_History]    Script Date: 06/23/2012 07:24:57 ******/
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
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Machine_Transaction_History]') AND type in (N'U'))
DROP TABLE [dbo].[Machine_Transaction_History]
GO
/****** Object:  Table [dbo].[Expenses_Monthly]    Script Date: 06/23/2012 07:24:58 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Expense_Monthy_Record_Modified_Date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Expenses_Monthly] DROP CONSTRAINT [DF_Expense_Monthy_Record_Modified_Date]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Expenses_Monthly_Modifiers_Login]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Expenses_Monthly] DROP CONSTRAINT [DF_Expenses_Monthly_Modifiers_Login]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_Monthly]') AND type in (N'U'))
DROP TABLE [dbo].[Expenses_Monthly]
GO
/****** Object:  Table [dbo].[Loc_Count]    Script Date: 06/23/2012 07:24:58 ******/
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
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Loc_Count]') AND type in (N'U'))
DROP TABLE [dbo].[Loc_Count]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 06/23/2012 07:24:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Location]') AND type in (N'U'))
DROP TABLE [dbo].[Location]
GO
/****** Object:  Table [dbo].[LU_MachineClass]    Script Date: 06/23/2012 07:24:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LU_MachineClass]') AND type in (N'U'))
DROP TABLE [dbo].[LU_MachineClass]
GO
/****** Object:  Table [dbo].[LU_TransactionType]    Script Date: 06/23/2012 07:24:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LU_TransactionType]') AND type in (N'U'))
DROP TABLE [dbo].[LU_TransactionType]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetLoginOfSPID]    Script Date: 06/23/2012 07:25:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_GetLoginOfSPID]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fn_GetLoginOfSPID]
GO
/****** Object:  Table [dbo].[budgets]    Script Date: 06/23/2012 07:24:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[budgets]') AND type in (N'U'))
DROP TABLE [dbo].[budgets]
GO
USE [master]
GO
/****** Object:  Login [ACER-1240D29348\Owner]    Script Date: 06/23/2012 07:25:04 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'ACER-1240D29348\Owner')
DROP LOGIN [ACER-1240D29348\Owner]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 06/23/2012 07:25:04 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'BUILTIN\Users')
DROP LOGIN [BUILTIN\Users]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 06/23/2012 07:25:04 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT AUTHORITY\SYSTEM')
DROP LOGIN [NT AUTHORITY\SYSTEM]
GO
/****** Object:  Login [Subscription-1]    Script Date: 06/23/2012 07:25:04 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'Subscription-1')
DROP LOGIN [Subscription-1]
GO
/****** Object:  Login [ACER-1240D29348\Owner]    Script Date: 06/23/2012 07:25:04 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'ACER-1240D29348\Owner')
CREATE LOGIN [ACER-1240D29348\Owner] FROM WINDOWS WITH DEFAULT_DATABASE=[Action_Amusements_Winhost], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 06/23/2012 07:25:04 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'BUILTIN\Users')
CREATE LOGIN [BUILTIN\Users] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 06/23/2012 07:25:04 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT AUTHORITY\SYSTEM')
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [Subscription-1]    Script Date: 06/23/2012 07:25:04 ******/
/* For security reasons the login is created disabled and with a random password. */
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'Subscription-1')
CREATE LOGIN [Subscription-1] WITH PASSWORD=N'BøÏ´ZC
ÓÙ`~´ç¡`¯½´OÜt($', DEFAULT_DATABASE=[Action_Amusements_Winhost], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
EXEC sys.sp_addsrvrolemember @loginame = N'Subscription-1', @rolename = N'dbcreator'
GO
ALTER LOGIN [Subscription-1] DISABLE
GO
USE [Action_Amusements_Winhost]
GO
/****** Object:  Table [dbo].[budgets]    Script Date: 06/23/2012 07:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[budgets]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[budgets](
	[dept] [tinyint] IDENTITY(1,1) NOT NULL,
	[current_year] [decimal](18, 0) NULL,
	[previous_year] [decimal](18, 0) NULL
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[budgets] ON
INSERT [dbo].[budgets] ([dept], [current_year], [previous_year]) VALUES (1, CAST(100000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)))
INSERT [dbo].[budgets] ([dept], [current_year], [previous_year]) VALUES (2, NULL, CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[budgets] ([dept], [current_year], [previous_year]) VALUES (3, CAST(0 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[budgets] ([dept], [current_year], [previous_year]) VALUES (4, NULL, CAST(150000 AS Decimal(18, 0)))
INSERT [dbo].[budgets] ([dept], [current_year], [previous_year]) VALUES (5, CAST(300000 AS Decimal(18, 0)), CAST(300000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[budgets] OFF
/****** Object:  UserDefinedFunction [dbo].[fn_GetLoginOfSPID]    Script Date: 06/23/2012 07:25:03 ******/
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
/****** Object:  Table [dbo].[LU_TransactionType]    Script Date: 06/23/2012 07:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LU_TransactionType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LU_TransactionType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Code] [int] NOT NULL,
 CONSTRAINT [PK_LU_TransactionType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[LU_TransactionType] ON
INSERT [dbo].[LU_TransactionType] ([ID], [Type], [Description], [Code]) VALUES (1, N'Upgrade', NULL, 1)
SET IDENTITY_INSERT [dbo].[LU_TransactionType] OFF
/****** Object:  Table [dbo].[LU_MachineClass]    Script Date: 06/23/2012 07:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LU_MachineClass]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LU_MachineClass](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ClassCode] [int] NOT NULL,
 CONSTRAINT [PK_LU_MachineClass] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[LU_MachineClass] ON
INSERT [dbo].[LU_MachineClass] ([ID], [Name], [Description], [ClassCode]) VALUES (1, N'Regular Arcade', NULL, 7)
INSERT [dbo].[LU_MachineClass] ([ID], [Name], [Description], [ClassCode]) VALUES (3, N'JukeBox', NULL, 3)
SET IDENTITY_INSERT [dbo].[LU_MachineClass] OFF
/****** Object:  Table [dbo].[Location]    Script Date: 06/23/2012 07:24:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Location]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Location](
	[Location_ID] [int] IDENTITY(1,1) NOT NULL,
	[Location_Name] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Location_Code] [NVARCHAR](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Account_Name] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Account_Code] [NVARCHAR](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address1] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address2] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[City] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[State_Province_Territory] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Country] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Postal_Code] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact1_FirstName] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact1_LastName] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact1_Role] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact1_Email] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact1_Cell] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact2_FirstName] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact2_LastName] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact2_Role] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact2_Email] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact2_Cell] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_FirstName] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_LastName] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_Cell] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_Email] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Location_Office_Phone] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Location_Bar_Phone] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email_for_Sales_Report] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Notes1] [NVARCHAR](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Notes2] [NVARCHAR](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Comments] [NVARCHAR](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Location_Is_Active] [bit] NOT NULL,
	[Tax_Percente_State] [NVARCHAR](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tax_Percente_County] [NVARCHAR](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tax_Percente_Other] [NVARCHAR](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Split_Percent] [NVARCHAR](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Location_Modify_Date] [datetime] NOT NULL,
	[Modifiers_Login] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Data_Is_Dummy] [bit] NULL,
	[Flagged_for_Deletion] [bit] NULL,
 CONSTRAINT [PK_Clustered_Location_col_Loc_Code] PRIMARY KEY CLUSTERED 
(
	[Location_Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_Location_col_Location_Name] UNIQUE NONCLUSTERED 
(
	[Location_Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Location]') AND name = N'UC_Non_Clustered_Location_col_Location_ID')
CREATE UNIQUE NONCLUSTERED INDEX [UC_Non_Clustered_Location_col_Location_ID] ON [dbo].[Location] 
(
	[Location_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000002_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000002_3429BB53] ON [dbo].[Location]([Location_Name])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000004_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000004_3429BB53] ON [dbo].[Location]([Account_Name])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000005_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000005_3429BB53] ON [dbo].[Location]([Account_Code])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000006_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000006_3429BB53] ON [dbo].[Location]([Address1])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000007_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000007_3429BB53] ON [dbo].[Location]([Address2])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000008_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000008_3429BB53] ON [dbo].[Location]([City])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000009_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000009_3429BB53] ON [dbo].[Location]([State_Province_Territory])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000A_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_0000000A_3429BB53] ON [dbo].[Location]([Country])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000B_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_0000000B_3429BB53] ON [dbo].[Location]([Postal_Code])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000C_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_0000000C_3429BB53] ON [dbo].[Location]([Contact1_FirstName])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000D_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_0000000D_3429BB53] ON [dbo].[Location]([Contact1_LastName])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000E_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_0000000E_3429BB53] ON [dbo].[Location]([Contact1_Role])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000F_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_0000000F_3429BB53] ON [dbo].[Location]([Contact1_Email])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000010_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000010_3429BB53] ON [dbo].[Location]([Contact1_Cell])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000011_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000011_3429BB53] ON [dbo].[Location]([Contact2_FirstName])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000012_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000012_3429BB53] ON [dbo].[Location]([Contact2_LastName])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000013_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000013_3429BB53] ON [dbo].[Location]([Contact2_Role])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000014_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000014_3429BB53] ON [dbo].[Location]([Contact2_Email])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000015_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000015_3429BB53] ON [dbo].[Location]([Contact2_Cell])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000016_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000016_3429BB53] ON [dbo].[Location]([Owner_FirstName])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000017_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000017_3429BB53] ON [dbo].[Location]([Owner_LastName])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000018_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000018_3429BB53] ON [dbo].[Location]([Owner_Cell])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000019_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000019_3429BB53] ON [dbo].[Location]([Owner_Email])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000001A_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_0000001A_3429BB53] ON [dbo].[Location]([Location_Office_Phone])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000001B_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_0000001B_3429BB53] ON [dbo].[Location]([Location_Bar_Phone])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000001C_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_0000001C_3429BB53] ON [dbo].[Location]([Email_for_Sales_Report])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000001D_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_0000001D_3429BB53] ON [dbo].[Location]([Notes1])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000001E_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_0000001E_3429BB53] ON [dbo].[Location]([Notes2])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000001F_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_0000001F_3429BB53] ON [dbo].[Location]([Comments])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000020_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000020_3429BB53] ON [dbo].[Location]([Location_Is_Active])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000021_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000021_3429BB53] ON [dbo].[Location]([Tax_Percente_State])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000022_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000022_3429BB53] ON [dbo].[Location]([Tax_Percente_County])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000023_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000023_3429BB53] ON [dbo].[Location]([Tax_Percente_Other])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000024_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000024_3429BB53] ON [dbo].[Location]([Split_Percent])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000025_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000025_3429BB53] ON [dbo].[Location]([Location_Modify_Date])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000026_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000026_3429BB53] ON [dbo].[Location]([Modifiers_Login])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000027_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000027_3429BB53] ON [dbo].[Location]([Data_Is_Dummy])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000028_3429BB53' and object_id = object_id(N'[dbo].[Location]'))
CREATE STATISTICS [_WA_Sys_00000028_3429BB53] ON [dbo].[Location]([Flagged_for_Deletion])
GO
SET IDENTITY_INSERT [dbo].[Location] ON
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code], [Account_Name], [Account_Code], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [Location_Is_Active], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Location_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (37, N'd', N'd', N'd', N'd', N'd', N'd', N'd', N'd', N'd', N'1', N'd', N'd', N'd', N'd', N'd', N'd', N'd', N'd', N'd', N'd', N'd', N'd', N'd', N'd', N'4', N'd', N'd', N'd', N'd', N'd', 1, N'1', NULL, N'1', N'1', CAST(0x0000A07700397514 AS DateTime), N'sa', 1, NULL)
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code], [Account_Name], [Account_Code], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [Location_Is_Active], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Location_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (1, N'Fun Arcade Daytona 1', N'FunArc-Daytona-1', N'Marvel Arcades', N'MarvelArc', N'1212 Clyde and Morris Blvd.', NULL, N'Daytona Beach', N'FL', N'USA', N'32114', N'Angel', N'DosSanches', N'Manager', N'ADosSanchez215@gmail.com', N'386775230', N'Jared', N'Plounder', N'Assistant Manager', NULL, NULL, N'Henry', N'McLorrey', N'3869802316', N'HMcLorrey@MarvelArcades.com', N'3867234040', NULL, N'LPollock@MarvelArcades.com', N'Email sales reports to Marvel accountant Liz Pollack', NULL, N'Will be moving to new address in October 2012', 1, N'.045', N'.02', NULL, N'0.5', CAST(0x0000A057013546C4 AS DateTime), N'Owner', 1, 0)
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code], [Account_Name], [Account_Code], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [Location_Is_Active], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Location_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (10, N'Fun Arcade Daytona 2', N'FunArc-Daytona-2', N'Marval Arcades', N'MarvelArc', N'310 S. Atlantic Ave.', NULL, N'New Smyrna Beach', N'FL', N'USA', N'32169', N'Raymond', N'Bellot', N'Manager', N'RBellot2005@Gmail.com', N'3862618877', N'Jane', N'Appleton', N'Bartender', NULL, NULL, N'Henry', N'McLorrey', N'9045556815', N'HMCLorrey@MarvelArcades.com', N'3869011291', N'3861094389', N'LPollack@MArvelArcades.com', NULL, NULL, NULL, 1, N'.045', N'.02', NULL, N'.05', CAST(0x0000A0580175B533 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code], [Account_Name], [Account_Code], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [Location_Is_Active], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Location_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (5, N'Not Assigned', N'N/A', N'Not Assigned', N'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'0', N'0', N'0', N'0', CAST(0x0000A05700FB1B70 AS DateTime), N'RKlouss', 1, 0)
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code], [Account_Name], [Account_Code], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [Location_Is_Active], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Location_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (11, N'ShootOuts Sports Bar', N'Shoot-Flagler', N'ShootOuts Sports Ba', N'Shoot-Flagler', N'927 East Ponce De Oro Ave.', NULL, N'Flagler', N'FL', N'USA', N'32155', N'Sarah', N'Williams', N'Owner/Manager', N'SarahWiliams35@gmail.com', N'3862228989', NULL, NULL, NULL, NULL, NULL, N'Sarah', N'Williams', N'3862228989', N'SarahWiliams35@gmail.com', N'386790939', N'3867900940', N'SarahWiliams35@gmail.com', NULL, NULL, NULL, 1, N'.045', N'.025', N'.001', N'.6', CAST(0x0000A0580180C229 AS DateTime), N'Owner', 1, NULL)
SET IDENTITY_INSERT [dbo].[Location] OFF
/****** Object:  Table [dbo].[Loc_Count]    Script Date: 06/23/2012 07:24:58 ******/
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
	[Notes] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Counter_FirstName] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Counter_LastName] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Record_Modified_Date] [datetime] NOT NULL CONSTRAINT [DF_Loc_Count_Record_Modified_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_Loc_Count_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
	[Data_Is_Dummy] [bit] NULL,
	[Flagged_for_Deletion] [bit] NULL,
 CONSTRAINT [PK_Loc_Count] PRIMARY KEY NONCLUSTERED 
(
	[Location_ID] ASC,
	[Loc_Count_Date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Loc_Count]') AND name = N'UK_Non_Clusted_Loc_Count_col_Loc_Count_ID')
CREATE UNIQUE NONCLUSTERED INDEX [UK_Non_Clusted_Loc_Count_col_Loc_Count_ID] ON [dbo].[Loc_Count] 
(
	[Loc_Count_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000003_1FEDB87C' and object_id = object_id(N'[dbo].[Loc_Count]'))
CREATE STATISTICS [_WA_Sys_00000003_1FEDB87C] ON [dbo].[Loc_Count]([Loc_Count_Date])
GO
SET IDENTITY_INSERT [dbo].[Loc_Count] ON
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (1, 1, CAST(0xB4350B00 AS Date), 570.7500, 25.6800, NULL, NULL, 25.6800, 545.0700, 272.5400, 272.5400, NULL, NULL, N'Randy', N'Brady', CAST(0x0000A0590053282B AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (2, 1, CAST(0x99350B00 AS Date), 1141.5000, 51.3700, NULL, NULL, 51.3700, 1090.1300, 545.7000, 545.7000, NULL, NULL, N'Walter ', N'Spencer', CAST(0x0000A05900546E1E AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (5, 10, CAST(0xB4350B00 AS Date), 458.0000, 20.6100, NULL, NULL, 20.6100, 473.3900, 236.6700, 235.6700, NULL, NULL, N'Walter', N'Spencer', CAST(0x0000A0590057388E AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (6, 10, CAST(0x99350B00 AS Date), 916.0000, 41.2200, NULL, NULL, 41.2000, 874.7800, 437.3900, 437.3900, NULL, NULL, N'Walter', N'Spencer', CAST(0x0000A0590058C0BB AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (7, 11, CAST(0xB4350B00 AS Date), 414.2500, 18.6500, NULL, NULL, 18.6500, 395.6000, 197.8000, 197.8000, NULL, NULL, N'Randy', N'Brady', CAST(0x0000A059005BBF3B AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (10, 10, CAST(0x26350B00 AS Date), 200.0000, 100.0000, 50.0000, 30.0000, 180.0000, 120.0000, 60.0000, 60.0000, 0.0000, NULL, NULL, NULL, CAST(0x0000A05E00F96769 AS DateTime), N'Owner', 1, 1)
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (12, 10, CAST(0x27350B00 AS Date), 200.0000, 100.0000, 50.0000, 30.0000, 180.0000, 120.0000, 60.0000, 60.0000, 0.0000, NULL, NULL, NULL, CAST(0x0000A05E00F9ACD3 AS DateTime), N'Owner', 1, 1)
SET IDENTITY_INSERT [dbo].[Loc_Count] OFF
/****** Object:  Table [dbo].[Expenses_Monthly]    Script Date: 06/23/2012 07:24:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_Monthly]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Expenses_Monthly](
	[Expenses_Monthly_ID] [int] IDENTITY(1,1) NOT NULL,
	[Sellor] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[invoice] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Year_Month] [date] NOT NULL,
	[Supply] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Cost] [money] NOT NULL,
	[Tax] [money] NOT NULL,
	[Shipping_Cost] [money] NOT NULL,
	[Pay_Method] [NVARCHAR](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Asset] [NVARCHAR](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Details] [NVARCHAR](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Notes] [NVARCHAR](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Comments] [NVARCHAR](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Record_Modify_Date] [datetime] NOT NULL CONSTRAINT [DF_Expense_Monthy_Record_Modified_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_Expenses_Monthly_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
	[Data_Is_Dummy] [bit] NULL,
	[Flagged_for_Deletion] [bit] NULL,
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
INSERT [dbo].[Expenses_Monthly] ([Expenses_Monthly_ID], [Sellor], [invoice], [Year_Month], [Supply], [Cost], [Tax], [Shipping_Cost], [Pay_Method], [Asset], [Details], [Notes], [Comments], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (4, N'STAPLE STORE', NULL, CAST(0x26350B00 AS Date), N'Batteries', 120.0000, 3.0000, 0.0000, N'Card Visa', NULL, NULL, NULL, NULL, CAST(0x0000A058006F7989 AS DateTime), N'Owner', NULL, 0)
SET IDENTITY_INSERT [dbo].[Expenses_Monthly] OFF
/****** Object:  Trigger [TRG_AFTER_Show_Location]    Script Date: 06/23/2012 07:25:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TRG_AFTER_Show_Location]'))
EXEC dbo.sp_executesql @statement = N'--Main 4 
CREATE TRIGGER [dbo].[TRG_AFTER_Show_Location]
   ON  [dbo].[Location]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
select * from Location order by Location_ID desc

END
'
GO
/****** Object:  Table [dbo].[Machine_Transaction_History]    Script Date: 06/23/2012 07:24:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Machine_Transaction_History]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Machine_Transaction_History](
	[Machine_Transaction_History_ID] [int] IDENTITY(1,1) NOT NULL,
	[Transaction_Date] [date] NULL,
	[TransactionTypeCode] [int] NOT NULL,
	[Cost] [smallmoney] NULL,
	[Details] [NVARCHAR](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Comments] [NVARCHAR](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Record_Modify_Date] [datetime] NOT NULL CONSTRAINT [DF_Machine_Transaction_History_Record_Modify_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_Machine_Transaction_History_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
	[Data_Is_Dummy] [bit] NULL,
	[Flagged_For_Deletion] [bit] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Machine]    Script Date: 06/23/2012 07:24:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Machine]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Machine](
	[Machine_ID] [int] IDENTITY(1,1) NOT NULL,
	[Alias] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Machine_Name] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Machine_Class] [NVARCHAR](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Machine_Owner_FirstName] [NVARCHAR](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Machine_Owner_LastName] [NVARCHAR](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Manufacturer] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Purchased_From] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Purchase_Date] [datetime] NULL,
	[Purchase_Details] [NVARCHAR](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Model] [NVARCHAR](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Serial] [NVARCHAR](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Cost] [money] NULL,
	[Shipping_Costs] [money] NULL,
	[Additional_Cost] [money] NULL,
	[Additional_Costs_Details] [NVARCHAR](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Warranty_Details] [NVARCHAR](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Warranty_Expiration_Date] [datetime] NULL,
	[Keys_1] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Keys_2] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Keys_3] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Keys_4] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[External_Key] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Machine_Count_Order] [int] NULL,
	[Machine_Notes] [NVARCHAR](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Machine_Comments] [NVARCHAR](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Location_Code] [NVARCHAR](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Machine_Modify_Date] [datetime] NOT NULL CONSTRAINT [DF_Machine_Machine_Modify_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_Machine_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
	[Data_Is_Dummy] [bit] NULL,
	[Flagged_for_Deletion] [bit] NULL,
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
if not exists (select * from sys.stats where name = N'_WA_Sys_00000003_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_00000003_3CBF0154] ON [dbo].[Machine]([Machine_Name])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000004_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_00000004_3CBF0154] ON [dbo].[Machine]([Machine_Class])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000005_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_00000005_3CBF0154] ON [dbo].[Machine]([Machine_Owner_FirstName])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000006_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_00000006_3CBF0154] ON [dbo].[Machine]([Machine_Owner_LastName])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000007_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_00000007_3CBF0154] ON [dbo].[Machine]([Manufacturer])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000008_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_00000008_3CBF0154] ON [dbo].[Machine]([Purchased_From])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000009_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_00000009_3CBF0154] ON [dbo].[Machine]([Purchase_Date])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000A_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_0000000A_3CBF0154] ON [dbo].[Machine]([Purchase_Details])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000B_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_0000000B_3CBF0154] ON [dbo].[Machine]([Model])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000C_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_0000000C_3CBF0154] ON [dbo].[Machine]([Serial])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000D_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_0000000D_3CBF0154] ON [dbo].[Machine]([Cost])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000E_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_0000000E_3CBF0154] ON [dbo].[Machine]([Shipping_Costs])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000F_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_0000000F_3CBF0154] ON [dbo].[Machine]([Additional_Cost])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000010_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_00000010_3CBF0154] ON [dbo].[Machine]([Additional_Costs_Details])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000011_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_00000011_3CBF0154] ON [dbo].[Machine]([Warranty_Details])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000012_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_00000012_3CBF0154] ON [dbo].[Machine]([Warranty_Expiration_Date])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000013_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_00000013_3CBF0154] ON [dbo].[Machine]([Keys_1])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000014_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_00000014_3CBF0154] ON [dbo].[Machine]([Keys_2])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000015_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_00000015_3CBF0154] ON [dbo].[Machine]([Keys_3])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000016_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_00000016_3CBF0154] ON [dbo].[Machine]([Keys_4])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000017_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_00000017_3CBF0154] ON [dbo].[Machine]([External_Key])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000018_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_00000018_3CBF0154] ON [dbo].[Machine]([Machine_Count_Order])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000019_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_00000019_3CBF0154] ON [dbo].[Machine]([Machine_Notes])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000001A_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_0000001A_3CBF0154] ON [dbo].[Machine]([Machine_Comments])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000001B_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_0000001B_3CBF0154] ON [dbo].[Machine]([Location_Code])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000001C_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_0000001C_3CBF0154] ON [dbo].[Machine]([Machine_Modify_Date])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000001D_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_0000001D_3CBF0154] ON [dbo].[Machine]([Modifiers_Login])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000001E_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_0000001E_3CBF0154] ON [dbo].[Machine]([Data_Is_Dummy])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000001F_3CBF0154' and object_id = object_id(N'[dbo].[Machine]'))
CREATE STATISTICS [_WA_Sys_0000001F_3CBF0154] ON [dbo].[Machine]([Flagged_for_Deletion])
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Machine', N'INDEX',N'UC_Non_Clustered_Machine_Col_Machine_ID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique Constraint Non Clustered Machine table on  column Machine_ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Machine', @level2type=N'INDEX',@level2name=N'UC_Non_Clustered_Machine_Col_Machine_ID'
GO
SET IDENTITY_INSERT [dbo].[Machine] ON
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], [Machine_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (25, N'Boxer354', N'Boxing Champ', N'1', N'Walter', N'Spencer', N' Brown & Walton', N'Orlando Machines', CAST(0x0000990600000000 AS DateTime), NULL, N'BoxingChamp840', N'7853DA33S659', 3834.0200, 175.3000, NULL, NULL, NULL, CAST(0x00009A7400000000 AS DateTime), N'Box354-1', N'Boxer354-2', NULL, NULL, N'Boxer-354-5', 1, NULL, NULL, N'Shoot-Flagler', CAST(0x0000A0590000DBCC AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], [Machine_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (22, N'Crane111', N'Crazy Crane', N'3', N'Walter', N'Spencer', N'Brown & Walton', N'Orlando Machines', CAST(0x0000905700000000 AS DateTime), NULL, N'CrazyCrane400M', N'8965HTD2S', 3024.8700, 138.4000, NULL, NULL, NULL, CAST(0x000091C400000000 AS DateTime), N'Crane101-1', N'Crane101-2', N'Crane101-3', N'Crane101-4', N'Crane101-5', 3, NULL, NULL, N'FunArc-Daytona-2', CAST(0x0000A058018964B8 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], [Machine_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (11, N'Crane88', N'Treasure Crane', N'3', N'Walter', N'Spencer', N'Brokworths Machines , INC', N'Tampa Arcade Warehouse', CAST(0x00009C2000000000 AS DateTime), NULL, N'TreasueCrane-M-923', N'OL969354G34SD2', 2254.8800, 99.0000, NULL, NULL, NULL, NULL, N'Crane88-1', N'Crane88-2', NULL, NULL, N'Crane88-5', 3, NULL, NULL, N'FunArc-Daytona-1', CAST(0x0000A0C300000000 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], [Machine_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (6, N'GoldenTee28', N'Golden Tee II', N'1', N'Walter', N'SPencer', N'Erickson', N'Orlando Machines', CAST(0x0000957C00000000 AS DateTime), NULL, N'GoledenTee450TS', N'786453FR1', 3295.0000, 102.7100, NULL, NULL, NULL, NULL, N'G28-1', N'G28-2', N'G28-3', N'G28-4', N'G28-external', 1, NULL, NULL, N'FunArc-Daytona-1', CAST(0x0000A058016A1D06 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], [Machine_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (2, N'Golf471', N'Golden Tee II', N'1', N'Jeffrey', N' Warren', N'EricksONGameCocks', N'Orlando Machines', CAST(0x0000973C00000000 AS DateTime), NULL, N'GoldenTee450TS', N'NULLT6765RR4DSA2', 2750.0000, 150.0000, NULL, NULL, NULL, CAST(0x00009A1600000000 AS DateTime), N'G71_1', N'G71_2', N'G71_3', N'G71_4', N'G71_5', 9, NULL, NULL, N'N/A', CAST(0x0000A0560114A5A9 AS DateTime), N'Owner', 1, 1)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], [Machine_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (21, N'JukeBox101', N'Digital JukeBox', N'2', N'Walter ', N'Spencer', N'Music Magnum', N'Orlando Machines', CAST(0x00009AB300000000 AS DateTime), NULL, N'JukeBoxDigitalJ4500', N'4558M8N922', 6398.4300, NULL, NULL, NULL, NULL, NULL, N'J101-1', N'J101-2', NULL, NULL, N'J101-5', 2, NULL, NULL, N'FunArc-Daytona-2', CAST(0x0000A0580187F328 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], [Machine_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (8, N'JukeBox92', N' JukeBox Rocker', N'2', N'Walter', N'Spencer', N'Music Magnum', N'Jacksoneville Amusement Outlet', CAST(0x00009A9300000000 AS DateTime), NULL, N'JukeBox1204s', N'0987HYGT1774', 5361.9200, 191.7800, NULL, NULL, NULL, NULL, N'J92-1', N'J92-2', NULL, NULL, N'J93', 2, NULL, NULL, N'FunArc-Daytona-1', CAST(0x0000A058016BEC51 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], [Machine_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (20, N'Taxi159', N'Taxi Driver', N'1', N'Jeffrey', N'Warren', N'Erickson', N'Orlando Machines', CAST(0x0000948300000000 AS DateTime), NULL, N'TaxiDriverSuperSeries90', N'9834FF5G1', 5324.9800, 126.9000, NULL, NULL, NULL, CAST(0x000095F100000000 AS DateTime), N'Taxi159-1', N'Taxi-159-2', N'Taxi-159-3', NULL, N'Taxi159-5', 1, NULL, NULL, N'FunArc-Daytona-2', CAST(0x0000A0580186E83A AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], [Machine_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (23, N'Vendor108', N'Vending Machine', N'4', N'Walter', N'Spencer', N'Snyder, Inc', N'Orlando Machines', CAST(0x0000911500000000 AS DateTime), NULL, N'GeneralVending98X', N'09LD341Q2', 2150.3100, 55.0000, NULL, NULL, NULL, CAST(0x0000928200000000 AS DateTime), N'Vend108-1', N'Vend108-2', NULL, NULL, N'Vend108-5', 4, NULL, NULL, N'FunArc-Daytona-2', CAST(0x0000A058018A5B37 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], [Machine_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (19, N'Vendor78', N'Vending Machine', N'4', N'Walter', N'Spencer', N'Snyder, Inc', N'Orlando Machines', CAST(0x00008ECC00000000 AS DateTime), NULL, N'GeneralVender98X', N'E55RT2972W', 2008.2200, NULL, NULL, NULL, NULL, NULL, N'Vend78-1', N'Vend78-2', NULL, NULL, N'Vend78-5', 4, NULL, NULL, N'FunArc-Daytona-1', CAST(0x0000A058018528D8 AS DateTime), N'Owner', 1, NULL)
SET IDENTITY_INSERT [dbo].[Machine] OFF
/****** Object:  Table [dbo].[Mach_Count]    Script Date: 06/23/2012 07:24:57 ******/
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
	[Adjustment_1_Decription] [NVARCHAR](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Adjustment_2_Misc_Decription] [NVARCHAR](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Meter_Bills] [money] NULL,
	[Meter_Cents] [money] NULL,
	[Meter_Pieces] [smallint] NULL,
	[Record_Modified_Date] [datetime] NOT NULL CONSTRAINT [DF_Mach_Count_Record_Modified_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_Mach_Count_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
	[Machine_Data_Is_Dummy] [bit] NULL,
	[Flagged_for_Deletion] [bit] NULL,
 CONSTRAINT [PK_NON_Clusterted_Mach_Count_col_Machine_Count_ID] PRIMARY KEY NONCLUSTERED 
(
	[Mach_Count_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000002_10AB74EC' and object_id = object_id(N'[dbo].[Mach_Count]'))
CREATE STATISTICS [_WA_Sys_00000002_10AB74EC] ON [dbo].[Mach_Count]([Machine_ID])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000003_10AB74EC' and object_id = object_id(N'[dbo].[Mach_Count]'))
CREATE STATISTICS [_WA_Sys_00000003_10AB74EC] ON [dbo].[Mach_Count]([Loc_Count_ID])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000004_10AB74EC' and object_id = object_id(N'[dbo].[Mach_Count]'))
CREATE STATISTICS [_WA_Sys_00000004_10AB74EC] ON [dbo].[Mach_Count]([CoinsIn_Cents])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000005_10AB74EC' and object_id = object_id(N'[dbo].[Mach_Count]'))
CREATE STATISTICS [_WA_Sys_00000005_10AB74EC] ON [dbo].[Mach_Count]([CoinsIn_Bills])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000006_10AB74EC' and object_id = object_id(N'[dbo].[Mach_Count]'))
CREATE STATISTICS [_WA_Sys_00000006_10AB74EC] ON [dbo].[Mach_Count]([Adjustment_1])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000007_10AB74EC' and object_id = object_id(N'[dbo].[Mach_Count]'))
CREATE STATISTICS [_WA_Sys_00000007_10AB74EC] ON [dbo].[Mach_Count]([Adjustment_2_Misc])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000008_10AB74EC' and object_id = object_id(N'[dbo].[Mach_Count]'))
CREATE STATISTICS [_WA_Sys_00000008_10AB74EC] ON [dbo].[Mach_Count]([Adjustment_Total])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000009_10AB74EC' and object_id = object_id(N'[dbo].[Mach_Count]'))
CREATE STATISTICS [_WA_Sys_00000009_10AB74EC] ON [dbo].[Mach_Count]([CoinsIn_Total])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000A_10AB74EC' and object_id = object_id(N'[dbo].[Mach_Count]'))
CREATE STATISTICS [_WA_Sys_0000000A_10AB74EC] ON [dbo].[Mach_Count]([Adjustment_1_Decription])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000B_10AB74EC' and object_id = object_id(N'[dbo].[Mach_Count]'))
CREATE STATISTICS [_WA_Sys_0000000B_10AB74EC] ON [dbo].[Mach_Count]([Adjustment_2_Misc_Decription])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000C_10AB74EC' and object_id = object_id(N'[dbo].[Mach_Count]'))
CREATE STATISTICS [_WA_Sys_0000000C_10AB74EC] ON [dbo].[Mach_Count]([Meter_Bills])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000D_10AB74EC' and object_id = object_id(N'[dbo].[Mach_Count]'))
CREATE STATISTICS [_WA_Sys_0000000D_10AB74EC] ON [dbo].[Mach_Count]([Meter_Cents])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000E_10AB74EC' and object_id = object_id(N'[dbo].[Mach_Count]'))
CREATE STATISTICS [_WA_Sys_0000000E_10AB74EC] ON [dbo].[Mach_Count]([Meter_Pieces])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000F_10AB74EC' and object_id = object_id(N'[dbo].[Mach_Count]'))
CREATE STATISTICS [_WA_Sys_0000000F_10AB74EC] ON [dbo].[Mach_Count]([Record_Modified_Date])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000010_10AB74EC' and object_id = object_id(N'[dbo].[Mach_Count]'))
CREATE STATISTICS [_WA_Sys_00000010_10AB74EC] ON [dbo].[Mach_Count]([Modifiers_Login])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000011_10AB74EC' and object_id = object_id(N'[dbo].[Mach_Count]'))
CREATE STATISTICS [_WA_Sys_00000011_10AB74EC] ON [dbo].[Mach_Count]([Machine_Data_Is_Dummy])
GO
if not exists (select * from sys.stats where name = N'_WA_Sys_00000012_10AB74EC' and object_id = object_id(N'[dbo].[Mach_Count]'))
CREATE STATISTICS [_WA_Sys_00000012_10AB74EC] ON [dbo].[Mach_Count]([Flagged_for_Deletion])
GO
SET IDENTITY_INSERT [dbo].[Mach_Count] ON
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (3, 6, 1, 78.5000, 92.2500, 25.0000, NULL, 25.0000, 145.7500, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A05900180573 AS DateTime), N'Owner', 1, 1)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (4, 8, 1, 102.0000, 65.7500, 15.0000, NULL, 15.0000, 152.7500, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A0590018730A AS DateTime), N'Owner', 1, 1)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (5, 11, 1, 72.5000, 82.5000, 45.5000, NULL, 45.5000, 109.5000, NULL, NULL, 12765.0000, 902.7500, 54, CAST(0x0000A05900194CD8 AS DateTime), N'Owner', 1, 1)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (6, 19, 1, 135.2500, 82.7500, 55.2500, NULL, 55.2500, 162.5700, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A059001A5959 AS DateTime), N'Owner', 1, 1)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (7, 6, 2, 100.0000, 70.0000, NULL, 20.0000, 20.0000, 150.0000, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A059005E2355 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (8, 8, 2, 100.0000, 70.0000, 20.0000, NULL, 20.0000, 150.0000, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A059005F3B6E AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (9, 11, 2, 45.0000, 105.0000, NULL, 19.5000, 19.5000, 150.5000, NULL, NULL, 22874.0000, 15012.2500, 36, CAST(0x0000A059005FA57C AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (10, 19, 2, 60.0000, 90.0000, NULL, NULL, NULL, 150.0000, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A05900601D87 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (11, 25, 7, 200.0000, 240.2500, NULL, NULL, NULL, 420.2500, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A05900617570 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (12, 20, 5, 100.0000, 50.0000, NULL, NULL, NULL, 150.0000, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A05900620565 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (13, 21, 5, 100.0000, 140.2500, NULL, NULL, NULL, 140.2500, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A05900623411 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (14, 22, 5, 51.0000, 99.0000, NULL, NULL, NULL, 150.0000, NULL, NULL, 9098.0000, 10023.7500, 71, CAST(0x0000A0590062B02D AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (15, 2, 5, 100.0000, 80.0000, 30.0000, NULL, 30.0000, 150.0000, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A05900630F80 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (16, 20, 6, 50.0000, 100.0000, NULL, NULL, NULL, 150.0000, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A05900633BA6 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (17, 21, 6, 105.0000, 49.0000, NULL, 4.0000, NULL, 150.0000, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A05900637D25 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (18, 22, 6, 150.0000, 100.0000, 50.0000, NULL, NULL, 150.0000, NULL, NULL, 1110.0000, 10070.5000, 60, CAST(0x0000A0590063F5C1 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (19, 23, 6, 150.0000, 50.0000, NULL, NULL, NULL, 150.0000, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A05900641A2D AS DateTime), N'Owner', 1, NULL)
SET IDENTITY_INSERT [dbo].[Mach_Count] OFF
/****** Object:  Trigger [trg_show_Loc_Count]    Script Date: 06/23/2012 07:25:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[trg_show_Loc_Count]'))
EXEC dbo.sp_executesql @statement = N'CREATE  TRIGGER [dbo].[trg_show_Loc_Count]
ON [dbo].[Loc_Count]
for INSERT,UPDATE,DELETE
AS
BEGIN
select top 10 * from Loc_Count order by Loc_Count_ID DESC
END
'
GO
/****** Object:  Trigger [TRG_AFTER_Show_Machine_Transaction_History]    Script Date: 06/23/2012 07:25:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TRG_AFTER_Show_Machine_Transaction_History]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[TRG_AFTER_Show_Machine_Transaction_History]
   ON  [dbo].[Machine_Transaction_History]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
select * from Machine_Transaction_History order by Machine_Transaction_History_ID desc

END'
GO
/****** Object:  Trigger [TRG_AFTER_Show_Machine]    Script Date: 06/23/2012 07:25:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TRG_AFTER_Show_Machine]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[TRG_AFTER_Show_Machine]
   ON  [dbo].[Machine]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
select * from Machine order by Machine_ID desc

END
'
GO
/****** Object:  Trigger [TRG_AFTER_Show_Loc_Count]    Script Date: 06/23/2012 07:25:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TRG_AFTER_Show_Loc_Count]'))
EXEC dbo.sp_executesql @statement = N'

CREATE TRIGGER [dbo].[TRG_AFTER_Show_Loc_Count]
   ON  [dbo].[Loc_Count]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
select * from Loc_Count order by Loc_Count_ID desc

END
'
GO
/****** Object:  Trigger [TRG_AFTER_Show_Expenses_Monthly]    Script Date: 06/23/2012 07:25:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TRG_AFTER_Show_Expenses_Monthly]'))
EXEC dbo.sp_executesql @statement = N'
CREATE TRIGGER [dbo].[TRG_AFTER_Show_Expenses_Monthly]
   ON  [dbo].[Expenses_Monthly]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
select * from Expenses_Monthly order by Expenses_Monthly_ID desc

END
'
GO
/****** Object:  Trigger [trg_show_Machine]    Script Date: 06/23/2012 07:25:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[trg_show_Machine]'))
EXEC dbo.sp_executesql @statement = N'CREATE  TRIGGER [dbo].[trg_show_Machine]
ON [dbo].[Machine]
for INSERT,UPDATE,DELETE
AS
BEGIN
select top 10 * from Machine order by Machine_ID DESC
END
'
GO
/****** Object:  Trigger [trg_show_Mach_Count]    Script Date: 06/23/2012 07:25:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[trg_show_Mach_Count]'))
EXEC dbo.sp_executesql @statement = N'CREATE  TRIGGER [dbo].[trg_show_Mach_Count]
ON [dbo].[Mach_Count]
for INSERT,UPDATE,DELETE
AS
BEGIN
select top 10 * from Mach_Count order by Mach_Count_ID DESC
END
'
GO
/****** Object:  Trigger [TRG_AFTER_Show_Mach_Count]    Script Date: 06/23/2012 07:25:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TRG_AFTER_Show_Mach_Count]'))
EXEC dbo.sp_executesql @statement = N'
CREATE TRIGGER [dbo].[TRG_AFTER_Show_Mach_Count]
   ON  [dbo].[Mach_Count]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
select * from Mach_Count order by Mach_Count_ID desc

END
'
GO
/****** Object:  ForeignKey [FK_Machine_one_to_Many_Location_col_Loc_Code_Cascading_Update_Delete]    Script Date: 06/23/2012 07:24:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Machine_one_to_Many_Location_col_Loc_Code_Cascading_Update_Delete]') AND parent_object_id = OBJECT_ID(N'[dbo].[Machine]'))
ALTER TABLE [dbo].[Machine]  WITH CHECK ADD  CONSTRAINT [FK_Machine_one_to_Many_Location_col_Loc_Code_Cascading_Update_Delete] FOREIGN KEY([Location_Code])
REFERENCES [dbo].[Location] ([Location_Code])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Machine_one_to_Many_Location_col_Loc_Code_Cascading_Update_Delete]') AND parent_object_id = OBJECT_ID(N'[dbo].[Machine]'))
ALTER TABLE [dbo].[Machine] CHECK CONSTRAINT [FK_Machine_one_to_Many_Location_col_Loc_Code_Cascading_Update_Delete]
GO
/****** Object:  ForeignKey [FK_Mach_Count_Loc_Count]    Script Date: 06/23/2012 07:24:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Mach_Count_Loc_Count]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
ALTER TABLE [dbo].[Mach_Count]  WITH CHECK ADD  CONSTRAINT [FK_Mach_Count_Loc_Count] FOREIGN KEY([Loc_Count_ID])
REFERENCES [dbo].[Loc_Count] ([Loc_Count_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Mach_Count_Loc_Count]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
ALTER TABLE [dbo].[Mach_Count] CHECK CONSTRAINT [FK_Mach_Count_Loc_Count]
GO
/****** Object:  ForeignKey [FK_Mach_Count_Machine_col_Machine_ID]    Script Date: 06/23/2012 07:24:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Mach_Count_Machine_col_Machine_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
ALTER TABLE [dbo].[Mach_Count]  WITH CHECK ADD  CONSTRAINT [FK_Mach_Count_Machine_col_Machine_ID] FOREIGN KEY([Machine_ID])
REFERENCES [dbo].[Machine] ([Machine_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Mach_Count_Machine_col_Machine_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
ALTER TABLE [dbo].[Mach_Count] CHECK CONSTRAINT [FK_Mach_Count_Machine_col_Machine_ID]
GO
/****** Object:  ForeignKey [FK_Loc_Count_Location_cols_Location_ID_Cascading_Update_Delete]    Script Date: 06/23/2012 07:24:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Loc_Count_Location_cols_Location_ID_Cascading_Update_Delete]') AND parent_object_id = OBJECT_ID(N'[dbo].[Loc_Count]'))
ALTER TABLE [dbo].[Loc_Count]  WITH CHECK ADD  CONSTRAINT [FK_Loc_Count_Location_cols_Location_ID_Cascading_Update_Delete] FOREIGN KEY([Location_ID])
REFERENCES [dbo].[Location] ([Location_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Loc_Count_Location_cols_Location_ID_Cascading_Update_Delete]') AND parent_object_id = OBJECT_ID(N'[dbo].[Loc_Count]'))
ALTER TABLE [dbo].[Loc_Count] CHECK CONSTRAINT [FK_Loc_Count_Location_cols_Location_ID_Cascading_Update_Delete]
GO
