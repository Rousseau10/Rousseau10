
--Use same view for selecting for new_count

--0.On page load populate the active locations with Location_Name
select Loc_Code, Location_Name from Location where Location_Is_Active = 'true' and Data_Is_Dummy = 'false'

--on Location name select -make first entry 'select Location' then if any but -1 is selected the associated loc_Code
--value is assigned to string _Loc_Code.
--now use csharp ado.net datafill the Location_Name Drop Down Control with Machine_Name vaules
--1. select TO modify
declare @loc_code varchar(40) , @loc_count_date date
select * from vw_worksheet_SELECT 
where loc_Code = @loc_code AND loc_Count_Date = @loc_count@date
order by COUNT_Order ASC

--1. select for new count
declare @loc_code varchar(40) 
select * from vw_worksheet_SELECT 
where loc_Code = @loc_code AND loc_Count_Date = @loc_count@date
order by COUNT_Order ASC