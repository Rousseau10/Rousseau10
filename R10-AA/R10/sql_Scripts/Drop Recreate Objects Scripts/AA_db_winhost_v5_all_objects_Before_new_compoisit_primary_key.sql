USE [Action_Amusements_Winhost]
GO
/****** Object:  ForeignKey [FK_Location_Location_Count]    Script Date: 05/19/2012 13:33:53 ******/
ALTER TABLE [dbo].[Location_Count] DROP CONSTRAINT [FK_Location_Location_Count]
GO
/****** Object:  ForeignKey [FK_Machine_one_to_Many_Location]    Script Date: 05/19/2012 13:33:54 ******/
ALTER TABLE [dbo].[Machine] DROP CONSTRAINT [FK_Machine_one_to_Many_Location]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_vw_Loc_Count]    Script Date: 05/19/2012 13:33:41 ******/
DROP PROCEDURE [dbo].[sp_Insert_vw_Loc_Count]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_vw_Mach_Count]    Script Date: 05/19/2012 13:33:41 ******/
DROP PROCEDURE [dbo].[sp_Insert_vw_Mach_Count]
GO
/****** Object:  StoredProcedure [dbo].[SP_ALL_DELETE_Flagged_Records]    Script Date: 05/19/2012 13:33:41 ******/
DROP PROCEDURE [dbo].[SP_ALL_DELETE_Flagged_Records]
GO
/****** Object:  StoredProcedure [dbo].[sp_Machine_UPDATE]    Script Date: 05/19/2012 13:33:41 ******/
DROP PROCEDURE [dbo].[sp_Machine_UPDATE]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Machine]    Script Date: 05/19/2012 13:33:41 ******/
DROP PROCEDURE [dbo].[sp_Insert_Machine]
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Location_Count]    Script Date: 05/19/2012 13:33:41 ******/
DROP PROCEDURE [dbo].[sp_Truncate_Location_Count]
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Mach_Count]    Script Date: 05/19/2012 13:33:41 ******/
DROP PROCEDURE [dbo].[sp_Truncate_Mach_Count]
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Machine]    Script Date: 05/19/2012 13:33:41 ******/
DROP PROCEDURE [dbo].[sp_Truncate_Machine]
GO
/****** Object:  View [dbo].[vw_4_select_all_columns]    Script Date: 05/19/2012 13:33:57 ******/
DROP VIEW [dbo].[vw_4_select_all_columns]
GO
/****** Object:  View [dbo].[vw_Loc_Count]    Script Date: 05/19/2012 13:33:57 ******/
DROP VIEW [dbo].[vw_Loc_Count]
GO
/****** Object:  View [dbo].[vw_Mach_Count]    Script Date: 05/19/2012 13:33:57 ******/
DROP VIEW [dbo].[vw_Mach_Count]
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Location]    Script Date: 05/19/2012 13:33:41 ******/
DROP PROCEDURE [dbo].[sp_Truncate_Location]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Location]    Script Date: 05/19/2012 13:33:41 ******/
DROP PROCEDURE [dbo].[sp_Insert_Location]
GO
/****** Object:  Table [dbo].[Mach_Count]    Script Date: 05/19/2012 13:33:54 ******/
ALTER TABLE [dbo].[Mach_Count] DROP CONSTRAINT [DF_Mach_Count_Record_Modified_Date]
GO
ALTER TABLE [dbo].[Mach_Count] DROP CONSTRAINT [DF_Mach_Count_Modifiers_Login]
GO
DROP TABLE [dbo].[Mach_Count]
GO
/****** Object:  Table [dbo].[Machine]    Script Date: 05/19/2012 13:33:54 ******/
ALTER TABLE [dbo].[Machine] DROP CONSTRAINT [FK_Machine_one_to_Many_Location]
GO
ALTER TABLE [dbo].[Machine] DROP CONSTRAINT [DF_Machine_Machine_Modify_Date]
GO
ALTER TABLE [dbo].[Machine] DROP CONSTRAINT [DF_Machine_Modifiers_Login]
GO
DROP TABLE [dbo].[Machine]
GO
/****** Object:  Table [dbo].[Expenses_Monthly]    Script Date: 05/19/2012 13:33:53 ******/
ALTER TABLE [dbo].[Expenses_Monthly] DROP CONSTRAINT [DF_Expense_Monthy_Record_Modified_Date]
GO
ALTER TABLE [dbo].[Expenses_Monthly] DROP CONSTRAINT [DF_Expenses_Monthly_Modifiers_Login]
GO
DROP TABLE [dbo].[Expenses_Monthly]
GO
/****** Object:  Table [dbo].[Location_Count]    Script Date: 05/19/2012 13:33:53 ******/
ALTER TABLE [dbo].[Location_Count] DROP CONSTRAINT [FK_Location_Location_Count]
GO
ALTER TABLE [dbo].[Location_Count] DROP CONSTRAINT [DF_Location_Count_Record_Modified_Date]
GO
ALTER TABLE [dbo].[Location_Count] DROP CONSTRAINT [DF_Location_Count_Modifiers_Login]
GO
DROP TABLE [dbo].[Location_Count]
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Location_History]    Script Date: 05/19/2012 13:33:41 ******/
DROP PROCEDURE [dbo].[sp_Truncate_Location_History]
GO
/****** Object:  StoredProcedure [dbo].[sp_Lookup_Mach_Class]    Script Date: 05/19/2012 13:33:41 ******/
DROP PROCEDURE [dbo].[sp_Lookup_Mach_Class]
GO
/****** Object:  StoredProcedure [dbo].[sp_Lookup_Transaction_Type]    Script Date: 05/19/2012 13:33:41 ******/
DROP PROCEDURE [dbo].[sp_Lookup_Transaction_Type]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetLoginOfSPID]    Script Date: 05/19/2012 13:33:56 ******/
DROP FUNCTION [dbo].[fn_GetLoginOfSPID]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 05/19/2012 13:33:53 ******/
ALTER TABLE [dbo].[Location] DROP CONSTRAINT [DF_Location_Location_Modify_Date]
GO
ALTER TABLE [dbo].[Location] DROP CONSTRAINT [DF_Location_Modifiers_Login]
GO
DROP TABLE [dbo].[Location]
GO
/****** Object:  StoredProcedure [dbo].[sp_Trunacte_Location_History]    Script Date: 05/19/2012 13:33:41 ******/
DROP PROCEDURE [dbo].[sp_Trunacte_Location_History]
GO
/****** Object:  StoredProcedure [dbo].[sp_Trunacte_Machine_History]    Script Date: 05/19/2012 13:33:41 ******/
DROP PROCEDURE [dbo].[sp_Trunacte_Machine_History]
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Machine_History]    Script Date: 05/19/2012 13:33:41 ******/
DROP PROCEDURE [dbo].[sp_Truncate_Machine_History]
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Monthly_Expenses]    Script Date: 05/19/2012 13:33:41 ******/
DROP PROCEDURE [dbo].[sp_Truncate_Monthly_Expenses]
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Monthly_Expenses]    Script Date: 05/19/2012 13:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--\\\\\\\\\\\\\\\\\\\\\\\\\ truncate whole table\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
   -- =============================================
