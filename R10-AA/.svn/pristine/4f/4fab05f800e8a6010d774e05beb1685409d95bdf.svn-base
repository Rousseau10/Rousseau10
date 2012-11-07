


use [Action_Amusements_Winhost]

--select location_id from Location

--Delete from Machine
--Delete from Location_Count
--Delete  from location
--Delete from Mach_Count
GO

INSERT INTO [Action_Amusements_Winhost].[dbo].[Location]
           ([Location_Name]
           ,[Location_Code]
           ,[Account_Name]
           ,[Account_Code]
           ,[Address1]
           ,[Address2]
           ,[City]
           ,[State_Province_Territory]
           ,[Country]
           ,[Postal_Code]
           ,[Contact1_FirstName]
           ,[Contact1_LastName]
           ,[Contact1_Role]
           ,[Contact1_Email]
           ,[Contact1_Cell]
           ,[Contact2_FirstName]
           ,[Contact2_LastName]
           ,[Contact2_Role]
           ,[Contact2_Email]
           ,[Contact2_Cell]
           ,[Owner_FirstName]
           ,[Owner_LastName]
           ,[Owner_Cell]
           ,[Owner_Email]
           ,[Location_Office_Phone]
           ,[Location_Bar_Phone]
           ,[Email_for_Sales_Report]
           ,[Notes1]
           ,[Notes2]
           ,[Comments]
           ,[Location_Is_Active]
           ,[Tax_Percente_State]
           ,[Tax_Percente_County]
           ,[Tax_Percente_Other]
           ,[Split_Percent]
           ,[Location_Modify_Date]
           ,[Modifiers_Login]
           ,[Data_Is_Dummy])
     VALUES
           ('Skippys_Pizza_A1A'
           ,'NSB12'
           ,'Skippys_Pizza_Restaraunts'
           ,'SPR'
           ,'3001 A1 Avenue'
           ,'3rd Floor'
           ,'New Smyrna Beach'
           ,'FL'
           ,'USA'
           ,'32169'
           ,'Ron'
           ,'Hendricks'
           ,'Manager'
           ,'RHendricks@aol.com'
           ,'3868462232'
           ,'Sheryl'
           ,'Weinstein'
           ,'Bartender'
           ,'WB2785ISME@Gmail.com'
           ,'3868462239'
           ,'Jim'
           ,'Lopez'
           ,'3868462277'
           ,'JimmyLopez33@comcast.com'
           ,'3868469999'
           ,'3868468888'
           ,'RHendricks@aol.com'
           ,'This is one of 5 locations for this account'
           ,null
           ,'no comments'
           ,'true'
           ,'.045'
           ,'.015'
           ,'.005'
           ,'.6'
           ,GETDATE()
           ,'WSpencer'
           ,'true')
GO



INSERT INTO [Action_Amusements_Winhost].[dbo].[Location_Count]
           ([Location_ID]
           ,[CoinsIn]
           ,[Tax_State]
           ,[Tax_County]
           ,[Tax_Other]
           ,[Tax_Total]
           ,[Gross]
           ,[Split_Operator]
           ,[Split_Location]
           ,[Advance]
           ,[Notes]
           ,[Location_Count_Date]
           ,[Counter_FirstName]
           ,[Counter_LastName]
           ,[Record_Modified_Date]
           ,[Modifiers_Login]
           ,[Data_Is_Dummy])
     VALUES
           (1
           ,200
           ,9
           ,3.5
           ,1.75
           ,14
            ,186.00
           ,93
           ,93
           ,15
           ,'gave Manager 15 dollars in quarters advance'         
           ,'05-11-2012'
           ,'Jeff'
           ,'Wheeler'
           ,GETDATE()
           ,'WSpencer'
           ,'True')
GO

INSERT INTO [Action_Amusements_Winhost].[dbo].[Location_Count]
           ([Location_ID]
           ,[CoinsIn]
           ,[Tax_State]
           ,[Tax_County]
           ,[Tax_Other]
           ,[Tax_Total]
           ,[Gross]
           ,[Split_Operator]
           ,[Split_Location]
           ,[Advance]
           ,[Notes]
           ,[Location_Count_Date]
           ,[Counter_FirstName]
           ,[Counter_LastName]
           ,[Record_Modified_Date]
           ,[Modifiers_Login]
           ,[Data_Is_Dummy])
     VALUES
           (1
           ,100
           ,5.75
           ,1.50
           ,.75
           ,8
           ,92
           ,46.00
           ,46.00
           ,0
           ,null        
           ,'05-02-2012'
           ,'Walter'
           ,'Spencer'
           ,GETDATE()
           ,'WSpencer'
           ,'True')
GO

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
           ,[Machine_Modify_Date]
           ,[Modifiers_Login]
           ,[Data_Is_Dummy])
     VALUES
           ('Crane29'
           ,'The Crane of Toys'
           ,'3'
           ,'Jack'
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
           ,GETDATE()
           ,'WSpencer'
           ,'true')
GO

--select machine_id from machine
INSERT INTO [Action_Amusements_Winhost].[dbo].[Mach_Count]
           ([Machine_ID]
           ,[CoinsIn_Cents]
           ,[CoinsIn_Bills]
           ,[Adjustment_1]
           ,[Adjustment_2_Misc]
           ,[Adjustment_Total]
           ,[Adjustment_1_Decription]
           ,[Adjustment_2_Misc_Decription]
           ,[Meter_Bills]
           ,[Meter_Cents]
           ,[Meter_Pieces]
           ,Record_Modified_Date
           ,[Modifiers_Login]
           ,[Machine_Data_Is_Dummy])
     VALUES
           (1
           ,50
           ,25
           ,0
           ,0
           ,0
           ,''
           ,''
           ,1050
           ,500
           ,300
           ,GETDATE()
           ,'WSpencer'
           ,'true')
GO

INSERT INTO [Action_Amusements_Winhost].[dbo].[Mach_Count]
           ([Machine_ID]
           ,[CoinsIn_Cents]
           ,[CoinsIn_Bills]
           ,[Adjustment_1]
           ,[Adjustment_2_Misc]
           ,[Adjustment_Total]
           ,[Adjustment_1_Decription]
           ,[Adjustment_2_Misc_Decription]
           ,[Meter_Bills]
           ,[Meter_Cents]
           ,[Meter_Pieces]
           ,Record_Modified_Date
           ,[Modifiers_Login]
           ,[Machine_Data_Is_Dummy])
     VALUES
           (1
           ,50
           ,25
           ,0
           ,0
           ,0
           ,''
           ,''
           ,1050
           ,500
           ,300
           ,GETDATE()
           ,'WSpencer'
           ,'true')
GO


    
