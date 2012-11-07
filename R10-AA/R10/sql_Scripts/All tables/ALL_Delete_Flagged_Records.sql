
     
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS, SP_ALL_DELETE_Flagged_Records
-- Create date: 11-14-2012
--////// //////////DELETE MACHINE DELETE FLAG/////////////////////////
alter procedure SP_ALL_DELETE_Flagged_Records 
as
begin
set nocount on             

DELETE FROM [Action_Amusements_Winhost].[dbo].[Mach_Count]
      WHERE Flagged_for_Deletion = 'true'

DELETE FROM [Action_Amusements_Winhost].[dbo].[Location_Count]
      WHERE Flagged_for_Deletion = 'true'
      
DELETE FROM [Action_Amusements_Winhost].[dbo].[Machine]
      WHERE Flagged_for_Deletion = 'true'

DELETE FROM [Action_Amusements_Winhost].[dbo].[Location]
      WHERE Flagged_for_Deletion = 'true'

DELETE FROM [Action_Amusements_Winhost].[dbo].[Expenses_Monthly]
      WHERE Flagged_for_Deletion = 'true'

end
GO
   
   EXEC dbo.SP_ALL_DELETE_Flagged_Records
   
   /*
   select Machine_ID, Flagged_for_deletion from machine order by Flagged_for_deletion desc
   select Machine_ID, Flagged_for_deletion from mach_count order by Flagged_for_deletion desc
   
   select Location_ID, Flagged_for_deletion from Location order by Flagged_for_deletion desc 
   select Location_ID, Flagged_for_deletion from Location_Count order by Flagged_for_deletion desc 
   
   select Expenses_Monthly_ID,Flagged_for_deletion  Flagged_for_deletion from Expenses_Monthly order by Flagged_for_deletion desc
   */