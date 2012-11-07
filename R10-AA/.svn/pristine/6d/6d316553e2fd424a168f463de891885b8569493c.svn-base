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

UPDATE [Action_Amusements_Winhost].[dbo].[Loc_Count]
   SET [Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Location_ID = @Location_ID_Filter AND Loc_Count_Date = @Loc_Count_Date_Filter

end 
GO


declare
 @Location_ID_Filter int = 1
,@Loc_Count_Date_Filter date = '2005-01-01'
--filter(s) above	
      ,@Flagged_for_Deletion   bit = 'false'
Exec sp_UPDATE_Delete_Flag_Loc_Count
       @Location_ID_Filter= @Location_ID_Filter
	  ,@Loc_Count_Date_Filter= @Loc_Count_Date_Filter
      ,@Flagged_for_Deletion = @Flagged_for_Deletion
      
      

select * from Loc_count