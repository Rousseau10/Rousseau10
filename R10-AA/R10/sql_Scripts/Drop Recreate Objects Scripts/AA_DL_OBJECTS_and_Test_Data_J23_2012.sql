USE [Action_Amusements_Winhost]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Loc_Count_MVC]    Script Date: 06/23/2012 10:44:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_Loc_Count_MVC]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Insert_Loc_Count_MVC]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Location]    Script Date: 06/23/2012 10:44:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_Location]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Insert_Location]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Mach_Count_MVC]    Script Date: 06/23/2012 10:44:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_Mach_Count_MVC]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Insert_Mach_Count_MVC]
GO
/****** Object:  StoredProcedure [dbo].[sp_ALL_DELETE_Flagged_Records]    Script Date: 06/23/2012 10:44:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ALL_DELETE_Flagged_Records]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_ALL_DELETE_Flagged_Records]
GO
/****** Object:  StoredProcedure [dbo].[sp_Drop_and_ReCreate_4_main_and_Dummy_Data]    Script Date: 06/23/2012 10:44:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Drop_and_ReCreate_4_main_and_Dummy_Data]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Drop_and_ReCreate_4_main_and_Dummy_Data]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Test_Loc_Count]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_Test_Loc_Count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Insert_Test_Loc_Count]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_vw_Loc_Count]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_vw_Loc_Count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Insert_vw_Loc_Count]
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Mach_Count]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Truncate_Mach_Count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Truncate_Mach_Count]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Loc_Count]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Loc_Count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_UPDATE_Loc_Count]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Loc_Count_and_Child_Mach_Count]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Loc_Count_and_Child_Mach_Count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_UPDATE_Loc_Count_and_Child_Mach_Count]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Location]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Location]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_UPDATE_Location]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Mach_Count]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Mach_Count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_UPDATE_Mach_Count]
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Location]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Truncate_Location]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Truncate_Location]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Delete_Flag_Loc_Count]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Delete_Flag_Loc_Count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_UPDATE_Delete_Flag_Loc_Count]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Delete_Flag_Location]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Delete_Flag_Location]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_UPDATE_Delete_Flag_Location]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Delete_Flag_Mach_Count]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Delete_Flag_Mach_Count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_UPDATE_Delete_Flag_Mach_Count]
GO
/****** Object:  StoredProcedure [dbo].[usp_Mach_CountDelete]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Mach_CountDelete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Mach_CountDelete]
GO
/****** Object:  StoredProcedure [dbo].[usp_Mach_CountInsert]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Mach_CountInsert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Mach_CountInsert]
GO
/****** Object:  StoredProcedure [dbo].[usp_Mach_CountSelect]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Mach_CountSelect]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Mach_CountSelect]
GO
/****** Object:  StoredProcedure [dbo].[usp_Mach_CountUpdate]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Mach_CountUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Mach_CountUpdate]
GO
/****** Object:  View [dbo].[vw_Mach_Count_all_columns]    Script Date: 06/23/2012 10:45:07 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_Mach_Count_all_columns]'))
DROP VIEW [dbo].[vw_Mach_Count_all_columns]
GO
/****** Object:  View [dbo].[vw_Worsheet_SELECT_Previous_Counts]    Script Date: 06/23/2012 10:45:08 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_Worsheet_SELECT_Previous_Counts]'))
DROP VIEW [dbo].[vw_Worsheet_SELECT_Previous_Counts]
GO
/****** Object:  StoredProcedure [dbo].[usp_Loc_CountDelete]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Loc_CountDelete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Loc_CountDelete]
GO
/****** Object:  StoredProcedure [dbo].[usp_Loc_CountInsert]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Loc_CountInsert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Loc_CountInsert]
GO
/****** Object:  StoredProcedure [dbo].[usp_Loc_CountSelect]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Loc_CountSelect]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Loc_CountSelect]
GO
/****** Object:  StoredProcedure [dbo].[usp_Loc_CountUpdate]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Loc_CountUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Loc_CountUpdate]
GO
/****** Object:  View [dbo].[vw_Loc_Count_all_columns]    Script Date: 06/23/2012 10:45:07 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_Loc_Count_all_columns]'))
DROP VIEW [dbo].[vw_Loc_Count_all_columns]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Delete_Flag_Machine]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Delete_Flag_Machine]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_UPDATE_Delete_Flag_Machine]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Expenses_Monthly]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Expenses_Monthly]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_UPDATE_Expenses_Monthly]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Delete_Flag_Expenses_Monthly]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Delete_Flag_Expenses_Monthly]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_UPDATE_Delete_Flag_Expenses_Monthly]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Machine]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Machine]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_UPDATE_Machine]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_zz__Aparent_Child]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_zz__Aparent_Child]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_UPDATE_zz__Aparent_Child]
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Machine]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Truncate_Machine]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Truncate_Machine]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Machine]    Script Date: 06/23/2012 10:44:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_Machine]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Insert_Machine]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 06/23/2012 10:44:59 ******/
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
/****** Object:  Table [dbo].[Mach_Count]    Script Date: 06/23/2012 10:45:00 ******/
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
/****** Object:  Table [dbo].[Machine]    Script Date: 06/23/2012 10:45:00 ******/
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
/****** Object:  Table [dbo].[Loc_Count]    Script Date: 06/23/2012 10:44:58 ******/
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
/****** Object:  Table [dbo].[Account]    Script Date: 06/23/2012 10:44:57 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Account_Record_Modified_Date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [DF_Account_Record_Modified_Date]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Account_Modifiers_Login]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [DF_Account_Modifiers_Login]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
DROP TABLE [dbo].[Account]
GO
/****** Object:  Table [dbo].[Machine_Transaction_History]    Script Date: 06/23/2012 10:45:00 ******/
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
/****** Object:  Table [dbo].[Expenses_Monthly]    Script Date: 06/23/2012 10:44:58 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Test_UPDATE]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Test_UPDATE]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Test_UPDATE]
GO
/****** Object:  StoredProcedure [dbo].[usp_DELETE_Interviews]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DELETE_Interviews]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_DELETE_Interviews]
GO
/****** Object:  StoredProcedure [dbo].[usp_DELETE_Workout]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DELETE_Workout]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_DELETE_Workout]
GO
/****** Object:  StoredProcedure [dbo].[usp_DELETE_Workout_Got_Number]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DELETE_Workout_Got_Number]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_DELETE_Workout_Got_Number]
GO
/****** Object:  StoredProcedure [dbo].[usp_INSERT_Interviews]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_INSERT_Interviews]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_INSERT_Interviews]
GO
/****** Object:  StoredProcedure [dbo].[usp_INSERT_Workout]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_INSERT_Workout]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_INSERT_Workout]
GO
/****** Object:  StoredProcedure [dbo].[usp_INSERT_Workout_Got_Number]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_INSERT_Workout_Got_Number]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_INSERT_Workout_Got_Number]
GO
/****** Object:  StoredProcedure [dbo].[usp_InterviewsDelete]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InterviewsDelete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_InterviewsDelete]
GO
/****** Object:  StoredProcedure [dbo].[usp_InterviewsInsert]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InterviewsInsert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_InterviewsInsert]
GO
/****** Object:  StoredProcedure [dbo].[usp_InterviewsSelect]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InterviewsSelect]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_InterviewsSelect]
GO
/****** Object:  StoredProcedure [dbo].[usp_InterviewsUpdate]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InterviewsUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_InterviewsUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_MeetDelete]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_MeetDelete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_MeetDelete]
GO
/****** Object:  StoredProcedure [dbo].[usp_MeetInsert]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_MeetInsert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_MeetInsert]
GO
/****** Object:  StoredProcedure [dbo].[usp_MeetSelect]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_MeetSelect]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_MeetSelect]
GO
/****** Object:  StoredProcedure [dbo].[usp_MeetUpdate]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_MeetUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_MeetUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_UPDATE_Interviews]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UPDATE_Interviews]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_UPDATE_Interviews]
GO
/****** Object:  StoredProcedure [dbo].[usp_UPDATE_Workout]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UPDATE_Workout]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_UPDATE_Workout]
GO
/****** Object:  StoredProcedure [dbo].[usp_UPDATE_Workout_Got_Number]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UPDATE_Workout_Got_Number]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_UPDATE_Workout_Got_Number]
GO
/****** Object:  StoredProcedure [dbo].[usp_Workout_Got_NumberDelete]    Script Date: 06/23/2012 10:44:54 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Workout_Got_NumberDelete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Workout_Got_NumberDelete]
GO
/****** Object:  StoredProcedure [dbo].[usp_Workout_Got_NumberInsert]    Script Date: 06/23/2012 10:44:54 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Workout_Got_NumberInsert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Workout_Got_NumberInsert]
GO
/****** Object:  StoredProcedure [dbo].[usp_Workout_Got_NumberSelect]    Script Date: 06/23/2012 10:44:54 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Workout_Got_NumberSelect]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Workout_Got_NumberSelect]
GO
/****** Object:  StoredProcedure [dbo].[usp_Workout_Got_NumberUpdate]    Script Date: 06/23/2012 10:44:54 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Workout_Got_NumberUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Workout_Got_NumberUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_WorkOutDelete]    Script Date: 06/23/2012 10:44:54 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_WorkOutDelete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_WorkOutDelete]
GO
/****** Object:  StoredProcedure [dbo].[usp_WorkOutInsert]    Script Date: 06/23/2012 10:44:54 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_WorkOutInsert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_WorkOutInsert]
GO
/****** Object:  StoredProcedure [dbo].[usp_WorkOutSelect]    Script Date: 06/23/2012 10:44:54 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_WorkOutSelect]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_WorkOutSelect]
GO
/****** Object:  StoredProcedure [dbo].[usp_WorkOutUpdate]    Script Date: 06/23/2012 10:44:54 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_WorkOutUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_WorkOutUpdate]
GO
/****** Object:  Table [dbo].[zz_Child]    Script Date: 06/23/2012 10:45:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[zz_Child]') AND type in (N'U'))
DROP TABLE [dbo].[zz_Child]
GO
/****** Object:  Table [dbo].[z_b_Address]    Script Date: 06/23/2012 10:45:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[z_b_Address]') AND type in (N'U'))
DROP TABLE [dbo].[z_b_Address]
GO
/****** Object:  Table [dbo].[z_c_Purchases]    Script Date: 06/23/2012 10:45:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[z_c_Purchases]') AND type in (N'U'))
DROP TABLE [dbo].[z_c_Purchases]
GO
/****** Object:  Table [dbo].[zz_aParent]    Script Date: 06/23/2012 10:45:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[zz_aParent]') AND type in (N'U'))
DROP TABLE [dbo].[zz_aParent]
GO
/****** Object:  Table [dbo].[zzz_Child]    Script Date: 06/23/2012 10:45:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[zzz_Child]') AND type in (N'U'))
DROP TABLE [dbo].[zzz_Child]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_vw_Mach_Count]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_vw_Mach_Count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Insert_vw_Mach_Count]
GO
/****** Object:  Table [dbo].[WorkOut]    Script Date: 06/23/2012 10:45:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkOut]') AND type in (N'U'))
DROP TABLE [dbo].[WorkOut]
GO
/****** Object:  Table [dbo].[Workout_Got_Number]    Script Date: 06/23/2012 10:45:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Workout_Got_Number]') AND type in (N'U'))
DROP TABLE [dbo].[Workout_Got_Number]
GO
/****** Object:  Table [dbo].[z_a_Customer]    Script Date: 06/23/2012 10:45:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[z_a_Customer]') AND type in (N'U'))
DROP TABLE [dbo].[z_a_Customer]
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Location_Count]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Truncate_Location_Count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Truncate_Location_Count]
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Location_History]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Truncate_Location_History]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Truncate_Location_History]
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Machine_History]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Truncate_Machine_History]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Truncate_Machine_History]
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Monthly_Expenses]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Truncate_Monthly_Expenses]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Truncate_Monthly_Expenses]
GO
/****** Object:  StoredProcedure [dbo].[sp_Lookup_Mach_Class]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Lookup_Mach_Class]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Lookup_Mach_Class]
GO
/****** Object:  StoredProcedure [dbo].[sp_Lookup_Transaction_Type]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Lookup_Transaction_Type]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Lookup_Transaction_Type]
GO
/****** Object:  Table [dbo].[test]    Script Date: 06/23/2012 10:45:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[test]') AND type in (N'U'))
DROP TABLE [dbo].[test]
GO
/****** Object:  Table [dbo].[Test_Loc_Count]    Script Date: 06/23/2012 10:45:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Test_Loc_Count]') AND type in (N'U'))
DROP TABLE [dbo].[Test_Loc_Count]
GO
/****** Object:  Table [dbo].[Test_SQL_DataTypes]    Script Date: 06/23/2012 10:45:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Test_SQL_DataTypes]') AND type in (N'U'))
DROP TABLE [dbo].[Test_SQL_DataTypes]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetLoginOfSPID]    Script Date: 06/23/2012 10:45:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_GetLoginOfSPID]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fn_GetLoginOfSPID]
GO
/****** Object:  StoredProcedure [dbo].[InsertGenerator]    Script Date: 06/23/2012 10:44:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertGenerator]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[InsertGenerator]
GO
/****** Object:  Table [dbo].[Interviews]    Script Date: 06/23/2012 10:44:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Interviews]') AND type in (N'U'))
DROP TABLE [dbo].[Interviews]
GO
/****** Object:  Table [dbo].[LU_MachineClass]    Script Date: 06/23/2012 10:44:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LU_MachineClass]') AND type in (N'U'))
DROP TABLE [dbo].[LU_MachineClass]
GO
/****** Object:  Table [dbo].[LU_TransactionType]    Script Date: 06/23/2012 10:44:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LU_TransactionType]') AND type in (N'U'))
DROP TABLE [dbo].[LU_TransactionType]
GO
/****** Object:  Table [dbo].[Meet]    Script Date: 06/23/2012 10:45:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Meet]') AND type in (N'U'))
DROP TABLE [dbo].[Meet]
GO
/****** Object:  Table [dbo].[budgets]    Script Date: 06/23/2012 10:44:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[budgets]') AND type in (N'U'))
DROP TABLE [dbo].[budgets]
GO
/****** Object:  Table [dbo].[Entity1]    Script Date: 06/23/2012 10:44:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Entity1]') AND type in (N'U'))
DROP TABLE [dbo].[Entity1]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_into_Tester_and_Tester_History]    Script Date: 06/23/2012 10:44:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_into_Tester_and_Tester_History]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_into_Tester_and_Tester_History]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_Tester_History]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_Tester_History]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_Tester_History]
GO
/****** Object:  Table [dbo].[tester_history]    Script Date: 06/23/2012 10:45:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tester_history]') AND type in (N'U'))
DROP TABLE [dbo].[tester_history]
GO
/****** Object:  StoredProcedure [dbo].[sp_Test_OutPut_Parm]    Script Date: 06/23/2012 10:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Test_OutPut_Parm]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Test_OutPut_Parm]
GO
/****** Object:  Table [dbo].[tester]    Script Date: 06/23/2012 10:45:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tester]') AND type in (N'U'))
DROP TABLE [dbo].[tester]
GO
/****** Object:  User [Subscription-1]    Script Date: 06/23/2012 10:45:05 ******/
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'Subscription-1')
DROP USER [Subscription-1]
GO
USE [master]
GO
/****** Object:  Login [ACER-1240D29348\Owner]    Script Date: 06/23/2012 10:45:08 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'ACER-1240D29348\Owner')
DROP LOGIN [ACER-1240D29348\Owner]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 06/23/2012 10:45:08 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'BUILTIN\Users')
DROP LOGIN [BUILTIN\Users]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 06/23/2012 10:45:08 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT AUTHORITY\SYSTEM')
DROP LOGIN [NT AUTHORITY\SYSTEM]
GO
/****** Object:  Login [Subscription-1]    Script Date: 06/23/2012 10:45:08 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'Subscription-1')
DROP LOGIN [Subscription-1]
GO
/****** Object:  Login [ACER-1240D29348\Owner]    Script Date: 06/23/2012 10:45:08 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'ACER-1240D29348\Owner')
CREATE LOGIN [ACER-1240D29348\Owner] FROM WINDOWS WITH DEFAULT_DATABASE=[Action_Amusements_Winhost], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 06/23/2012 10:45:08 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'BUILTIN\Users')
CREATE LOGIN [BUILTIN\Users] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 06/23/2012 10:45:08 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT AUTHORITY\SYSTEM')
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [Subscription-1]    Script Date: 06/23/2012 10:45:08 ******/
/* For security reasons the login is created disabled and with a random password. */
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'Subscription-1')
CREATE LOGIN [Subscription-1] WITH PASSWORD=N'[²+º´Ìß°þb~¿Z¶°±Ê-eäå¢_Üì[I', DEFAULT_DATABASE=[Action_Amusements_Winhost], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
EXEC sys.sp_addsrvrolemember @loginame = N'Subscription-1', @rolename = N'dbcreator'
GO
ALTER LOGIN [Subscription-1] DISABLE
GO
USE [Action_Amusements_Winhost]
GO
/****** Object:  User [Subscription-1]    Script Date: 06/23/2012 10:45:05 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'Subscription-1')
CREATE USER [Subscription-1] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[tester]    Script Date: 06/23/2012 10:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tester]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tester](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[coinsIN] [money] NULL,
 CONSTRAINT [PK_tester] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[tester] ON
INSERT [dbo].[tester] ([id], [coinsIN]) VALUES (20212, 215.9962)
INSERT [dbo].[tester] ([id], [coinsIN]) VALUES (20213, 260.9215)
INSERT [dbo].[tester] ([id], [coinsIN]) VALUES (20214, 327.8230)
INSERT [dbo].[tester] ([id], [coinsIN]) VALUES (20215, 106.8517)
INSERT [dbo].[tester] ([id], [coinsIN]) VALUES (20216, 178.8199)
INSERT [dbo].[tester] ([id], [coinsIN]) VALUES (20217, 171.4318)
INSERT [dbo].[tester] ([id], [coinsIN]) VALUES (20226, 415.5641)
INSERT [dbo].[tester] ([id], [coinsIN]) VALUES (20227, 343.4965)
INSERT [dbo].[tester] ([id], [coinsIN]) VALUES (20228, 155.3984)
INSERT [dbo].[tester] ([id], [coinsIN]) VALUES (20229, 92.1775)
INSERT [dbo].[tester] ([id], [coinsIN]) VALUES (20230, 458.6675)
INSERT [dbo].[tester] ([id], [coinsIN]) VALUES (20231, 411.7803)
INSERT [dbo].[tester] ([id], [coinsIN]) VALUES (20232, 114.2238)
INSERT [dbo].[tester] ([id], [coinsIN]) VALUES (20233, 382.0658)
INSERT [dbo].[tester] ([id], [coinsIN]) VALUES (20234, 497.0490)
INSERT [dbo].[tester] ([id], [coinsIN]) VALUES (20235, 385.3277)
INSERT [dbo].[tester] ([id], [coinsIN]) VALUES (20236, 365.9488)
SET IDENTITY_INSERT [dbo].[tester] OFF
/****** Object:  StoredProcedure [dbo].[sp_Test_OutPut_Parm]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Test_OutPut_Parm]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--//////skillls output parameter  *Note only sprocs can have an outpu parm/
CREATE PROCedure [dbo].[sp_Test_OutPut_Parm] 
@CoinIn money
,@tester_ID INT OUTPUT
--,@coinsIN money output
AS
begin
	insert into tester (coinsIN) values(@CoinIn )
	set @tester_ID =  SCOPE_IDENTITY() --Max(id)
	--FROM tester --a inner join tester_History b
	--on a.id = b.id
	
	--where
	--b.CoinsIn_Running_total is not null
	--group by a.coinsIN
end
' 
END
GO
/****** Object:  Table [dbo].[tester_history]    Script Date: 06/23/2012 10:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tester_history]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tester_history](
	[history_id] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NOT NULL,
	[coinsIN_running_total] [money] NULL
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[tester_history] ON
INSERT [dbo].[tester_history] ([history_id], [id], [coinsIN_running_total]) VALUES (17, 20226, 1677.4082)
INSERT [dbo].[tester_history] ([history_id], [id], [coinsIN_running_total]) VALUES (18, 20227, 2020.9047)
INSERT [dbo].[tester_history] ([history_id], [id], [coinsIN_running_total]) VALUES (3, 20212, 551.7188)
INSERT [dbo].[tester_history] ([history_id], [id], [coinsIN_running_total]) VALUES (4, 20213, 812.6403)
INSERT [dbo].[tester_history] ([history_id], [id], [coinsIN_running_total]) VALUES (5, 20214, 1140.4633)
INSERT [dbo].[tester_history] ([history_id], [id], [coinsIN_running_total]) VALUES (6, 20215, 1247.3150)
INSERT [dbo].[tester_history] ([history_id], [id], [coinsIN_running_total]) VALUES (7, 20216, 1426.1349)
INSERT [dbo].[tester_history] ([history_id], [id], [coinsIN_running_total]) VALUES (8, 20217, 1597.5667)
INSERT [dbo].[tester_history] ([history_id], [id], [coinsIN_running_total]) VALUES (19, 20228, 2176.3031)
INSERT [dbo].[tester_history] ([history_id], [id], [coinsIN_running_total]) VALUES (20, 20229, 2268.4806)
INSERT [dbo].[tester_history] ([history_id], [id], [coinsIN_running_total]) VALUES (21, 20230, 2727.1481)
INSERT [dbo].[tester_history] ([history_id], [id], [coinsIN_running_total]) VALUES (22, 20231, 3138.9284)
INSERT [dbo].[tester_history] ([history_id], [id], [coinsIN_running_total]) VALUES (23, 20232, 3253.1522)
INSERT [dbo].[tester_history] ([history_id], [id], [coinsIN_running_total]) VALUES (24, 20233, 3635.2180)
INSERT [dbo].[tester_history] ([history_id], [id], [coinsIN_running_total]) VALUES (25, 20234, 4132.2670)
INSERT [dbo].[tester_history] ([history_id], [id], [coinsIN_running_total]) VALUES (26, 20235, 4517.5947)
INSERT [dbo].[tester_history] ([history_id], [id], [coinsIN_running_total]) VALUES (27, 20236, 4883.5435)
INSERT [dbo].[tester_history] ([history_id], [id], [coinsIN_running_total]) VALUES (28, 20236, 5249.4923)
SET IDENTITY_INSERT [dbo].[tester_history] OFF
/****** Object:  StoredProcedure [dbo].[sp_insert_Tester_History]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_Tester_History]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--tester_history
CREATE procedure [dbo].[sp_insert_Tester_History]
@id int
,@coinsIN money

as
begin
declare @coinsIN_running_total money
set @coinsIN_running_total = ((select MAX(coinsIN_running_total) from tester_history) + @coinsIN) 
insert into tester_history (id,coinsIN_running_total)
values(@id,@coinsIN_running_total )
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_into_Tester_and_Tester_History]    Script Date: 06/23/2012 10:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_into_Tester_and_Tester_History]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[sp_insert_into_Tester_and_Tester_History]
AS
BEGIN

	declare @id_OUTPUTTED_from_tester int, @coinsIN  money
	exec sp_Test_OutPut_Parm 
	 @coinIn = 1000, @tester_ID = @id_OUTPUTTED_from_tester  output

	exec sp_insert_Tester_History @id= @id_OUTPUTTED_from_tester,@coinsIn = 1000 

END
' 
END
GO
/****** Object:  Trigger [tr_Update_Tester]    Script Date: 06/23/2012 10:45:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tr_Update_Tester]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tr_Update_Tester]
ON [dbo].[tester]
FOR UPDATE
AS  
UPDATE tester_history 
set id = (select IDENT_CURRENT(''tester'')), coinsIN_running_total = (select sum(coinsIN) from tester)
where id = (select IDENT_CURRENT(''tester''))
'
GO
/****** Object:  Trigger [tr_Insert_Tester]    Script Date: 06/23/2012 10:45:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tr_Insert_Tester]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tr_Insert_Tester]
ON [dbo].[tester]
FOR INSERT
AS
--declare @id as int = (select IDENT_CURRENT(''tester''))
--print @id
INSERT tester_history (id,coinsIN_running_total) VALUES ((select IDENT_CURRENT(''tester'')), (select sum(coinsIN) from tester))
--select max(id) from tester

'
GO
/****** Object:  Table [dbo].[Entity1]    Script Date: 06/23/2012 10:44:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Entity1]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Entity1](
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Entity1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[budgets]    Script Date: 06/23/2012 10:44:57 ******/
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
/****** Object:  Table [dbo].[Meet]    Script Date: 06/23/2012 10:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Meet]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Meet](
	[Meet_ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[Day] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Time] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Where ] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Approach] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Method] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SuccessRank] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Meet_Detials] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Drinking] [bit] NULL,
	[Smoking] [bit] NULL,
	[Give_Card] [bit] NULL,
	[Get_Number] [bit] NULL,
	[What_base] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Improvements] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Comments] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NickName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Availability] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Avail_Duration] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Home_Address] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Work_Address] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Non_Vacation_Add] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Where_From] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Age] [int] NULL,
	[Eyes] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Other] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Smoker] [bit] NULL,
	[Mobile] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Other_Phone] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[More_Comments] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Meet] PRIMARY KEY CLUSTERED 
(
	[Meet_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LU_TransactionType]    Script Date: 06/23/2012 10:44:59 ******/
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
INSERT [dbo].[LU_TransactionType] ([ID], [Type], [Description], [Code]) VALUES (1, N'Machine', NULL, 1)
INSERT [dbo].[LU_TransactionType] ([ID], [Type], [Description], [Code]) VALUES (2, N'Add Hardware', NULL, 2)
INSERT [dbo].[LU_TransactionType] ([ID], [Type], [Description], [Code]) VALUES (4, N'Upgrade', NULL, 3)
INSERT [dbo].[LU_TransactionType] ([ID], [Type], [Description], [Code]) VALUES (5, N'Retire Machine', NULL, 4)
SET IDENTITY_INSERT [dbo].[LU_TransactionType] OFF
/****** Object:  Table [dbo].[LU_MachineClass]    Script Date: 06/23/2012 10:44:59 ******/
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
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LU_MachineClass]') AND name = N'UK_LU_MachineClass')
CREATE UNIQUE NONCLUSTERED INDEX [UK_LU_MachineClass] ON [dbo].[LU_MachineClass] 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LU_MachineClass] ON
INSERT [dbo].[LU_MachineClass] ([ID], [Name], [Description], [ClassCode]) VALUES (1, N'Regular Arcade', N'This class of machine has no meters, plush, inventory, or unique tax rate.', 1)
INSERT [dbo].[LU_MachineClass] ([ID], [Name], [Description], [ClassCode]) VALUES (3, N'JukeBox', N'This class of machine has selectors, a percent of Coins In goes to content provider. It and also may have an internet fee and sometimes different tax rate.', 2)
INSERT [dbo].[LU_MachineClass] ([ID], [Name], [Description], [ClassCode]) VALUES (5, N'Crane', N'This class of machine has meters and plush to keep track of.', 3)
INSERT [dbo].[LU_MachineClass] ([ID], [Name], [Description], [ClassCode]) VALUES (6, N'Vending', N'This class of machine may have meters has inventory to keep track of.', 4)
INSERT [dbo].[LU_MachineClass] ([ID], [Name], [Description], [ClassCode]) VALUES (8, N'Vending with Meters', N'This class of machine may have meters has inventory to keep track of. It also uses meters.', 5)
SET IDENTITY_INSERT [dbo].[LU_MachineClass] OFF
/****** Object:  Table [dbo].[Interviews]    Script Date: 06/23/2012 10:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Interviews]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Interviews](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[Interview_Number] [int] NULL,
	[Day] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Time] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Place] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lead_Source] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Staffing] [bit] NULL,
	[Interviewer1_Name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Interviewer1_Role] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Interviewer2_Name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Interviewer2_Role] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Interviewer3_Name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Interviewer3_Role] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Interviewer_Phone] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Interview_email] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HR_Phone] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HR_email] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Recuiter_Phone] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Recuiter_email] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Other_Phone] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Other_email] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Interview_Type] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Test_Details] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tech_Q_A] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Negotiation_Details] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Details] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Comments] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Improvements] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Notes] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Got_Job] [bit] NULL,
	[Position] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Pay] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Comp_Name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Comp_Number] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Comp_URL] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Duration] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[How_Ended] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Interviews] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[InsertGenerator]    Script Date: 06/23/2012 10:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertGenerator]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[InsertGenerator]
(@schemaName varchar(100), @tableName varchar(100)) as
 
--Declare a cursor to retrieve column specific information for the specified table
DECLARE cursCol CURSOR FAST_FORWARD FOR 
	SELECT DISTINCT column_name,data_type 
	FROM information_schema.columns 
	WHERE table_name = @tableName
		AND table_schema = @schemaName
OPEN cursCol
DECLARE @string nvarchar(3000) --for storing the first half of INSERT statement
DECLARE @stringData nvarchar(3000) --for storing the data (VALUES) related statement
DECLARE @dataType nvarchar(1000) --data types returned for respective columns
SET @string=''INSERT INTO '' + @schemaName + ''.'' + @tableName + ''(''
SET @stringData=''''
 
DECLARE @colName nvarchar(50)
 
FETCH NEXT FROM cursCol INTO @colName,@dataType
 
IF @@fetch_status<>0
	begin
	print ''Table ''+@tableName+'' not found, processing skipped.''
	close curscol
	deallocate curscol
	return
END
 
WHILE @@FETCH_STATUS=0
BEGIN
	IF @dataType in (''varchar'',''char'',''nchar'',''nvarchar'')
	BEGIN
		SET @stringData=@stringData+''''''''+''''''+isnull(''''''''''+''''''''''+ replace(''+@colName+'','''''''''''''''','''''''''''''''''''''''')+''''''''''+'''''''''',''''NULL'''')+'''',''''+''
	END
	ELSE
	if @dataType in (''text'',''ntext'') --if the datatype is text or something else 
	BEGIN
		SET @stringData=@stringData+''''''''''''''''''+isnull(replace(cast(''+@colName+'' as varchar(2000)),'''''''''''''''',''''''''''''''''''''''''),'''''''')+'''''''''''',''''+''
	END
	ELSE
	IF @dataType = ''money'' --because money doesn''t get converted from varchar implicitly
	BEGIN
		SET @stringData=@stringData+''''''convert(money,''''''''''''+isnull(cast(''+@colName+'' as varchar(200)),''''0.0000'''')+''''''''''''),''''+''
	END
	ELSE 
	IF @dataType=''datetime''
	BEGIN
		SET @stringData=@stringData+''''''convert(datetime,''+''''''+isnull(''''''''''+''''''''''+convert(varchar(200),''+@colName+'',121)+''''''''''+'''''''''',''''NULL'''')+'''',121),''''+''
	END
	ELSE 
	IF @dataType=''image'' 
	BEGIN
		SET @stringData=@stringData+''''''''''''''''''+isnull(cast(convert(varbinary,''+@colName+'') as varchar(6)),''''0'''')+'''''''''''',''''+''
	END
	ELSE --presuming the data type is int,bit,numeric,decimal 
	BEGIN
		SET @stringData=@stringData+''''''''+''''''+isnull(''''''''''+''''''''''+convert(varchar(200),''+@colName+'')+''''''''''+'''''''''',''''NULL'''')+'''',''''+''
	END
 
	SET @string=@string+@colName+'',''
 
FETCH NEXT FROM cursCol INTO @colName,@dataType
END
DECLARE @Query nvarchar(4000)
 
SET @query =''SELECT ''''''+substring(@string,0,len(@string)) + '') VALUES(''''+ '' + substring(@stringData,0,len(@stringData)-2)+''''''+'''')'''' FROM '' + @schemaName + ''.'' + @tableName
print @query
exec sp_executesql @query
--select @query
 
CLOSE cursCol
DEALLOCATE cursCol' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetLoginOfSPID]    Script Date: 06/23/2012 10:45:05 ******/
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
/****** Object:  Table [dbo].[Test_SQL_DataTypes]    Script Date: 06/23/2012 10:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Test_SQL_DataTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Test_SQL_DataTypes](
	[ID] [int] NOT NULL,
	[dt_datetime] [date] NULL,
	[dt_Time] [datetime] NULL,
	[dt_Varchar] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dt_Nvarchar] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dt_char_4] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dt_Nvarchar_MAX_COMMENTS] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dt_Bit] [bit] NULL,
	[dt_Decimal_10_4] [decimal](10, 4) NULL,
	[dt_Money] [money] NULL,
	[dt_Image] [image] NULL,
	[dt_Numeric_10_3] [numeric](10, 4) NULL,
 CONSTRAINT [PK_Test_SQL_DataTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Test_Loc_Count]    Script Date: 06/23/2012 10:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Test_Loc_Count]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Test_Loc_Count](
	[Loc_Count_ID] [int] IDENTITY(1,1) NOT NULL,
	[Location_ID] [int] NULL,
	[Loc_Count_Date] [date] NULL,
	[CoinsIn] [money] NULL,
	[Tax_State] [money] NULL,
	[Tax_County] [money] NULL,
	[Tax_Other] [money] NULL,
	[Tax_Total] [money] NULL,
	[Gross] [money] NULL,
	[Split_Operator] [money] NULL,
	[Split_Location] [money] NULL,
	[Advance] [money] NULL,
	[Notes] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Counter_FirstName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Counter_LastName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Record_Modified_Date] [datetime] NULL,
	[Modifiers_Login] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Data_Is_Dummy] [bit] NULL,
	[Flagged_for_Deletion] [bit] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Test_Loc_Count] ON
INSERT [dbo].[Test_Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Test_Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Test_Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Test_Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Test_Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (5, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Test_Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Test_Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Test_Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (8, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Test_Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Test_Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (10, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Test_Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (11, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Test_Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (12, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Test_Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (13, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Test_Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (14, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Test_Loc_Count] OFF
/****** Object:  Table [dbo].[test]    Script Date: 06/23/2012 10:45:01 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Lookup_Transaction_Type]    Script Date: 06/23/2012 10:44:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Lookup_Mach_Class]    Script Date: 06/23/2012 10:44:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Monthly_Expenses]    Script Date: 06/23/2012 10:44:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Machine_History]    Script Date: 06/23/2012 10:44:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Location_History]    Script Date: 06/23/2012 10:44:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Location_Count]    Script Date: 06/23/2012 10:44:53 ******/
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
/****** Object:  Table [dbo].[z_a_Customer]    Script Date: 06/23/2012 10:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[z_a_Customer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[z_a_Customer](
	[customer_ID] [int] NOT NULL,
	[Customer_Name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Coalesce_Test] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_z_a_Customer] PRIMARY KEY CLUSTERED 
(
	[customer_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[z_a_Customer] ([customer_ID], [Customer_Name], [Coalesce_Test]) VALUES (1, N'bill bubles', NULL)
INSERT [dbo].[z_a_Customer] ([customer_ID], [Customer_Name], [Coalesce_Test]) VALUES (2, N'Lilly Dog', N'great dog ')
INSERT [dbo].[z_a_Customer] ([customer_ID], [Customer_Name], [Coalesce_Test]) VALUES (3, N'Arnold Termination', NULL)
/****** Object:  Table [dbo].[Workout_Got_Number]    Script Date: 06/23/2012 10:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Workout_Got_Number]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Workout_Got_Number](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[Day] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Time] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Place] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Approach] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Method] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Rank] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[M_Detials] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Drink] [bit] NULL,
	[Smoke] [bit] NULL,
	[Card] [bit] NULL,
	[Get_No] [bit] NULL,
	[Touch] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Improve] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Com] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nick] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Avail] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Duration] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HomeAdd] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WorkAdd] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NonVacAdd] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BornIn] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Money] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Age] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Eyes] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Other] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Smoker] [bit] NULL,
	[Mobile] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OtherNo] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Workout_Got_Number] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[WorkOut]    Script Date: 06/23/2012 10:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkOut]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[WorkOut](
	[workout_ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[DeadLift_final_set_Max] [smallint] NULL,
	[Deadlift_Max_Weight] [smallint] NULL,
	[ABS_Max_total_reps] [smallint] NULL,
	[ABS_Max_total_reps_wieght] [smallint] NULL,
	[ABS_Max_2Min] [smallint] NULL,
	[Bench_max] [smallint] NULL,
	[Bench_final_set_Max] [smallint] NULL,
	[Bench_Max_wieght] [smallint] NULL,
	[PushUp_final_Set_max] [smallint] NULL,
	[Push_ups_Max_2min] [smallint] NULL,
	[Biceps_curls_final_set_Max] [smallint] NULL,
	[Biceps_curls_Wieght] [smallint] NULL,
	[Biceps_Plate_final_set_Max] [smallint] NULL,
	[Biceps_plate_Weight] [smallint] NULL,
	[TBack_final_set_max] [smallint] NULL,
	[TBack_Max_Weight] [smallint] NULL,
	[Delt_Mil_press_final_Set_Max] [smallint] NULL,
	[Delt_Mil_Press_Weight] [smallint] NULL,
	[Deltiod_2Min] [bit] NULL,
	[Obliques_final_rep_Max] [smallint] NULL,
	[Obligues_Wieght] [smallint] NULL,
	[Run_3_sprint] [bit] NULL,
	[Run_2mile_timed] [time](7) NULL,
	[DataISDumy] [bit] NULL,
 CONSTRAINT [PK_WorkOut] PRIMARY KEY CLUSTERED 
(
	[workout_ID] ASC,
	[Date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[WorkOut] ON
INSERT [dbo].[WorkOut] ([workout_ID], [Date], [DeadLift_final_set_Max], [Deadlift_Max_Weight], [ABS_Max_total_reps], [ABS_Max_total_reps_wieght], [ABS_Max_2Min], [Bench_max], [Bench_final_set_Max], [Bench_Max_wieght], [PushUp_final_Set_max], [Push_ups_Max_2min], [Biceps_curls_final_set_Max], [Biceps_curls_Wieght], [Biceps_Plate_final_set_Max], [Biceps_plate_Weight], [TBack_final_set_max], [TBack_Max_Weight], [Delt_Mil_press_final_Set_Max], [Delt_Mil_Press_Weight], [Deltiod_2Min], [Obliques_final_rep_Max], [Obligues_Wieght], [Run_3_sprint], [Run_2mile_timed], [DataISDumy]) VALUES (1, CAST(0x0000A06300000000 AS DateTime), 25, 80, 70, 0, NULL, NULL, NULL, NULL, 17, NULL, 15, 65, NULL, NULL, 14, 65, 10, 65, 1, 30, 25, 1, NULL, NULL)
INSERT [dbo].[WorkOut] ([workout_ID], [Date], [DeadLift_final_set_Max], [Deadlift_Max_Weight], [ABS_Max_total_reps], [ABS_Max_total_reps_wieght], [ABS_Max_2Min], [Bench_max], [Bench_final_set_Max], [Bench_Max_wieght], [PushUp_final_Set_max], [Push_ups_Max_2min], [Biceps_curls_final_set_Max], [Biceps_curls_Wieght], [Biceps_Plate_final_set_Max], [Biceps_plate_Weight], [TBack_final_set_max], [TBack_Max_Weight], [Delt_Mil_press_final_Set_Max], [Delt_Mil_Press_Weight], [Deltiod_2Min], [Obliques_final_rep_Max], [Obligues_Wieght], [Run_3_sprint], [Run_2mile_timed], [DataISDumy]) VALUES (2, CAST(0x0000A06800000000 AS DateTime), NULL, 80, NULL, NULL, 60, NULL, NULL, NULL, 20, NULL, NULL, 65, NULL, 25, NULL, 65, 12, 65, 1, 30, 25, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[WorkOut] OFF
/****** Object:  StoredProcedure [dbo].[sp_Insert_vw_Mach_Count]    Script Date: 06/23/2012 10:44:53 ******/
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
/****** Object:  Table [dbo].[zzz_Child]    Script Date: 06/23/2012 10:45:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[zzz_Child]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[zzz_Child](
	[Mach_Count_ID] [int] IDENTITY(1,1) NOT NULL,
	[Loc_Count_ID] [int] NOT NULL,
	[CoinsIn] [money] NOT NULL,
	[CoinsBils] [money] NOT NULL,
	[Nullable_Mach_Rating] [int] NULL,
 CONSTRAINT [PK_zzz_Child] PRIMARY KEY CLUSTERED 
(
	[Mach_Count_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[zz_aParent]    Script Date: 06/23/2012 10:45:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[zz_aParent]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[zz_aParent](
	[Loc_Count_ID] [int] IDENTITY(1,1) NOT NULL,
	[Loc_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Loc] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DOP] [date] NOT NULL,
	[CoinsIN] [money] NOT NULL,
	[Nullable_Rating] [int] NULL,
 CONSTRAINT [PK_zz_Parent] PRIMARY KEY CLUSTERED 
(
	[Loc_Count_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[zz_aParent] ON
INSERT [dbo].[zz_aParent] ([Loc_Count_ID], [Loc_code], [Loc], [DOP], [CoinsIN], [Nullable_Rating]) VALUES (1, N'd1', N'location  ', CAST(0x26350B00 AS Date), 1.0000, 6)
SET IDENTITY_INSERT [dbo].[zz_aParent] OFF
/****** Object:  Table [dbo].[z_c_Purchases]    Script Date: 06/23/2012 10:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[z_c_Purchases]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[z_c_Purchases](
	[Purchase_ID] [int] IDENTITY(1,1) NOT NULL,
	[Customer_ID] [int] NULL,
	[Item] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[z_c_Purchases] ON
INSERT [dbo].[z_c_Purchases] ([Purchase_ID], [Customer_ID], [Item]) VALUES (1, 1, N'month subscription')
INSERT [dbo].[z_c_Purchases] ([Purchase_ID], [Customer_ID], [Item]) VALUES (3, 2, N'qty subscription')
INSERT [dbo].[z_c_Purchases] ([Purchase_ID], [Customer_ID], [Item]) VALUES (4, 3, N'semi annual subscri')
SET IDENTITY_INSERT [dbo].[z_c_Purchases] OFF
/****** Object:  Table [dbo].[z_b_Address]    Script Date: 06/23/2012 10:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[z_b_Address]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[z_b_Address](
	[Address_ID] [int] IDENTITY(1,1) NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[Street] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[z_b_Address] ON
INSERT [dbo].[z_b_Address] ([Address_ID], [Customer_ID], [Street]) VALUES (1, 1, N'A1A south')
INSERT [dbo].[z_b_Address] ([Address_ID], [Customer_ID], [Street]) VALUES (2, 2, NULL)
SET IDENTITY_INSERT [dbo].[z_b_Address] OFF
/****** Object:  Table [dbo].[zz_Child]    Script Date: 06/23/2012 10:45:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[zz_Child]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[zz_Child](
	[Mach_Count_ID] [int] IDENTITY(1,1) NOT NULL,
	[Loc_Count_ID] [int] NOT NULL,
	[CoinsIn] [money] NOT NULL,
	[CoinsBils] [money] NOT NULL,
	[Nullable_Mach_Rating] [int] NULL,
 CONSTRAINT [PK_zz_Child] PRIMARY KEY CLUSTERED 
(
	[Mach_Count_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[zz_Child] ON
INSERT [dbo].[zz_Child] ([Mach_Count_ID], [Loc_Count_ID], [CoinsIn], [CoinsBils], [Nullable_Mach_Rating]) VALUES (1, 1, 1.0000, 175.0000, 7)
INSERT [dbo].[zz_Child] ([Mach_Count_ID], [Loc_Count_ID], [CoinsIn], [CoinsBils], [Nullable_Mach_Rating]) VALUES (2, 1, 1.0000, 175.0000, 7)
INSERT [dbo].[zz_Child] ([Mach_Count_ID], [Loc_Count_ID], [CoinsIn], [CoinsBils], [Nullable_Mach_Rating]) VALUES (3, 1, 1.0000, 175.0000, 7)
SET IDENTITY_INSERT [dbo].[zz_Child] OFF
/****** Object:  StoredProcedure [dbo].[usp_WorkOutUpdate]    Script Date: 06/23/2012 10:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_WorkOutUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_WorkOutUpdate] 
    @workout_ID int,
    @Date datetime,
    @DeadLift_final_set_Max smallint,
    @Deadlift_Max_Weight smallint,
    @ABS_Max_total_reps smallint,
    @ABS_Max_total_reps_wieght smallint,
    @ABS_Max_2Min smallint,
    @Bench_max smallint,
    @Bench_final_set_Max smallint,
    @Bench_Max_wieght smallint,
    @PushUp_final_Set_max smallint,
    @Push_ups_Max_2min smallint,
    @Biceps_curls_final_set_Max smallint,
    @Biceps_curls_Wieght smallint,
    @Biceps_Plate_final_set_Max smallint,
    @Biceps_plate_Weight smallint,
    @TBack_final_set_max smallint,
    @TBack_Max_Weight smallint,
    @Delt_Mil_press_final_Set_Max smallint,
    @Delt_Mil_Press_Weight smallint,
    @Deltiod_2Min bit,
    @Obliques_final_rep_Max smallint,
    @Obligues_Wieght smallint,
    @Run_3_sprint bit,
    @Run_2mile_timed time,
    @DataISDumy bit
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[WorkOut]
	SET    [Date] = @Date, [DeadLift_final_set_Max] = @DeadLift_final_set_Max, [Deadlift_Max_Weight] = @Deadlift_Max_Weight, [ABS_Max_total_reps] = @ABS_Max_total_reps, [ABS_Max_total_reps_wieght] = @ABS_Max_total_reps_wieght, [ABS_Max_2Min] = @ABS_Max_2Min, [Bench_max] = @Bench_max, [Bench_final_set_Max] = @Bench_final_set_Max, [Bench_Max_wieght] = @Bench_Max_wieght, [PushUp_final_Set_max] = @PushUp_final_Set_max, [Push_ups_Max_2min] = @Push_ups_Max_2min, [Biceps_curls_final_set_Max] = @Biceps_curls_final_set_Max, [Biceps_curls_Wieght] = @Biceps_curls_Wieght, [Biceps_Plate_final_set_Max] = @Biceps_Plate_final_set_Max, [Biceps_plate_Weight] = @Biceps_plate_Weight, [TBack_final_set_max] = @TBack_final_set_max, [TBack_Max_Weight] = @TBack_Max_Weight, [Delt_Mil_press_final_Set_Max] = @Delt_Mil_press_final_Set_Max, [Delt_Mil_Press_Weight] = @Delt_Mil_Press_Weight, [Deltiod_2Min] = @Deltiod_2Min, [Obliques_final_rep_Max] = @Obliques_final_rep_Max, [Obligues_Wieght] = @Obligues_Wieght, [Run_3_sprint] = @Run_3_sprint, [Run_2mile_timed] = @Run_2mile_timed, [DataISDumy] = @DataISDumy
	WHERE  [workout_ID] = @workout_ID
	       AND [Date] = @Date
	
	-- Begin Return Select <- do not remove
	SELECT [workout_ID], [Date], [DeadLift_final_set_Max], [Deadlift_Max_Weight], [ABS_Max_total_reps], [ABS_Max_total_reps_wieght], [ABS_Max_2Min], [Bench_max], [Bench_final_set_Max], [Bench_Max_wieght], [PushUp_final_Set_max], [Push_ups_Max_2min], [Biceps_curls_final_set_Max], [Biceps_curls_Wieght], [Biceps_Plate_final_set_Max], [Biceps_plate_Weight], [TBack_final_set_max], [TBack_Max_Weight], [Delt_Mil_press_final_Set_Max], [Delt_Mil_Press_Weight], [Deltiod_2Min], [Obliques_final_rep_Max], [Obligues_Wieght], [Run_3_sprint], [Run_2mile_timed], [DataISDumy]
	FROM   [dbo].[WorkOut]
	WHERE  [workout_ID] = @workout_ID
	       AND [Date] = @Date	
	-- End Return Select <- do not remove

	COMMIT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_WorkOutSelect]    Script Date: 06/23/2012 10:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_WorkOutSelect]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_WorkOutSelect] 
    @workout_ID INT,
    @Date DATETIME
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [workout_ID], [Date], [DeadLift_final_set_Max], [Deadlift_Max_Weight], [ABS_Max_total_reps], [ABS_Max_total_reps_wieght], [ABS_Max_2Min], [Bench_max], [Bench_final_set_Max], [Bench_Max_wieght], [PushUp_final_Set_max], [Push_ups_Max_2min], [Biceps_curls_final_set_Max], [Biceps_curls_Wieght], [Biceps_Plate_final_set_Max], [Biceps_plate_Weight], [TBack_final_set_max], [TBack_Max_Weight], [Delt_Mil_press_final_Set_Max], [Delt_Mil_Press_Weight], [Deltiod_2Min], [Obliques_final_rep_Max], [Obligues_Wieght], [Run_3_sprint], [Run_2mile_timed], [DataISDumy] 
	FROM   [dbo].[WorkOut] 
	WHERE  ([workout_ID] = @workout_ID OR @workout_ID IS NULL) 
	       AND ([Date] = @Date OR @Date IS NULL) 

	COMMIT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_WorkOutInsert]    Script Date: 06/23/2012 10:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_WorkOutInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_WorkOutInsert] 
    @Date datetime,
    @DeadLift_final_set_Max smallint,
    @Deadlift_Max_Weight smallint,
    @ABS_Max_total_reps smallint,
    @ABS_Max_total_reps_wieght smallint,
    @ABS_Max_2Min smallint,
    @Bench_max smallint,
    @Bench_final_set_Max smallint,
    @Bench_Max_wieght smallint,
    @PushUp_final_Set_max smallint,
    @Push_ups_Max_2min smallint,
    @Biceps_curls_final_set_Max smallint,
    @Biceps_curls_Wieght smallint,
    @Biceps_Plate_final_set_Max smallint,
    @Biceps_plate_Weight smallint,
    @TBack_final_set_max smallint,
    @TBack_Max_Weight smallint,
    @Delt_Mil_press_final_Set_Max smallint,
    @Delt_Mil_Press_Weight smallint,
    @Deltiod_2Min bit,
    @Obliques_final_rep_Max smallint,
    @Obligues_Wieght smallint,
    @Run_3_sprint bit,
    @Run_2mile_timed time,
    @DataISDumy bit
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[WorkOut] ([Date], [DeadLift_final_set_Max], [Deadlift_Max_Weight], [ABS_Max_total_reps], [ABS_Max_total_reps_wieght], [ABS_Max_2Min], [Bench_max], [Bench_final_set_Max], [Bench_Max_wieght], [PushUp_final_Set_max], [Push_ups_Max_2min], [Biceps_curls_final_set_Max], [Biceps_curls_Wieght], [Biceps_Plate_final_set_Max], [Biceps_plate_Weight], [TBack_final_set_max], [TBack_Max_Weight], [Delt_Mil_press_final_Set_Max], [Delt_Mil_Press_Weight], [Deltiod_2Min], [Obliques_final_rep_Max], [Obligues_Wieght], [Run_3_sprint], [Run_2mile_timed], [DataISDumy])
	SELECT @Date, @DeadLift_final_set_Max, @Deadlift_Max_Weight, @ABS_Max_total_reps, @ABS_Max_total_reps_wieght, @ABS_Max_2Min, @Bench_max, @Bench_final_set_Max, @Bench_Max_wieght, @PushUp_final_Set_max, @Push_ups_Max_2min, @Biceps_curls_final_set_Max, @Biceps_curls_Wieght, @Biceps_Plate_final_set_Max, @Biceps_plate_Weight, @TBack_final_set_max, @TBack_Max_Weight, @Delt_Mil_press_final_Set_Max, @Delt_Mil_Press_Weight, @Deltiod_2Min, @Obliques_final_rep_Max, @Obligues_Wieght, @Run_3_sprint, @Run_2mile_timed, @DataISDumy
	
	-- Begin Return Select <- do not remove
	SELECT [workout_ID], [Date], [DeadLift_final_set_Max], [Deadlift_Max_Weight], [ABS_Max_total_reps], [ABS_Max_total_reps_wieght], [ABS_Max_2Min], [Bench_max], [Bench_final_set_Max], [Bench_Max_wieght], [PushUp_final_Set_max], [Push_ups_Max_2min], [Biceps_curls_final_set_Max], [Biceps_curls_Wieght], [Biceps_Plate_final_set_Max], [Biceps_plate_Weight], [TBack_final_set_max], [TBack_Max_Weight], [Delt_Mil_press_final_Set_Max], [Delt_Mil_Press_Weight], [Deltiod_2Min], [Obliques_final_rep_Max], [Obligues_Wieght], [Run_3_sprint], [Run_2mile_timed], [DataISDumy]
	FROM   [dbo].[WorkOut]
	WHERE  [workout_ID] = SCOPE_IDENTITY()
	       AND [Date] = @Date
	-- End Return Select <- do not remove
               
	COMMIT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_WorkOutDelete]    Script Date: 06/23/2012 10:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_WorkOutDelete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_WorkOutDelete] 
    @workout_ID int,
    @Date datetime
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[WorkOut]
	WHERE  [workout_ID] = @workout_ID
	       AND [Date] = @Date

	COMMIT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Workout_Got_NumberUpdate]    Script Date: 06/23/2012 10:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Workout_Got_NumberUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_Workout_Got_NumberUpdate] 
    @ID int,
    @Date date,
    @Day nvarchar(50),
    @Time nvarchar(50),
    @Place nvarchar(50),
    @Approach nvarchar(50),
    @Method nvarchar(50),
    @Rank nvarchar(50),
    @M_Detials nvarchar(200),
    @Drink bit,
    @Smoke bit,
    @Card bit,
    @Get_No bit,
    @Touch nvarchar(100),
    @Improve nvarchar(200),
    @Com nvarchar(200),
    @FName nvarchar(50),
    @LName nvarchar(50),
    @Nick nvarchar(50),
    @Avail nvarchar(50),
    @Duration nvarchar(50),
    @HomeAdd nvarchar(50),
    @WorkAdd nvarchar(50),
    @NonVacAdd nvarchar(50),
    @BornIn nvarchar(50),
    @Money nvarchar(50),
    @Age nvarchar(50),
    @Eyes nvarchar(50),
    @Other nvarchar(200),
    @Smoker bit,
    @Mobile nvarchar(50),
    @OtherNo nvarchar(50),
    @Email nvarchar(50)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Workout_Got_Number]
	SET    [Date] = @Date, [Day] = @Day, [Time] = @Time, [Place] = @Place, [Approach] = @Approach, [Method] = @Method, [Rank] = @Rank, [M_Detials] = @M_Detials, [Drink] = @Drink, [Smoke] = @Smoke, [Card] = @Card, [Get_No] = @Get_No, [Touch] = @Touch, [Improve] = @Improve, [Com] = @Com, [FName] = @FName, [LName] = @LName, [Nick] = @Nick, [Avail] = @Avail, [Duration] = @Duration, [HomeAdd] = @HomeAdd, [WorkAdd] = @WorkAdd, [NonVacAdd] = @NonVacAdd, [BornIn] = @BornIn, [Money] = @Money, [Age] = @Age, [Eyes] = @Eyes, [Other] = @Other, [Smoker] = @Smoker, [Mobile] = @Mobile, [OtherNo] = @OtherNo, [Email] = @Email
	WHERE  [ID] = @ID
	
	-- Begin Return Select <- do not remove
	SELECT [ID], [Date], [Day], [Time], [Place], [Approach], [Method], [Rank], [M_Detials], [Drink], [Smoke], [Card], [Get_No], [Touch], [Improve], [Com], [FName], [LName], [Nick], [Avail], [Duration], [HomeAdd], [WorkAdd], [NonVacAdd], [BornIn], [Money], [Age], [Eyes], [Other], [Smoker], [Mobile], [OtherNo], [Email]
	FROM   [dbo].[Workout_Got_Number]
	WHERE  [ID] = @ID	
	-- End Return Select <- do not remove

	COMMIT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Workout_Got_NumberSelect]    Script Date: 06/23/2012 10:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Workout_Got_NumberSelect]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_Workout_Got_NumberSelect] 
    @ID INT
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [ID], [Date], [Day], [Time], [Place], [Approach], [Method], [Rank], [M_Detials], [Drink], [Smoke], [Card], [Get_No], [Touch], [Improve], [Com], [FName], [LName], [Nick], [Avail], [Duration], [HomeAdd], [WorkAdd], [NonVacAdd], [BornIn], [Money], [Age], [Eyes], [Other], [Smoker], [Mobile], [OtherNo], [Email] 
	FROM   [dbo].[Workout_Got_Number] 
	WHERE  ([ID] = @ID OR @ID IS NULL) 

	COMMIT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Workout_Got_NumberInsert]    Script Date: 06/23/2012 10:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Workout_Got_NumberInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_Workout_Got_NumberInsert] 
    @Date date,
    @Day nvarchar(50),
    @Time nvarchar(50),
    @Place nvarchar(50),
    @Approach nvarchar(50),
    @Method nvarchar(50),
    @Rank nvarchar(50),
    @M_Detials nvarchar(200),
    @Drink bit,
    @Smoke bit,
    @Card bit,
    @Get_No bit,
    @Touch nvarchar(100),
    @Improve nvarchar(200),
    @Com nvarchar(200),
    @FName nvarchar(50),
    @LName nvarchar(50),
    @Nick nvarchar(50),
    @Avail nvarchar(50),
    @Duration nvarchar(50),
    @HomeAdd nvarchar(50),
    @WorkAdd nvarchar(50),
    @NonVacAdd nvarchar(50),
    @BornIn nvarchar(50),
    @Money nvarchar(50),
    @Age nvarchar(50),
    @Eyes nvarchar(50),
    @Other nvarchar(200),
    @Smoker bit,
    @Mobile nvarchar(50),
    @OtherNo nvarchar(50),
    @Email nvarchar(50)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[Workout_Got_Number] ([Date], [Day], [Time], [Place], [Approach], [Method], [Rank], [M_Detials], [Drink], [Smoke], [Card], [Get_No], [Touch], [Improve], [Com], [FName], [LName], [Nick], [Avail], [Duration], [HomeAdd], [WorkAdd], [NonVacAdd], [BornIn], [Money], [Age], [Eyes], [Other], [Smoker], [Mobile], [OtherNo], [Email])
	SELECT @Date, @Day, @Time, @Place, @Approach, @Method, @Rank, @M_Detials, @Drink, @Smoke, @Card, @Get_No, @Touch, @Improve, @Com, @FName, @LName, @Nick, @Avail, @Duration, @HomeAdd, @WorkAdd, @NonVacAdd, @BornIn, @Money, @Age, @Eyes, @Other, @Smoker, @Mobile, @OtherNo, @Email
	
	-- Begin Return Select <- do not remove
	SELECT [ID], [Date], [Day], [Time], [Place], [Approach], [Method], [Rank], [M_Detials], [Drink], [Smoke], [Card], [Get_No], [Touch], [Improve], [Com], [FName], [LName], [Nick], [Avail], [Duration], [HomeAdd], [WorkAdd], [NonVacAdd], [BornIn], [Money], [Age], [Eyes], [Other], [Smoker], [Mobile], [OtherNo], [Email]
	FROM   [dbo].[Workout_Got_Number]
	WHERE  [ID] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Workout_Got_NumberDelete]    Script Date: 06/23/2012 10:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Workout_Got_NumberDelete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_Workout_Got_NumberDelete] 
    @ID int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[Workout_Got_Number]
	WHERE  [ID] = @ID

	COMMIT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UPDATE_Workout_Got_Number]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UPDATE_Workout_Got_Number]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE proc [dbo].[usp_UPDATE_Workout_Got_Number]
@ID int = null 
	  ,@Date date = null 
      ,@Day nvarchar(50) = null 
      ,@Time nvarchar(50) = null 
      ,@Place nvarchar(50) = null 
      ,@Approach nvarchar(50) = null 
      ,@Method nvarchar(50) = null 
      ,@Rank nvarchar(50) = null 
      ,@M_Detials nvarchar(200) = null 
      ,@Drink bit = null 
      ,@Smoke bit = null 
      ,@Card bit = null 
      ,@Get_No bit = null 
      ,@Touch nvarchar(100) = null 
      ,@Improve nvarchar(200) = null 
      ,@Com nvarchar(200) = null 
      ,@FName nvarchar(50) = null 
      ,@LName nvarchar(50) = null 
      ,@Nick nvarchar(50) = null 
      ,@Avail nvarchar(50) = null 
      ,@Duration nvarchar(50) = null 
      ,@HomeAdd nvarchar(50) = null 
      ,@WorkAdd nvarchar(50) = null 
      ,@NonVacAdd nvarchar(50) = null 
      ,@BornIn nvarchar(50) = null 
      ,@Money nvarchar(50) = null 
      ,@Age nvarchar(50) = null 
      ,@Eyes nvarchar(50) = null 
      ,@Other nvarchar(200) = null 
      ,@Smoker bit = null 
      ,@Mobile nvarchar(50) = null 
      ,@OtherNo nvarchar(50) = null 
      ,@Email nvarchar(50) = null 
as
begin
set nocount on;
UPDATE [Action_Amusements_Winhost].[dbo].[Workout_Got_Number]
   SET [Date] = @Date 
      ,[Day] = @Day 
      ,[Time] = @Time 
      ,[Place] = @Place 
      ,[Approach] = @Approach 
      ,[Method] = @Method 
      ,[Rank] = @Rank 
      ,[M_Detials] = @M_Detials 
      ,[Drink] = @Drink 
      ,[Smoke] = @Smoke 
      ,[Card] = @Card 
      ,[Get_No] = @Get_No 
      ,[Touch] = @Touch 
      ,[Improve] = @Improve 
      ,[Com] = @Com 
      ,[FName] = @FName 
      ,[LName] = @LName 
      ,[Nick] = @Nick 
      ,[Avail] = @Avail 
      ,[Duration] = @Duration 
      ,[HomeAdd] = @HomeAdd 
      ,[WorkAdd] = @WorkAdd 
      ,[NonVacAdd] = @NonVacAdd 
      ,[BornIn] = @BornIn 
      ,[Money] = @Money 
      ,[Age] = @Age 
      ,[Eyes] = @Eyes 
      ,[Other] = @Other 
      ,[Smoker] = @Smoker 
      ,[Mobile] = @Mobile 
      ,[OtherNo] = @OtherNo 
      ,[Email] = @Email 
 WHERE ID= @ID


end' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UPDATE_Workout]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UPDATE_Workout]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_UPDATE_Workout]
	    @workout_ID int--filter
	  ,@Date  datetime 
      ,@DeadLift_final_set_Max    smallint  
      ,@Deadlift_Max_Weight     smallint  
      ,@ABS_Max_total_reps     smallint  
      ,@ABS_Max_total_reps_wieght     smallint  
      ,@ABS_Max_2Min     smallint  
      ,@Bench_max   smallint  
      ,@Bench_final_set_Max    smallint  
      ,@Bench_Max_wieght     smallint  
      ,@PushUp_final_Set_max     smallint  
      ,@Push_ups_Max_2min     smallint  
      ,@Biceps_curls_final_set_Max     smallint  
      ,@Biceps_curls_Wieght     smallint  
      ,@Biceps_Plate_final_set_Max     smallint  
      ,@Biceps_plate_Weight     smallint  
      ,@TBack_final_set_max  smallint  
      ,@TBack_Max_Weight     smallint  
      ,@Delt_Mil_press_final_Set_Max     smallint  
      ,@Delt_Mil_Press_Weight     smallint  
      ,@Deltiod_2Min    bit  
      ,@Obliques_final_rep_Max     smallint  
      ,@Obligues_Wieght     smallint  
      ,@Run_3_sprint     bit  
      ,@Run_2mile_timed     time
      ,@DataISDumy    bit  
AS
BEGIN
SET NOCOUNT ON;
UPDATE [Action_Amusements_Winhost].[dbo].[WorkOut]
   SET [Date] = @Date
      ,[DeadLift_final_set_Max] = @DeadLift_final_set_Max
      ,[Deadlift_Max_Weight] = @Deadlift_Max_Weight
      ,[ABS_Max_total_reps] = @ABS_Max_total_reps
      ,[ABS_Max_total_reps_wieght] = @ABS_Max_total_reps_wieght
      ,[ABS_Max_2Min] = @ABS_Max_2Min
      ,[Bench_max] = @Bench_max
      ,[Bench_final_set_Max] = @Bench_final_set_Max
      ,[Bench_Max_wieght] = @Bench_Max_wieght
      ,[PushUp_final_Set_max] = @PushUp_final_Set_max
      ,[Push_ups_Max_2min] = @Push_ups_Max_2min
      ,[Biceps_curls_final_set_Max] = @Biceps_curls_final_set_Max
      ,[Biceps_curls_Wieght] = @Biceps_curls_Wieght
      ,[Biceps_Plate_final_set_Max] = @Biceps_Plate_final_set_Max
      ,[Biceps_plate_Weight] = @Biceps_plate_Weight
      ,[TBack_final_set_max] = @TBack_final_set_max
      ,[TBack_Max_Weight] = @TBack_Max_Weight
      ,[Delt_Mil_press_final_Set_Max] = @Delt_Mil_press_final_Set_Max
      ,[Delt_Mil_Press_Weight] = @Delt_Mil_Press_Weight
      ,[Deltiod_2Min] = @Deltiod_2Min
      ,[Obliques_final_rep_Max] = @Obliques_final_rep_Max
      ,[Obligues_Wieght] = @Obligues_Wieght
      ,[Run_3_sprint] = @Run_3_sprint
      ,[Run_2mile_timed] = @Run_2mile_timed
      ,[DataISDumy] = @DataISDumy
 WHERE workout_ID = @workout_ID
 
 END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UPDATE_Interviews]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UPDATE_Interviews]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'---------STEP-5 copy and paste the create tables DDL into Declarant (top) section of UPDATE
---------STEP-6 copy and paste the Declarant (top) section of UPDATE to the declarant section of INSERT less the @ID

CREATE procedure [dbo].[usp_UPDATE_Interviews]
	@ID int ,--filter
	@Date date = NULL,--yes alow it to be passed as null,
	-- but since it cannot be null in biz rules (therefore in the table) we handle it implicitly for our user below
	@Interview_Number int = NULL ,
	@Day varchar(50) =  NULL ,
	@Time varchar(50) =  NULL ,
	@Place varchar(50) =  NULL ,
	@Lead_Source varchar(50) =  NULL ,
	@Staffing bit =  NULL ,
	@Interviewer1_Name varchar(50) =  NULL ,
	@Interviewer1_Role varchar(50) =  NULL ,
	@Interviewer2_Name varchar(50) =  NULL ,
	@Interviewer2_Role varchar(50) =  NULL ,
	@Interviewer3_Name varchar(50) =  NULL ,
	@Interviewer3_Role varchar(50) =  NULL ,
	@Interviewer_Phone varchar(50) =  NULL ,
	 @Interview_email varchar(50) =  NULL , 
	 @HR_Phone varchar(50) =  NULL ,
	 @HR_email varchar(50) =  NULL ,
	 @Recuiter_Phone varchar(50) =  NULL ,
	 @Recuiter_email varchar(50) =  NULL ,
	 @Other_Phone varchar(50) =  NULL ,
	 @Other_email varchar(50) =  NULL ,
	 @Interview_Type varchar(50) =  NULL ,
	 @Test_Details varchar(200) =  NULL ,
	 @Tech_Q_A varchar(200) =  NULL ,
	 @Negotiation_Details varchar(200) =  NULL ,
	 @Details varchar(200) =  NULL ,
	 @Comments varchar(200) =  NULL ,
	 @Improvements varchar(200) =  NULL ,
	 @Notes varchar(200) =  NULL ,
	 @Got_Job bit  =  NULL ,
	 @Position varchar(50) =  NULL ,
	 @Pay varchar(50) =  NULL ,
	 @Comp_Name varchar(50) =  NULL ,
	 @Comp_Number varchar(50) =  NULL ,
	 @Comp_URL varchar(50) =  NULL ,
	 @Duration varchar(50)  =  NULL ,
	 @How_Ended varchar(50)  = NULL
as
begin
----handle expected ''non nulls'' - using "Pick em up(put in @vars), Sweep Lane (Delete row), put back down (re-Insert into row columns)
----This is NOT ''set based'' because would not work if more than one row being updated

set nocount on;
UPDATE [Action_Amusements_Winhost].[dbo].[Interviews]
---------STEP-7--copy do your findNreplace magic 
   SET 
    [Date]=@Date  ,
	Interview_Number = @Interview_Number	,
	[Day]  = @Day   ,
	[Time]  = @Time   ,
	Place  = @Place    ,
	Lead_Source  = @Lead_Source   ,
	Staffing  = @Staffing     ,
	Interviewer1_Name  = @Interviewer1_Name   ,
	Interviewer1_Role  = @Interviewer1_Role   ,
	Interviewer2_Name  =  @Interviewer2_Name  ,
	Interviewer2_Role  =  @Interviewer2_Role  ,
	Interviewer3_Name  =  @Interviewer3_Name  ,
	Interviewer3_Role  = @Interviewer3_Role   ,
	Interviewer_Phone  =  @Interviewer_Phone  ,
	 Interview_email  =  @Interview_email   ,
	 HR_Phone  = @HR_Phone     ,
	 HR_email  =    @HR_email ,
	 Recuiter_Phone  = @Recuiter_Phone   ,
	 Recuiter_email  =  @Recuiter_email   ,
	 Other_Phone  =   @Other_Phone  ,
	 Other_email  =   @Other_email  ,
	 Interview_Type  = @Interview_Type   ,
	 Test_Details = @Test_Details    ,
	 Tech_Q_A  =  @Tech_Q_A  ,
	 Negotiation_Details  = @Negotiation_Details   ,
	 Details  =    @Details ,
	 Comments  =  @Comments   ,
	 Improvements  = @Improvements   ,
	 Notes  = @Notes   ,
	 Got_Job  = @Got_Job   ,
	 Position  = @Position   ,
	 Pay  =    @Pay   ,
	 Comp_Name  =  @Comp_Name  ,
	 Comp_Number  = @Comp_Number    ,
	 Comp_URL  = @Comp_URL    ,
	 Duration  =  @Duration   ,
	 How_Ended  =   @How_Ended  
 WHERE ID= @ID
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_MeetUpdate]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_MeetUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_MeetUpdate] 
    @Meet_ID int,
    @Date date,
    @Day nvarchar(50),
    @Time nvarchar(50),
    @Where_ nvarchar(50),
    @Approach nvarchar(50),
    @Method nvarchar(50),
    @SuccessRank nvarchar(50),
    @Meet_Detials nvarchar(200),
    @Drinking bit,
    @Smoking bit,
    @Give_Card bit,
    @Get_Number bit,
    @What_base nvarchar(100),
    @Improvements nvarchar(200),
    @Comments nvarchar(200),
    @FName nvarchar(50),
    @LName nvarchar(50),
    @NickName nvarchar(50),
    @Availability nvarchar(50),
    @Avail_Duration nvarchar(50),
    @Home_Address nvarchar(50),
    @Work_Address nvarchar(50),
    @Non_Vacation_Add nvarchar(50),
    @Where_From nvarchar(50),
    @Age int,
    @Eyes nvarchar(50),
    @Other nvarchar(50),
    @Smoker bit,
    @Mobile nvarchar(50),
    @Other_Phone nvarchar(50),
    @Email nvarchar(50),
    @More_Comments nvarchar(200)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Meet]
	SET    [Date] = @Date, [Day] = @Day, [Time] = @Time, [Where ] = @Where_, [Approach] = @Approach, [Method] = @Method, [SuccessRank] = @SuccessRank, [Meet_Detials] = @Meet_Detials, [Drinking] = @Drinking, [Smoking] = @Smoking, [Give_Card] = @Give_Card, [Get_Number] = @Get_Number, [What_base] = @What_base, [Improvements] = @Improvements, [Comments] = @Comments, [FName] = @FName, [LName] = @LName, [NickName] = @NickName, [Availability] = @Availability, [Avail_Duration] = @Avail_Duration, [Home_Address] = @Home_Address, [Work_Address] = @Work_Address, [Non_Vacation_Add] = @Non_Vacation_Add, [Where_From] = @Where_From, [Age] = @Age, [Eyes] = @Eyes, [Other] = @Other, [Smoker] = @Smoker, [Mobile] = @Mobile, [Other_Phone] = @Other_Phone, [Email] = @Email, [More_Comments] = @More_Comments
	WHERE  [Meet_ID] = @Meet_ID
	
	-- Begin Return Select <- do not remove
	SELECT [Meet_ID], [Date], [Day], [Time], [Where ], [Approach], [Method], [SuccessRank], [Meet_Detials], [Drinking], [Smoking], [Give_Card], [Get_Number], [What_base], [Improvements], [Comments], [FName], [LName], [NickName], [Availability], [Avail_Duration], [Home_Address], [Work_Address], [Non_Vacation_Add], [Where_From], [Age], [Eyes], [Other], [Smoker], [Mobile], [Other_Phone], [Email], [More_Comments]
	FROM   [dbo].[Meet]
	WHERE  [Meet_ID] = @Meet_ID	
	-- End Return Select <- do not remove

	COMMIT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_MeetSelect]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_MeetSelect]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_MeetSelect] 
    @Meet_ID INT
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [Meet_ID], [Date], [Day], [Time], [Where ], [Approach], [Method], [SuccessRank], [Meet_Detials], [Drinking], [Smoking], [Give_Card], [Get_Number], [What_base], [Improvements], [Comments], [FName], [LName], [NickName], [Availability], [Avail_Duration], [Home_Address], [Work_Address], [Non_Vacation_Add], [Where_From], [Age], [Eyes], [Other], [Smoker], [Mobile], [Other_Phone], [Email], [More_Comments] 
	FROM   [dbo].[Meet] 
	WHERE  ([Meet_ID] = @Meet_ID OR @Meet_ID IS NULL) 

	COMMIT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_MeetInsert]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_MeetInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_MeetInsert] 
    @Date date,
    @Day nvarchar(50),
    @Time nvarchar(50),
    @Where_ nvarchar(50),
    @Approach nvarchar(50),
    @Method nvarchar(50),
    @SuccessRank nvarchar(50),
    @Meet_Detials nvarchar(200),
    @Drinking bit,
    @Smoking bit,
    @Give_Card bit,
    @Get_Number bit,
    @What_base nvarchar(100),
    @Improvements nvarchar(200),
    @Comments nvarchar(200),
    @FName nvarchar(50),
    @LName nvarchar(50),
    @NickName nvarchar(50),
    @Availability nvarchar(50),
    @Avail_Duration nvarchar(50),
    @Home_Address nvarchar(50),
    @Work_Address nvarchar(50),
    @Non_Vacation_Add nvarchar(50),
    @Where_From nvarchar(50),
    @Age int,
    @Eyes nvarchar(50),
    @Other nvarchar(50),
    @Smoker bit,
    @Mobile nvarchar(50),
    @Other_Phone nvarchar(50),
    @Email nvarchar(50),
    @More_Comments nvarchar(200)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[Meet] ([Date], [Day], [Time], [Where ], [Approach], [Method], [SuccessRank], [Meet_Detials], [Drinking], [Smoking], [Give_Card], [Get_Number], [What_base], [Improvements], [Comments], [FName], [LName], [NickName], [Availability], [Avail_Duration], [Home_Address], [Work_Address], [Non_Vacation_Add], [Where_From], [Age], [Eyes], [Other], [Smoker], [Mobile], [Other_Phone], [Email], [More_Comments])
	SELECT @Date, @Day, @Time, @Where_, @Approach, @Method, @SuccessRank, @Meet_Detials, @Drinking, @Smoking, @Give_Card, @Get_Number, @What_base, @Improvements, @Comments, @FName, @LName, @NickName, @Availability, @Avail_Duration, @Home_Address, @Work_Address, @Non_Vacation_Add, @Where_From, @Age, @Eyes, @Other, @Smoker, @Mobile, @Other_Phone, @Email, @More_Comments
	
	-- Begin Return Select <- do not remove
	SELECT [Meet_ID], [Date], [Day], [Time], [Where ], [Approach], [Method], [SuccessRank], [Meet_Detials], [Drinking], [Smoking], [Give_Card], [Get_Number], [What_base], [Improvements], [Comments], [FName], [LName], [NickName], [Availability], [Avail_Duration], [Home_Address], [Work_Address], [Non_Vacation_Add], [Where_From], [Age], [Eyes], [Other], [Smoker], [Mobile], [Other_Phone], [Email], [More_Comments]
	FROM   [dbo].[Meet]
	WHERE  [Meet_ID] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_MeetDelete]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_MeetDelete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_MeetDelete] 
    @Meet_ID int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[Meet]
	WHERE  [Meet_ID] = @Meet_ID

	COMMIT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InterviewsUpdate]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InterviewsUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_InterviewsUpdate] 
    @ID int,
    @Date date,
    @Interview_Number int,
    @Day nvarchar(50),
    @Time nvarchar(50),
    @Place nvarchar(50),
    @Lead_Source nvarchar(50),
    @Staffing bit,
    @Interviewer1_Name nvarchar(50),
    @Interviewer1_Role nvarchar(50),
    @Interviewer2_Name nvarchar(50),
    @Interviewer2_Role nvarchar(50),
    @Interviewer3_Name nvarchar(50),
    @Interviewer3_Role nvarchar(50),
    @Interviewer_Phone nvarchar(50),
    @Interview_email nvarchar(50),
    @HR_Phone nvarchar(50),
    @HR_email nvarchar(50),
    @Recuiter_Phone nvarchar(50),
    @Recuiter_email nvarchar(50),
    @Other_Phone nvarchar(50),
    @Other_email nvarchar(50),
    @Interview_Type nvarchar(50),
    @Test_Details nvarchar(200),
    @Tech_Q_A nvarchar(200),
    @Negotiation_Details nvarchar(200),
    @Details nvarchar(200),
    @Comments nvarchar(200),
    @Improvements nvarchar(200),
    @Notes nvarchar(200),
    @Got_Job bit,
    @Position nvarchar(50),
    @Pay nvarchar(50),
    @Comp_Name nvarchar(50),
    @Comp_Number nvarchar(50),
    @Comp_URL nvarchar(50),
    @Duration varchar(50),
    @How_Ended varchar(50)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Interviews]
	SET    [Date] = @Date, [Interview_Number] = @Interview_Number, [Day] = @Day, [Time] = @Time, [Place] = @Place, [Lead_Source] = @Lead_Source, [Staffing] = @Staffing, [Interviewer1_Name] = @Interviewer1_Name, [Interviewer1_Role] = @Interviewer1_Role, [Interviewer2_Name] = @Interviewer2_Name, [Interviewer2_Role] = @Interviewer2_Role, [Interviewer3_Name] = @Interviewer3_Name, [Interviewer3_Role] = @Interviewer3_Role, [Interviewer_Phone] = @Interviewer_Phone, [Interview_email] = @Interview_email, [HR_Phone] = @HR_Phone, [HR_email] = @HR_email, [Recuiter_Phone] = @Recuiter_Phone, [Recuiter_email] = @Recuiter_email, [Other_Phone] = @Other_Phone, [Other_email] = @Other_email, [Interview_Type] = @Interview_Type, [Test_Details] = @Test_Details, [Tech_Q_A] = @Tech_Q_A, [Negotiation_Details] = @Negotiation_Details, [Details] = @Details, [Comments] = @Comments, [Improvements] = @Improvements, [Notes] = @Notes, [Got_Job] = @Got_Job, [Position] = @Position, [Pay] = @Pay, [Comp_Name] = @Comp_Name, [Comp_Number] = @Comp_Number, [Comp_URL] = @Comp_URL, [Duration] = @Duration, [How_Ended] = @How_Ended
	WHERE  [ID] = @ID
	
	-- Begin Return Select <- do not remove
	SELECT [ID], [Date], [Interview_Number], [Day], [Time], [Place], [Lead_Source], [Staffing], [Interviewer1_Name], [Interviewer1_Role], [Interviewer2_Name], [Interviewer2_Role], [Interviewer3_Name], [Interviewer3_Role], [Interviewer_Phone], [Interview_email], [HR_Phone], [HR_email], [Recuiter_Phone], [Recuiter_email], [Other_Phone], [Other_email], [Interview_Type], [Test_Details], [Tech_Q_A], [Negotiation_Details], [Details], [Comments], [Improvements], [Notes], [Got_Job], [Position], [Pay], [Comp_Name], [Comp_Number], [Comp_URL], [Duration], [How_Ended]
	FROM   [dbo].[Interviews]
	WHERE  [ID] = @ID	
	-- End Return Select <- do not remove

	COMMIT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InterviewsSelect]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InterviewsSelect]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_InterviewsSelect] 
    @ID INT
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [ID], [Date], [Interview_Number], [Day], [Time], [Place], [Lead_Source], [Staffing], [Interviewer1_Name], [Interviewer1_Role], [Interviewer2_Name], [Interviewer2_Role], [Interviewer3_Name], [Interviewer3_Role], [Interviewer_Phone], [Interview_email], [HR_Phone], [HR_email], [Recuiter_Phone], [Recuiter_email], [Other_Phone], [Other_email], [Interview_Type], [Test_Details], [Tech_Q_A], [Negotiation_Details], [Details], [Comments], [Improvements], [Notes], [Got_Job], [Position], [Pay], [Comp_Name], [Comp_Number], [Comp_URL], [Duration], [How_Ended] 
	FROM   [dbo].[Interviews] 
	WHERE  ([ID] = @ID OR @ID IS NULL) 

	COMMIT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InterviewsInsert]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InterviewsInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_InterviewsInsert] 
    @Date date,
    @Interview_Number int,
    @Day nvarchar(50),
    @Time nvarchar(50),
    @Place nvarchar(50),
    @Lead_Source nvarchar(50),
    @Staffing bit,
    @Interviewer1_Name nvarchar(50),
    @Interviewer1_Role nvarchar(50),
    @Interviewer2_Name nvarchar(50),
    @Interviewer2_Role nvarchar(50),
    @Interviewer3_Name nvarchar(50),
    @Interviewer3_Role nvarchar(50),
    @Interviewer_Phone nvarchar(50),
    @Interview_email nvarchar(50),
    @HR_Phone nvarchar(50),
    @HR_email nvarchar(50),
    @Recuiter_Phone nvarchar(50),
    @Recuiter_email nvarchar(50),
    @Other_Phone nvarchar(50),
    @Other_email nvarchar(50),
    @Interview_Type nvarchar(50),
    @Test_Details nvarchar(200),
    @Tech_Q_A nvarchar(200),
    @Negotiation_Details nvarchar(200),
    @Details nvarchar(200),
    @Comments nvarchar(200),
    @Improvements nvarchar(200),
    @Notes nvarchar(200),
    @Got_Job bit,
    @Position nvarchar(50),
    @Pay nvarchar(50),
    @Comp_Name nvarchar(50),
    @Comp_Number nvarchar(50),
    @Comp_URL nvarchar(50),
    @Duration varchar(50),
    @How_Ended varchar(50)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[Interviews] ([Date], [Interview_Number], [Day], [Time], [Place], [Lead_Source], [Staffing], [Interviewer1_Name], [Interviewer1_Role], [Interviewer2_Name], [Interviewer2_Role], [Interviewer3_Name], [Interviewer3_Role], [Interviewer_Phone], [Interview_email], [HR_Phone], [HR_email], [Recuiter_Phone], [Recuiter_email], [Other_Phone], [Other_email], [Interview_Type], [Test_Details], [Tech_Q_A], [Negotiation_Details], [Details], [Comments], [Improvements], [Notes], [Got_Job], [Position], [Pay], [Comp_Name], [Comp_Number], [Comp_URL], [Duration], [How_Ended])
	SELECT @Date, @Interview_Number, @Day, @Time, @Place, @Lead_Source, @Staffing, @Interviewer1_Name, @Interviewer1_Role, @Interviewer2_Name, @Interviewer2_Role, @Interviewer3_Name, @Interviewer3_Role, @Interviewer_Phone, @Interview_email, @HR_Phone, @HR_email, @Recuiter_Phone, @Recuiter_email, @Other_Phone, @Other_email, @Interview_Type, @Test_Details, @Tech_Q_A, @Negotiation_Details, @Details, @Comments, @Improvements, @Notes, @Got_Job, @Position, @Pay, @Comp_Name, @Comp_Number, @Comp_URL, @Duration, @How_Ended
	
	-- Begin Return Select <- do not remove
	SELECT [ID], [Date], [Interview_Number], [Day], [Time], [Place], [Lead_Source], [Staffing], [Interviewer1_Name], [Interviewer1_Role], [Interviewer2_Name], [Interviewer2_Role], [Interviewer3_Name], [Interviewer3_Role], [Interviewer_Phone], [Interview_email], [HR_Phone], [HR_email], [Recuiter_Phone], [Recuiter_email], [Other_Phone], [Other_email], [Interview_Type], [Test_Details], [Tech_Q_A], [Negotiation_Details], [Details], [Comments], [Improvements], [Notes], [Got_Job], [Position], [Pay], [Comp_Name], [Comp_Number], [Comp_URL], [Duration], [How_Ended]
	FROM   [dbo].[Interviews]
	WHERE  [ID] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InterviewsDelete]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InterviewsDelete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_InterviewsDelete] 
    @ID int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[Interviews]
	WHERE  [ID] = @ID

	COMMIT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_INSERT_Workout_Got_Number]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_INSERT_Workout_Got_Number]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[usp_INSERT_Workout_Got_Number]
@Date date = null
      ,@Day nvarchar(50) = null 
      ,@Time nvarchar(50) = null 
      ,@Place nvarchar(50) = null 
      ,@Approach nvarchar(50) = null 
      ,@Method nvarchar(50) = null 
      ,@Rank nvarchar(50) = null 
      ,@M_Detials nvarchar(200) = null 
      ,@Drink bit = null 
      ,@Smoke bit = null 
      ,@Card bit = null 
      ,@Get_No bit = null 
      ,@Touch nvarchar(100) = null 
      ,@Improve nvarchar(200) = null 
      ,@Com nvarchar(200) = null 
      ,@FName nvarchar(50) = null 
      ,@LName nvarchar(50) = null 
      ,@Nick nvarchar(50) = null 
      ,@Avail nvarchar(50) = null 
      ,@Duration nvarchar(50) = null 
      ,@HomeAdd nvarchar(50) = null 
      ,@WorkAdd nvarchar(50) = null 
      ,@NonVacAdd nvarchar(50) = null 
      ,@BornIn nvarchar(50) = null 
      ,@Money nvarchar(50) = null 
      ,@Age nvarchar(50) = null 
      ,@Eyes nvarchar(50) = null 
      ,@Other nvarchar(200) = null 
      ,@Smoker bit = null 
      ,@Mobile nvarchar(50) = null 
      ,@OtherNo nvarchar(50) = null 
      ,@Email nvarchar(50) = null 
as
begin
set nocount on;
INSERT INTO [Action_Amusements_Winhost].[dbo].[Workout_Got_Number]
           ([Date]
           ,[Day]
           ,[Time]
           ,[Place]
           ,[Approach]
           ,[Method]
           ,[Rank]
           ,[M_Detials]
           ,[Drink]
           ,[Smoke]
           ,[Card]
           ,[Get_No]
           ,[Touch]
           ,[Improve]
           ,[Com]
           ,[FName]
           ,[LName]
           ,[Nick]
           ,[Avail]
           ,[Duration]
           ,[HomeAdd]
           ,[WorkAdd]
           ,[NonVacAdd]
           ,[BornIn]
           ,[Money]
           ,[Age]
           ,[Eyes]
           ,[Other]
           ,[Smoker]
           ,[Mobile]
           ,[OtherNo]
           ,[Email])
     VALUES
           (@Date 
           ,@Day 
           ,@Time 
           ,@Place 
           ,@Approach 
           ,@Method 
           ,@Rank 
           ,@M_Detials 
           ,@Drink 
           ,@Smoke 
           ,@Card 
           ,@Get_No 
           ,@Touch 
           ,@Improve 
           ,@Com 
           ,@FName 
           ,@LName 
           ,@Nick 
           ,@Avail 
           ,@Duration 
           ,@HomeAdd 
           ,@WorkAdd 
           ,@NonVacAdd 
           ,@BornIn 
           ,@Money 
           ,@Age 
           ,@Eyes 
           ,@Other 
           ,@Smoker 
           ,@Mobile 
           ,@OtherNo 
           ,@Email )
  end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_INSERT_Workout]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_INSERT_Workout]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_INSERT_Workout]

@Date  datetime 
      ,@DeadLift_final_set_Max    smallint  
      ,@Deadlift_Max_Weight     smallint  
      ,@ABS_Max_total_reps     smallint  
      ,@ABS_Max_total_reps_wieght     smallint  
      ,@ABS_Max_2Min     smallint  
      ,@Bench_max   smallint  
      ,@Bench_final_set_Max    smallint  
      ,@Bench_Max_wieght     smallint  
      ,@PushUp_final_Set_max     smallint  
      ,@Push_ups_Max_2min     smallint  
      ,@Biceps_curls_final_set_Max     smallint  
      ,@Biceps_curls_Wieght     smallint  
      ,@Biceps_Plate_final_set_Max     smallint  
      ,@Biceps_plate_Weight     smallint  
      ,@TBack_final_set_max  smallint  
      ,@TBack_Max_Weight     smallint  
      ,@Delt_Mil_press_final_Set_Max     smallint  
      ,@Delt_Mil_Press_Weight     smallint  
      ,@Deltiod_2Min    bit  
      ,@Obliques_final_rep_Max     smallint  
      ,@Obligues_Wieght     smallint  
      ,@Run_3_sprint     bit  
      ,@Run_2mile_timed     time
      ,@DataISDumy    bit  
AS
BEGIN
SET NOCOUNT ON;


INSERT INTO [Action_Amusements_Winhost].[dbo].[WorkOut]
           ([Date]
           ,[DeadLift_final_set_Max]
           ,[Deadlift_Max_Weight]
           ,[ABS_Max_total_reps]
           ,[ABS_Max_total_reps_wieght]
           ,[ABS_Max_2Min]
           ,[Bench_max]
           ,[Bench_final_set_Max]
           ,[Bench_Max_wieght]
           ,[PushUp_final_Set_max]
           ,[Push_ups_Max_2min]
           ,[Biceps_curls_final_set_Max]
           ,[Biceps_curls_Wieght]
           ,[Biceps_Plate_final_set_Max]
           ,[Biceps_plate_Weight]
           ,[TBack_final_set_max]
           ,[TBack_Max_Weight]
           ,[Delt_Mil_press_final_Set_Max]
           ,[Delt_Mil_Press_Weight]
           ,[Deltiod_2Min]
           ,[Obliques_final_rep_Max]
           ,[Obligues_Wieght]
           ,[Run_3_sprint]
           ,[Run_2mile_timed]
           ,[DataISDumy])
     VALUES
           (@Date
      ,@DeadLift_final_set_Max
      ,@Deadlift_Max_Weight
      ,@ABS_Max_total_reps
      ,@ABS_Max_total_reps_wieght
      ,@ABS_Max_2Min
      ,@Bench_max
      ,@Bench_final_set_Max
      ,@Bench_Max_wieght
      ,@PushUp_final_Set_max
      , @Push_ups_Max_2min
      , @Biceps_curls_final_set_Max
      , @Biceps_curls_Wieght
      , @Biceps_Plate_final_set_Max
      , @Biceps_plate_Weight
      , @TBack_final_set_max
      , @TBack_Max_Weight
      , @Delt_Mil_press_final_Set_Max
      , @Delt_Mil_Press_Weight
      , @Deltiod_2Min
      , @Obliques_final_rep_Max
      , @Obligues_Wieght
      , @Run_3_sprint
      , @Run_2mile_timed
      , @DataISDumy)
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_INSERT_Interviews]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_INSERT_Interviews]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE proc [dbo].[usp_INSERT_Interviews]
--section just below should be correct from STEP 6
	@Date date ,
	@Interview_Number int ,
	@Day varchar(50) =  NULL ,
	@Time varchar(50) =  NULL ,
	@Place varchar(50) =  NULL ,
	@Lead_Source varchar(50) =  NULL ,
	@Staffing bit =  NULL ,
	@Interviewer1_Name varchar(50) =  NULL ,
	@Interviewer1_Role varchar(50) =  NULL ,
	@Interviewer2_Name varchar(50) =  NULL ,
	@Interviewer2_Role varchar(50) =  NULL ,
	@Interviewer3_Name varchar(50) =  NULL ,
	@Interviewer3_Role varchar(50) =  NULL ,
	@Interviewer_Phone varchar(50) =  NULL ,
	 @Interview_email varchar(50) =  NULL , 
	 @HR_Phone varchar(50) =  NULL ,
	 @HR_email varchar(50) =  NULL ,
	 @Recuiter_Phone varchar(50) =  NULL ,
	 @Recuiter_email varchar(50) =  NULL ,
	 @Other_Phone varchar(50) =  NULL ,
	 @Other_email varchar(50) =  NULL ,
	 @Interview_Type varchar(50) =  NULL ,
	 @Test_Details varchar(200) =  NULL ,
	 @Tech_Q_A varchar(200) =  NULL ,
	 @Negotiation_Details varchar(200) =  NULL ,
	 @Details varchar(200) =  NULL ,
	 @Comments varchar(200) =  NULL ,
	 @Improvements varchar(200) =  NULL ,
	 @Notes varchar(200) =  NULL ,
	 @Got_Job bit  =  NULL ,
	 @Position varchar(50) =  NULL ,
	 @Pay varchar(50) =  NULL ,
	 @Comp_Name varchar(50) =  NULL ,
	 @Comp_Number varchar(50) =  NULL ,
	 @Comp_URL varchar(50) =  NULL ,
	 @Duration varchar(50)  =  NULL ,
	 @How_Ended varchar(50)  = NULL
as
begin
set nocount on;

------*below insert should be correct from STEP-3
INSERT INTO [Action_Amusements_Winhost].[dbo].[Interviews]
           ([Date]
           ,[Interview_Number]
           ,[Day]
           ,[Time]
           ,[Place]
           ,[Lead_Source]
           ,[Staffing]
           ,[Interviewer1_Name]
           ,[Interviewer1_Role]
           ,[Interviewer2_Name]
           ,[Interviewer2_Role]
           ,[Interviewer3_Name]
           ,[Interviewer3_Role]
           ,[Interviewer_Phone]
           ,[Interview_email]
           ,[HR_Phone]
           ,[HR_email]
           ,[Recuiter_Phone]
           ,[Recuiter_email]
           ,[Other_Phone]
           ,[Other_email]
           ,[Interview_Type]
           ,[Test_Details]
           ,[Tech_Q_A]
           ,[Negotiation_Details]
           ,[Details]
           ,[Comments]
           ,[Improvements]
           ,[Notes]
           ,[Got_Job]
           ,[Position]
           ,[Pay]
           ,[Comp_Name]
           ,[Comp_Number]
           ,[Comp_URL]
           ,[Duration]
           ,[How_Ended])
     VALUES
           (@Date,
					   @Interview_Number,
					   @Day,
					   @Time,
					   @Place,
					   @Lead_Source,
					   @Staffing,
					   @Interviewer1_Name,
					   @Interviewer1_Role,
					   @Interviewer2_Name,
					   @Interviewer2_Role,
					   @Interviewer3_Name,
					   @Interviewer3_Role,
					   @Interviewer_Phone,
					   @Interview_emaiL ,
					   @HR_Phone,
					   @HR_emaiL ,
					   @Recuiter_Phone,
					   @Recuiter_emaiL ,
					   @Other_Phone,
					   @Other_emaiL ,
					   @Interview_Type,
					   @Test_Details,
					   @Tech_Q_A,
					   @Negotiation_Details,
					   @Details,
					   @Comments,
					   @Improvements,
					   @Notes,
					   @Got_Job,
					   @Position,
					   @Pay,
					   @Comp_Name,
					   @Comp_Number,
					   @Comp_URL ,
					   @Duration,
					   @How_Ended)
  end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DELETE_Workout_Got_Number]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DELETE_Workout_Got_Number]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_DELETE_Workout_Got_Number]

@ID int
as
begin

DELETE FROM [Action_Amusements_Winhost].[dbo].[Workout_Got_Number]
     WHERE ID= @ID


end' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DELETE_Workout]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DELETE_Workout]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_DELETE_Workout]
@workout_ID int
as
begin

DELETE FROM [Action_Amusements_Winhost].[dbo].[WorkOut]
      WHERE workout_ID = @workout_ID
      
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DELETE_Interviews]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DELETE_Interviews]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
---------STEP-2 Run the create script so you can script the inert from it
---------STEP-3 R CL new table > script as > Insert > to clip board > paste over other template INSERT
---------STEP-4 Run the Delete to test, it is already ready

CREATE procedure [dbo].[usp_DELETE_Interviews]
@ID int --filter
as
begin
DELETE FROM [Action_Amusements_Winhost].[dbo].[Interviews]
     WHERE ID= @ID
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Test_UPDATE]    Script Date: 06/23/2012 10:44:53 ******/
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
/****** Object:  Table [dbo].[Expenses_Monthly]    Script Date: 06/23/2012 10:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	[Record_Modify_Date] [datetime] NOT NULL CONSTRAINT [DF_Expense_Monthy_Record_Modified_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_Expenses_Monthly_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
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
/****** Object:  Table [dbo].[Machine_Transaction_History]    Script Date: 06/23/2012 10:45:00 ******/
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
	[Details] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Comments] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Record_Modify_Date] [datetime] NOT NULL CONSTRAINT [DF_Machine_Transaction_History_Record_Modify_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_Machine_Transaction_History_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
	[Data_Is_Dummy] [bit] NULL,
	[Flagged_For_Deletion] [bit] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Account]    Script Date: 06/23/2012 10:44:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Account](
	[Account_ID] [int] IDENTITY(1,1) NOT NULL,
	[Account_Name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Account_Code] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Address1] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Begin_Date] [date] NOT NULL,
	[End_Date] [date] NULL,
	[Is_Active] [bit] NOT NULL,
	[Account_Details] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address2] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[City] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[State_Province_Territory] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Country] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Postal_Code] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_FirstName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_LastName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_Cell] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_Email] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Account_Office_Phone] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Account_Office_Fax] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Other_Office_Phone] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Other_Office_Fax] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POC_FirstName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POC_LastName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POC_Role] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POC_Email] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POC_Cell] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Notes] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Comments] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Record_Modified_Date] [datetime] NOT NULL CONSTRAINT [DF_Account_Record_Modified_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_Account_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
	[Flagged_for_Deletion] [bit] NULL,
 CONSTRAINT [PK_Clustered_Account_col_Acc_Code] PRIMARY KEY CLUSTERED 
(
	[Account_Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_Account_col_Account_Name] UNIQUE NONCLUSTERED 
(
	[Account_Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Account] ON
INSERT [dbo].[Account] ([Account_ID], [Account_Name], [Account_Code], [Address1], [Begin_Date], [End_Date], [Is_Active], [Account_Details], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Account_Office_Phone], [Account_Office_Fax], [Other_Office_Phone], [Other_Office_Fax], [POC_FirstName], [POC_LastName], [POC_Role], [POC_Email], [POC_Cell], [Notes], [Comments], [Record_Modified_Date], [Modifiers_Login], [Flagged_for_Deletion]) VALUES (3, N'Marvel Arcades', N'MarvelArc', NULL, CAST(0x4C320B00 AS Date), NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'should update time', CAST(0x0000A07900A85A69 AS DateTime), N'sa', NULL)
INSERT [dbo].[Account] ([Account_ID], [Account_Name], [Account_Code], [Address1], [Begin_Date], [End_Date], [Is_Active], [Account_Details], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Account_Office_Phone], [Account_Office_Fax], [Other_Office_Phone], [Other_Office_Fax], [POC_FirstName], [POC_LastName], [POC_Role], [POC_Email], [POC_Cell], [Notes], [Comments], [Record_Modified_Date], [Modifiers_Login], [Flagged_for_Deletion]) VALUES (4, N'Not Assigned', N'Not Assigned', NULL, CAST(0x5BFF0A00 AS Date), NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Not Asigned is for Machine''s Location not yet assigned.', CAST(0x0000A07900A8593D AS DateTime), N'sa', NULL)
INSERT [dbo].[Account] ([Account_ID], [Account_Name], [Account_Code], [Address1], [Begin_Date], [End_Date], [Is_Active], [Account_Details], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Account_Office_Phone], [Account_Office_Fax], [Other_Office_Phone], [Other_Office_Fax], [POC_FirstName], [POC_LastName], [POC_Role], [POC_Email], [POC_Cell], [Notes], [Comments], [Record_Modified_Date], [Modifiers_Login], [Flagged_for_Deletion]) VALUES (7, N'Shooters', N'Shoot-Flagler', NULL, CAST(0x972C0B00 AS Date), NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A07900AD4593 AS DateTime), N'sa', NULL)
SET IDENTITY_INSERT [dbo].[Account] OFF
/****** Object:  Table [dbo].[Loc_Count]    Script Date: 06/23/2012 10:44:58 ******/
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
	[Record_Modified_Date] [datetime] NOT NULL CONSTRAINT [DF_Loc_Count_Record_Modified_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_Loc_Count_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
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
SET IDENTITY_INSERT [dbo].[Loc_Count] ON
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (1, 1, CAST(0xB4350B00 AS Date), 570.7500, 25.6800, NULL, NULL, 25.6800, 545.0700, 272.5400, 272.5400, NULL, NULL, N'Randy', N'Brady', CAST(0x0000A0590053282B AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (2, 1, CAST(0x99350B00 AS Date), 1141.5000, 51.3700, NULL, NULL, 51.3700, 1090.1300, 545.7000, 545.7000, NULL, NULL, N'Walter ', N'Spencer', CAST(0x0000A05900546E1E AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (5, 10, CAST(0xB4350B00 AS Date), 458.0000, 20.6100, NULL, NULL, 20.6100, 473.3900, 236.6700, 235.6700, NULL, NULL, N'Walter', N'Spencer', CAST(0x0000A0590057388E AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (6, 10, CAST(0x99350B00 AS Date), 916.0000, 41.2200, NULL, NULL, 41.2000, 874.7800, 437.3900, 437.3900, NULL, NULL, N'Walter', N'Spencer', CAST(0x0000A0590058C0BB AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (7, 11, CAST(0xB4350B00 AS Date), 414.2500, 18.6500, NULL, NULL, 18.6500, 395.6000, 197.8000, 197.8000, NULL, NULL, N'Randy', N'Brady', CAST(0x0000A059005BBF3B AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (10, 10, CAST(0x26350B00 AS Date), 200.0000, 100.0000, 50.0000, 30.0000, 180.0000, 120.0000, 60.0000, 60.0000, 0.0000, NULL, NULL, NULL, CAST(0x0000A05E00F96769 AS DateTime), N'Owner', 1, 1)
INSERT [dbo].[Loc_Count] ([Loc_Count_ID], [Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (12, 10, CAST(0x27350B00 AS Date), 200.0000, 100.0000, 50.0000, 30.0000, 180.0000, 120.0000, 60.0000, 60.0000, 0.0000, NULL, NULL, NULL, CAST(0x0000A05E00F9ACD3 AS DateTime), N'Owner', 1, 1)
SET IDENTITY_INSERT [dbo].[Loc_Count] OFF
/****** Object:  Table [dbo].[Machine]    Script Date: 06/23/2012 10:45:00 ******/
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
	[Machine_Class] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Machine_Owner_FirstName] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Machine_Owner_LastName] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Manufacturer] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Purchased_From] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Purchase_Date] [datetime] NULL,
	[Purchase_Details] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Model] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Serial] [nvarchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Cost] [money] NULL,
	[Shipping_Costs] [money] NULL,
	[Additional_Cost] [money] NULL,
	[Additional_Costs_Details] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Warranty_Details] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Warranty_Expiration_Date] [datetime] NULL,
	[Keys_1] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Keys_2] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Keys_3] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Keys_4] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[External_Key] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Machine_Count_Order] [int] NULL,
	[Machine_Notes] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Machine_Comments] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Location_Code] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Machine_Modify_Date] [datetime] NOT NULL CONSTRAINT [DF_Machine_Machine_Modify_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_Machine_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
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
/****** Object:  Table [dbo].[Mach_Count]    Script Date: 06/23/2012 10:45:00 ******/
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
	[Record_Modified_Date] [datetime] NOT NULL CONSTRAINT [DF_Mach_Count_Record_Modified_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_Mach_Count_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
	[Machine_Data_Is_Dummy] [bit] NULL,
	[Flagged_for_Deletion] [bit] NULL,
 CONSTRAINT [PK_NON_Clusterted_Mach_Count_col_Machine_Count_ID] PRIMARY KEY NONCLUSTERED 
(
	[Mach_Count_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
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
/****** Object:  Table [dbo].[Location]    Script Date: 06/23/2012 10:44:59 ******/
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
	[Account_Code] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
	[Record_Modify_Date] [datetime] NOT NULL CONSTRAINT [DF_Location_Location_Modify_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_Location_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
	[Data_Is_Dummy] [bit] NULL,
	[Flagged_for_Deletion] [bit] NULL,
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
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code], [Account_Code], [Loc_Begin_Date], [Loc_End_Date], [Is_Active], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (1, N'Fun Arcade Daytona 1', N'FunArc-Daytona-1', N'MarvelArc', CAST(0xB9330B00 AS Date), NULL, 1, N'1212 Clyde and Morris Blvd.', NULL, N'Daytona Beach', N'FL', N'USA', N'32114', N'Angel', N'DosSanches', N'Manager', N'ADosSanchez215@gmail.com', N'386775230', N'Jared', N'Plounder', N'Assistant Manager', NULL, NULL, N'Henry', N'McLorrey', N'3869802316', N'HMcLorrey@MarvelArcades.com', N'3867234040', NULL, N'LPollock@MarvelArcades.com', N'Email sales reports to Marvel accountant Liz Pollack', NULL, N'Will be moving to new address in October 2012', N'.045', N'.02', NULL, N'0.5', CAST(0x0000A057013546C4 AS DateTime), N'Owner', 1, 0)
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code], [Account_Code], [Loc_Begin_Date], [Loc_End_Date], [Is_Active], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (10, N'Fun Arcade Daytona 2', N'FunArc-Daytona-2', N'MarvelArc', CAST(0xB9330B00 AS Date), NULL, 1, N'310 S. Atlantic Ave.', NULL, N'New Smyrna Beach', N'FL', N'USA', N'32169', N'Raymond', N'Bellot', N'Manager', N'RBellot2005@Gmail.com', N'3862618877', N'Jane', N'Appleton', N'Bartender', NULL, NULL, N'Henry', N'McLorrey', N'9045556815', N'HMCLorrey@MarvelArcades.com', N'3869011291', N'3861094389', N'LPollack@MArvelArcades.com', NULL, NULL, NULL, N'.045', N'.02', NULL, N'.05', CAST(0x0000A0580175B533 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code], [Account_Code], [Loc_Begin_Date], [Loc_End_Date], [Is_Active], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (19, N'Fun Arcade Daytona 3', N'FunArc-Daytona-3', N'MarvelArc', CAST(0x46350B00 AS Date), NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'.045', N'0.25', N'.001', N'.5', CAST(0x0000A07900A6B6C9 AS DateTime), N'sa', NULL, NULL)
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code], [Account_Code], [Loc_Begin_Date], [Loc_End_Date], [Is_Active], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (5, N'Not Assigned', N'Not Assigned', N'Not Assigned', CAST(0xEFFE0A00 AS Date), NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'0', N'0', N'0', CAST(0x0000A05700FB1B70 AS DateTime), N'RKlouss', 1, 0)
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code], [Account_Code], [Loc_Begin_Date], [Loc_End_Date], [Is_Active], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (11, N'ShootOuts Sports Bar', N'Shoot-Flagler', N'Shoot-Flagler', CAST(0xB9330B00 AS Date), CAST(0xF1360B00 AS Date), 1, N'927 East Ponce De Oro Ave.', NULL, N'Flagler', N'FL', N'USA', N'32155', N'Sarah', N'Williams', N'Owner/Manager', N'SarahWiliams35@gmail.com', N'3862228989', NULL, NULL, NULL, NULL, NULL, N'Sarah', N'Williams', N'3862228989', N'SarahWiliams35@gmail.com', N'386790939', N'3867900940', N'SarahWiliams35@gmail.com', NULL, NULL, NULL, N'.045', N'.025', N'.001', N'.6', CAST(0x0000A0580180C229 AS DateTime), N'Owner', 1, NULL)
SET IDENTITY_INSERT [dbo].[Location] OFF
/****** Object:  StoredProcedure [dbo].[sp_Insert_Machine]    Script Date: 06/23/2012 10:44:52 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Machine]    Script Date: 06/23/2012 10:44:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_zz__Aparent_Child]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_zz__Aparent_Child]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
--use [Action_Amusements_Winhost]
CREATE PROCEDURE [dbo].[sp_UPDATE_zz__Aparent_Child] 
--Aparent pamrs
 @Loc_Count_ID int = null --means not optional
 ,@Loc_Code varchar(10)
 ,@Loc varchar(10)= null
 ,@DOP date
 ,@CoinsIN money = null
 ,@Nullable_Rating int = null
 --child parms
 ,@Mach_Count_ID int = null
 --,@Loc_Count_ID int
--,@CoinsIn money
 ,@CoinsBils money = null
 ,@Nullable_Mach_Rating int = null
AS
BEGIN



SELECT @Loc_Count_ID = Loc_Count_ID 
      ,@Loc_code = Loc_code
      ,@Loc = Loc
      ,@DOP = DOP
      ,@CoinsIN= CoinsIN
      ,@Nullable_Rating= 6
  FROM [Action_Amusements_Winhost].[dbo].[zz_aParent]
  where Loc_Code = @Loc_Code --and  DOP = @DOP
  
  

SELECT @Mach_Count_ID= Mach_Count_ID
      ,@Loc_Count_ID = Loc_Count_ID
      ,@CoinsIn = CoinsIn
      ,@CoinsBils = CoinsBils
      ,@Nullable_Mach_Rating= 7
  FROM [Action_Amusements_Winhost].[dbo].[zz_Child]
  where Loc_Count_ID = @Loc_Count_ID



select Loc_Code , DOP from zz_Aparent
set @Loc_Count_ID = (select Loc_Count_ID from dbo.zz_Aparent where Loc_Code = @Loc_Code  )--AND DOP = @DOP

update dbo.zz_Aparent
set 
	Loc_Code = @Loc_Code
	,Loc = @Loc
	,DOP = @DOP
	,CoinsIN = @CoinsIN
	,Nullable_Rating = @Nullable_Rating
where Loc_Code = @Loc_Code --and  DOP = @DOP

update zz_Child
set 
	Loc_Count_ID = @Loc_Count_ID
	,CoinsIn = @Loc_Count_ID
	,CoinsBils = @CoinsBils
	,Nullable_Mach_Rating = @Nullable_Mach_Rating
where Loc_Count_ID = @Loc_Count_ID
   
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Machine]    Script Date: 06/23/2012 10:44:53 ******/
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
      @Machine_ID int
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
 WHERE Machine_ID = @Machine_ID
 
 END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Delete_Flag_Expenses_Monthly]    Script Date: 06/23/2012 10:44:53 ******/
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
@Expenses_Monthly_ID int 
--filter(s) above
      ,@Flagged_for_Deletion bit 
AS
BEGIN  
set nocount on 
UPDATE [Action_Amusements_Winhost].[dbo].[Expenses_Monthly]
   SET [Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Expenses_Monthly_ID = @Expenses_Monthly_ID
 end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Expenses_Monthly]    Script Date: 06/23/2012 10:44:53 ******/
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
CREATE procedure [dbo].[sp_UPDATE_Expenses_Monthly]


		@Expenses_Monthly_ID int -- also the filter(s) 
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
 WHERE Expenses_Monthly_ID = @Expenses_Monthly_ID
 end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Delete_Flag_Machine]    Script Date: 06/23/2012 10:44:53 ******/
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
CREATE procedure [dbo].[sp_UPDATE_Delete_Flag_Machine] 
 @Machine_ID int

