USE [Action_Amusements_Winhost]
GO
/****** Object:  StoredProcedure [dbo].[sp_UPDATE_Loc_Count]    Script Date: 06/17/2012 00:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS, sp_Loc_Count_UPDATE
-- Create date: 11-14-2012
--////// //////////update/////////////////////////////
    
ALTER procedure [dbo].[sp_UPDATE_Loc_Count] 



	@Location_ID int --also a filter above
	,@Loc_Count_Date date --also a filter above
	,@CoinsIn money 
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
 WHERE Location_ID =  @Location_ID AND Loc_Count_Date = @Loc_Count_Date--CAST(@Loc_Count_Date_Filter AS DATE)

end 
