USE [Action_Amusements_Winhost]
GO
/****** Object:  ForeignKey [FK_Loc_Count_Location_cols_Location_ID_Cascading_Update_Delete]    Script Date: 05/22/2012 06:28:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Loc_Count_Location_cols_Location_ID_Cascading_Update_Delete]') AND parent_object_id = OBJECT_ID(N'[dbo].[Loc_Count]'))
ALTER TABLE [dbo].[Loc_Count] DROP CONSTRAINT [FK_Loc_Count_Location_cols_Location_ID_Cascading_Update_Delete]
GO
/****** Object:  ForeignKey [FK_Mach_Count_Machine_col_Machine_ID]    Script Date: 05/22/2012 06:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Mach_Count_Machine_col_Machine_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
ALTER TABLE [dbo].[Mach_Count] DROP CONSTRAINT [FK_Mach_Count_Machine_col_Machine_ID]
GO
/****** Object:  ForeignKey [FK_Machine_one_to_Many_Location_col_Loc_Code_Cascading_Update_Delete]    Script Date: 05/22/2012 06:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Machine_one_to_Many_Location_col_Loc_Code_Cascading_Update_Delete]') AND parent_object_id = OBJECT_ID(N'[dbo].[Machine]'))
ALTER TABLE [dbo].[Machine] DROP CONSTRAINT [FK_Machine_one_to_Many_Location_col_Loc_Code_Cascading_Update_Delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_vw_Mach_Count]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_vw_Mach_Count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Insert_vw_Mach_Count]
GO
/****** Object:  StoredProcedure [dbo].[sp_ALL_DELETE_Flagged_Records]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ALL_DELETE_Flagged_Records]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_ALL_DELETE_Flagged_Records]
GO
/****** Object:  StoredProcedure [dbo].[sp_Drop_and_ReCreate_4_main_and_Dummy_Data]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Drop_and_ReCreate_4_main_and_Dummy_Data]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Drop_and_ReCreate_4_main_and_Dummy_Data]
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Mach_Count]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Truncate_Mach_Count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Truncate_Mach_Count]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Delete_Flag_Loc_Count]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Delete_Flag_Loc_Count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_UPDATE_Delete_Flag_Loc_Count]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Delete_Flag_Mach_Count]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Delete_Flag_Mach_Count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_UPDATE_Delete_Flag_Mach_Count]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Mach_Count]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Mach_Count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_UPDATE_Mach_Count]
GO
/****** Object:  View [dbo].[vw_4_select_all_columns]    Script Date: 05/22/2012 06:28:08 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_4_select_all_columns]'))
DROP VIEW [dbo].[vw_4_select_all_columns]
GO
/****** Object:  View [dbo].[vw_Mach_Count]    Script Date: 05/22/2012 06:28:08 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_Mach_Count]'))
DROP VIEW [dbo].[vw_Mach_Count]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Machine]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Machine]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_UPDATE_Machine]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Delete_Flag_Machine]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Delete_Flag_Machine]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_UPDATE_Delete_Flag_Machine]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Loc_Count]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Loc_Count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_UPDATE_Loc_Count]
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Machine]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Truncate_Machine]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Truncate_Machine]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Machine]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_Machine]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Insert_Machine]
GO
/****** Object:  Table [dbo].[Mach_Count]    Script Date: 05/22/2012 06:28:04 ******/
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
/****** Object:  Table [dbo].[Machine]    Script Date: 05/22/2012 06:28:04 ******/
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
/****** Object:  Table [dbo].[Loc_Count]    Script Date: 05/22/2012 06:28:03 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Insert_Location]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_Location]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Insert_Location]
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Location]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Truncate_Location]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Truncate_Location]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Delete_Flag_Location]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Delete_Flag_Location]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_UPDATE_Delete_Flag_Location]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Delete_Flag_Expenses_Monthly]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Delete_Flag_Expenses_Monthly]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_UPDATE_Delete_Flag_Expenses_Monthly]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Location]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Location]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_UPDATE_Location]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Expenses_Monthly]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Expenses_Monthly]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_UPDATE_Expenses_Monthly]
GO
/****** Object:  StoredProcedure [dbo].[sp_Test_UPDATE]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Test_UPDATE]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Test_UPDATE]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_vw_Loc_Count]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_vw_Loc_Count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Insert_vw_Loc_Count]
GO
/****** Object:  Table [dbo].[Expenses_Monthly]    Script Date: 05/22/2012 06:28:03 ******/
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
/****** Object:  Table [dbo].[Location]    Script Date: 05/22/2012 06:28:04 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Location_Location_Modify_Date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Location] DROP CONSTRAINT [DF_Location_Location_Modify_Date]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Location_Modifiers_Login]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Location] DROP CONSTRAINT [DF_Location_Modifiers_Login]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Location]') AND type in (N'U'))
DROP TABLE [dbo].[Location]
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Location_Count]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Truncate_Location_Count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Truncate_Location_Count]
GO
/****** Object:  View [dbo].[vw_Loc_Count]    Script Date: 05/22/2012 06:28:08 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_Loc_Count]'))
DROP VIEW [dbo].[vw_Loc_Count]
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Location_History]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Truncate_Location_History]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Truncate_Location_History]
GO
/****** Object:  StoredProcedure [dbo].[sp_Lookup_Mach_Class]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Lookup_Mach_Class]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Lookup_Mach_Class]
GO
/****** Object:  StoredProcedure [dbo].[sp_Lookup_Transaction_Type]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Lookup_Transaction_Type]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Lookup_Transaction_Type]
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Machine_History]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Truncate_Machine_History]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Truncate_Machine_History]
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Monthly_Expenses]    Script Date: 05/22/2012 06:27:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Truncate_Monthly_Expenses]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Truncate_Monthly_Expenses]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetLoginOfSPID]    Script Date: 05/22/2012 06:28:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_GetLoginOfSPID]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fn_GetLoginOfSPID]
GO
/****** Object:  Table [dbo].[test]    Script Date: 05/22/2012 06:28:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[test]') AND type in (N'U'))
DROP TABLE [dbo].[test]
GO
USE [master]
GO
/****** Object:  Login [ACER-1240D29348\Owner]    Script Date: 05/22/2012 06:28:08 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'ACER-1240D29348\Owner')
DROP LOGIN [ACER-1240D29348\Owner]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 05/22/2012 06:28:08 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'BUILTIN\Users')
DROP LOGIN [BUILTIN\Users]
GO
/****** Object:  Login [ACER-1240D29348\Owner]    Script Date: 05/22/2012 06:28:08 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'ACER-1240D29348\Owner')
CREATE LOGIN [ACER-1240D29348\Owner] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 05/22/2012 06:28:08 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'BUILTIN\Users')
CREATE LOGIN [BUILTIN\Users] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
USE [Action_Amusements_Winhost]
GO
/****** Object:  Table [dbo].[test]    Script Date: 05/22/2012 06:28:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[test]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[test](
	[id] [int] NULL,
	[coinsIN] [money] NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[test] ([id], [coinsIN]) VALUES (1, 300.0000)
/****** Object:  UserDefinedFunction [dbo].[fn_GetLoginOfSPID]    Script Date: 05/22/2012 06:28:06 ******/
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
RETURNS varchar(50)
AS
BEGIN
	-- Declare the return variable here
	DECLARE  @Current_Login varchar(50)

	-- Add the T-SQL statements to compute the return value here
	declare @SPID table (ID int, SYS_USER varchar(50), USR varchar(50))
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
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Monthly_Expenses]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Truncate_Monthly_Expenses]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'   --\\\\\\\\\\\\\\\\\\\\\\\\\ truncate whole table\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
   -- =============================================
