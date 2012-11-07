

/****** Object:  ForeignKey [FK_Loc_Count_Location]    Script Date: 06/27/2012 16:52:24 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Loc_Count_Location]') AND parent_object_id = OBJECT_ID(N'[dbo].[Loc_Count]'))
ALTER TABLE [dbo].[Loc_Count] DROP CONSTRAINT [FK_Loc_Count_Location]
GO
/****** Object:  ForeignKey [FK_Location_Acc]    Script Date: 06/27/2012 16:52:24 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Location_Acc]') AND parent_object_id = OBJECT_ID(N'[dbo].[Location]'))
ALTER TABLE [dbo].[Location] DROP CONSTRAINT [FK_Location_Acc]
GO
/****** Object:  ForeignKey [FK_Mach_Count_Loc_Count]    Script Date: 06/27/2012 16:52:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Mach_Count_Loc_Count]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
ALTER TABLE [dbo].[Mach_Count] DROP CONSTRAINT [FK_Mach_Count_Loc_Count]
GO
/****** Object:  ForeignKey [FK_Mach_Count_Machine_col_Machine_ID]    Script Date: 06/27/2012 16:52:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Mach_Count_Machine_col_Machine_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Mach_Count]'))
ALTER TABLE [dbo].[Mach_Count] DROP CONSTRAINT [FK_Mach_Count_Machine_col_Machine_ID]
GO
/****** Object:  ForeignKey [FK_Machine_Location]    Script Date: 06/27/2012 16:52:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Machine_Location]') AND parent_object_id = OBJECT_ID(N'[dbo].[Machine]'))
ALTER TABLE [dbo].[Machine] DROP CONSTRAINT [FK_Machine_Location]
GO
/****** Object:  Table [dbo].[Mach_Count]    Script Date: 06/27/2012 16:52:26 ******/
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
/****** Object:  Table [dbo].[Machine]    Script Date: 06/27/2012 16:52:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Machine_Location]') AND parent_object_id = OBJECT_ID(N'[dbo].[Machine]'))
ALTER TABLE [dbo].[Machine] DROP CONSTRAINT [FK_Machine_Location]
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
/****** Object:  Table [dbo].[Loc_Count]    Script Date: 06/27/2012 16:52:24 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Loc_Count_Location]') AND parent_object_id = OBJECT_ID(N'[dbo].[Loc_Count]'))
ALTER TABLE [dbo].[Loc_Count] DROP CONSTRAINT [FK_Loc_Count_Location]
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
/****** Object:  Table [dbo].[Location]    Script Date: 06/27/2012 16:52:24 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Location_Acc]') AND parent_object_id = OBJECT_ID(N'[dbo].[Location]'))
ALTER TABLE [dbo].[Location] DROP CONSTRAINT [FK_Location_Acc]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Location]') AND type in (N'U'))
DROP TABLE [dbo].[Location]
GO
/****** Object:  Table [dbo].[Machine_Transaction_History]    Script Date: 06/27/2012 16:52:26 ******/
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
/****** Object:  Table [dbo].[Acc]    Script Date: 06/27/2012 16:52:24 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Acc_Record_Modified_Date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Acc] DROP CONSTRAINT [DF_Acc_Record_Modified_Date]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Acc_Modifiers_Login]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Acc] DROP CONSTRAINT [DF_Acc_Modifiers_Login]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Acc]') AND type in (N'U'))
DROP TABLE [dbo].[Acc]
GO
/****** Object:  Table [dbo].[Expenses_Monthly]    Script Date: 06/27/2012 16:52:26 ******/
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
/****** Object:  UserDefinedFunction [dbo].[fn_GetLoginOfSPID]    Script Date: 06/27/2012 16:52:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_GetLoginOfSPID]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fn_GetLoginOfSPID]
GO
/****** Object:  Table [dbo].[LocMachCountOrder]    Script Date: 06/27/2012 16:52:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LocMachCountOrder]') AND type in (N'U'))
DROP TABLE [dbo].[LocMachCountOrder]
GO
/****** Object:  Table [dbo].[LU_MachineClass]    Script Date: 06/27/2012 16:52:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LU_MachineClass]') AND type in (N'U'))
DROP TABLE [dbo].[LU_MachineClass]
GO
/****** Object:  Table [dbo].[LU_TransactionType]    Script Date: 06/27/2012 16:52:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LU_TransactionType]') AND type in (N'U'))
DROP TABLE [dbo].[LU_TransactionType]
GO
/****** Object:  Login [ACER-1240D29348\Owner]    Script Date: 06/27/2012 16:52:27 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'ACER-1240D29348\Owner')
DROP LOGIN [ACER-1240D29348\Owner]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 06/27/2012 16:52:27 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'BUILTIN\Users')
DROP LOGIN [BUILTIN\Users]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 06/27/2012 16:52:27 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT AUTHORITY\SYSTEM')
DROP LOGIN [NT AUTHORITY\SYSTEM]
GO
/****** Object:  Login [Subscription-1]    Script Date: 06/27/2012 16:52:27 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'Subscription-1')
DROP LOGIN [Subscription-1]
GO

