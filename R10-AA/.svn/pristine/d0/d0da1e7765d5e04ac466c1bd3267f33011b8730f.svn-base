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

create procedure sp_INSERT_Save_Worksheet 




Declare	  --@Location.Location_ID int = 
           ,@Loc_Count.Location_ID int = (select IDENT_CURRENT('Loc_Count'))
          --,@Loc_Count.Loc_Count_ID int = 
           ,@Mach_Count.Loc_Count_ID int = (select IDENT_CURRENT('Loc_Count'))
           ,@Loc_Count.Loc_Count_Date date = '2012-5-5'
           --,@Location_Name varchar(50) = 'ShootOut
           ,@Location.Location_Code varchar(25) = 'funArc-Daytona-1' --the value that is in the label Loc Code
           ,@Machine.Location_Code varchar(25) = 'funArc-Daytona-1' --the value that is in the label Loc Code
           ,@Account_Name varchar(50) = 'Marvels'  --the value that is in the label Loc Code
           ,@Account_Code varchar(25) = 'Marvels-1' --the value that is in the label Loc Code
           --,@Address1 varchar(50) = 
          -- ,@Address2 varchar(50) = 
           --,@City varchar(50) = 
           --,@State_Province_Territory varchar(50) = 
           --,@Country varchar(50) = 
           --,@Postal_Code varchar(50) = 
           --,@Email_for_Sales_Report varchar(50) = 
           --,@Location_Is_Active bit = 
           --,@Tax_Percente_State varchar(10) = 
           --,@Tax_Percente_County varchar(10) = 
           --,@Tax_Percente_Other varchar(10) = 
           ,@CoinsIn money = 
           ,@Tax_State money = 
           ,@Tax_County money = 
           ,@Tax_Other money = 
           ,@Tax_Total money = 
           ,@Gross money = 
           ,@Split_Operator money = 
           ,@Split_Location money = 
           ,@Advance money = 
           ,@Notes varchar(50) = 
           ,@Counter_FirstName varchar(50) = 
           ,@Counter_LastName varchar(50) = 
           ,@Record_Modified_Date datetime = 
           ,@CoinsIn_Cents money = 
           ,@CoinsIn_Bills money = 
           ,@Adjustment_1 money = 
           ,@Adjustment_2_Misc money = 
           ,@Adjustment_Total money = 
           ,@CoinsIn_Total money = 
           ,@Adjustment_1_Decription varchar(100) = 
           ,@Adjustment_2_Misc_Decription varchar(100) = 
           ,@Meter_Bills money = 
           ,@Meter_Cents money = 
           ,@Meter_Pieces smallint = 
           ,@[Location].[Data_Is_Dummy] bit = 
           ,@[Location].[Flagged_for_Deletion] bit = 
           ,@[Loc_Count].[Data_Is_Dummy]] bit = 
           ,@[Loc_Count].[Flagged_for_Deletion] bit = 
           ,@[Mach_Count].[Machine_Data_Is_Dummy] bit = 
           ,@[Mach_Count].[Flagged_for_Deletion] bit = 
           ,@Machine.[Data_Is_Dummy] bit = 
           ,@Alias varchar(50) = 
           ,@Machine_Name varchar(50) = 
           ,@Machine_Class varchar(20) = 
           ,@Keys_1 varchar(50) = 
           ,@Keys_2 varchar(50) = 
           ,@Keys_3 varchar(50) = 
           ,@Keys_4 varchar(50) = 
           ,@External_Key varchar(50) = 
           ,@Machine_Count_Order int = 