--filter(s) above	
,@Flagged_for_Deletion bit

AS
BEGIN  
set nocount on 

UPDATE [Action_Amusements_Winhost].[dbo].[Machine]
   SET [Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Machine_ID = @Machine_ID

end 
' 
END
GO
/****** Object:  Trigger [TRG_AFTER_IsActive_AFTER_Account]    Script Date: 06/23/2012 10:45:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TRG_AFTER_IsActive_AFTER_Account]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[TRG_AFTER_IsActive_AFTER_Account]
		   ON  [dbo].[Account]
		   AFTER INSERT,UPDATE
		AS 
		BEGIN
			
			UPDATE [Account]
			SET Is_Active = ''false''
			where End_Date   < GetDate()
			
			UPDATE [Account]
			SET Is_Active = ''true''
			where End_Date   IS NULL OR End_Date >= GetDate()
		END'
GO
/****** Object:  View [dbo].[vw_Loc_Count_all_columns]    Script Date: 06/23/2012 10:45:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_Loc_Count_all_columns]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vw_Loc_Count_all_columns]
AS
SELECT     Loc_Count_ID, Location_ID, Loc_Count_Date, CoinsIn, Tax_State, Tax_County, Tax_Other, Tax_Total, Gross, Split_Operator, Split_Location, Advance, 
                      Notes, Counter_FirstName, Counter_LastName, Record_Modified_Date, Modifiers_Login, Data_Is_Dummy, Flagged_for_Deletion
FROM         dbo.Loc_Count
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vw_Loc_Count_all_columns', NULL,NULL))
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
         Begin Table = "Loc_Count"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 286
               Right = 230
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Loc_Count_all_columns'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vw_Loc_Count_all_columns', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Loc_Count_all_columns'
GO
/****** Object:  StoredProcedure [dbo].[usp_Loc_CountUpdate]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Loc_CountUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_Loc_CountUpdate] 
    @Location_ID int,
    @Loc_Count_Date date,
    @Loc_Count_ID int,
    @CoinsIn money,
    @Tax_State money,
    @Tax_County money,
    @Tax_Other money,
    @Tax_Total money,
    @Gross money,
    @Split_Operator money,
    @Split_Location money,
    @Advance money,
    @Notes varchar(50),
    @Counter_FirstName varchar(50),
    @Counter_LastName varchar(50),
    @Record_Modified_Date datetime,
    @Modifiers_Login varchar(50),
    @Data_Is_Dummy bit,
    @Flagged_for_Deletion bit
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Loc_Count]
	SET    [Location_ID] = @Location_ID, [Loc_Count_Date] = @Loc_Count_Date, [CoinsIn] = @CoinsIn, [Tax_State] = @Tax_State, [Tax_County] = @Tax_County, [Tax_Other] = @Tax_Other, [Tax_Total] = @Tax_Total, [Gross] = @Gross, [Split_Operator] = @Split_Operator, [Split_Location] = @Split_Location, [Advance] = @Advance, [Notes] = @Notes, [Counter_FirstName] = @Counter_FirstName, [Counter_LastName] = @Counter_LastName, [Record_Modified_Date] = @Record_Modified_Date, [Modifiers_Login] = @Modifiers_Login, [Data_Is_Dummy] = @Data_Is_Dummy, [Flagged_for_Deletion] = @Flagged_for_Deletion
	WHERE  [Location_ID] = @Location_ID
	       AND [Loc_Count_Date] = @Loc_Count_Date
	
	-- Begin Return Select <- do not remove
	SELECT [Location_ID], [Loc_Count_Date], [Loc_Count_ID], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]
	FROM   [dbo].[Loc_Count]
	WHERE  [Location_ID] = @Location_ID
	       AND [Loc_Count_Date] = @Loc_Count_Date	
	-- End Return Select <- do not remove

	COMMIT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Loc_CountSelect]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Loc_CountSelect]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_Loc_CountSelect] 
    @Location_ID INT,
    @Loc_Count_Date DATE
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [Location_ID], [Loc_Count_Date], [Loc_Count_ID], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion] 
	FROM   [dbo].[Loc_Count] 
	WHERE  ([Location_ID] = @Location_ID OR @Location_ID IS NULL) 
	       AND ([Loc_Count_Date] = @Loc_Count_Date OR @Loc_Count_Date IS NULL) 

	COMMIT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Loc_CountInsert]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Loc_CountInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_Loc_CountInsert] 
    @Location_ID int,
    @Loc_Count_Date date,
    @CoinsIn money,
    @Tax_State money,
    @Tax_County money,
    @Tax_Other money,
    @Tax_Total money,
    @Gross money,
    @Split_Operator money,
    @Split_Location money,
    @Advance money,
    @Notes varchar(50),
    @Counter_FirstName varchar(50),
    @Counter_LastName varchar(50),
    @Record_Modified_Date datetime,
    @Modifiers_Login varchar(50),
    @Data_Is_Dummy bit,
    @Flagged_for_Deletion bit
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[Loc_Count] ([Location_ID], [Loc_Count_Date], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion])
	SELECT @Location_ID, @Loc_Count_Date, @CoinsIn, @Tax_State, @Tax_County, @Tax_Other, @Tax_Total, @Gross, @Split_Operator, @Split_Location, @Advance, @Notes, @Counter_FirstName, @Counter_LastName, @Record_Modified_Date, @Modifiers_Login, @Data_Is_Dummy, @Flagged_for_Deletion
	
	-- Begin Return Select <- do not remove
	SELECT [Location_ID], [Loc_Count_Date], [Loc_Count_ID], [CoinsIn], [Tax_State], [Tax_County], [Tax_Other], [Tax_Total], [Gross], [Split_Operator], [Split_Location], [Advance], [Notes], [Counter_FirstName], [Counter_LastName], [Record_Modified_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]
	FROM   [dbo].[Loc_Count]
	WHERE  [Location_ID] = @Location_ID
	       AND [Loc_Count_Date] = @Loc_Count_Date
	-- End Return Select <- do not remove
               
	COMMIT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Loc_CountDelete]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Loc_CountDelete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_Loc_CountDelete] 
    @Location_ID int,
    @Loc_Count_Date date
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[Loc_Count]
	WHERE  [Location_ID] = @Location_ID
	       AND [Loc_Count_Date] = @Loc_Count_Date

	COMMIT
' 
END
GO
/****** Object:  View [dbo].[vw_Worsheet_SELECT_Previous_Counts]    Script Date: 06/23/2012 10:45:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_Worsheet_SELECT_Previous_Counts]'))
EXEC dbo.sp_executesql @statement = N'/*,[Machine_Notes]
,[Machine_Comments]
,[Machine_Modify_Date]
,[Modifiers_Login]     
WHERE     (dbo.Loc_Count.Loc_Count_Date = ''2012-04-25'') AND (dbo.Loc_Count.Loc_Count_ID = 2)*/
CREATE VIEW [dbo].[vw_Worsheet_SELECT_Previous_Counts]
AS
SELECT     dbo.Location.Location_ID AS ''Location.Location_ID'', dbo.Loc_Count.Loc_Count_ID AS ''Loc_Count.Loc_Count_ID'', 
                      dbo.Loc_Count.Loc_Count_Date AS ''Loc_Count.Loc_Count_Date'', dbo.Location.Location_Name, 
                      dbo.Location.Location_Code AS ''Location.Location_Code'', dbo.Machine.Location_Code AS ''Machine.Location_Code'', dbo.Location.Account_Name, 
                      dbo.Location.Account_Code, dbo.Location.Address1, dbo.Location.Address2, dbo.Location.City, dbo.Location.State_Province_Territory, 
                      dbo.Location.Country, dbo.Location.Postal_Code, dbo.Location.Email_for_Sales_Report, dbo.Location.Location_Is_Active, 
                      dbo.Location.Tax_Percente_State, dbo.Location.Tax_Percente_County, dbo.Location.Tax_Percente_Other, dbo.Loc_Count.CoinsIn, 
                      dbo.Loc_Count.Tax_State, dbo.Loc_Count.Tax_County, dbo.Loc_Count.Tax_Other, dbo.Loc_Count.Tax_Total, dbo.Loc_Count.Gross, 
                      dbo.Loc_Count.Split_Operator, dbo.Loc_Count.Split_Location, dbo.Loc_Count.Advance, dbo.Loc_Count.Notes, dbo.Loc_Count.Counter_FirstName, 
                      dbo.Loc_Count.Counter_LastName, dbo.Loc_Count.Record_Modified_Date, dbo.Mach_Count.CoinsIn_Cents, dbo.Mach_Count.CoinsIn_Bills, 
                      dbo.Mach_Count.Adjustment_1, dbo.Mach_Count.Adjustment_2_Misc, dbo.Mach_Count.Adjustment_Total, dbo.Mach_Count.CoinsIn_Total, 
                      dbo.Mach_Count.Adjustment_1_Decription, dbo.Mach_Count.Adjustment_2_Misc_Decription, dbo.Mach_Count.Meter_Bills, 
                      dbo.Mach_Count.Meter_Cents, dbo.Mach_Count.Meter_Pieces, dbo.Location.Data_Is_Dummy AS ''[Location].[Data_Is_Dummy]'', 
                      dbo.Location.Flagged_for_Deletion AS ''[Location].[Flagged_for_Deletion]'', dbo.Loc_Count.Data_Is_Dummy AS ''[Loc_Count].[Data_Is_Dummy]'', 
                      dbo.Loc_Count.Flagged_for_Deletion AS ''[Loc_Count].[Flagged_for_Deletion]'', 
                      dbo.Mach_Count.Machine_Data_Is_Dummy AS ''[Mach_Count].[Machine_Data_Is_Dummy]'', 
                      dbo.Mach_Count.Flagged_for_Deletion AS ''[Mach_Count].[Flagged_for_Deletion]'', dbo.Machine.Data_Is_Dummy AS ''Machine.[Data_Is_Dummy]'', 
                      dbo.Machine.Alias, dbo.Machine.Machine_Name, dbo.Machine.Machine_Class, dbo.Machine.Keys_1, dbo.Machine.Keys_2, dbo.Machine.Keys_3, 
                      dbo.Machine.Keys_4, dbo.Machine.External_Key, dbo.Machine.Machine_Count_Order
FROM         dbo.Location INNER JOIN
                      dbo.Loc_Count ON dbo.Loc_Count.Location_ID = dbo.Location.Location_ID INNER JOIN
                      dbo.Mach_Count ON dbo.Mach_Count.Loc_Count_ID = dbo.Loc_Count.Loc_Count_ID INNER JOIN
                      dbo.Machine ON dbo.Machine.Machine_ID = dbo.Mach_Count.Machine_ID
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vw_Worsheet_SELECT_Previous_Counts', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[31] 4[22] 2[18] 3) )"
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
               Left = 38
               Bottom = 125
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Loc_Count"
            Begin Extent = 
               Top = 6
               Left = 280
               Bottom = 125
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Mach_Count"
            Begin Extent = 
               Top = 6
               Left = 510
               Bottom = 125
               Right = 740
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Machine"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 252
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 62
         Width = 284
         Width = 1500
         Width = 2415
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 150' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Worsheet_SELECT_Previous_Counts'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'vw_Worsheet_SELECT_Previous_Counts', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'0
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Column = 3210
         Alias = 3180
         Table = 1125
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Worsheet_SELECT_Previous_Counts'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vw_Worsheet_SELECT_Previous_Counts', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Worsheet_SELECT_Previous_Counts'
GO
/****** Object:  View [dbo].[vw_Mach_Count_all_columns]    Script Date: 06/23/2012 10:45:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_Mach_Count_all_columns]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vw_Mach_Count_all_columns]
AS
SELECT     Flagged_for_Deletion, Machine_Data_Is_Dummy, Modifiers_Login, Record_Modified_Date, Meter_Pieces, Meter_Cents, Meter_Bills, 
                      Adjustment_2_Misc_Decription, Adjustment_1_Decription, CoinsIn_Total, Adjustment_Total, Adjustment_2_Misc, Adjustment_1, CoinsIn_Bills, 
                      CoinsIn_Cents, Loc_Count_ID, Machine_ID, Mach_Count_ID
FROM         dbo.Mach_Count
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vw_Mach_Count_all_columns', NULL,NULL))
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
         Begin Table = "Mach_Count"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 337
               Right = 268
            End
            DisplayFlags = 280
            TopColumn = 0
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Mach_Count_all_columns'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vw_Mach_Count_all_columns', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Mach_Count_all_columns'
GO
/****** Object:  StoredProcedure [dbo].[usp_Mach_CountUpdate]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Mach_CountUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_Mach_CountUpdate] 
    @Mach_Count_ID int,
    @Machine_ID int,
    @Loc_Count_ID int,
    @CoinsIn_Cents money,
    @CoinsIn_Bills money,
    @Adjustment_1 money,
    @Adjustment_2_Misc money,
    @Adjustment_Total money,
    @CoinsIn_Total money,
    @Adjustment_1_Decription varchar(100),
    @Adjustment_2_Misc_Decription varchar(100),
    @Meter_Bills money,
    @Meter_Cents money,
    @Meter_Pieces smallint,
    @Record_Modified_Date datetime,
    @Modifiers_Login varchar(50),
    @Machine_Data_Is_Dummy bit,
    @Flagged_for_Deletion bit
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Mach_Count]
	SET    [Machine_ID] = @Machine_ID, [Loc_Count_ID] = @Loc_Count_ID, [CoinsIn_Cents] = @CoinsIn_Cents, [CoinsIn_Bills] = @CoinsIn_Bills, [Adjustment_1] = @Adjustment_1, [Adjustment_2_Misc] = @Adjustment_2_Misc, [Adjustment_Total] = @Adjustment_Total, [CoinsIn_Total] = @CoinsIn_Total, [Adjustment_1_Decription] = @Adjustment_1_Decription, [Adjustment_2_Misc_Decription] = @Adjustment_2_Misc_Decription, [Meter_Bills] = @Meter_Bills, [Meter_Cents] = @Meter_Cents, [Meter_Pieces] = @Meter_Pieces, [Record_Modified_Date] = @Record_Modified_Date, [Modifiers_Login] = @Modifiers_Login, [Machine_Data_Is_Dummy] = @Machine_Data_Is_Dummy, [Flagged_for_Deletion] = @Flagged_for_Deletion
	WHERE  [Mach_Count_ID] = @Mach_Count_ID
	
	-- Begin Return Select <- do not remove
	SELECT [Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]
	FROM   [dbo].[Mach_Count]
	WHERE  [Mach_Count_ID] = @Mach_Count_ID	
	-- End Return Select <- do not remove

	COMMIT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Mach_CountSelect]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Mach_CountSelect]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_Mach_CountSelect] 
    @Mach_Count_ID INT
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion] 
	FROM   [dbo].[Mach_Count] 
	WHERE  ([Mach_Count_ID] = @Mach_Count_ID OR @Mach_Count_ID IS NULL) 

	COMMIT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Mach_CountInsert]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Mach_CountInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_Mach_CountInsert] 
    @Machine_ID int,
    @Loc_Count_ID int,
    @CoinsIn_Cents money,
    @CoinsIn_Bills money,
    @Adjustment_1 money,
    @Adjustment_2_Misc money,
    @Adjustment_Total money,
    @CoinsIn_Total money,
    @Adjustment_1_Decription varchar(100),
    @Adjustment_2_Misc_Decription varchar(100),
    @Meter_Bills money,
    @Meter_Cents money,
    @Meter_Pieces smallint,
    @Record_Modified_Date datetime,
    @Modifiers_Login varchar(50),
    @Machine_Data_Is_Dummy bit,
    @Flagged_for_Deletion bit
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[Mach_Count] ([Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion])
	SELECT @Machine_ID, @Loc_Count_ID, @CoinsIn_Cents, @CoinsIn_Bills, @Adjustment_1, @Adjustment_2_Misc, @Adjustment_Total, @CoinsIn_Total, @Adjustment_1_Decription, @Adjustment_2_Misc_Decription, @Meter_Bills, @Meter_Cents, @Meter_Pieces, @Record_Modified_Date, @Modifiers_Login, @Machine_Data_Is_Dummy, @Flagged_for_Deletion
	
	-- Begin Return Select <- do not remove
	SELECT [Mach_Count_ID], [Machine_ID], [Loc_Count_ID], [CoinsIn_Cents], [CoinsIn_Bills], [Adjustment_1], [Adjustment_2_Misc], [Adjustment_Total], [CoinsIn_Total], [Adjustment_1_Decription], [Adjustment_2_Misc_Decription], [Meter_Bills], [Meter_Cents], [Meter_Pieces], [Record_Modified_Date], [Modifiers_Login], [Machine_Data_Is_Dummy], [Flagged_for_Deletion]
	FROM   [dbo].[Mach_Count]
	WHERE  [Mach_Count_ID] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Mach_CountDelete]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Mach_CountDelete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[usp_Mach_CountDelete] 
    @Mach_Count_ID int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[Mach_Count]
	WHERE  [Mach_Count_ID] = @Mach_Count_ID

	COMMIT
' 
END
GO
/****** Object:  Trigger [TRG_AFTER_IsActive_AFTER_Location]    Script Date: 06/23/2012 10:45:08 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Delete_Flag_Mach_Count]    Script Date: 06/23/2012 10:44:53 ******/
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
    
CREATE procedure [dbo].[sp_UPDATE_Delete_Flag_Mach_Count] 
@Machine_ID int 
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
 WHERE Machine_ID = @Machine_ID

end 
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Delete_Flag_Location]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Delete_Flag_Location]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N' CREATE procedure [dbo].[sp_UPDATE_Delete_Flag_Location] 
 @Location_ID int
