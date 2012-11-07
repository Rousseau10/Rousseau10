
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS, sp_Loc_Count_UPDATE
-- Create date: 11-14-2012
--////// //////////update/////////////////////////////
    
create procedure sp_Mach_Count_UPDATE 
@Location_ID_Filter int 
,@Loc_Count_Date_Filter date 
--filters above
	,@Location_ID int 
	,@Loc_Count_Date date 
	,@CoinsIn money 
	,@Tax_State money = null
	,@Tax_County money = null
	,@Tax_Other money = null
	,@Tax_Total money = null
	,@Gross money = null
	,@Split_Operator money = null 
	,@Split_Location money = null 
	,@Advance money = null
	,@Notes varchar(50) = null
	,@Counter_FirstName varchar(50) = null
	,@Counter_LastName varchar(50) = null
	--,@Record_Modified_Date  datetime
	--@Modifiers_Login Modifiers_Login varchar(50)
	,@Data_Is_Dummy bit = null
	,@Flagged_for_Deletion bit = null


 AS
 BEGIN  
set nocount on 
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
      ,[Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Location_ID =  @Location_ID_Filter AND Loc_Count_Date = @Loc_Count_Date_Filter --CAST(@Loc_Count_Date_Filter AS DATE)

end 
GO

--select [Location_ID] ,[Loc_Count_Date], CoinsIn from loc_count	
------////////below is the spoc to use for front end, these are only required parms///////////
--Declare 
--@Location_ID_Filter int = 1
--,@Loc_Count_Date_Filter date = '2012-05-05'
----filters above
--	,@Location_ID int = 1
--	,@Loc_Count_Date date = '2012-05-05'
--	,@CoinsIn money = 105.65
--	,@Gross money = '70.41' -- works with or w/o quotes 
--	,@Split_Operator money  = 50
--	,@Split_Location money  = 50
	
--	,@Tax_State money
--	,@Tax_County money
--	,@Tax_Other money = 50
--	,@Tax_Total money = 50

--	,@Advance money 
--	,@Notes varchar(50) 
--	,@Counter_FirstName varchar(50) 
--	,@Counter_LastName varchar(50)
--	--,@Record_Modified_Date  datetime
--	--@Modifiers_Login Modifiers_Login varchar(50)
--	,@Data_Is_Dummy bit 
--	,@Flagged_for_Deletion bit 
	
--EXEC dbo.sp_Loc_Count_UPDATE 
--		 @Location_ID_Filter = @Location_ID_Filter  
--		,@Loc_Count_Date_Filter = @Loc_Count_Date_Filter 
--		--below are the optional parms
--		,@Location_ID = @Location_ID
--		,@Loc_Count_Date = @Loc_Count_Date
--		,@CoinsIn = @CoinsIn
--		,@Gross = @Gross
--		,@Split_Operator = @Split_Operator
--		,@Split_Location = @Split_Location

--	,@Tax_State = 2
--	,@Tax_County  = 3
--	,@Tax_Other  = 2
--	,@Tax_Total = 7
--	,@Advance = 10.75
--	,@Notes  = 'Lotza'
--	,@Counter_FirstName  = Lewis
--	,@Counter_LastName = SpendalHeimer
--	,@Data_Is_Dummy  = true
--	,@Flagged_for_Deletion = true
--select [Location_ID] ,[Loc_Count_Date], CoinsIn, gross from loc_count	
--select * from loc_count

--DECLARE @RC int
--DECLARE @Location_ID_Filter int
--DECLARE @Loc_Count_Date_Filter date
--DECLARE @Location_ID int
--DECLARE @Loc_Count_Date date
--DECLARE @CoinsIn money
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

---- TODO: Set parameter values here.

--EXECUTE @RC = [Action_Amusements_Winhost].[dbo].[sp_Loc_Count_UPDATE] 
--   @Location_ID_Filter
--  ,@Loc_Count_Date_Filter
--  ,@Location_ID
--  ,@Loc_Count_Date
--  ,@CoinsIn
--  ,@Tax_State
--  ,@Tax_County
--  ,@Tax_Other
--  ,@Tax_Total
--  ,@Gross
--  ,@Split_Operator
--  ,@Split_Location
--  ,@Advance
--  ,@Notes
--  ,@Counter_FirstName
--  ,@Counter_LastName
--  ,@Data_Is_Dummy
--  ,@Flagged_for_Deletion
--GO


--select [Location_ID] ,[Loc_Count_Date], CoinsIn from loc_count	