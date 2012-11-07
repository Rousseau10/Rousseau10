
--create view vw_WORKSHEET_Previous_Counts
--as

SELECT distinct [Location].[Location_ID]AS 'Location.Location_ID'
	  ,[Loc_Count].[Location_ID]AS 'Loc_Count.Location_ID'
	  ,Loc_Count.Loc_Count_ID AS 'Loc_Count.Loc_Count_ID'
	  ,Mach_Count.Loc_Count_ID AS 'Mach_Count.Loc_Count_ID'
      ,[Loc_Count].[Loc_Count_Date] AS 'Loc_Count.Loc_Count_Date'
      ,[Location].[Location_Name]
      ,[Location].[Location_Code]AS 'Location.Location_Code'
      ,[Machine].[Location_Code] AS 'Machine.Location_Code'
      ,[Location].[Account_Name]
      ,[Location].[Account_Code]
      ,[Location].[Address1]
      ,[Location].[Address2]
      ,[Location].[City]
      ,[Location].[State_Province_Territory]
      ,[Location].[Country]
      ,[Location].[Postal_Code]
      --,[Contact1_FirstName]
      --,[Contact1_LastName]
      --,[Contact1_Role]
      --,[Contact1_Email]
      --,[Contact1_Cell]
      --,[Contact2_FirstName]
      --,[Contact2_LastName]
      --,[Contact2_Role]
      --,[Contact2_Email]
      --,[Contact2_Cell]
      --,[Owner_FirstName]
      --,[Owner_LastName]
      --,[Owner_Cell]
      --,[Owner_Email]
      --,[Location_Office_Phone]
      --,[Location_Bar_Phone]
      ,[Location].[Email_for_Sales_Report]
      --,[Notes1]
      --,[Notes2]
      --,[Comments]
      ,[Location_Is_Active]
      ,[Tax_Percente_State]
      ,[Tax_Percente_County]
      ,[Tax_Percente_Other]
      --,[Split_Percent]
      --,[Location_Modify_Date]
      --,[Modifiers_Login]
      
      --/////////remainder of Loc-Count columns below////
      
      ,[Loc_Count].[CoinsIn]
      ,[Loc_Count].[Tax_State]
      ,[Loc_Count].[Tax_County]
      ,[Loc_Count].[Tax_Other]
      ,[Loc_Count].[Tax_Total]
      ,[Loc_Count].[Gross]
      ,[Loc_Count].[Split_Operator]
      ,[Loc_Count].[Split_Location]
      ,[Loc_Count].[Advance]
      ,[Loc_Count].[Notes]
      ,[Loc_Count].[Counter_FirstName]
      ,[Loc_Count].[Counter_LastName]
      ,[Loc_Count].[Record_Modified_Date]
      --,[Loc_Count].[Modifiers_Login]
      ,[Mach_Count].[CoinsIn_Cents]
      ,[Mach_Count].[CoinsIn_Bills]
      ,[Mach_Count].[Adjustment_1]
      ,[Mach_Count].[Adjustment_2_Misc]
      ,[Mach_Count].[Adjustment_Total]
      ,[Mach_Count].[CoinsIn_Total]
      ,[Mach_Count].[Adjustment_1_Decription]
      ,[Mach_Count].[Adjustment_2_Misc_Decription]
      ,[Mach_Count].[Meter_Bills]
      ,[Mach_Count].[Meter_Cents]
      ,[Mach_Count].[Meter_Pieces]
      ,[Location].[Data_Is_Dummy]as '[Location].[Data_Is_Dummy]'
      ,[Location].[Flagged_for_Deletion] as '[Location].[Flagged_for_Deletion]'
      ,[Loc_Count].[Data_Is_Dummy] as '[Loc_Count].[Data_Is_Dummy]'
      ,[Loc_Count].[Flagged_for_Deletion] as '[Loc_Count].[Flagged_for_Deletion]'
      ,[Mach_Count].[Machine_Data_Is_Dummy]as '[Mach_Count].[Machine_Data_Is_Dummy]'
      ,[Mach_Count].[Flagged_for_Deletion] as '[Mach_Count].[Flagged_for_Deletion]'
      ,[Machine].[Data_Is_Dummy] AS 'Machine.[Data_Is_Dummy]'
      --///below majority of Mach_Count columns//
      ,[Alias]
      ,[Machine_Name]
      ,[Machine_Class]
      --,[Machine_Owner_FirstName]
      --,[Machine_Owner_LastName]
      --,[Manufacturer]
      --,[Purchased_From]
      --,[Purchase_Date]
      --,[Purchase_Details]
      --,[Model]
      --,[Serial]
      --,[Cost]
      --,[Shipping_Costs]
      --,[Additional_Cost]
      --,[Additional_Costs_Details]
      --,[Warranty_Details]
      --,[Warranty_Expiration_Date]
      ,[Keys_1]
      ,[Keys_2]
      ,[Keys_3]
      ,[Keys_4]
      ,[External_Key]
      ,[Machine_Count_Order]
      --,[Machine_Notes]
      --,[Machine_Comments]
      --,[Machine_Modify_Date]
      --,[Modifiers_Login]
      
      
 

      
  FROM 
  [Action_Amusements_Winhost].[dbo].[Location]
  INNER JOIN [Action_Amusements_Winhost].[dbo].[Loc_Count] on Loc_Count.Location_ID = Location.Location_ID
  INNER JOIN [Action_Amusements_Winhost].[dbo].[Mach_Count] on Mach_Count.Loc_Count_ID = Loc_Count.Loc_Count_ID
  INNER JOIN [Action_Amusements_Winhost].[dbo].[Machine] on Machine.Machine_ID = Mach_Count.Machine_ID
  --Where Location.Location_Code = '


--SELECT [Loc_Count_ID]
--      ,[Location_ID]
--      ,[Loc_Count_Date]
--      ,[CoinsIn]
--      ,[Tax_State]
--      ,[Tax_County]
--      ,[Tax_Other]
--      ,[Tax_Total]
--      ,[Gross]
--      ,[Split_Operator]
--      ,[Split_Location]
--      ,[Advance]
--      ,[Notes]
--      ,[Counter_FirstName]
--      ,[Counter_LastName]
--      ,[Record_Modified_Date]
--      ,[Modifiers_Login]
--      ,[Data_Is_Dummy]
--      ,[Flagged_for_Deletion]
--  FROM [Action_Amusements_Winhost].[dbo].[Loc_Count]
--GO


--SELECT [Mach_Count].[Mach_Count_ID]    
--      ,[Mach_Count].[CoinsIn_Cents]
--      ,[Mach_Count].[CoinsIn_Bills]
--      ,[Mach_Count].[Adjustment_1]
--      ,[Mach_Count].[Adjustment_2_Misc]
--      ,[Mach_Count].[Adjustment_Total]
--      ,[Mach_Count].[CoinsIn_Total]
--      ,[Mach_Count].[Adjustment_1_Decription]
--      ,[Mach_Count].[Adjustment_2_Misc_Decription]
--      ,[Mach_Count].[Meter_Bills]
--      ,[Mach_Count].[Meter_Cents]
--      ,[Mach_Count].[Meter_Pieces]
--      ,[Mach_Count].[Record_Modified_Date]
--      ,[Mach_Count].[Modifiers_Login]
--      ,[Mach_Count].[Machine_Data_Is_Dummy]
--      ,[Mach_Count].[Flagged_for_Deletion]
--  FROM [Action_Amusements_Winhost].[dbo].[Mach_Count]

--GO

select count(*)  from Loc_count

select *  from Loc_count