--filter(s) above	
,@Flagged_for_Deletion bit

AS
BEGIN  
set nocount on 

UPDATE [Action_Amusements_Winhost].[dbo].[Location]
   SET [Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Location_ID = @Location_ID

end 
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Delete_Flag_Loc_Count]    Script Date: 06/23/2012 10:44:53 ******/
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
 @Location_ID int
,@Loc_Count_Date date 
--filter(s) above	
,@Flagged_for_Deletion bit

AS
BEGIN  
set nocount on 
--below parm for cascading Flagged for Deletion with Mach_Count col Loc_Count_ID
declare @Loc_Count_ID as int
Set @Loc_Count_ID = (select  Loc_Count_ID from [Action_Amusements_Winhost].[dbo].[Loc_Count]  
WHERE Location_ID = @Location_ID AND Loc_Count_Date = @Loc_Count_Date)

UPDATE [Action_Amusements_Winhost].[dbo].[Loc_Count]
   SET [Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Location_ID = @Location_ID AND Loc_Count_Date = @Loc_Count_Date

UPDATE [Action_Amusements_Winhost].[dbo].[Mach_Count]
   SET [Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Loc_Count_ID = @Loc_Count_ID
end 
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Location]    Script Date: 06/23/2012 10:44:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Mach_Count]    Script Date: 06/23/2012 10:44:53 ******/
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


	  @Machine_ID   int  --also filter(s) above
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
 WHERE Machine_ID = @Machine_ID

