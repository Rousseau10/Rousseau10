
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS, sp_Machine_UPDATE
-- Create date: 11-14-2012
--////// //////////update/////////////////////////////
    
   alter procedure sp_Machine_UPDATE     
     --declare
      @AliasFilter varchar(50)
      ,@Alias varchar(50)
      ,@Machine_Name  varchar(50) = null
      ,@Machine_Class  varchar(20) = null 
      ,@Machine_Owner_FirstName varchar(20) = null 
      ,@Machine_Owner_LastName varchar(30) = null 
      ,@Manufacturer varchar(50) = null 
      ,@Purchased_From varchar(50) = null 
      ,@Purchase_Date datetime = null
      ,@Purchase_Details varchar(200) = null 
      ,@Model varchar(30) = null 
      ,@Serial varchar(80) = null 
      ,@Cost money = null
      ,@Shipping_Costs money = null
      ,@Additional_Cost money = null
      ,@Additional_Costs_Details varchar(200) = null 
      ,@Warranty_Details varchar(200) = null 
      ,@Warranty_Expiration_Date datetime = null 
      ,@Keys_1 varchar(50) = null  
      ,@Keys_2 varchar(50) = null  
      ,@Keys_3 varchar(50) = null  
      ,@Keys_4 varchar(50) = null  
      ,@External_Key varchar(50) = null 
      ,@Machine_Count_Order int = null
      ,@Machine_Notes varchar(200) = null 
      ,@Machine_Comments varchar(200) = null 
      ,@Location_Code varchar(25)
     -- ,@Machine_Modify_Date datetime
     -- ,@Modifiers_Login varchar(50) 
      ,@Data_Is_Dummy bit = null
      ,@Flagged_for_Deletion bit = null
 AS
 BEGIN  
set nocount on     
       UPDATE [Action_Amusements_Winhost].[dbo].[Machine]
   SET Alias = @Alias
      ,Machine_Name = @Machine_Name
      ,Machine_Class = @Machine_Class
      ,[Machine_Owner_FirstName] = @Machine_Owner_FirstName
      ,[Machine_Owner_LastName] = @Machine_Owner_LastName
      ,[Manufacturer] = @Manufacturer
      ,[Purchased_From] = @Purchased_From
      ,[Purchase_Date] = @Purchase_Date
      ,[Purchase_Details] = @Purchase_Details
      ,[Model] = @Model
      ,[Serial] = @Serial
      ,[Cost] = @Cost
      ,[Shipping_Costs] = @Shipping_Costs
      ,[Additional_Cost] = @Additional_Cost
      ,[Additional_Costs_Details] = @Additional_Costs_Details
      ,[Warranty_Details] = @Warranty_Details
      ,[Warranty_Expiration_Date] = @Warranty_Expiration_Date
      ,[Keys_1] = @Keys_1
      ,[Keys_2] = @Keys_2
      ,[Keys_3] = @Keys_3
      ,[Keys_4] = @Keys_4
      ,[External_Key] = @External_Key
      ,[Machine_Count_Order] = @Machine_Count_Order
      ,[Machine_Notes] = @Machine_Notes
      ,[Machine_Comments] = @Machine_Comments
      ,[Location_Code] = @Location_Code
      ,[Machine_Modify_Date]= GETDATE()
      ,[Modifiers_Login] = dbo.fn_GetLoginOfSPID()
      ,[Data_Is_Dummy] = @Data_Is_Dummy
      ,[Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Alias = @AliasFilter
 
 END
GO

----////////below is the spoc to use for front end, these are only required parms///////////
Declare @AliasFilter varchar(50)= 'crane29', @Alias varchar(50)= 'crane39',@Location_Code varchar(25)= 'nsb12'
EXEC dbo.sp_Machine_UPDATE @AliasFilter = @AliasFilter ,@Alias =  @Alias , @Location_Code = @Location_Code
--below are the optional parms
	  ,@Machine_Name  varchar(50) = null
      ,@Machine_Class  varchar(20) = null 
      ,@Machine_Owner_FirstName varchar(20) = null 
      ,@Machine_Owner_LastName varchar(30) = null 
      ,@Manufacturer varchar(50) = null 
      ,@Purchased_From varchar(50) = null 
      ,@Purchase_Date datetime = null
      ,@Purchase_Details varchar(200) = null 
      ,@Model varchar(30) = null 
      ,@Serial varchar(80) = null 
      ,@Cost money = null
      ,@Shipping_Costs money = null
      ,@Additional_Cost money = null
      ,@Additional_Costs_Details varchar(200) = null 
      ,@Warranty_Details varchar(200) = null 
      ,@Warranty_Expiration_Date datetime = null 
      ,@Keys_1 varchar(50) = null  
      ,@Keys_2 varchar(50) = null  
      ,@Keys_3 varchar(50) = null  
      ,@Keys_4 varchar(50) = null  
      ,@External_Key varchar(50) = null 
      ,@Machine_Count_Order int = null
      ,@Machine_Notes varchar(200) = null 
      ,@Machine_Comments varchar(200) = null 
      ,@Location_Code varchar(25)
     -- ,@Machine_Modify_Date datetime
     -- ,@Modifiers_Login varchar(50) 
      ,@Data_Is_Dummy bit = null
      ,@Flagged_for_Deletion bit = null
  
--   select * from machine 
   
   
   --////Test option parms - OK/////////
   --below is the spoc to use for front end, these are only required parms
Declare @AliasFilter varchar(50)= 'crane39', @Alias varchar(50)= 'crane39',@Location_Code varchar(25)= 'nsb12', @Machine_Name varchar(50)= 'The Huge Crane'
EXEC dbo.sp_Machine_UPDATE @AliasFilter = @AliasFilter ,@Alias =  @Alias , @Location_Code = @Location_Code, @Machine_Name = @Machine_Name
  
  
   select * from machine 
   