-- Author:		ARS
-- Create date: 11-14-2012
create PROCEDURE [dbo].[sp_Truncate_Monthly_Expenses] as 
   
   begin
   
   truncate table Monthly_Expenses
   
   end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Machine_History]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Truncate_Machine_History]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'   --\\\\\\\\\\\\\\\\\\\\\\\\\ truncate whole table\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
   -- =============================================
-- Author:		ARS
-- Create date: 11-14-2012
create PROCEDURE [dbo].[sp_Truncate_Machine_History] as 
   
   begin
   
   truncate table Machine_History
   
   end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Lookup_Transaction_Type]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Lookup_Transaction_Type]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'   --\\\\\\\\\\\\\\\\\\\\\\\\\ truncate whole table\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
   -- =============================================
-- Author:		ARS
-- Create date: 11-14-2012
create PROCEDURE [dbo].[sp_Lookup_Transaction_Type] as 
   
   begin
   
   truncate table Lookup_Transaction_Type
   
   end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Lookup_Mach_Class]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Lookup_Mach_Class]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'   --\\\\\\\\\\\\\\\\\\\\\\\\\ truncate whole table\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
   -- =============================================
-- Author:		ARS
-- Create date: 11-14-2012
create PROCEDURE [dbo].[sp_Lookup_Mach_Class] as 
   
   begin
   
   truncate table Lookup_Mach_Class
   
   end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Location_History]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Truncate_Location_History]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'   --\\\\\\\\\\\\\\\\\\\\\\\\\ truncate whole table\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
   -- =============================================
-- Author:		ARS
-- Create date: 11-14-2012
CREATE PROCEDURE [dbo].[sp_Truncate_Location_History] as 
   
   begin
   
   truncate table Location_History
   
   end