end 
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Location]    Script Date: 06/23/2012 10:44:53 ******/
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
CREATE procedure [dbo].[sp_UPDATE_Location]
	 
	  @Location_Name varchar(50)= null
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
 WHERE Location_Code = @Location_Code
 END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Loc_Count_and_Child_Mach_Count]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Loc_Count_and_Child_Mach_Count]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ARS, sp_Loc_Count_UPDATE
-- Create date: 7-15-2012
--////// //////////update/////////////////////////////
 CREATE procedure [dbo].[sp_UPDATE_Loc_Count_and_Child_Mach_Count] 

--Parent--child parms
--Parent parms Only
@Loc_Count_ID int = null--manual cascading
	,@Location_ID int --also a filter above
	,@Loc_Count_Date date --also a filter above
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

--child parms 
	  ,@Machine_ID   int  --also filter(s) above
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
      --,@Flagged_for_Deletion   bit = null
 AS
 BEGIN  
set nocount on 
set @Loc_Count_ID = (select @Loc_Count_ID from Loc_Count WHERE Location_ID =  @Location_ID AND Loc_Count_Date = @Loc_Count_Date)
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
 WHERE Location_ID =  @Location_ID AND Loc_Count_Date = @Loc_Count_Date--CAST(@Loc_Count_Date_Filter AS DATE)







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
      where Loc_Count_ID = @Loc_Count_ID
end' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Loc_Count]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_UPDATE_Loc_Count]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ARS, sp_Loc_Count_UPDATE
-- Create date: 7-15-2012
--////// //////////update/////////////////////////////
    
CREATE procedure [dbo].[sp_UPDATE_Loc_Count] 

--Parent--child parms
--Parent parms Only
@Loc_Count_ID int--manual cascading
	,@Location_ID int --also a filter above
	,@Loc_Count_Date date --also a filter above
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

--child parms 
	  ,@Machine_ID   int  --also filter(s) above
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
      --,@Flagged_for_Deletion   bit = null
 AS
 BEGIN  
set nocount on 
set @Loc_Count_ID = (select @Loc_Count_ID from Loc_Count WHERE Location_ID =  @Location_ID AND Loc_Count_Date = @Loc_Count_Date)
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
 WHERE Location_ID =  @Location_ID AND Loc_Count_Date = @Loc_Count_Date--CAST(@Loc_Count_Date_Filter AS DATE)







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
end 
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Truncate_Mach_Count]    Script Date: 06/23/2012 10:44:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Insert_vw_Loc_Count]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_vw_Loc_Count]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ARS
-- Create date: 05-14-2012
-- =============================================
CREATE PROCEDURE [dbo].[sp_Insert_vw_Loc_Count]
    --output parameter(s)
     @Loc_Count_ID_OUTPUT INT OUTPUT
    ,@Loc_Code varchar(40)
	-- Add the parameters for the stored procedure here
			,@Location_ID int 
		   ,@Loc_Count_Date date
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
           
           ,@Counter_FirstName varchar(50)
           ,@Counter_LastName varchar(50)
           --,[Record_Modified_Date]
           --,@Modifiers_Login varchar(50)
           ,@Data_Is_Dummy bit
           ,@Flagged_for_deletion bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select @Location_ID = (select Location_ID from Location where Location_Code = @Loc_Code)
