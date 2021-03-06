SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS, sp_UPDATE_Delete_Flag_Loc_Count 
-- Create date: 11-14-2012
--////////////////update/////////////////////////////
 alter procedure sp_UPDATE_Delete_Flag_Loc_Count 
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
GO


declare
 @Location_ID_Filter int = 1
,@Loc_Count_Date_Filter date = '2005-01-01'
--filter(s) above	
      ,@Flagged_for_Deletion   bit = 'true'
Exec sp_UPDATE_Delete_Flag_Loc_Count
       @Location_ID_Filter= @Location_ID_Filter
	  ,@Loc_Count_Date_Filter= @Loc_Count_Date_Filter
      ,@Flagged_for_Deletion = @Flagged_for_Deletion
      
select Loc_Count_ID, Flagged_for_Deletion from Loc_count

select Mach_Count_ID ,Loc_Count_ID, Flagged_for_Deletion from Mach_count

----below parm for cascading Flagged for Deletion with Mach_Count col Loc_Count_ID
--declare @Loc_Count_ID as int
--declare @Location_ID_Filter int = 1
--declare @Loc_Count_Date_Filter date = '2005-01-01'
----filter(s) above	
--declare @Flagged_for_Deletion   bit = 'false'
-- Set @Loc_Count_ID = (select  Loc_Count_ID from [Action_Amusements_Winhost].[dbo].[Loc_Count]  
--WHERE Location_ID = @Location_ID_Filter AND Loc_Count_Date = @Loc_Count_Date_Filter)
--print @Loc_Count_ID