-- Author:		ARS
-- Create date: 11-14-2012
create PROCEDURE [dbo].[sp_Truncate_Monthly_Expenses] as 
   
   begin
   
   truncate table Monthly_Expenses
   
   end
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Machine_History]    Script Date: 05/19/2012 13:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--\\\\\\\\\\\\\\\\\\\\\\\\\ truncate whole table\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
   -- =============================================
-- Author:		ARS
-- Create date: 11-14-2012
create PROCEDURE [dbo].[sp_Truncate_Machine_History] as 
   
   begin
   
   truncate table Machine_History
   
   end
GO
/****** Object:  StoredProcedure [dbo].[sp_Trunacte_Machine_History]    Script Date: 05/19/2012 13:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_Trunacte_Machine_History] as 
   
   begin
   
   truncate table Machine_History
   
   end
GO
/****** Object:  StoredProcedure [dbo].[sp_Trunacte_Location_History]    Script Date: 05/19/2012 13:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--\\\\\\\\\\\\\\\\\\\\\\\\\ truncate whole table\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
   -- =============================================
-- Author:		ARS
-- Create date: 11-14-2012
create PROCEDURE [dbo].[sp_Trunacte_Location_History] as 
   
   begin
   
   truncate table Machine_History
   
   end
GO
/****** Object:  Table [dbo].[Location]    Script Date: 05/19/2012 13:33:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Location](
	[Location_ID] [int] IDENTITY(1,1) NOT NULL,
	[Location_Name] [varchar](50) NOT NULL,
	[Location_Code] [varchar](25) NOT NULL,
	[Account_Name] [varchar](50) NULL,
	[Account_Code] [varchar](25) NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State_Province_Territory] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Postal_Code] [varchar](50) NULL,
	[Contact1_FirstName] [varchar](50) NULL,
	[Contact1_LastName] [varchar](50) NULL,
	[Contact1_Role] [varchar](50) NULL,
	[Contact1_Email] [varchar](50) NULL,
	[Contact1_Cell] [varchar](50) NULL,
	[Contact2_FirstName] [varchar](50) NULL,
	[Contact2_LastName] [varchar](50) NULL,
	[Contact2_Role] [varchar](50) NULL,
	[Contact2_Email] [varchar](50) NULL,
	[Contact2_Cell] [varchar](50) NULL,
	[Owner_FirstName] [varchar](50) NULL,
	[Owner_LastName] [varchar](50) NULL,
	[Owner_Cell] [varchar](50) NULL,
	[Owner_Email] [varchar](50) NULL,
	[Location_Office_Phone] [varchar](50) NULL,
	[Location_Bar_Phone] [varchar](50) NULL,
	[Email_for_Sales_Report] [varchar](50) NULL,
	[Notes1] [varchar](250) NULL,
	[Notes2] [varchar](250) NULL,
	[Comments] [varchar](250) NULL,
	[Location_Is_Active] [bit] NOT NULL,
	[Tax_Percente_State] [varchar](10) NULL,
	[Tax_Percente_County] [varchar](10) NULL,
	[Tax_Percente_Other] [varchar](10) NULL,
	[Split_Percent] [varchar](10) NOT NULL,
	[Location_Modify_Date] [datetime] NOT NULL CONSTRAINT [DF_Location_Location_Modify_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [varchar](50) NULL CONSTRAINT [DF_Location_Modifiers_Login]  DEFAULT ('fn_GetLoginOfSPID()'),
	[Data_Is_Dummy] [bit] NULL,
	[Flagged_for_Deletion] [bit] NULL,
 CONSTRAINT [PK_Location_1] PRIMARY KEY CLUSTERED 
(
	[Location_Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_Location_col_Location_Name] UNIQUE NONCLUSTERED 
(
	[Location_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Location] ON
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code], [Account_Name], [Account_Code], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [Location_Is_Active], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Location_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (2, N'Skippys_Pizza_A1A', N'NSB12', N'Skippys_Pizza_Restaraunts', N'SPR', N'3001 A1 Avenue', N'3rd Floor', N'New Smyrna Beach', N'FL', N'USA', N'32169', N'Ron', N'Hendricks', N'Manager', N'RHendricks@aol.com', N'3868462232', N'Sheryl', N'Weinstein', N'Bartender', N'WB2785ISME@Gmail.com', N'3868462239', N'Jim', N'Lopez', N'3868462277', N'JimmyLopez33@comcast.com', N'3868469999', N'3868468888', N'RHendricks@aol.com', N'This is one of 5 locations for this account', NULL, N'no comments', 1, N'.045', N'.015', N'.005', N'.6', CAST(0x0000A05100C969B6 AS DateTime), N'WSpencer', 1, 1)
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code], [Account_Name], [Account_Code], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [Location_Is_Active], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Location_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (1, N'Skippys_Pizza_A1A', N'NSB14', N'Skippys_Pizza_Restaraunts', N'SPR', N'3001 A1 Avenue', N'3rd Floor', N'New Smyrna Beach', N'FL', N'USA', N'32169', N'Ron', N'Hendricks', N'Manager', N'RHendricks@aol.com', N'3868462232', N'Sheryl', N'Weinstein', N'Bartender', N'WB2785ISME@Gmail.com', N'3868462239', N'Jim', N'Lopez', N'3868462277', N'JimmyLopez33@comcast.com', N'3868469999', N'3868468888', N'RHendricks@aol.com', N'This is one of 5 locations for this account', NULL, N'no comments', 1, N'.045', N'.015', N'.005', N'.6', CAST(0x0000A04F010FAA3D AS DateTime), N'WSpencer', 1, NULL)
SET IDENTITY_INSERT [dbo].[Location] OFF
/****** Object:  UserDefinedFunction [dbo].[fn_GetLoginOfSPID]    Script Date: 05/19/2012 13:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_GetLoginOfSPID]
(
	-- Add the parameters for the function here
	-- nothing needs to be passed in
)
RETURNS varchar(50)
AS
BEGIN
	-- Declare the return variable here
	DECLARE  @Current_Login varchar(50)

	-- Add the T-SQL statements to compute the return value here
	declare @SPID table (ID int, SYS_USER varchar(50), USR varchar(50))
insert into @SPID  (ID,SYS_USER,USR)
SELECT @@SPID AS 'ID', SYSTEM_USER  'sys_Login', USER AS 'User Name' 
select  @Current_Login = substring(SYS_USER,CHARINDEX('\',SYS_USER)+1,LEN(SYS_USER) - CHARINDEX('\',SYS_USER)+1)
from  @Spid


	-- Return the result of the function
	RETURN  @Current_Login 

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Lookup_Transaction_Type]    Script Date: 05/19/2012 13:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--\\\\\\\\\\\\\\\\\\\\\\\\\ truncate whole table\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
   -- =============================================
-- Author:		ARS
-- Create date: 11-14-2012
create PROCEDURE [dbo].[sp_Lookup_Transaction_Type] as 
   
   begin
   
   truncate table Lookup_Transaction_Type
   
   end
GO
/****** Object:  StoredProcedure [dbo].[sp_Lookup_Mach_Class]    Script Date: 05/19/2012 13:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--\\\\\\\\\\\\\\\\\\\\\\\\\ truncate whole table\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
   -- =============================================
-- Author:		ARS
-- Create date: 11-14-2012
create PROCEDURE [dbo].[sp_Lookup_Mach_Class] as 
   
   begin
   
   truncate table Lookup_Mach_Class
   
   end
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Location_History]    Script Date: 05/19/2012 13:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--\\\\\\\\\\\\\\\\\\\\\\\\\ truncate whole table\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
   -- =============================================
-- Author:		ARS
-- Create date: 11-14-2012
CREATE PROCEDURE [dbo].[sp_Truncate_Location_History] as 
   
   begin
   
   truncate table Location_History
   
   end
GO
/****** Object:  Table [dbo].[Location_Count]    Script Date: 05/19/2012 13:33:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Location_Count](
	[Location_Count_ID] [int] IDENTITY(1,1) NOT NULL,
	[Location_ID] [int] NOT NULL,
	[CoinsIn] [money] NOT NULL,
	[Tax_State] [money] NULL,
	[Tax_County] [money] NULL,
	[Tax_Other] [money] NULL,
	[Tax_Total] [money] NULL,
	[Gross] [money] NOT NULL,
	[Split_Operator] [money] NOT NULL,
	[Split_Location] [money] NOT NULL,
	[Advance] [money] NULL,
	[Notes] [varchar](50) NULL,
	[Location_Count_Date] [datetime] NOT NULL,
	[Counter_FirstName] [varchar](50) NULL,
	[Counter_LastName] [varchar](50) NULL,
	[Record_Modified_Date] [datetime] NOT NULL CONSTRAINT [DF_Location_Count_Record_Modified_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [varchar](50) NULL CONSTRAINT [DF_Location_Count_Modifiers_Login]  DEFAULT ('fn_GetLoginOfSPID()'),
	[Data_Is_Dummy] [bit] NULL,
	[Flagged_for_Deletion] [bit] NULL,
 CONSTRAINT [PK_Location_Count] PRIMARY KEY NONCLUSTERED 
(
	[Location_Count_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Location_Count] ON
INSERT [dbo].[Location_Count] ([Location_Count_ID], [Location_ID], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Location_Count_Date], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (1, 1, 200.0000, 9.0000, 3.5000, 1.7500, 14.0000, 186.0000, 93.0000, 93.0000, 15.0000, N'gave Manager 15 dollars in quarters advance', CAST(0x0000A04E00000000 AS DateTime), N'Jeff', N'Wheeler', CAST(0x0000A04F010FAA3D AS DateTime), N'WSpencer', 1, NULL)
INSERT [dbo].[Location_Count] ([Location_Count_ID], [Location_ID], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Location_Count_Date], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (4, 1, 100.0000, 5.7500, 1.5000, 0.7500, 8.0000, 92.0000, 46.0000, 46.0000, 0.0000, NULL, CAST(0x0000A04500000000 AS DateTime), N'Walter', N'Spencer', CAST(0x0000A05100C09046 AS DateTime), N'WSpencer', 1, NULL)
INSERT [dbo].[Location_Count] ([Location_Count_ID], [Location_ID], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Location_Count_Date], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (5, 1, 100.0000, 5.7500, 1.5000, 0.7500, 8.0000, 92.0000, 46.0000, 46.0000, 0.0000, NULL, CAST(0x0000A04500000000 AS DateTime), N'Walter', N'Spencer', CAST(0x0000A05100C095D7 AS DateTime), N'WSpencer', 1, NULL)
SET IDENTITY_INSERT [dbo].[Location_Count] OFF
/****** Object:  Table [dbo].[Expenses_Monthly]    Script Date: 05/19/2012 13:33:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Expenses_Monthly](
	[Expenses_Monthly_ID] [int] IDENTITY(1,1) NOT NULL,
	[Sellor] [varchar](50) NOT NULL,
	[invoice] [varchar](50) NULL,
	[Year_Month] [date] NOT NULL,
	[Supply] [varchar](50) NOT NULL,
	[Cost] [money] NOT NULL,
	[Tax] [money] NOT NULL,
	[Shipping_Cost] [money] NOT NULL,
	[Pay_Method] [varchar](20) NOT NULL,
	[Asset] [varchar](20) NULL,
	[Details] [varchar](200) NULL,
	[Notes] [varchar](200) NULL,
	[Comments] [varchar](200) NULL,
	[Record_Modify_Date] [datetime] NOT NULL CONSTRAINT [DF_Expense_Monthy_Record_Modified_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [varchar](50) NULL CONSTRAINT [DF_Expenses_Monthly_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
	[Data_Is_Dummy] [bit] NULL,
	[Flagged_for_Deletion] [bit] NULL,
 CONSTRAINT [PK_Expenses_Monthly] PRIMARY KEY CLUSTERED 
(
	[Sellor] ASC,
	[Year_Month] ASC,
	[Supply] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Machine]    Script Date: 05/19/2012 13:33:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Machine](
	[Machine_ID] [int] IDENTITY(1,1) NOT NULL,
	[Alias] [varchar](50) NOT NULL,
	[Machine_Name] [varchar](50) NULL,
	[Machine_Class] [varchar](20) NULL,
	[Machine_Owner_FirstName] [varchar](20) NULL,
	[Machine_Owner_LastName] [varchar](30) NULL,
	[Manufacturer] [varchar](50) NULL,
	[Purchased_From] [varchar](50) NULL,
	[Purchase_Date] [datetime] NULL,
	[Purchase_Details] [varchar](200) NULL,
	[Model] [varchar](30) NULL,
	[Serial] [varchar](80) NULL,
	[Cost] [money] NULL,
	[Shipping_Costs] [money] NULL,
	[Additional_Cost] [money] NULL,
	[Additional_Costs_Details] [varchar](200) NULL,
	[Warranty_Details] [varchar](200) NULL,
	[Warranty_Expiration_Date] [datetime] NULL,
	[Keys_1] [varchar](50) NULL,
	[Keys_2] [varchar](50) NULL,
	[Keys_3] [varchar](50) NULL,
	[Keys_4] [varchar](50) NULL,
	[External_Key] [varchar](50) NULL,
	[Machine_Count_Order] [int] NULL,
	[Machine_Notes] [varchar](200) NULL,
	[Machine_Comments] [varchar](200) NULL,
	[Location_Code] [varchar](25) NOT NULL,
	[Machine_Modify_Date] [datetime] NOT NULL CONSTRAINT [DF_Machine_Machine_Modify_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [varchar](50) NULL CONSTRAINT [DF_Machine_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
	[Data_Is_Dummy] [bit] NULL,
	[Flagged_for_Deletion] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [UK_Clustered_Machine_col_Alias] ON [dbo].[Machine] 
(
	[Alias] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Machine] ON
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], [Machine_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (2, N'Crane31', N'The Crane of Toys', N'3', N'RJ', N'Spelling', N'Cranes R US', N'Jacksonville Amusements Games Inc', CAST(0x0000960F00000000 AS DateTime), N'PreOwned Refurbished', N'Crane_T34', N'TT63948U88MJ99', 3200.0000, 150.0000, 0.0000, NULL, N'1 year unlimited', CAST(0x0000977B00000000 AS DateTime), N'C29-1', N'C29-2', N'C29-3', N'', N'C29-External', 2, NULL, NULL, N'NSB12', CAST(0x0000A05100CCFD62 AS DateTime), N'WSpencer', 1, NULL)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], [Machine_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (6, N'crane33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'nsb12', CAST(0x0000A05500F9F66F AS DateTime), N'Owner', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Machine] OFF
/****** Object:  Table [dbo].[Mach_Count]    Script Date: 05/19/2012 13:33:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mach_Count](
	[Mach_Count_ID] [int] IDENTITY(1,1) NOT NULL,
	[Machine_ID] [int] NOT NULL,
	[CoinsIn_Cents] [money] NOT NULL,
	[CoinsIn_Bills] [money] NOT NULL,
	[Adjustment_1] [money] NULL,
	[Adjustment_2_Misc] [money] NULL,
	[Adjustment_Total] [money] NULL,
	[Adjustment_1_Decription] [varchar](100) NULL,
	[Adjustment_2_Misc_Decription] [varchar](100) NULL,
	[Meter_Bills] [money] NOT NULL,
	[Meter_Cents] [money] NOT NULL,
	[Meter_Pieces] [smallint] NOT NULL,
	[Record_Modified_Date] [datetime] NOT NULL CONSTRAINT [DF_Mach_Count_Record_Modified_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [varchar](50) NULL CONSTRAINT [DF_Mach_Count_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
	[Machine_Data_Is_Dummy] [bit] NULL,
	[Flagged_for_Deletion] [bit] NULL,
 CONSTRAINT [PK_NON_Clusterted_Mach_Count_col_Machine_Count_ID] PRIMARY KEY NONCLUSTERED 
(
	[Mach_Count_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE CLUSTERED INDEX [IX_Mach_Count_Clustered_on_Machine_ID_Column] ON [dbo].[Mach_Count] 
(
	[Mach_Count_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Mach_Count] ON
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (1, 1, 50.0000, 25.0000, 0.0000, 0.0000, 0.0000, N'', N'', 1050.0000, 500.0000, 300, CAST(0x0000A04F010FAA46 AS DateTime), N'WSpencer', 1, NULL)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (2, 1, 100.0000, 125.0000, 5.0000, 0.0000, 0.0000, N'', N'', 1050.0000, 500.0000, 300, CAST(0x0000A05100A41663 AS DateTime), N'WSpencer', 1, NULL)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (3, 1, 100.0000, 125.0000, 5.0000, 0.0000, 0.0000, N'', N'', 1050.0000, 500.0000, 300, CAST(0x0000A05100A452FF AS DateTime), N'WSpencer', 1, NULL)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (7, 1, 200.0000, 300.0000, NULL, NULL, NULL, NULL, NULL, 200.0000, 100.0000, 55, CAST(0x0000A05100B0C6A0 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (8, 1, 400.0000, 250.2500, NULL, NULL, NULL, NULL, NULL, 1050.0000, 1050.0000, 15, CAST(0x0000A05100B1D567 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (9, 1, 500.0000, 25.0000, 0.0000, 0.0000, 0.0000, N'', N'', 1050.0000, 500.0000, 300, CAST(0x0000A05100B5CEA5 AS DateTime), N'W', 1, NULL)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (10, 1, 500.0000, 25.0000, 0.0000, 0.0000, 0.0000, N'', N'', 1050.0000, 500.0000, 300, CAST(0x0000A05100B6176E AS DateTime), N'W', 1, NULL)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (11, 1, 500.0000, 25.0000, 0.0000, 0.0000, 0.0000, N'', N'', 1050.0000, 500.0000, 300, CAST(0x0000A05100B6F07B AS DateTime), N'G', 1, NULL)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (12, 1, 500.0000, 25.0000, 0.0000, 0.0000, 0.0000, N'd', N'', 1050.0000, 500.0000, 300, CAST(0x0000A05100B732D2 AS DateTime), N'G', 1, NULL)
SET IDENTITY_INSERT [dbo].[Mach_Count] OFF
/****** Object:  StoredProcedure [dbo].[sp_Insert_Location]    Script Date: 05/19/2012 13:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS
-- Create date: 11-14-2012
create PROCEDURE [dbo].[sp_Insert_Location]
	        @Location_Name varchar(50)
           ,@Location_Code varchar(25)
           ,@Account_Name varchar(50)
           ,@Account_Code varchar(25)
           ,@Address1 varchar(50)
           ,@Address2 varchar(50)
           ,@City varchar(50)
           ,@State_Province_Territory varchar(50)
           ,@Country varchar(50)
           ,@Postal_Code varchar(50)
           ,@Contact1_FirstName varchar(50)
           ,@Contact1_LastName varchar(50)
           ,@Contact1_Role varchar(50)
           ,@Contact1_Email varchar(50)
           ,@Contact1_Cell varchar(50)
           ,@Contact2_FirstName  varchar(50)
           ,@Contact2_LastName varchar(50)
           ,@Contact2_Role varchar(50)
           ,@Contact2_Email varchar(50)
           ,@Contact2_Cell varchar(50)
           ,@Owner_FirstName varchar(50)
           ,@Owner_LastName varchar(50)
           ,@Owner_Cell varchar(50)
           ,@Owner_Email varchar(50)
           ,@Location_Office_Phone varchar(50)
           ,@Location_Bar_Phone varchar(50)
           ,@Email_for_Sales_Report varchar(50)
           ,@Notes1 varchar(250)
           ,@Notes2 varchar(250)
           ,@Comments varchar(250)
           ,@Location_Is_Active bit
           ,@Tax_Percente_State varchar(10)
           ,@Tax_Percente_County varchar(10)
           ,@Tax_Percente_Other varchar(10)
           ,@Split_Percent varchar(10)
         --,[Location_Modify_Date]
           ,@Modifiers_Login varchar(50)
           ,@Data_Is_Dummy varchar(10)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO [Action_Amusements_Winhost].[dbo].[Location]
           ([Location_Name]
           ,[Location_Code]
           ,[Account_Name]
           ,[Account_Code]
           ,[Address1]
           ,[Address2]
           ,[City]
           ,[State_Province_Territory]
           ,[Country]
           ,[Postal_Code]
           ,[Contact1_FirstName]
           ,[Contact1_LastName]
           ,[Contact1_Role]
           ,[Contact1_Email]
           ,[Contact1_Cell]
           ,[Contact2_FirstName]
           ,[Contact2_LastName]
           ,[Contact2_Role]
           ,[Contact2_Email]
           ,[Contact2_Cell]
           ,[Owner_FirstName]
           ,[Owner_LastName]
           ,[Owner_Cell]
           ,[Owner_Email]
           ,[Location_Office_Phone]
           ,[Location_Bar_Phone]
           ,[Email_for_Sales_Report]
           ,[Notes1]
           ,[Notes2]
           ,[Comments]
           ,[Location_Is_Active]
           ,[Tax_Percente_State]
           ,[Tax_Percente_County]
           ,[Tax_Percente_Other]
           ,[Split_Percent]
           --,[Location_Modify_Date]
           ,[Modifiers_Login]
           ,[Data_Is_Dummy])
     VALUES
           (@Location_Name
           ,@Location_Code
           ,@Account_Name
           ,@Account_Code
           ,@Address1
           ,@Address2
           ,@City
           ,@State_Province_Territory
           ,@Country
           ,@Postal_Code
           ,@Contact1_FirstName
           ,@Contact1_LastName
           ,@Contact1_Role
           ,@Contact1_Email
           ,@Contact1_Cell
           ,@Contact2_FirstName
           ,@Contact2_LastName
           ,@Contact2_Role
           ,@Contact2_Email
           ,@Contact2_Cell
           ,@Owner_FirstName
           ,@Owner_LastName
           ,@Owner_Cell
           ,@Owner_Email
           ,@Location_Office_Phone
           ,@Location_Bar_Phone
           ,@Email_for_Sales_Report
           ,@Notes1
           ,@Notes2
           ,@Comments
           ,@Location_Is_Active
           ,@Tax_Percente_State
           ,@Tax_Percente_County
           ,@Tax_Percente_Other
           ,@Split_Percent
           --,[Location_Modify_Date]
           ,@Modifiers_Login
           ,@Data_Is_Dummy)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Location]    Script Date: 05/19/2012 13:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_Truncate_Location] as 
   
   begin
   
   truncate table Location
   
   end
GO
/****** Object:  View [dbo].[vw_Mach_Count]    Script Date: 05/19/2012 13:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_Mach_Count]
AS
SELECT     Mach_Count_ID, Machine_ID, CoinsIn_Cents, CoinsIn_Bills, Adjustment_1, Adjustment_2_Misc, Adjustment_Total, Adjustment_1_Decription, 
                      Adjustment_2_Misc_Decription, Meter_Bills, Meter_Cents, Meter_Pieces, Record_Modified_Date, Modifiers_Login, Machine_Data_Is_Dummy
FROM         dbo.Mach_Count
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[44] 4[17] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Mach_Count"
            Begin Extent = 
               Top = 0
               Left = 25
               Bottom = 210
               Right = 255
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Mach_Count'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Mach_Count'
GO
/****** Object:  View [dbo].[vw_Loc_Count]    Script Date: 05/19/2012 13:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_Loc_Count]
AS
SELECT     Location_Count_ID, Location_ID, CoinsIn, Tax_State, Tax_County, Tax_Other, Tax_Total, Gross, Split_Operator, Split_Location, Advance, Notes, 
                      Location_Count_Date, Counter_FirstName, Counter_LastName, Record_Modified_Date, Modifiers_Login, Data_Is_Dummy
FROM         dbo.Location_Count
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Location_Count"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 197
               Right = 230
            End
            DisplayFlags = 280
            TopColumn = 10
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Loc_Count'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Loc_Count'
GO
/****** Object:  View [dbo].[vw_4_select_all_columns]    Script Date: 05/19/2012 13:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_4_select_all_columns]
AS
SELECT     dbo.Location.*, dbo.Mach_Count.*, dbo.Location_Count.Location_Count_ID, dbo.Location_Count.Gross, dbo.Location_Count.Tax_State, 
                      dbo.Location_Count.Tax_County, dbo.Location_Count.Tax_Other, dbo.Location_Count.Split_Operator, dbo.Location_Count.Split_Location, 
                      dbo.Location_Count.Advance, dbo.Location_Count.Notes, dbo.Location_Count.Machine_Count_Order, dbo.Location_Count.Location_Count_Date, 
                      dbo.Location_Count.Data_Is_Dummy AS Expr1, dbo.Machine.Machine_ID AS Expr2, dbo.Machine.Alias, dbo.Machine.Machine_Name, 
                      dbo.Machine.Machine_Class, dbo.Machine.Machine_Owner, dbo.Machine.Manufacturer, dbo.Machine.Purchased_From, dbo.Machine.Purchase_Date, 
                      dbo.Machine.Purchase_Details, dbo.Machine.Model, dbo.Machine.Serial, dbo.Machine.Cost, dbo.Machine.Shipping_Costs, 
                      dbo.Machine.Additional_Cost, dbo.Machine.Additional_Costs_Details, dbo.Machine.Warranty_Details, dbo.Machine.Warranty_Expiration_Date, 
                      dbo.Machine.Keys_1, dbo.Machine.Keys_2, dbo.Machine.Keys_3, dbo.Machine.Keys_4, dbo.Machine.External_Key, dbo.Machine.Machine_Notes, 
                      dbo.Machine.Machine_Comments, dbo.Machine.Machine_Modify_Date, dbo.Machine.Data_Is_Dummy AS Expr3
FROM         dbo.Machine INNER JOIN
                      dbo.Mach_Count ON dbo.Machine.Machine_ID = dbo.Mach_Count.Machine_ID INNER JOIN
                      dbo.Location INNER JOIN
                      dbo.Location_Count ON dbo.Location.Location_ID = dbo.Location_Count.Location_ID ON dbo.Machine.Location_ID = dbo.Location.Location_ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Location"
            Begin Extent = 
               Top = 6
               Left = 19
               Bottom = 199
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Location_Count"
            Begin Extent = 
               Top = 6
               Left = 280
               Bottom = 199
               Right = 471
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Mach_Count"
            Begin Extent = 
               Top = 6
               Left = 509
               Bottom = 196
               Right = 739
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Machine"
            Begin Extent = 
               Top = 7
               Left = 814
               Bottom = 199
               Right = 1026
            End
            DisplayFlags = 280
            TopColumn = 18
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_4_select_all_columns'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_4_select_all_columns'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_4_select_all_columns'
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Machine]    Script Date: 05/19/2012 13:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_Truncate_Machine] as 
   
   begin
   
   truncate table Machine
   
   end
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Mach_Count]    Script Date: 05/19/2012 13:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--\\\\\\\\\\\\\\\\\\\\\\\\\ truncate whole table\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
   -- =============================================
-- Author:		ARS
-- Create date: 11-14-2012
create PROCEDURE [dbo].[sp_Truncate_Mach_Count] as 
   
   begin
   
   truncate table Mach_Count
   
   end
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Location_Count]    Script Date: 05/19/2012 13:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_Truncate_Location_Count] as 
   
   begin
   
   truncate table Location_Count
   
   end
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Machine]    Script Date: 05/19/2012 13:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS
-- Create date: 11-14-2012
CREATE PROCEDURE [dbo].[sp_Insert_Machine]
			@Alias varchar(50)
           ,@Machine_Name  varchar(50)
           ,@Machine_Class  varchar(20)
           ,@Machine_Owner_FirstName  varchar(20)
           ,@Machine_Owner_LastName  varchar(30)
           ,@Manufacturer  varchar(50)
           ,@Purchased_From  varchar(50)
           ,@Purchase_Date datetime
           ,@Purchase_Details  varchar(200)
           ,@Model  varchar(30)
           ,@Serial  varchar(80)
           ,@Cost money
           ,@Shipping_Costs money
           ,@Additional_Cost money
           ,@Additional_Costs_Details varchar(200)
           ,@Warranty_Details  varchar(200)
           ,@Warranty_Expiration_Date datetime
           ,@Keys_1 varchar(50)
           ,@Keys_2 varchar(50)
           ,@Keys_3 varchar(50)
           ,@Keys_4 varchar(50)
           ,@External_Key varchar(50)
           ,@Machine_Count_Order int
           ,@Machine_Notes varchar(200)
           ,@Machine_Comments varchar(200)
           ,@Location_Code varchar(25)
           --,[Machine_Modify_Date
           --,@Modifiers_Login varchar(50)
           ,@Data_Is_Dummy bit       

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
INSERT INTO [Action_Amusements_Winhost].[dbo].[Machine]
           ([Alias]
           ,[Machine_Name]
           ,[Machine_Class]
           ,[Machine_Owner_FirstName]
           ,[Machine_Owner_LastName]
           ,[Manufacturer]
           ,[Purchased_From]
           ,[Purchase_Date]
           ,[Purchase_Details]
           ,[Model]
           ,[Serial]
           ,[Cost]
           ,[Shipping_Costs]
           ,[Additional_Cost]
           ,[Additional_Costs_Details]
           ,[Warranty_Details]
           ,[Warranty_Expiration_Date]
           ,[Keys_1]
           ,[Keys_2]
           ,[Keys_3]
           ,[Keys_4]
           ,[External_Key]
           ,[Machine_Count_Order]
           ,[Machine_Notes]
           ,[Machine_Comments]
           ,[Location_Code]
           --,[Machine_Modify_Date]
           --,[Modifiers_Login]
           ,[Data_Is_Dummy])
     VALUES
           (@Alias
           ,@Machine_Name
           ,@Machine_Class
           ,@Machine_Owner_FirstName
           ,@Machine_Owner_LastName
           ,@Manufacturer
           ,@Purchased_From
           ,@Purchase_Date
           ,@Purchase_Details
           ,@Model
           ,@Serial
           ,@Cost
           ,@Shipping_Costs
           ,@Additional_Cost
           ,@Additional_Costs_Details
           ,@Warranty_Details
           ,@Warranty_Expiration_Date
           ,@Keys_1
           ,@Keys_2
           ,@Keys_3
           ,@Keys_4
           ,@External_Key
           ,@Machine_Count_Order
           ,@Machine_Notes
           ,@Machine_Comments
           ,@Location_Code
           --,[Machine_Modify_Date]
           --,@Modifiers_Login
           ,@Data_Is_Dummy)



END
GO
/****** Object:  StoredProcedure [dbo].[sp_Machine_UPDATE]    Script Date: 05/19/2012 13:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS, sp_Machine_UPDATE
-- Create date: 11-14-2012
--////// //////////update/////////////////////////////
    
   CREATE procedure [dbo].[sp_Machine_UPDATE]     
     --declare
      @AliasFilter varchar(50)
      ,@Alias varchar(50)
      ,@Machine_Name  varchar(50) = null
      ,@Machine_Class  varchar(20) = null 
      ,@Machine_Owner_FirstName varchar(20) = null 
      ,@Machine_Owner_LastName varchar(30) = null 
      ,@Manufacturer varchar(50) = null 
      ,@Purchased_From varchar(50) = null 
      ,@Purchase_Date datetime = null
      ,@Purchase_Details varchar(200) = null 
      ,@Model varchar(30) = null 
      ,@Serial varchar(80) = null 
      ,@Cost money = null
      ,@Shipping_Costs money = null
      ,@Additional_Cost money = null
      ,@Additional_Costs_Details varchar(200) = null 
      ,@Warranty_Details varchar(200) = null 
      ,@Warranty_Expiration_Date datetime = null 
      ,@Keys_1 varchar(50) = null  
      ,@Keys_2 varchar(50) = null  
      ,@Keys_3 varchar(50) = null  
      ,@Keys_4 varchar(50) = null  
      ,@External_Key varchar(50) = null 
      ,@Machine_Count_Order int = null
      ,@Machine_Notes varchar(200) = null 
      ,@Machine_Comments varchar(200) = null 
      ,@Location_Code varchar(25)
     -- ,@Machine_Modify_Date datetime
     -- ,@Modifiers_Login varchar(50) 
      ,@Data_Is_Dummy bit = null
      ,@Flagged_for_Deletion bit = null
 AS
 BEGIN  
set nocount on     
       UPDATE [Action_Amusements_Winhost].[dbo].[Machine]
   SET Alias = @Alias
      ,Machine_Name = @Machine_Name
      ,Machine_Class = @Machine_Class
      ,[Machine_Owner_FirstName] = @Machine_Owner_FirstName
      ,[Machine_Owner_LastName] = @Machine_Owner_LastName
      ,[Manufacturer] = @Manufacturer
      ,[Purchased_From] = @Purchased_From
      ,[Purchase_Date] = @Purchase_Date
      ,[Purchase_Details] = @Purchase_Details
      ,[Model] = @Model
      ,[Serial] = @Serial
      ,[Cost] = @Cost
      ,[Shipping_Costs] = @Shipping_Costs
      ,[Additional_Cost] = @Additional_Cost
      ,[Additional_Costs_Details] = @Additional_Costs_Details
      ,[Warranty_Details] = @Warranty_Details
      ,[Warranty_Expiration_Date] = @Warranty_Expiration_Date
      ,[Keys_1] = @Keys_1
      ,[Keys_2] = @Keys_2
      ,[Keys_3] = @Keys_3
      ,[Keys_4] = @Keys_4
      ,[External_Key] = @External_Key
      ,[Machine_Count_Order] = @Machine_Count_Order
      ,[Machine_Notes] = @Machine_Notes
      ,[Machine_Comments] = @Machine_Comments
      ,[Location_Code] = @Location_Code
      ,[Machine_Modify_Date]= GETDATE()
      ,[Modifiers_Login] = dbo.fn_GetLoginOfSPID()
      ,[Data_Is_Dummy] = @Data_Is_Dummy
      ,[Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Alias = @AliasFilter
 
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_ALL_DELETE_Flagged_Records]    Script Date: 05/19/2012 13:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS, SP_ALL_DELETE_Flagged_Records
-- Create date: 11-14-2012
--////// //////////DELETE MACHINE DELETE FLAG/////////////////////////
CREATE procedure [dbo].[SP_ALL_DELETE_Flagged_Records] 
as
begin
set nocount on             

DELETE FROM [Action_Amusements_Winhost].[dbo].[Mach_Count]
      WHERE Flagged_for_Deletion = 'true'

DELETE FROM [Action_Amusements_Winhost].[dbo].[Location_Count]
      WHERE Flagged_for_Deletion = 'true'
      
DELETE FROM [Action_Amusements_Winhost].[dbo].[Machine]
      WHERE Flagged_for_Deletion = 'true'

DELETE FROM [Action_Amusements_Winhost].[dbo].[Location]
      WHERE Flagged_for_Deletion = 'true'

DELETE FROM [Action_Amusements_Winhost].[dbo].[Expenses_Monthly]
      WHERE Flagged_for_Deletion = 'true'

end
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_vw_Mach_Count]    Script Date: 05/19/2012 13:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS,,Name
-- Create date: 11-14-2012
-- =============================================
CREATE PROCEDURE [dbo].[sp_Insert_vw_Mach_Count]
	-- Add the parameters for the stored procedure here
	 @Machine_ID int
	,@CoinsIn_Cents money
	,@CoinsIn_Bills money 
	,@Adjustment_1 money
	,@Adjustment_2_Misc money
	,@Adjustment_Total money
	,@Adjustment_1_Decription varchar(100)
	,@Adjustment_2_Misc_Decription varchar(100)
	,@Meter_Bills money
	,@Meter_Cents money
	,@Meter_Pieces smallint
   --,Record_Modified_Date uses getdate as default
   ,@Modifiers_Login varchar(50)
   ,@Machine_Data_Is_Dummy bit 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO [Action_Amusements_Winhost].[dbo].[vw_Mach_Count]
           ([Machine_ID]
           ,[CoinsIn_Cents]
           ,[CoinsIn_Bills]
           ,[Adjustment_1]
           ,[Adjustment_2_Misc]
           ,[Adjustment_Total]
           ,[Adjustment_1_Decription]
           ,[Adjustment_2_Misc_Decription]
           ,[Meter_Bills]
           ,[Meter_Cents]
           ,[Meter_Pieces]
          -- ,Record_Modified_Date uses GetDate() as default
           ,[Modifiers_Login]
           ,[Machine_Data_Is_Dummy])
   
     VALUES
           (@Machine_ID
           ,@CoinsIn_Cents
           ,@CoinsIn_Bills
           ,@Adjustment_1
           ,@Adjustment_2_Misc
           ,@Adjustment_Total
           ,@Adjustment_1_Decription
           ,@Adjustment_2_Misc_Decription
           ,@Meter_Bills
           ,@Meter_Cents
           ,@Meter_Pieces
           --,@Record_Modified_Date uses GetDate() as default value or binding in design in base table
           ,@Modifiers_Login
           ,@Machine_Data_Is_Dummy)  
           
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_vw_Loc_Count]    Script Date: 05/19/2012 13:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS,,Name
-- Create date: 11-14-2012
-- =============================================
create PROCEDURE [dbo].[sp_Insert_vw_Loc_Count]
	-- Add the parameters for the stored procedure here
			@Location_ID int
           ,@CoinsIn money
           ,@Tax_State money
           ,@Tax_County money
           ,@Tax_Other money
           ,@Tax_Total money
           ,@Gross money
           ,@Split_Operator money
           ,@Split_Location money
           ,@Advance money
           ,@Notes varchar(50)
           ,@Location_Count_Date datetime
           ,@Counter_FirstName varchar(50)
           ,@Counter_LastName varchar(50)
           --,[Record_Modified_Date]
           ,@Modifiers_Login varchar(50)
           ,@Data_Is_Dummy bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO [Action_Amusements_Winhost].[dbo].[vw_Loc_Count]
           ([Location_ID]
           ,[CoinsIn]
           ,[Tax_State]
           ,[Tax_County]
           ,[Tax_Other]
           ,[Tax_Total]
           ,[Gross]
           ,[Split_Operator]
           ,[Split_Location]
           ,[Advance]
           ,[Notes]
           ,[Location_Count_Date]
           ,[Counter_FirstName]
           ,[Counter_LastName]
         --,[Record_Modified_Date]
           ,[Modifiers_Login]
           ,[Data_Is_Dummy])
   
     VALUES
           (@Location_ID
           ,@CoinsIn
           ,@Tax_State
           ,@Tax_County
           ,@Tax_Other
           ,@Tax_Total
           ,@Gross
           ,@Split_Operator
           ,@Split_Location
           ,@Advance
           ,@Notes
           ,@Location_Count_Date
           ,@Counter_FirstName
           ,@Counter_LastName
        -- ,[Record_Modified_Date]
           ,@Modifiers_Login
           ,@Data_Is_Dummy)  
           
END
GO
/****** Object:  ForeignKey [FK_Location_Location_Count]    Script Date: 05/19/2012 13:33:53 ******/
ALTER TABLE [dbo].[Location_Count]  WITH CHECK ADD  CONSTRAINT [FK_Location_Location_Count] FOREIGN KEY([Location_ID])
REFERENCES [dbo].[Location] ([Location_ID])
GO
ALTER TABLE [dbo].[Location_Count] CHECK CONSTRAINT [FK_Location_Location_Count]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'One to Many Location_Id \ Location_id ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Location_Count', @level2type=N'CONSTRAINT',@level2name=N'FK_Location_Location_Count'
GO
/****** Object:  ForeignKey [FK_Machine_one_to_Many_Location]    Script Date: 05/19/2012 13:33:54 ******/
ALTER TABLE [dbo].[Machine]  WITH CHECK ADD  CONSTRAINT [FK_Machine_one_to_Many_Location] FOREIGN KEY([Location_Code])
REFERENCES [dbo].[Location] ([Location_Code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Machine] CHECK CONSTRAINT [FK_Machine_one_to_Many_Location]
GO
