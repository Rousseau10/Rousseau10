SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS, sp_UPDATE_Delete_Flag_Location 
-- Create date: 11-14-2012
--////////////////update/////////////////////////////
 create procedure sp_UPDATE_Delete_Flag_Location 
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
GO


declare
 @Location_ID_Filter int = 1
--filter(s) above	
      ,@Flagged_for_Deletion   bit = 'true'
Exec sp_UPDATE_Delete_Flag_Location
       @Location_ID_Filter= @Location_ID_Filter
	 
      ,@Flagged_for_Deletion = @Flagged_for_Deletion
      
      

select * from Location

