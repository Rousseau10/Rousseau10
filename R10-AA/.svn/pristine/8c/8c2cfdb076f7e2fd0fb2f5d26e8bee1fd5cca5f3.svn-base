SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS, sp_UPDATE_Delete_Flag_Expenses_Monthly
-- Create date: 11-14-2012
--////// //////////update/////////////////////////////
create procedure sp_UPDATE_Delete_Flag_Expenses_Monthly
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
GO

use [Action_Amusements_Winhost]
declare
@Expenses_Monthly_ID_Filter int = 4
--filter(s) above
      ,@Flagged_for_Deletion bit = 'false'
      
 Exec sp_UPDATE_Delete_Flag_Expenses_Monthly 
 @Expenses_Monthly_ID_Filter = @Expenses_Monthly_ID_Filter
 ,@Flagged_for_Deletion = @Flagged_for_Deletion    
select * from Expenses_Monthly

