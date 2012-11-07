DECLARE @RC int
DECLARE @Location_ID_Filter int
DECLARE @Loc_Count_Date_Filter date
DECLARE @Location_ID int
DECLARE @Loc_Count_Date date
DECLARE @CoinsIn money
DECLARE @Tax_State money
DECLARE @Tax_County money
DECLARE @Tax_Other money
DECLARE @Tax_Total money
DECLARE @Gross money
DECLARE @Split_Operator money
DECLARE @Split_Location money
DECLARE @Advance money
DECLARE @Notes varchar(50)
DECLARE @Counter_FirstName varchar(50)
DECLARE @Counter_LastName varchar(50)
DECLARE @Data_Is_Dummy bit
DECLARE @Flagged_for_Deletion bit

-- TODO: Set parameter values here.

EXECUTE @RC = [Action_Amusements_Winhost].[dbo].[sp_Loc_Count_UPDATE] 
   @Location_ID_Filter
  ,@Loc_Count_Date_Filter
  ,@Location_ID
  ,@Loc_Count_Date
  ,@CoinsIn
  ,@Tax_State
  ,@Tax_County
  ,@Tax_Other
  ,@Tax_Total
  ,@Gross
  ,@Split_Operator
  ,@Split_Location
  ,@Advance
  ,@Notes
  ,@Counter_FirstName
  ,@Counter_LastName
  ,@Data_Is_Dummy
  ,@Flagged_for_Deletion
GO


