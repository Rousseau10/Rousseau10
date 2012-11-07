--/////////////////////////////////////////////////////
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS, sp_UPDATE_Delete_Flag_Machine 
-- Create date: 11-14-2012
--////////////////update/////////////////////////////
alter procedure sp_UPDATE_Delete_Flag_Machine 
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
GO


declare
 @Alias_Filter varchar(50) = 'Golf71'
--filter(s) above	
      ,@Flagged_for_Deletion   bit = 'true'
Exec sp_UPDATE_Delete_Flag_Machine
       
        @Alias_Filter = @Alias_Filter    
		,@Flagged_for_Deletion= @Flagged_for_Deletion
select * from Machine