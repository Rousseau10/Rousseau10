declare
@Location_ID_Filter int = 1
,@Loc_Count_Date_Filter date = '2012-05-05'
--filters above
	,@Location_ID int = 1
	,@Loc_Count_Date date = '2012-05-05'
	,@CoinsIn money = 103.35
	,@Tax_State money= null
	,@Tax_County money= null
	,@Tax_Other money= null
	,@Tax_Total money = 50
	,@Gross money = 60
	,@Split_Operator money  = 50
	,@Split_Location money  = 50
	,@Advance money = null
	,@Notes varchar(50) = null
	,@Counter_FirstName varchar(50) = null
	,@Counter_LastName varchar(50) = null
	--,@Record_Modified_Date  datetime
	--@Modifiers_Login Modifiers_Login varchar(50)
	,@Data_Is_Dummy bit = null
	,@Flagged_for_Deletion bit = null


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
      ,[Modifiers_Login] =  dbo.fn_GetLoginOfSPID()
      ,[Data_Is_Dummy] = @Data_Is_Dummy
      ,[Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Location_ID =  @Location_ID_Filter AND Loc_Count_Date = @Loc_Count_Date_Filter --CAST(@Loc_Count_Date_Filter AS DATE)
 
select [Location_ID] ,[Loc_Count_Date],CoinsIn, [Gross] Modifiers_Login from loc_count
  

--works
UPDATE [Action_Amusements_Winhost].[dbo].[Loc_Count]
SET Loc_Count_Date = '5-10-2012',CoinsIn = ((select CoinsIn from Loc_Count where Location_ID = 1)+ 1)   --CAST([Loc_Count_Date] AS DATE)
WHERE Location_ID = 1  and Loc_Count_Date = '5-10-2012'
select [Location_ID] ,[Loc_Count_Date], CoinsIn from loc_count

--works *may need to change date
declare @Location_ID_Filter int = 1
,@Loc_Count_Date_Filter date = '2012-05-10'
UPDATE [Action_Amusements_Winhost].[dbo].[Loc_Count]
SET Loc_Count_Date = '5-12-2012',CoinsIn = ((select CoinsIn from Loc_Count where Location_ID = 1)+ 1)   --CAST([Loc_Count_Date] AS DATE)
,[Modifiers_Login] = GETDATE()
,[Data_Is_Dummy] = @Data_Is_Dummy
select [Location_ID] ,[Loc_Count_Date], CoinsIn from loc_count

