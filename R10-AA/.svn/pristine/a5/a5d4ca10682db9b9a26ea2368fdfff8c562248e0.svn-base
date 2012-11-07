DECLARE @RC int
DECLARE @AliasFilter varchar(50)
DECLARE @Alias varchar(50)
DECLARE @Machine_Name varchar(50)
DECLARE @Machine_Class varchar(20)
DECLARE @Machine_Owner_FirstName varchar(20)
DECLARE @Machine_Owner_LastName varchar(30)
DECLARE @Manufacturer varchar(50)
DECLARE @Purchased_From varchar(50)
DECLARE @Purchase_Date datetime
DECLARE @Purchase_Details varchar(200)
DECLARE @Model varchar(30)
DECLARE @Serial varchar(80)
DECLARE @Cost money
DECLARE @Shipping_Costs money
DECLARE @Additional_Cost money
DECLARE @Additional_Costs_Details varchar(200)
DECLARE @Warranty_Details varchar(200)
DECLARE @Warranty_Expiration_Date datetime
DECLARE @Keys_1 varchar(50)
DECLARE @Keys_2 varchar(50)
DECLARE @Keys_3 varchar(50)
DECLARE @Keys_4 varchar(50)
DECLARE @External_Key varchar(50)
DECLARE @Machine_Count_Order int
DECLARE @Machine_Notes varchar(200)
DECLARE @Machine_Comments varchar(200)
DECLARE @Location_Code varchar(25)
DECLARE @Data_Is_Dummy bit
DECLARE @Flagged_for_Deletion bit

-- TODO: Set parameter values here.

EXECUTE @RC = [Action_Amusements_Winhost].[dbo].[sp_Machine_UPDATE] 
   @AliasFilter = 'Crane39'
  ,@Alias = 'Crane39'
  --,@Machine_Name
  --,@Machine_Class
  --,@Machine_Owner_FirstName
  --,@Machine_Owner_LastName
  --,@Manufacturer
  --,@Purchased_From
  --,@Purchase_Date
  --,@Purchase_Details
  --,@Model
  --,@Serial
  --,@Cost
  --,@Shipping_Costs
  --,@Additional_Cost
  --,@Additional_Costs_Details
  --,@Warranty_Details
  --,@Warranty_Expiration_Date
  --,@Keys_1
  --,@Keys_2
  --,@Keys_3
  --,@Keys_4
  --,@External_Key
  --,@Machine_Count_Order
  --,@Machine_Notes
  --,@Machine_Comments
  ,@Location_Code = 'nsb12'
  --,@Data_Is_Dummy
  --,@Flagged_for_Deletion
GO

--select * from Machine