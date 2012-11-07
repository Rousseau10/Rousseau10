
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS, sp_Machine_UPDATE
-- Create date: 11-14-2012
--////// //////////SET MACHINE DELETE FLAG/////////////////////////
create Procedure sp_Machine_Set_Delete_Flag
--declare    
      
       @AliasFilter varchar(50) 
      ,@Alias varchar(50) 
      ,@Location_Code varchar(25)
      ,@Flagged_for_Deletion bit = 'true'
      as
      Begin
      
      set nocount on
        
       UPDATE [Action_Amusements_Winhost].[dbo].[Machine]
   SET Alias = @Alias
      ,[Location_Code] = @Location_Code
      ,[Machine_Modify_Date]= GETDATE()
      ,[Modifiers_Login] = dbo.fn_GetLoginOfSPID()
      ,[Flagged_for_Deletion]
 WHERE Alias = @AliasFilter
 
 end
GO

   select * from machine 
   
   
   
   
   
    