INSERT INTO [Action_Amusements_Winhost].[dbo].[vw_Loc_Count_all_columns]
           ([Location_ID]
           ,[CoinsIn]
           ,[Loc_Count_Date]
           ,[Tax_State]
           ,[Tax_County]
           ,[Tax_Other]
           ,[Tax_Total]
           ,[Gross]
           ,[Split_Operator]
           ,[Split_Location]
           ,[Advance]
           ,[Notes]
           ,[Counter_FirstName]
           ,[Counter_LastName]
           --,[Record_Modified_Date]
           --,[Modifiers_Login]
           ,[Data_Is_Dummy]
           ,[Flagged_for_Deletion])
     VALUES
           (
			@Location_ID
           ,@CoinsIn 
           ,@Loc_Count_Date
           ,@Tax_State 
           ,@Tax_County 
           ,@Tax_Other 
           ,@Tax_Total 
           ,@Gross 
           ,@Split_Operator 
           ,@Split_Location 
           ,@Advance 
           ,@Notes 
           ,@Counter_FirstName 
           ,@Counter_LastName 
           --,[Record_Modified_Date]
           --,@Modifiers_Login varchar(50)
           ,@Data_Is_Dummy
           ,@Flagged_for_deletion
           )


           --get output parameter for child table mach_cunt
           set @Loc_Count_ID_OUTPUT =  SCOPE_IDENTITY()
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Test_Loc_Count]    Script Date: 06/23/2012 10:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_Test_Loc_Count]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ARS
-- Create date: 05-14-2012
-- =============================================
CREATE PROCEDURE [dbo].[sp_Insert_Test_Loc_Count]
    (--output parameter(s)
     @Loc_Count_ID_OUTPUT INT OUTPUT 
    ,@Loc_Code varchar(40) = null
	-- Add the parameters for the stored procedure here
			,@Location_ID int = null 
		   ,@Loc_Count_Date date = null
           ,@CoinsIn money = null
           ,@Tax_State money = null
           ,@Tax_County money = null
           ,@Tax_Other money = null
           ,@Tax_Total money = null
           ,@Gross money = null
           ,@Split_Operator money = null
           ,@Split_Location money = null
           ,@Advance money = null
           ,@Notes varchar(50) = null
           
           ,@Counter_FirstName varchar(50) = null
           ,@Counter_LastName varchar(50) = null
           --,[Record_Modified_Date]
           --,@Modifiers_Login varchar(50)
           ,@Data_Is_Dummy bit = null
           ,@Flagged_for_deletion bit = null)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select @Location_ID = (select Location_ID from Location where Location_Code = @Loc_Code)
