USE [Action_Amusements_Winhost]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Delete_Flag_Expenses_Monthly]    Script Date: 06/17/2012 00:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS, sp_UPDATE_Delete_Flag_Expenses_Monthly
-- Create date: 11-14-2012
--////// //////////update/////////////////////////////
ALTER procedure [dbo].[sp_UPDATE_Delete_Flag_Expenses_Monthly]
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
