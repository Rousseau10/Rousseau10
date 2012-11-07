
@Machine_ID_Filter int = 1
--filter(s) above
	  ,@Machine_ID   int  = 1
      ,@CoinsIn_Cents   money = 50
      ,@CoinsIn_Bills money = 27
      ,@Adjustment_1 money = null
      ,@Adjustment_2_Misc   money = null
      ,@Adjustment_Total   money = null
      ,@Adjustment_1_Decription   varchar(100) = null
      ,@Adjustment_2_Misc_Decription   varchar(100) = null
      ,@Meter_Bills  money = null
      ,@Meter_Cents   money = null
      ,@Meter_Pieces  smallint = null
      --,@Record_Modified_Date  datetime 
      --,@Modifiers_Login  varchar(50) 
      ,@Machine_Data_Is_Dummy   bit = null
      ,@Flagged_for_Deletion   bit = null

UPDATE [Action_Amusements_Winhost].[dbo].[Mach_Count]
   SET [Machine_ID] = @Machine_ID
      ,[CoinsIn_Cents] = @CoinsIn_Cents
      ,[CoinsIn_Bills] = @CoinsIn_Bills
      ,[Adjustment_1] = @Adjustment_1
      ,[Adjustment_2_Misc] = @Adjustment_2_Misc
      ,[Adjustment_Total] = @Adjustment_Total
      ,[Adjustment_1_Decription] = @Adjustment_1_Decription
      ,[Adjustment_2_Misc_Decription] = @Adjustment_2_Misc_Decription
      ,[Meter_Bills] = @Meter_Bills
      ,[Meter_Cents] = @Meter_Cents
      ,[Meter_Pieces] = @Meter_Pieces
      ,[Record_Modified_Date] = GETDATE()
      ,[Modifiers_Login] = dbo.fn_GetLoginOfSPID()
      ,[Machine_Data_Is_Dummy] = @Machine_Data_Is_Dummy
      ,[Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Machine_ID = @Machine_ID_Filter
GO


select * from Mach_count
  
