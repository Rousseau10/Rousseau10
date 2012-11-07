create proc sp_Insert_vw_Mach_Count
declare @Machine_ID @CoinsIn_Cents @CoinsIn_Bills
--@Adjustment_1
--@Adjustment_2_Misc
--@Adjustment_Total
--@Adjustment_1_Decription
--@Adjustment_2_Misc_Decription
--@Meter_Bills
--@Meter_Cents
--@Meter_Pieces
----@Record_Modified_Date is built into base table GetDate(), 
--           @Modifiers_Login
--           @Machine_Data_Is_Dummy)
as


INSERT INTO [Action_Amusements_Winhost].[dbo].[vw_Mach_Count]
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
           (@Machine_ID
           ,@CoinsIn_Cents
           ,@CoinsIn_Bills
           ,@Adjustment_1
           ,@Adjustment_2_Misc
           ,@Adjustment_Total
           ,@Adjustment_1_Decription
           ,@Adjustment_2_Misc_Decription
           ,@Meter_Bills
           ,@Meter_Cents
           ,@Meter_Pieces
           --,@Record_Modified_Date uses GetDate() as default value or binding in design in base table
           ,@Modifiers_Login
           ,@Machine_Data_Is_Dummy)
    GO       
           
           --1
           --,100
           --,125
           --,5
           --,0
           --,0
           --,''
           --,''
           --,1050
           --,500
           --,300
           --,GETDATE()
           --,'WSpencer'
           --,'true')


--select * from vw_Mach_Count