' 
END
GO
/****** Object:  View [dbo].[vw_Loc_Count]    Script Date: 05/22/2012 06:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_Loc_Count]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vw_Loc_Count]
AS
SELECT     Location_Count_ID, Location_ID, CoinsIn, Tax_State, Tax_County, Tax_Other, Tax_Total, Gross, Split_Operator, Split_Location, Advance, Notes, 
                      Location_Count_Date, Counter_FirstName, Counter_LastName, Record_Modified_Date, Modifiers_Login, Data_Is_Dummy
FROM         dbo.Location_Count
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vw_Loc_Count', NULL,NULL))
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
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vw_Loc_Count', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Loc_Count'
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Location_Count]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Truncate_Location_Count]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create PROCEDURE [dbo].[sp_Truncate_Location_Count] as 
   
   begin
   
   truncate table Location_Count
   
   end
' 
END
GO
/****** Object:  Table [dbo].[Location]    Script Date: 05/22/2012 06:28:04 ******/
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
	[Location_Name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Location_Code] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Account_Name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Account_Code] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[City] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[State_Province_Territory] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Country] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Postal_Code] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact1_FirstName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact1_LastName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact1_Role] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact1_Email] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact1_Cell] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact2_FirstName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact2_LastName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact2_Role] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact2_Email] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact2_Cell] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_FirstName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_LastName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_Cell] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_Email] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Location_Office_Phone] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Location_Bar_Phone] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email_for_Sales_Report] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Notes1] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Notes2] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Comments] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Location_Is_Active] [bit] NOT NULL,
	[Tax_Percente_State] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tax_Percente_County] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tax_Percente_Other] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Split_Percent] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Location_Modify_Date] [datetime] NOT NULL CONSTRAINT [DF_Location_Location_Modify_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_Location_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
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
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Location]') AND name = N'UC_Non_Clustered_Location_col_Location_ID')
CREATE UNIQUE NONCLUSTERED INDEX [UC_Non_Clustered_Location_col_Location_ID] ON [dbo].[Location] 
(
	[Location_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Location] ON
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code], [Account_Name], [Account_Code], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [Location_Is_Active], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Location_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (1, N'Fun Arcade Daytona 1', N'FunArc-Daytona-1', N'Marvel Arcades', N'MarvelArc', N'1212 Clyde and Morris Blvd.', NULL, N'Daytona Beach', N'FL', N'USA', N'32114', N'Angel', N'DosSanches', N'Manager', N'ADosSanchez215@gmail.com', N'386775230', N'Jared', N'Plounder', N'Assistant Manager', NULL, NULL, N'Henry', N'McLorrey', N'3869802316', N'HMcLorrey@MarvelArcades.com', N'3867234040', NULL, N'LPollock@MarvelArcades.com', N'Email sales reports to Marvel accountant Liz Pollack', NULL, N'Will be moving to new address in October 2012', 1, N'.045', N'.02', NULL, N'0.5', CAST(0x0000A057013546C4 AS DateTime), N'Owner', 1, 0)
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code], [Account_Name], [Account_Code], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [Location_Is_Active], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Location_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (10, N'Fun Arcade Daytona 2', N'FunArc-Daytona-2', N'Marval Arcades', N'MarvelArc', N'310 S. Atlantic Ave.', NULL, N'New Smyrna Beach', N'FL', N'USA', N'32169', N'Raymond', N'Bellot', N'Manager', N'RBellot2005@Gmail.com', N'3862618877', N'Jane', N'Appleton', N'Bartender', NULL, NULL, N'Henry', N'McLorrey', N'9045556815', N'HMCLorrey@MarvelArcades.com', N'3869011291', N'3861094389', N'LPollack@MArvelArcades.com', NULL, NULL, NULL, 1, N'.045', N'.02', NULL, N'.05', CAST(0x0000A0580175B533 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code], [Account_Name], [Account_Code], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [Location_Is_Active], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Location_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (5, N'Not Assigned', N'N/A', N'Not Assigned', N'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'0', N'0', N'0', N'0', CAST(0x0000A05700FB1B70 AS DateTime), N'RKlouss', 1, 0)
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code], [Account_Name], [Account_Code], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [Location_Is_Active], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Location_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (11, N'ShootOuts Sports Bar', N'Shoot-Flagler', N'ShootOuts Sports Ba', N'Shoot-Flagler', N'927 East Ponce De Oro Ave.', NULL, N'Flagler', N'FL', N'USA', N'32155', N'Sarah', N'Williams', N'Owner/Manager', N'SarahWiliams35@gmail.com', N'3862228989', NULL, NULL, NULL, NULL, NULL, N'Sarah', N'Williams', N'3862228989', N'SarahWiliams35@gmail.com', N'386790939', N'3867900940', N'SarahWiliams35@gmail.com', NULL, NULL, NULL, 1, N'.045', N'.025', N'.001', N'.6', CAST(0x0000A0580180C229 AS DateTime), N'Owner', 1, NULL)
SET IDENTITY_INSERT [dbo].[Location] OFF
/****** Object:  Table [dbo].[Expenses_Monthly]    Script Date: 05/22/2012 06:28:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_Monthly]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Expenses_Monthly](
	[Expenses_Monthly_ID] [int] IDENTITY(1,1) NOT NULL,
	[Sellor] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[invoice] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Year_Month] [date] NOT NULL,
	[Supply] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Cost] [money] NOT NULL,
	[Tax] [money] NOT NULL,
	[Shipping_Cost] [money] NOT NULL,
	[Pay_Method] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Asset] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Details] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Notes] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Comments] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Record_Modify_Date] [datetime] NOT NULL CONSTRAINT [DF_Expense_Monthy_Record_Modified_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_Expenses_Monthly_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
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
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Expenses_Monthly] ON
INSERT [dbo].[Expenses_Monthly] ([Expenses_Monthly_ID], [Sellor], [invoice], [Year_Month], [Supply], [Cost], [Tax], [Shipping_Cost], [Pay_Method], [Asset], [Details], [Notes], [Comments], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (4, N'STAPLE STORE', NULL, CAST(0x26350B00 AS Date), N'Batteries', 120.0000, 3.0000, 0.0000, N'Card Visa', NULL, NULL, NULL, NULL, CAST(0x0000A058006F7989 AS DateTime), N'Owner', NULL, 0)
SET IDENTITY_INSERT [dbo].[Expenses_Monthly] OFF
/****** Object:  StoredProcedure [dbo].[sp_Insert_vw_Loc_Count]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_vw_Loc_Count]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
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
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Test_UPDATE]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Test_UPDATE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[sp_Test_UPDATE]

 @ID int ,
 @CoinsIn money 

as
begin

update test
set CoinsIn = @CoinsIn
where ID = @ID

end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Expenses_Monthly]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Expenses_Monthly]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ARS, sp_UPDATE_Expenses_Monthly
-- Create date: 11-14-2012
--////// //////////update/////////////////////////////
create procedure [dbo].[sp_UPDATE_Expenses_Monthly]
@Expenses_Monthly_ID_Filter int 
--filter(s) above

      ,@Sellor varchar(50)
      ,@invoice varchar(50)= null
      ,@Year_Month date
      ,@Supply varchar(50)
      ,@Cost money
      ,@Tax money
      ,@Shipping_Cost money
      ,@Pay_Method varchar(20)
      ,@Asset varchar(20)= null
      ,@Details varchar(200)= null
      ,@Notes varchar(200)= null
      ,@Comments  varchar(200)= null
      --,[Record_Modify_Date] 
      --,[Modifiers_Login]
      ,@Data_Is_Dummy bit = null
      ,@Flagged_for_Deletion bit = null


AS
BEGIN  
set nocount on 
UPDATE [Action_Amusements_Winhost].[dbo].[Expenses_Monthly]
   SET [Sellor] = @Sellor 
      ,[invoice] = @invoice 
      ,[Year_Month] = @Year_Month
      ,[Supply] = @Supply 
      ,[Cost] = @Cost 
      ,[Tax] = @Tax 
      ,[Shipping_Cost] = @Shipping_Cost 
      ,[Pay_Method] = @Pay_Method 
      ,[Asset] = @Asset 
      ,[Details] = @Details 
      ,[Notes] = @Notes 
      ,[Comments] = @Comments 
      ,[Record_Modify_Date] = GETDATE()
      ,[Modifiers_Login] = dbo.fn_GetLoginOfSPID()
      ,[Data_Is_Dummy] = @Data_Is_Dummy
      ,[Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Expenses_Monthly_ID = @Expenses_Monthly_ID_Filter
 end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Location]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Location]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ARS, sp_Location_UPDATE
-- Create date: 11-14-2012
--////// //////////update/////////////////////////////
create procedure [dbo].[sp_UPDATE_Location]
	   @Location_Code_Filter varchar(50)
	  ,@Location_Name varchar(50)= null
      ,@Location_Code varchar(25)
      ,@Account_Name varchar(50)= null
      ,@Account_Code varchar(25)= null
      ,@Address1 varchar(50)= null
      ,@Address2 varchar(50)= null
      ,@City varchar(50)= null
      ,@State_Province_Territory varchar(50)= null
      ,@Country varchar(50)= null
      ,@Postal_Code varchar(50)= null
      ,@Contact1_FirstName varchar(50)= null
      ,@Contact1_LastName varchar(50)= null
      ,@Contact1_Role varchar(50)= null
      ,@Contact1_Email varchar(50)= null
      ,@Contact1_Cell varchar(50)= null
      ,@Contact2_FirstName varchar(50)= null
      ,@Contact2_LastName varchar(50)= null
      ,@Contact2_Role varchar(50)= null
      ,@Contact2_Email varchar(50)= null
      ,@Contact2_Cell varchar(50)= null
      ,@Owner_FirstName varchar(50)= null
      ,@Owner_LastName varchar(50)= null
      ,@Owner_Cell varchar(50)= null
      ,@Owner_Email varchar(50)= null
      ,@Location_Office_Phone varchar(50)= null
      ,@Location_Bar_Phone varchar(50)= null
      ,@Email_for_Sales_Report varchar(50)= null
      ,@Notes1 varchar(250)= null
      ,@Notes2 varchar(250)= null
      ,@Comments varchar(250)= null
      ,@Location_Is_Active bit= null
      ,@Tax_Percente_State varchar(10)= null
      ,@Tax_Percente_County varchar(10)= null
      ,@Tax_Percente_Other varchar(10)= null
      ,@Split_Percent varchar(10)= null
      --@Location_Modify_Date datetime>
      --@Modifiers_Login varchar(50)>
      ,@Data_Is_Dummy bit = null
      ,@Flagged_for_Deletion bit= null
 AS
 BEGIN  
set nocount on  
UPDATE [Action_Amusements_Winhost].[dbo].[Location]
   SET [Location_Name] = @Location_Name
      ,[Location_Code] = @Location_Code
      ,[Account_Name] = @Account_Name
      ,[Account_Code] = @Account_Code
      ,[Address1] = @Address1
      ,[Address2] = @Address2
      ,[City] = @City
      ,[State_Province_Territory] = @State_Province_Territory
      ,[Country] = @Country
      ,[Postal_Code] = @Postal_Code
      ,[Contact1_FirstName] = @Contact1_FirstName
      ,[Contact1_LastName] = @Contact1_LastName
      ,[Contact1_Role] = @Contact1_Role
      ,[Contact1_Email] = @Contact1_Email
      ,[Contact1_Cell] = @Contact1_Cell
      ,[Contact2_FirstName] = @Contact2_FirstName
      ,[Contact2_LastName] = @Contact2_LastName
      ,[Contact2_Role] = @Contact2_Role
      ,[Contact2_Email] = @Contact2_Email
      ,[Contact2_Cell] = @Contact2_Cell
      ,[Owner_FirstName] = @Owner_FirstName
      ,[Owner_LastName] = @Owner_LastName
      ,[Owner_Cell] = @Owner_Cell
      ,[Owner_Email] = @Owner_Email
      ,[Location_Office_Phone] = @Location_Office_Phone
      ,[Location_Bar_Phone] = @Location_Bar_Phone
      ,[Email_for_Sales_Report] = @Email_for_Sales_Report
      ,[Notes1] = Notes1
      ,[Notes2] = Notes2
      ,[Comments] = @Comments
      ,[Location_Is_Active] = @Location_Is_Active
      ,[Tax_Percente_State] = @Tax_Percente_State
      ,[Tax_Percente_County] = @Tax_Percente_County
      ,[Tax_Percente_Other] = @Tax_Percente_Other
      ,[Split_Percent] = @Split_Percent
      ,[Location_Modify_Date] = GETDATE()
      ,[Modifiers_Login] = dbo.fn_GetLoginOfSPID()
      ,[Data_Is_Dummy] = @Data_Is_Dummy
      ,[Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Location_Code = @Location_Code_Filter
 END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Delete_Flag_Expenses_Monthly]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Delete_Flag_Expenses_Monthly]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ARS, sp_UPDATE_Delete_Flag_Expenses_Monthly
-- Create date: 11-14-2012
--////// //////////update/////////////////////////////
CREATE procedure [dbo].[sp_UPDATE_Delete_Flag_Expenses_Monthly]
@Expenses_Monthly_ID_Filter int 
--filter(s) above
      ,@Flagged_for_Deletion bit 
AS
BEGIN  
set nocount on 
UPDATE [Action_Amusements_Winhost].[dbo].[Expenses_Monthly]
   SET [Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Expenses_Monthly_ID = @Expenses_Monthly_ID_Filter
 end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Delete_Flag_Location]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Delete_Flag_Location]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N' create procedure [dbo].[sp_UPDATE_Delete_Flag_Location] 
 @Location_ID_Filter int
--filter(s) above	
,@Flagged_for_Deletion bit

AS
BEGIN  
set nocount on 

UPDATE [Action_Amusements_Winhost].[dbo].[Location]
   SET [Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Location_ID = @Location_ID_Filter 

end 
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Location]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Truncate_Location]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create PROCEDURE [dbo].[sp_Truncate_Location] as 
   
   begin
   
   truncate table Location
   
   end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Location]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_Location]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
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
' 
END
GO
/****** Object:  Table [dbo].[Loc_Count]    Script Date: 05/22/2012 06:28:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
	[Notes] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Counter_FirstName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Counter_LastName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Record_Modified_Date] [datetime] NOT NULL CONSTRAINT [DF_Loc_Count_Record_Modified_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_Loc_Count_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
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
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Loc_Count]') AND name = N'UK_Non_Clusted_Loc_Count_col_Loc_Count_ID')
CREATE UNIQUE NONCLUSTERED INDEX [UK_Non_Clusted_Loc_Count_col_Loc_Count_ID] ON [dbo].[Loc_Count] 
(
	[Loc_Count_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Loc_Count] ON
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (1, 1, CAST(0xB4350B00 AS Date), 570.7500, 25.6800, NULL, NULL, 25.6800, 545.0700, 272.5400, 272.5400, NULL, NULL, N'Randy', N'Brady', CAST(0x0000A0590053282B AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (2, 1, CAST(0x99350B00 AS Date), 1141.5000, 51.3700, NULL, NULL, 51.3700, 1090.1300, 545.7000, 545.7000, NULL, NULL, N'Walter ', N'Spencer', CAST(0x0000A05900546E1E AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (5, 10, CAST(0xB4350B00 AS Date), 458.0000, 20.6100, NULL, NULL, 20.6100, 473.3900, 236.6700, 235.6700, NULL, NULL, N'Walter', N'Spencer', CAST(0x0000A0590057388E AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (6, 10, CAST(0x99350B00 AS Date), 916.0000, 41.2200, NULL, NULL, 41.2000, 874.7800, 437.3900, 437.3900, NULL, NULL, N'Walter', N'Spencer', CAST(0x0000A0590058C0BB AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (7, 11, CAST(0xB4350B00 AS Date), 414.2500, 18.6500, NULL, NULL, 18.6500, 395.6000, 197.8000, 197.8000, NULL, NULL, N'Randy', N'Brady', CAST(0x0000A059005BBF3B AS DateTime), N'Owner', 1, NULL)
SET IDENTITY_INSERT [dbo].[Loc_Count] OFF
/****** Object:  Table [dbo].[Machine]    Script Date: 05/22/2012 06:28:04 ******/
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
	[Alias] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Machine_Name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Machine_Class] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Machine_Owner_FirstName] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Machine_Owner_LastName] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Manufacturer] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Purchased_From] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Purchase_Date] [datetime] NULL,
	[Purchase_Details] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Model] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Serial] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Cost] [money] NULL,
	[Shipping_Costs] [money] NULL,
	[Additional_Cost] [money] NULL,
	[Additional_Costs_Details] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Warranty_Details] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Warranty_Expiration_Date] [datetime] NULL,
	[Keys_1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Keys_2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Keys_3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Keys_4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[External_Key] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Machine_Count_Order] [int] NULL,
	[Machine_Notes] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Machine_Comments] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Location_Code] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Machine_Modify_Date] [datetime] NOT NULL CONSTRAINT [DF_Machine_Machine_Modify_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_Machine_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
	[Data_Is_Dummy] [bit] NULL,
	[Flagged_for_Deletion] [bit] NULL,
 CONSTRAINT [PK_Machine] PRIMARY KEY CLUSTERED 
(
	[Alias] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
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
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], [Machine_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (25, N'Boxer354', N'Boxing Champ', N'1', N'Walter', N'Spencer', N' Brown & Walton', N'Orlando Machines', CAST(0x0000990600000000 AS DateTime), NULL, N'BoxingChamp840', N'7853DA33S659', 3834.0200, 175.3000, NULL, NULL, NULL, CAST(0x00009A7400000000 AS DateTime), N'Box354-1', N'Boxer354-2', NULL, NULL, N'Boxer-354-5', 1, NULL, NULL, N'Shoot-Flagler', CAST(0x0000A0590000DBCC AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], [Machine_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (22, N'Crane111', N'Crazy Crane', N'3', N'Walter', N'Spencer', N'Brown & Walton', N'Orlando Machines', CAST(0x0000905700000000 AS DateTime), NULL, N'CrazyCrane400M', N'8965HTD2S', 3024.8700, 138.4000, NULL, NULL, NULL, CAST(0x000091C400000000 AS DateTime), N'Crane101-1', N'Crane101-2', N'Crane101-3', N'Crane101-4', N'Crane101-5', 3, NULL, NULL, N'FunArc-Daytona-2', CAST(0x0000A058018964B8 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], [Machine_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (11, N'Crane88', N'Treasure Crane', N'3', N'Walter', N'Spencer', N'Brokworths Machines , INC', N'Tampa Arcade Warehouse', CAST(0x00009C2000000000 AS DateTime), NULL, N'TreasueCrane-M-923', N'OL969354G34SD2', 2254.8800, 99.0000, NULL, NULL, NULL, NULL, N'Crane88-1', N'Crane88-2', NULL, NULL, N'Crane88-5', 3, NULL, NULL, N'FunArc-Daytona-1', CAST(0x0000A0C300000000 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], [Machine_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (6, N'GoldenTee28', N'Golden Tee II', N'1', N'Walter', N'SPencer', N'Erickson', N'Orlando Machines', CAST(0x0000957C00000000 AS DateTime), NULL, N'GoledenTee450TS', N'786453FR1', 3295.0000, 102.7100, NULL, NULL, NULL, NULL, N'G28-1', N'G28-2', N'G28-3', N'G28-4', N'G28-external', 1, NULL, NULL, N'FunArc-Daytona-1', CAST(0x0000A058016A1D06 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], [Machine_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (2, N'Golf471', N'Golden Tee II', N'1', N'Jeff', N' Warren', N'EricksONGameCocks', N'Orlando Machines', CAST(0x0000973C00000000 AS DateTime), NULL, N'GoldenTee450TS', N'NULLT6765RR4DSA2', 2750.0000, 150.0000, NULL, NULL, NULL, CAST(0x00009A1600000000 AS DateTime), N'G71_1', N'G71_2', N'G71_3', N'G71_4', N'G71_5', 9, NULL, NULL, N'N/A', CAST(0x0000A0560114A5A9 AS DateTime), N'Owner', 1, 1)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], [Machine_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (21, N'JukeBox101', N'Digital JukeBox', N'2', N'Walter ', N'Spencer', N'Music Magnum', N'Orlando Machines', CAST(0x00009AB300000000 AS DateTime), NULL, N'JukeBoxDigitalJ4500', N'4558M8N922', 6398.4300, NULL, NULL, NULL, NULL, NULL, N'J101-1', N'J101-2', NULL, NULL, N'J101-5', 2, NULL, NULL, N'FunArc-Daytona-2', CAST(0x0000A0580187F328 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], [Machine_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (8, N'JukeBox92', N' JukeBox Rocker', N'2', N'Walter', N'Spencer', N'Music Magnum', N'Jacksoneville Amusement Outlet', CAST(0x00009A9300000000 AS DateTime), NULL, N'JukeBox1204s', N'0987HYGT1774', 5361.9200, 191.7800, NULL, NULL, NULL, NULL, N'J92-1', N'J92-2', NULL, NULL, N'J93', 2, NULL, NULL, N'FunArc-Daytona-1', CAST(0x0000A058016BEC51 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], [Machine_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (20, N'Taxi159', N'Taxi Driver', N'1', N'Jeff', N'Warren', N'Erickson', N'Orlando Machines', CAST(0x0000948300000000 AS DateTime), NULL, N'TaxiDriverSuperSeries90', N'9834FF5G1', 5324.9800, 126.9000, NULL, NULL, NULL, CAST(0x000095F100000000 AS DateTime), N'Taxi159-1', N'Taxi-159-2', N'Taxi-159-3', NULL, N'Taxi159-5', 1, NULL, NULL, N'FunArc-Daytona-2', CAST(0x0000A0580186E83A AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], [Machine_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (23, N'Vendor108', N'Vending Machine', N'4', N'Walter', N'Spencer', N'Snyder, Inc', N'Orlando Machines', CAST(0x0000911500000000 AS DateTime), NULL, N'GeneralVending98X', N'09LD341Q2', 2150.3100, 55.0000, NULL, NULL, NULL, CAST(0x0000928200000000 AS DateTime), N'Vend108-1', N'Vend108-2', NULL, NULL, N'Vend108-5', 4, NULL, NULL, N'FunArc-Daytona-2', CAST(0x0000A058018A5B37 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Machine] ([Machine_ID], [Alias], [Machine_Name], [Machine_Class], [Machine_Owner_FirstName], [Machine_Owner_LastName], [Manufacturer], [Purchased_From], [Purchase_Date], [Purchase_Details], [Model], [Serial], [Cost], [Shipping_Costs], [Additional_Cost], [Additional_Costs_Details], [Warranty_Details], [Warranty_Expiration_Date], [Keys_1], [Keys_2], [Keys_3], [Keys_4], [External_Key], [Machine_Count_Order], [Machine_Notes], [Machine_Comments], [Location_Code], [Machine_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (19, N'Vendor78', N'Vending Machine', N'4', N'Walter', N'Spencer', N'Snyder, Inc', N'Orlando Machines', CAST(0x00008ECC00000000 AS DateTime), NULL, N'GeneralVender98X', N'E55RT2972W', 2008.2200, NULL, NULL, NULL, NULL, NULL, N'Vend78-1', N'Vend78-2', NULL, NULL, N'Vend78-5', 4, NULL, NULL, N'FunArc-Daytona-1', CAST(0x0000A058018528D8 AS DateTime), N'Owner', 1, NULL)
SET IDENTITY_INSERT [dbo].[Machine] OFF
/****** Object:  Table [dbo].[Mach_Count]    Script Date: 05/22/2012 06:28:04 ******/
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
	[Loc_Count_ID] [int] NULL,
	[CoinsIn_Cents] [money] NOT NULL,
	[CoinsIn_Bills] [money] NOT NULL,
	[Adjustment_1] [money] NULL,
	[Adjustment_2_Misc] [money] NULL,
	[Adjustment_Total] [money] NULL,
	[CoinsIn_Total] [money] NOT NULL,
	[Adjustment_1_Decription] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Adjustment_2_Misc_Decription] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Meter_Bills] [money] NULL,
	[Meter_Cents] [money] NULL,
	[Meter_Pieces] [smallint] NULL,
	[Record_Modified_Date] [datetime] NOT NULL CONSTRAINT [DF_Mach_Count_Record_Modified_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_Mach_Count_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
	[Machine_Data_Is_Dummy] [bit] NULL,
	[Flagged_for_Deletion] [bit] NULL,
 CONSTRAINT [PK_NON_Clusterted_Mach_Count_col_Machine_Count_ID] PRIMARY KEY NONCLUSTERED 
(
	[Mach_Count_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
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
/****** Object:  StoredProcedure [dbo].[sp_Insert_Machine]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_Machine]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
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
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Machine]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Truncate_Machine]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create PROCEDURE [dbo].[sp_Truncate_Machine] as 
   
   begin
   
   truncate table Machine
   
   end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Loc_Count]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Loc_Count]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ARS, sp_Loc_Count_UPDATE
-- Create date: 11-14-2012
--////// //////////update/////////////////////////////
    
CREATE procedure [dbo].[sp_UPDATE_Loc_Count] 
@Location_ID_Filter int 
,@Loc_Count_Date_Filter date 
--filters above
	,@Location_ID int 
	,@Loc_Count_Date date 
	,@CoinsIn money 
	,@Tax_State money= null
	,@Tax_County money= null
	,@Tax_Other money= null
	,@Tax_Total money = null
	,@Gross money = null
	,@Split_Operator money = null 
	,@Split_Location money = null 
	,@Advance money = null
	,@Notes varchar(50) = null
	,@Counter_FirstName varchar(50) = null
	,@Counter_LastName varchar(50) = null
	--,@Record_Modified_Date  datetime
	--@Modifiers_Login Modifiers_Login varchar(50)
	,@Data_Is_Dummy bit = null
	,@Flagged_for_Deletion bit = null


 AS
 BEGIN  
set nocount on 
UPDATE [Action_Amusements_Winhost].[dbo].[Loc_Count]
   SET [Location_ID] = @Location_ID
      ,[Loc_Count_Date] = @Loc_Count_Date
      ,[CoinsIn] = @CoinsIn
      ,[Tax_State] = @Tax_State
      ,[Tax_County] = @Tax_County
      ,[Tax_Other] = @Tax_Other
      ,[Tax_Total] = @Tax_Total
      ,[Gross] = @Gross
      ,[Split_Operator] = @Split_Operator
      ,[Split_Location] = @Split_Location
      ,[Advance] = @Advance
      ,[Notes] = @Notes
      ,[Counter_FirstName] = @Counter_FirstName
      ,[Counter_LastName] = @Counter_LastName
      ,[Record_Modified_Date] = GETDATE()
      ,[Modifiers_Login] = dbo.fn_GetLoginOfSPID()
      ,[Data_Is_Dummy] = @Data_Is_Dummy
      ,[Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Location_ID =  @Location_ID_Filter AND Loc_Count_Date = @Loc_Count_Date_Filter --CAST(@Loc_Count_Date_Filter AS DATE)

end 
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Delete_Flag_Machine]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Delete_Flag_Machine]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ARS, sp_UPDATE_Delete_Flag_Machine 
-- Create date: 11-14-2012
--////////////////update/////////////////////////////
create procedure [dbo].[sp_UPDATE_Delete_Flag_Machine] 
 @Alias_Filter varchar(50)

--filter(s) above	
,@Flagged_for_Deletion bit

AS
BEGIN  
set nocount on 

UPDATE [Action_Amusements_Winhost].[dbo].[Machine]
   SET [Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Alias = @Alias_Filter

end 
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Machine]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Machine]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ARS, sp_Machine_UPDATE
-- Create date: 11-14-2012
--////// //////////update/////////////////////////////
    
   CREATE procedure [dbo].[sp_UPDATE_Machine]     
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
' 
END
GO
/****** Object:  View [dbo].[vw_Mach_Count]    Script Date: 05/22/2012 06:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_Mach_Count]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vw_Mach_Count]
AS
SELECT     Mach_Count_ID, Machine_ID, CoinsIn_Cents, CoinsIn_Bills, Adjustment_1, Adjustment_2_Misc, Adjustment_Total, Adjustment_1_Decription, 
                      Adjustment_2_Misc_Decription, Meter_Bills, Meter_Cents, Meter_Pieces, Record_Modified_Date, Modifiers_Login, Machine_Data_Is_Dummy
FROM         dbo.Mach_Count
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vw_Mach_Count', NULL,NULL))
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
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vw_Mach_Count', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Mach_Count'
GO
/****** Object:  View [dbo].[vw_4_select_all_columns]    Script Date: 05/22/2012 06:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_4_select_all_columns]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vw_4_select_all_columns]
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
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vw_4_select_all_columns', NULL,NULL))
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
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'vw_4_select_all_columns', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_4_select_all_columns'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vw_4_select_all_columns', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_4_select_all_columns'
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Mach_Count]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Mach_Count]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ARS, sp_UPDATE_Mach_Count 
-- Create date: 11-14-2012
--////// //////////update/////////////////////////////
    
CREATE procedure [dbo].[sp_UPDATE_Mach_Count] 
@Machine_ID_Filter int 
--filter(s) above
	  ,@Machine_ID   int  
      ,@CoinsIn_Cents   money 
      ,@CoinsIn_Bills money 
      ,@Adjustment_1 money = null
      ,@Adjustment_2_Misc   money = null
      ,@Adjustment_Total   money = null
      ,@Adjustment_1_Decription   varchar(100) = null
      ,@Adjustment_2_Misc_Decription   varchar(100) = null
      ,@Meter_Bills  money = null
      ,@Meter_Cents   money = null
      ,@Meter_Pieces  smallint = null
      --,@Record_Modified_Date  datetime 
      --,@Modifiers_Login  varchar(50) 
      ,@Machine_Data_Is_Dummy   bit = null
      ,@Flagged_for_Deletion   bit = null

AS
BEGIN  
set nocount on 

UPDATE [Action_Amusements_Winhost].[dbo].[Mach_Count]
   SET [Machine_ID] = @Machine_ID
      ,[CoinsIn_Cents] = @CoinsIn_Cents
      ,[CoinsIn_Bills] = @CoinsIn_Bills
      ,[Adjustment_1] = @Adjustment_1
      ,[Adjustment_2_Misc] = @Adjustment_2_Misc
      ,[Adjustment_Total] = @Adjustment_Total
      ,[Adjustment_1_Decription] = @Adjustment_1_Decription
      ,[Adjustment_2_Misc_Decription] = @Adjustment_2_Misc_Decription
      ,[Meter_Bills] = @Meter_Bills
      ,[Meter_Cents] = @Meter_Cents
      ,[Meter_Pieces] = @Meter_Pieces
      ,[Record_Modified_Date] = GETDATE()
      ,[Modifiers_Login] = dbo.fn_GetLoginOfSPID()
      ,[Machine_Data_Is_Dummy] = @Machine_Data_Is_Dummy
      ,[Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Machine_ID = @Machine_ID_Filter

end 
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Delete_Flag_Mach_Count]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Delete_Flag_Mach_Count]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ARS, sp_UPDATE_Delete_Flag_Mach_Count 
-- Create date: 11-14-2012
--////// //////////update/////////////////////////////
    
create procedure [dbo].[sp_UPDATE_Delete_Flag_Mach_Count] 
@Machine_ID_Filter int 
--filter(s) above
	  --,@Machine_ID   int  
   --   ,@CoinsIn_Cents   money 
   --   ,@CoinsIn_Bills money 
   --   ,@Adjustment_1 money = null
   --   ,@Adjustment_2_Misc   money = null
   --   ,@Adjustment_Total   money = null
   --   ,@Adjustment_1_Decription   varchar(100) = null
   --   ,@Adjustment_2_Misc_Decription   varchar(100) = null
   --   ,@Meter_Bills  money = null
   --   ,@Meter_Cents   money = null
   --   ,@Meter_Pieces  smallint = null
   --   --,@Record_Modified_Date  datetime 
   --   --,@Modifiers_Login  varchar(50) 
   --   ,@Machine_Data_Is_Dummy   bit = null
      ,@Flagged_for_Deletion   bit
AS
BEGIN  
set nocount on 

UPDATE [Action_Amusements_Winhost].[dbo].[Mach_Count]
   SET --[Machine_ID] = @Machine_ID
      --,[CoinsIn_Cents] = @CoinsIn_Cents
      --,[CoinsIn_Bills] = @CoinsIn_Bills
      --,[Adjustment_1] = @Adjustment_1
      --,[Adjustment_2_Misc] = @Adjustment_2_Misc
      --,[Adjustment_Total] = @Adjustment_Total
      --,[Adjustment_1_Decription] = @Adjustment_1_Decription
      --,[Adjustment_2_Misc_Decription] = @Adjustment_2_Misc_Decription
      --,[Meter_Bills] = @Meter_Bills
      --,[Meter_Cents] = @Meter_Cents
      --,[Meter_Pieces] = @Meter_Pieces
      --,[Record_Modified_Date] = GETDATE()
      --,[Modifiers_Login] = dbo.fn_GetLoginOfSPID()
      --,[Machine_Data_Is_Dummy] = @Machine_Data_Is_Dummy
      [Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Machine_ID = @Machine_ID_Filter

end 
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Delete_Flag_Loc_Count]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Delete_Flag_Loc_Count]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ARS, sp_UPDATE_Delete_Flag_Loc_Count 
-- Create date: 11-14-2012
--////////////////update/////////////////////////////
 CREATE procedure [dbo].[sp_UPDATE_Delete_Flag_Loc_Count] 
 @Location_ID_Filter int
,@Loc_Count_Date_Filter date 
--filter(s) above	
,@Flagged_for_Deletion bit

AS
BEGIN  
set nocount on 
--below parm for cascading Flagged for Deletion with Mach_Count col Loc_Count_ID
declare @Loc_Count_ID as int
Set @Loc_Count_ID = (select  Loc_Count_ID from [Action_Amusements_Winhost].[dbo].[Loc_Count]  
WHERE Location_ID = @Location_ID_Filter AND Loc_Count_Date = @Loc_Count_Date_Filter)

UPDATE [Action_Amusements_Winhost].[dbo].[Loc_Count]
   SET [Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Location_ID = @Location_ID_Filter AND Loc_Count_Date = @Loc_Count_Date_Filter

UPDATE [Action_Amusements_Winhost].[dbo].[Mach_Count]
   SET [Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Loc_Count_ID = @Loc_Count_ID
end 
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Mach_Count]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Truncate_Mach_Count]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'   --\\\\\\\\\\\\\\\\\\\\\\\\\ truncate whole table\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
   -- =============================================
-- Author:		ARS
-- Create date: 11-14-2012
create PROCEDURE [dbo].[sp_Truncate_Mach_Count] as 
   
   begin
   
   truncate table Mach_Count
   
   end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Drop_and_ReCreate_4_main_and_Dummy_Data]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Drop_and_ReCreate_4_main_and_Dummy_Data]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ARS, sp_Drop_and_ReCreate_4_main_and_Dummy_Data 
-- Create date: 11-20-2012
--////////////////update/////////////////////////////
create procedure [dbo].[sp_Drop_and_ReCreate_4_main_and_Dummy_Data] 


as
begin
set nocount on

SET IDENTITY_INSERT [dbo].[Mach_Count] ON
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total],[CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (3, 6,1, 78.5000, 92.2500, 25.0000, NULL, 25.0000,145.75 ,NULL, NULL, NULL, NULL, NULL, CAST(0x0000A05900180573 AS DateTime), N''Owner'', 1, NULL)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID],[CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total],[CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (4, 8,1, 102.0000, 65.7500, 15.0000, NULL, 15.0000, 152.75,NULL, NULL, NULL, NULL, NULL, CAST(0x0000A0590018730A AS DateTime), N''Owner'', 1, NULL)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID],[CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total],[CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (5, 11,1, 72.5000, 82.5000, 45.5000, NULL, 45.5000, 109.5,NULL, NULL, 12765.2500, 902.7500, 54, CAST(0x0000A05900194CD8 AS DateTime), N''Owner'', 1, NULL)
INSERT [dbo].[Mach_Count] ([Mach_Count_ID], [Machine_ID], [Loc_Count_ID],[CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total],[CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (6, 19,1, 135.2500, 82.7500, 55.2500, NULL, 55.2500,162.57 ,NULL, NULL, NULL, NULL, NULL, CAST(0x0000A059001A5959 AS DateTime), N''Owner'', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Mach_Count] OFF

end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ALL_DELETE_Flagged_Records]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ALL_DELETE_Flagged_Records]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ARS, SP_ALL_DELETE_Flagged_Records
-- Create date: 11-14-2012
--////// //////////DELETE MACHINE DELETE FLAG/////////////////////////
CREATE procedure [dbo].[sp_ALL_DELETE_Flagged_Records] 
as
begin
set nocount on             

DELETE FROM [Action_Amusements_Winhost].[dbo].[Mach_Count]
      WHERE Flagged_for_Deletion = ''true''

DELETE FROM [Action_Amusements_Winhost].[dbo].[Location_Count]
      WHERE Flagged_for_Deletion = ''true''
      
DELETE FROM [Action_Amusements_Winhost].[dbo].[Machine]
      WHERE Flagged_for_Deletion = ''true''

DELETE FROM [Action_Amusements_Winhost].[dbo].[Location]
      WHERE Flagged_for_Deletion = ''true''

DELETE FROM [Action_Amusements_Winhost].[dbo].[Expenses_Monthly]
      WHERE Flagged_for_Deletion = ''true''

end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_vw_Mach_Count]    Script Date: 05/22/2012 06:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_vw_Mach_Count]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
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
' 
END
GO
/****** Object:  ForeignKey [FK_Loc_Count_Location_cols_Location_ID_Cascading_Update_Delete]    Script Date: 05/22/2012 06:28:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Loc_Count_Location_cols_Location_ID_Cascading_Update_Delete]') AND parent_object_id = OBJECT_ID(N'[dbo].[Loc_Count]'))
ALTER TABLE [dbo].[Loc_Count]  WITH CHECK ADD  CONSTRAINT [FK_Loc_Count_Location_cols_Location_ID_Cascading_Update_Delete] FOREIGN KEY([Location_ID])
REFERENCES [dbo].[Location] ([Location_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Loc_Count_Location_cols_Location_ID_Cascading_Update_Delete]') AND parent_object_id = OBJECT_ID(N'[dbo].[Loc_Count]'))
ALTER TABLE [dbo].[Loc_Count] CHECK CONSTRAINT [FK_Loc_Count_Location_cols_Location_ID_Cascading_Update_Delete]
GO
/****** Object:  ForeignKey [FK_Mach_Count_Machine_col_Machine_ID]    Script Date: 05/22/2012 06:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Mach_Count_Machine_col_Machine_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
ALTER TABLE [dbo].[Mach_Count]  WITH CHECK ADD  CONSTRAINT [FK_Mach_Count_Machine_col_Machine_ID] FOREIGN KEY([Machine_ID])
REFERENCES [dbo].[Machine] ([Machine_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Mach_Count_Machine_col_Machine_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
ALTER TABLE [dbo].[Mach_Count] CHECK CONSTRAINT [FK_Mach_Count_Machine_col_Machine_ID]
GO
/****** Object:  ForeignKey [FK_Machine_one_to_Many_Location_col_Loc_Code_Cascading_Update_Delete]    Script Date: 05/22/2012 06:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Machine_one_to_Many_Location_col_Loc_Code_Cascading_Update_Delete]') AND parent_object_id = OBJECT_ID(N'[dbo].[Machine]'))
ALTER TABLE [dbo].[Machine]  WITH CHECK ADD  CONSTRAINT [FK_Machine_one_to_Many_Location_col_Loc_Code_Cascading_Update_Delete] FOREIGN KEY([Location_Code])
REFERENCES [dbo].[Location] ([Location_Code])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Machine_one_to_Many_Location_col_Loc_Code_Cascading_Update_Delete]') AND parent_object_id = OBJECT_ID(N'[dbo].[Machine]'))
ALTER TABLE [dbo].[Machine] CHECK CONSTRAINT [FK_Machine_one_to_Many_Location_col_Loc_Code_Cascading_Update_Delete]
GO
