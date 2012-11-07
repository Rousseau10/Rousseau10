-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS
-- Create date: 11-14-2012
create PROCEDURE sp_Insert_Machine
			@Alias varchar(50)
           ,@Machine_Name  varchar(50)
           ,@Machine_Class  varchar(20)
           ,@Machine_Owner_FirstName  varchar(20)
           ,@Machine_Owner_LastName  varchar(30)
           ,@Manufacturer  varchar(50)
           ,@Purchased_From  varchar(50)
           ,@Purchase_Date datetime
           ,@Purchase_Details  varchar(200)
           ,@Model  varchar(30)
           ,@Serial  varchar(80)
           ,@Cost money
           ,@Shipping_Costs money
           ,@Additional_Cost money
           ,@Additional_Costs_Details varchar(200)
           ,@Warranty_Details  varchar(200)
           ,@Warranty_Expiration_Date datetime
           ,@Keys_1 varchar(50)
           ,@Keys_2 varchar(50)
           ,@Keys_3 varchar(50)
           ,@Keys_4 varchar(50)
           ,@External_Key varchar(50)
           ,@Machine_Count_Order int
           ,@Machine_Notes varchar(200)
           ,@Machine_Comments varchar(200)
           ,@Location_Code varchar(25)
           --,[Machine_Modify_Date
           ,@Modifiers_Login varchar(50)
           ,@Data_Is_Dummy bit       

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
INSERT INTO [Action_Amusements_Winhost].[dbo].[Machine]
           ([Alias]
           ,[Machine_Name]
           ,[Machine_Class]
           ,[Machine_Owner_FirstName]
           ,[Machine_Owner_LastName]
           ,[Manufacturer]
           ,[Purchased_From]
           ,[Purchase_Date]
           ,[Purchase_Details]
           ,[Model]
           ,[Serial]
           ,[Cost]
           ,[Shipping_Costs]
           ,[Additional_Cost]
           ,[Additional_Costs_Details]
           ,[Warranty_Details]
           ,[Warranty_Expiration_Date]
           ,[Keys_1]
           ,[Keys_2]
           ,[Keys_3]
           ,[Keys_4]
           ,[External_Key]
           ,[Machine_Count_Order]
           ,[Machine_Notes]
           ,[Machine_Comments]
           ,[Location_Code]
           --,[Machine_Modify_Date]
           ,[Modifiers_Login]
           ,[Data_Is_Dummy])
     VALUES
           (@Alias
           ,@Machine_Name
           ,@Machine_Class
           ,@Machine_Owner_FirstName
           ,@Machine_Owner_LastName
           ,@Manufacturer
           ,@Purchased_From
           ,@Purchase_Date
           ,@Purchase_Details
           ,@Model
           ,@Serial
           ,@Cost
           ,@Shipping_Costs
           ,@Additional_Cost
           ,@Additional_Costs_Details
           ,@Warranty_Details
           ,@Warranty_Expiration_Date
           ,@Keys_1
           ,@Keys_2
           ,@Keys_3
           ,@Keys_4
           ,@External_Key
           ,@Machine_Count_Order
           ,@Machine_Notes
           ,@Machine_Comments
           ,@Location_Code
           --,[Machine_Modify_Date]
           ,@Modifiers_Login
           ,@Data_Is_Dummy)



END
GO


exec sp_Insert_Machine
'Crane29'
           ,'The Crane of Toys'
           ,'3'
           ,'RJ'
            ,'Spelling'
           ,'Cranes R US'
           ,'Jacksonville Amusements Games Inc'
           ,'03-06-2005'
           ,'PreOwned Refurbished'
           ,'Crane_T34'
           ,'TT63948U88MJ99'
           ,3200
           ,150
           ,0
           ,null
           ,'1 year unlimited'
           ,'03-05-2006'
           ,'C29-1'
           ,'C29-2'
           ,'C29-3'
           ,''
           ,'C29-External'
           ,2
           ,null
           ,null
           ,'NSB12'
           --,GETDATE()
           ,'WSpencer'
           ,'true'
           
           select * from [Action_Amusements_Winhost].[dbo].[Machine]
  
  
  
    --////// //////////update/////////////////////////////
    
    
             
     declare @AliasFilter varchar(50) = 'Crane102'
      ,@Alias varchar(50) = 'Crane109'
      ,@Machine_Name  varchar(50) 
      ,@Machine_Class  varchar(20) = '9'  
      ,@Machine_Owner_FirstName
      ,@Machine_Owner_LastName
      ,@Manufacturer
      ,@Purchased_From
      ,@Purchase_Date
      ,@Purchase_Details
      ,@Model
      ,@Serial
      ,@Cost
      ,@Shipping_Costs
      ,@Additional_Cost
      ,@Additional_Costs_Details
      ,@Warranty_Details
      ,@Warranty_Expiration_Date
      ,@Keys_1
      ,@Keys_2
      ,@Keys_3
      ,@Keys_4
      ,@External_Key
      ,@Machine_Count_Order
      ,@Machine_Notes
      ,@Machine_Comments
      ,@Location_Code
      ,@Machine_Modify_Date
      ,@Modifiers_Login
      ,@Data_Is_Dummy
      ,@Flagged_for_Deletion 
        
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
      --,[Machine_Modify_Date]
      ,[Modifiers_Login] = @Modifiers_Login
      ,[Data_Is_Dummy] = @Data_Is_Dummy
      ,[Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Alias = @AliasFilter
GO

   select * from machine 