INSERT INTO [Action_Amusements_Winhost].[dbo].[Test_Loc_Count]
           ([Location_ID]
           ,[CoinsIn]
           ,[Loc_Count_Date]
           ,[Tax_State]
           ,[Tax_County]
           ,[Tax_Other]
           ,[Tax_Total]
           ,[Gross]
           ,[Split_Operator]
           ,[Split_Location]
           ,[Advance]
           ,[Notes]
           ,[Counter_FirstName]
           ,[Counter_LastName]
           --,[Record_Modified_Date]
           --,[Modifiers_Login]
           ,[Data_Is_Dummy]
           ,[Flagged_for_Deletion])
     VALUES
           (
			@Location_ID
           ,@CoinsIn 
           ,@Loc_Count_Date
           ,@Tax_State 
           ,@Tax_County 
           ,@Tax_Other 
           ,@Tax_Total 
           ,@Gross 
           ,@Split_Operator 
           ,@Split_Location 
           ,@Advance 
           ,@Notes 
           ,@Counter_FirstName 
           ,@Counter_LastName 
           --,[Record_Modified_Date]
           --,@Modifiers_Login varchar(50)
           ,@Data_Is_Dummy
           ,@Flagged_for_deletion
           )


           Set @Loc_Count_ID_OUTPUT = (select SCOPE_IDENTITY())
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Drop_and_ReCreate_4_main_and_Dummy_Data]    Script Date: 06/23/2012 10:44:52 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ALL_DELETE_Flagged_Records]    Script Date: 06/23/2012 10:44:52 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Insert_Mach_Count_MVC]    Script Date: 06/23/2012 10:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_Mach_Count_MVC]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ARS,,Name
-- Create date: 11-14-2012
-- =============================================
create PROCEDURE [dbo].[sp_Insert_Mach_Count_MVC]
	-- Add the parameters for the stored procedure here
	 @Machine_ID int
	 ,@Loc_Count_ID int--very importtant for child update and delete will cascade
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