--as
--begin 
--set nocount  on
INSERT INTO [Action_Amusements_Winhost].[dbo].[vw_Worsheet_SELECT_Previous_Counts]
           ([Location.Location_ID]
           ,[Loc_Count.Location_ID]
           ,[Loc_Count.Loc_Count_ID]
           ,[Mach_Count.Loc_Count_ID]
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
           (@Location.Location_ID
           ,@Loc_Count.Location_ID
           ,@Loc_Count.Loc_Count_ID
           ,@Mach_Count.Loc_Count_ID
           ,@Loc_Count.Loc_Count_Date
           ,@Location_Name
           ,@Location.Location_Code
           ,@Machine.Location_Code
           ,@Account_Name
           ,@Account_Code
           ,@Address1
           ,@Address2
           ,@City
           ,@State_Province_Territory
           ,@Country
           ,@Postal_Code
           ,@Email_for_Sales_Report
           ,@Location_Is_Active
           ,@Tax_Percente_State
           ,@Tax_Percente_County
           ,@Tax_Percente_Other
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
           ,@Record_Modified_Date
           ,@CoinsIn_Cents
           ,@CoinsIn_Bills
           ,@Adjustment_1
           ,@Adjustment_2_Misc
           ,@Adjustment_Total
           ,@CoinsIn_Total
           ,@Adjustment_1_Decription
           ,@Adjustment_2_Misc_Decription
           ,@Meter_Bills
           ,@Meter_Cents
           ,@Meter_Pieces
           ,@[Location].[Data_Is_Dummy]
           ,@[Location].[Flagged_for_Deletion]
           ,@[Loc_Count].[Data_Is_Dummy]
           ,@[Loc_Count].[Flagged_for_Deletion]
           ,@[Mach_Count].[Machine_Data_Is_Dummy]
           ,@[Mach_Count].[Flagged_for_Deletion]
           ,@Machine.[Data_Is_Dummy]
           ,@Alias
           ,@Machine_Name
           ,@Machine_Class
           ,@Keys_1
           ,@Keys_2
           ,@Keys_3
           ,@Keys_4
           ,@External_Key
           ,@Machine_Count_Order)
end
GO

select * from [dbo].[vw_Worsheet_SELECT_Previous_Counts]
where loc_count_date = '2012-05-05' and loc_count_Code 

scope_identity()


insert into test
(
,
,
)
values
(
'
'
)



select top 1 @@IDENTITY as 'Identity' from location





drop table #temp1
create table #temp1

SELECT scope_identity() as 'id',coinsIn
    --INTO #temp1
    FROM tester
    
    select * from tester
    
    declare @Location_ID int,-- for the location count column
     @Loc_Count_ID as int, -- for mach_count column
     
    set @Location_ID =  (select MAX(Location_ID)from location)
     print  @Location_ID
    
    select @@IDENTITY as 'id',cins from tester_history
   --select * from #temp
   --truncate table test
   
   
   USE [Action_Amusements_Winhost]
GO

/****** Object:  Table [dbo].[test]    Script Date: 05/24/2012 08:27:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[test]') AND type in (N'U'))
DROP TABLE [dbo].[test]
GO

USE [Action_Amusements_Winhost]
GO

/****** Object:  Table [dbo].[test]    Script Date: 05/24/2012 08:27:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[test](
	[id] [int] NULL,
	[coinsIN] [money] NULL
) ON [PRIMARY]

GO


select * from tester


WITH 
  cteTesterRunningTotal (ID, coinsin_Running_total)
  AS
  (
    SELECT id, sum(coinsIN))as 'coinsin'
    FROM tester
  
  ) 
SELECT * from cteTesterRunningTotal


declare @t table (
    id int identity primary key,
    somecol datetime default getdate()
)
insert into @t
default values

select SCOPE_IDENTITY() --returns 1
select @@IDENTITY --returns 1

select * from tester
select @@IDENTITY from tester





Create Table #Testing (  
    id int identity,  
    somedate datetime default getdate()  
)  
insert into #Testing  
output inserted.*  
default values






--/////////////////////
drop table #Testertemp
Create Table #Testertemp
insert into #Testertemp 
output inserted.*  
select id, coinsin from tester


insert into tester(coinsIN)values(20)

select * from tester
select top 1 @@IDENTITY from tester
