--////////code batch start///////////////
declare  @loop_count int = 20000
while (select max(id) from tester) < @loop_count 
begin
insert into  tester
(CoinsIN)
values
((select Max(coinsin) from tester) + 9)
select @@IDENTITY as '@@IDENTITY'
select SCOPE_IDENTITY() as 'SCOPE_IDENTITY()'
SELECT IDENT_CURRENT('tester')as 'IDENT_CURRENT'
end 
--////////////code batch end///////////////


INSERT INTO [Action_Amusements_Winhost].[dbo].[vw_Worsheet_SELECT_Previous_Counts]
           ([Location.Location_ID]
           ,[Loc_Count.Loc_Count_ID]
           ,[Loc_Count.Loc_Count_Date]
           ,[Location_Name]
           ,[Location.Location_Code]
           ,[Machine.Location_Code]
           ,[Account_Name]
           ,[Account_Code]
           ,[Address1]
           ,[Address2]
           ,[City]
           ,[State_Province_Territory]
           ,[Country]
           ,[Postal_Code]
           ,[Email_for_Sales_Report]
           ,[Location_Is_Active]
           ,[Tax_Percente_State]
           ,[Tax_Percente_County]
           ,[Tax_Percente_Other]
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
           ,[Counter_FirstName]
           ,[Counter_LastName]
           ,[Record_Modified_Date]
           ,[CoinsIn_Cents]
           ,[CoinsIn_Bills]
           ,[Adjustment_1]
           ,[Adjustment_2_Misc]
           ,[Adjustment_Total]
           ,[CoinsIn_Total]
           ,[Adjustment_1_Decription]
           ,[Adjustment_2_Misc_Decription]
           ,[Meter_Bills]
           ,[Meter_Cents]
           ,[Meter_Pieces]
           ,[[Location]].[Data_Is_Dummy]]]
           ,[[Location]].[Flagged_for_Deletion]]]
           ,[[Loc_Count]].[Data_Is_Dummy]]]
           ,[[Loc_Count]].[Flagged_for_Deletion]]]
           ,[[Mach_Count]].[Machine_Data_Is_Dummy]]]
           ,[[Mach_Count]].[Flagged_for_Deletion]]]
           ,[Machine.[Data_Is_Dummy]]]
           ,[Alias]
           ,[Machine_Name]
           ,[Machine_Class]
           ,[Keys_1]
           ,[Keys_2]
           ,[Keys_3]
           ,[Keys_4]
           ,[External_Key]
           ,[Machine_Count_Order])
     VALUES
           (<Location.Location_ID, int,>
           ,<Loc_Count.Loc_Count_ID, int,>
           ,<Loc_Count.Loc_Count_Date, date,>
           ,<Location_Name, varchar(50),>
           ,<Location.Location_Code, varchar(25),>
           ,<Machine.Location_Code, varchar(25),>
           ,<Account_Name, varchar(50),>
           ,<Account_Code, varchar(25),>
           ,<Address1, varchar(50),>
           ,<Address2, varchar(50),>
           ,<City, varchar(50),>
           ,<State_Province_Territory, varchar(50),>
           ,<Country, varchar(50),>
           ,<Postal_Code, varchar(50),>
           ,<Email_for_Sales_Report, varchar(50),>
           ,<Location_Is_Active, bit,>
           ,<Tax_Percente_State, varchar(10),>
           ,<Tax_Percente_County, varchar(10),>
           ,<Tax_Percente_Other, varchar(10),>
           ,<CoinsIn, money,>
           ,<Tax_State, money,>
           ,<Tax_County, money,>
           ,<Tax_Other, money,>
           ,<Tax_Total, money,>
           ,<Gross, money,>
           ,<Split_Operator, money,>
           ,<Split_Location, money,>
           ,<Advance, money,>
           ,<Notes, varchar(50),>
           ,<Counter_FirstName, varchar(50),>
           ,<Counter_LastName, varchar(50),>
           ,<Record_Modified_Date, datetime,>
           ,<CoinsIn_Cents, money,>
           ,<CoinsIn_Bills, money,>
           ,<Adjustment_1, money,>
           ,<Adjustment_2_Misc, money,>
           ,<Adjustment_Total, money,>
           ,<CoinsIn_Total, money,>
           ,<Adjustment_1_Decription, varchar(100),>
           ,<Adjustment_2_Misc_Decription, varchar(100),>
           ,<Meter_Bills, money,>
           ,<Meter_Cents, money,>
           ,<Meter_Pieces, smallint,>
           ,<[Location]].[Data_Is_Dummy]], bit,>
           ,<[Location]].[Flagged_for_Deletion]], bit,>
           ,<[Loc_Count]].[Data_Is_Dummy]], bit,>
           ,<[Loc_Count]].[Flagged_for_Deletion]], bit,>
           ,<[Mach_Count]].[Machine_Data_Is_Dummy]], bit,>
           ,<[Mach_Count]].[Flagged_for_Deletion]], bit,>
           ,<Machine.[Data_Is_Dummy]], bit,>
           ,<Alias, varchar(50),>
           ,<Machine_Name, varchar(50),>
           ,<Machine_Class, varchar(20),>
           ,<Keys_1, varchar(50),>
           ,<Keys_2, varchar(50),>
           ,<Keys_3, varchar(50),>
           ,<Keys_4, varchar(50),>
           ,<External_Key, varchar(50),>
           ,<Machine_Count_Order, int,>)
GO


