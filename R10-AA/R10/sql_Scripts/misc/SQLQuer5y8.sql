USE [Action_Amusements_Winhost]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Delete_Flag_Loc_Count]    Script Date: 06/17/2012 00:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS, sp_UPDATE_Delete_Flag_Loc_Count 
-- Create date: 11-14-2012
--////////////////update/////////////////////////////
 ALTER procedure [dbo].[sp_UPDATE_Delete_Flag_Loc_Count] 
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