INSERT INTO [Action_Amusements_Winhost].[dbo].[Mach_Count]
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
/****** Object:  StoredProcedure [dbo].[sp_Insert_Location]    Script Date: 06/23/2012 10:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_Location]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ARS
-- Create date: 7-14-2012
CREATE PROCEDURE [dbo].[sp_Insert_Location]
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
          -- ,@Modifiers_Login varchar(50)
           ,@Data_Is_Dummy bit

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
           --,[Modifiers_Login]
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
           --,@Modifiers_Login
           ,@Data_Is_Dummy)

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Loc_Count_MVC]    Script Date: 06/23/2012 10:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_Loc_Count_MVC]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ARS
-- Create date: 06-16-2012
-- =============================================

CREATE PROCEDURE [dbo].[sp_Insert_Loc_Count_MVC]
    @Loc_Code varchar(40)
	-- Add the parameters for the stored procedure here
			,@Location_ID int 
		   ,@Loc_Count_Date date
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

           ,@Counter_FirstName varchar(50)
           ,@Counter_LastName varchar(50)
           ,@Data_Is_Dummy bit
           ,@Flagged_for_deletion bit
AS
BEGIN

select @Location_ID = Location_ID from Location where Location_Code = @Loc_Code
INSERT INTO [Action_Amusements_Winhost].[dbo].[Loc_Count]
           ([Location_ID]
           ,[CoinsIn]
           ,[Loc_Count_Date]
           ,[Tax_State]
           ,[Tax_County]
           ,[Tax_Other]
           ,[Tax_Total]
           ,[Gross]
           ,[Split_Operator]
           ,[Split_Location]
           ,[Advance]
           ,[Notes]
           ,[Counter_FirstName]
           ,[Counter_LastName]
           ,[Data_Is_Dummy]
           ,[Flagged_for_Deletion])
     VALUES
           (
			@Location_ID
           ,@CoinsIn 
           ,@Loc_Count_Date
           ,@Tax_State 
           ,@Tax_County 
           ,@Tax_Other 
           ,@Tax_Total 
           ,@Gross 
           ,@Split_Operator 
           ,@Split_Location 
           ,@Advance 
           ,@Notes 
           ,@Counter_FirstName 
           ,@Counter_LastName 
           ,@Data_Is_Dummy
           ,@Flagged_for_deletion
           )
END
' 
END
GO
