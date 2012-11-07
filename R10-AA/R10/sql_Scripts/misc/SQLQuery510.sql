USE [Action_Amusements_Winhost]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Delete_Flag_Mach_Count]    Script Date: 06/17/2012 00:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS, sp_UPDATE_Delete_Flag_Mach_Count 
-- Create date: 11-14-2012
--////// //////////update/////////////////////////////
    
ALTER procedure [dbo].[sp_UPDATE_Delete_Flag_Mach_Count] 
@Machine_ID int 
--filter(s) above
	  --,@Machine_ID   int  
   --   ,@CoinsIn_Cents   money 
   --   ,@CoinsIn_Bills money 
   --   ,@Adjustment_1 money = null
   --   ,@Adjustment_2_Misc   money = null
   --   ,@Adjustment_Total   money = null
   --   ,@Adjustment_1_Decription   varchar(100) = null
   --   ,@Adjustment_2_Misc_Decription   varchar(100) = null
   --   ,@Meter_Bills  money = null
   --   ,@Meter_Cents   money = null
   --   ,@Meter_Pieces  smallint = null
   --   --,@Record_Modified_Date  datetime 
   --   --,@Modifiers_Login  varchar(50) 
   --   ,@Machine_Data_Is_Dummy   bit = null
      ,@Flagged_for_Deletion   bit
AS
BEGIN  
set nocount on 

UPDATE [Action_Amusements_Winhost].[dbo].[Mach_Count]
   SET --[Machine_ID] = @Machine_ID
      --,[CoinsIn_Cents] = @CoinsIn_Cents
      --,[CoinsIn_Bills] = @CoinsIn_Bills
      --,[Adjustment_1] = @Adjustment_1
      --,[Adjustment_2_Misc] = @Adjustment_2_Misc
      --,[Adjustment_Total] = @Adjustment_Total
      --,[Adjustment_1_Decription] = @Adjustment_1_Decription
      --,[Adjustment_2_Misc_Decription] = @Adjustment_2_Misc_Decription
      --,[Meter_Bills] = @Meter_Bills
      --,[Meter_Cents] = @Meter_Cents
      --,[Meter_Pieces] = @Meter_Pieces
      --,[Record_Modified_Date] = GETDATE()
      --,[Modifiers_Login] = dbo.fn_GetLoginOfSPID()
      --,[Machine_Data_Is_Dummy] = @Machine_Data_Is_Dummy
      [Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Machine_ID = @Machine_ID

end 
