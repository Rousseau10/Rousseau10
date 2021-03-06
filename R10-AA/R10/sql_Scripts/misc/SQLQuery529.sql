--USE [Action_Amusements_Winhost]
--GO
--/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Loc_Count]    Script Date: 06/17/2012 05:20:04 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
-- =============================================
-- Author:		ARS, sp_Loc_Count_UPDATE
-- Create date: 7-15-2012
--////// //////////update/////////////////////////////
 alter procedure [dbo].[sp_UPDATE_Loc_Count_and_Child_Mach_Count] 

--Parent--child parms
--Parent parms Only
@Loc_Count_ID int = null--manual cascading
	,@Location_ID int --also a filter above
	,@Loc_Count_Date date --also a filter above
	,@CoinsIn money =null
	,@Tax_State money= null
	,@Tax_County money= null
	,@Tax_Other money= null
	,@Tax_Total money = null
	,@Gross money = null
	,@Split_Operator money = null 
	,@Split_Location money = null 
	,@Advance money = null
	,@Notes varchar(50) = null
	,@Counter_FirstName varchar(50) = null
	,@Counter_LastName varchar(50) = null
	,@Record_Modified_Date  datetime
	--@Modifiers_Login Modifiers_Login varchar(50)
	,@Data_Is_Dummy bit = null
	--,@Flagged_for_Deletion bit = null

--child parms 
	  ,@Machine_ID   int = null --also filter(s) above
      ,@CoinsIn_Cents   money = null
      ,@CoinsIn_Bills money = null
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
      --,@Flagged_for_Deletion   bit = null
 AS
 BEGIN  
set nocount on 
set @Loc_Count_ID = (select @Loc_Count_ID from Loc_Count WHERE Location_ID =  @Location_ID AND Loc_Count_Date = @Loc_Count_Date)
UPDATE [Action_Amusements_Winhost].[dbo].[Loc_Count]
   SET [Location_ID] = @Location_ID
      ,[Loc_Count_Date] = @Loc_Count_Date
      ,[CoinsIn] = @CoinsIn
      ,[Tax_State] = @Tax_State
      ,[Tax_County] = @Tax_County
      ,[Tax_Other] = @Tax_Other
      ,[Tax_Total] = @Tax_Total
      ,[Gross] = @Gross
      ,[Split_Operator] = @Split_Operator
      ,[Split_Location] = @Split_Location
      ,[Advance] = @Advance
      ,[Notes] = @Notes
      ,[Counter_FirstName] = @Counter_FirstName
      ,[Counter_LastName] = @Counter_LastName
      ,[Record_Modified_Date] = GETDATE()
      ,[Modifiers_Login] = dbo.fn_GetLoginOfSPID()
      ,[Data_Is_Dummy] = @Data_Is_Dummy
      --,[Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Location_ID =  @Location_ID AND Loc_Count_Date = @Loc_Count_Date--CAST(@Loc_Count_Date_Filter AS DATE)







UPDATE [Action_Amusements_Winhost].[dbo].[Mach_Count]
   SET --[Machine_ID] = @Machine_ID
      [CoinsIn_Cents] = @CoinsIn_Cents
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
      --,[Flagged_for_Deletion] = @Flagged_for_Deletion
      where Loc_Count_ID = @Loc_Count_ID
end 

declare @Location_ID int =  5 , @Loc_Count_Date Date = '2012-1-1',@CoinsIn money = 419
execute sp_UPDATE_Loc_Count_and_Child_Mach_Count @Location_ID =  @Location_ID , @Loc_Count_Date = @Loc_Count_Date, @CoinsIn = @CoinsIn



DECLARE @Loc_Count_ID int
DECLARE @Location_ID int = 1
DECLARE @Loc_Count_Date date = '20120522'
DECLARE @CoinsIn money = 709
--DECLARE @Tax_State money
--DECLARE @Tax_County money
--DECLARE @Tax_Other money
--DECLARE @Tax_Total money
--DECLARE @Gross money
--DECLARE @Split_Operator money
--DECLARE @Split_Location money
--DECLARE @Advance money
--DECLARE @Notes varchar(50)
--DECLARE @Counter_FirstName varchar(50)
--DECLARE @Counter_LastName varchar(50)
--DECLARE @Data_Is_Dummy bit
--DECLARE @Flagged_for_Deletion bit
--DECLARE @Machine_ID int
--DECLARE @CoinsIn_Cents money
--DECLARE @CoinsIn_Bills money
--DECLARE @Adjustment_1 money
--DECLARE @Adjustment_2_Misc money
--DECLARE @Adjustment_Total money
--DECLARE @Adjustment_1_Decription varchar(100)
--DECLARE @Adjustment_2_Misc_Decription varchar(100)
--DECLARE @Meter_Bills money
--DECLARE @Meter_Cents money
--DECLARE @Meter_Pieces smallint
--DECLARE @Machine_Data_Is_Dummy bit

-- TODO: Set parameter values here.

EXECUTE [dbo].[sp_UPDATE_Loc_Count_and_Child_Mach_Count] 
   @Loc_Count_ID
  ,@Location_ID
  ,@Loc_Count_Date
  ,@CoinsIn

GO




select a.Location_ID, a.Loc_Count_Date ,a.Loc_count_Id,b.Loc_Count_Id,a.CoinsIn
from Loc_Count a join Mach_Count b on a.Loc_Count_ID = b.Loc_Count_ID