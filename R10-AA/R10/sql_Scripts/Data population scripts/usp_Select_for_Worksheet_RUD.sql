create proc usp_SELECTS_5_main
as
begin
SELECT		b.loc_count_ID,
			b.loc_count_date,
            a.acc_code,--just want to display the account code
            c.Location_Name,--for the dropdown
            c.Address1,--fom worksheet display
            c.Location_Office_Phone, --fom worksheet display 
            e.Alias,
            d.CoinsIn_Total
      FROM Acc a inner join  Location c  on a.Acc_Code = c.Acc_Code
      inner join Loc_Count b ON b.Location_ID = c.Location_ID
      inner join Mach_Count d on d.Loc_Count_ID = b.Loc_Count_ID 
      inner join Machine e on e.Machine_ID = d.Machine_ID
      WHERE b.Loc_Count_ID = 15--@CustomerID
end
go


--Created by ARS 7/8/2012
CREATE PROCEDURE [dbo].[usp_Select_for_Worksheet_RUD] @Loc_Count_Date datetime2, @Loc_Code varchar(25)
AS
Begin    
-- without combining the one to many mach count to loc_count
SELECT		b.loc_count_ID,
			b.loc_count_date,
            a.acc_code,--just want to display the account code
            c.Location_Code,
            c.Location_Name,--for the dropdown
            c.Address1,--fom worksheet display
            c.Location_Office_Phone --fom worksheet display 
      FROM Acc a inner join  Location c  on a.Acc_Code = c.Acc_Code
      inner join Loc_Count b ON b.Location_ID = c.Location_ID
      --WHERE b.Loc_Count_ID = 15--@CustomerID
      WHERE b.Loc_Count_Date = @Loc_Count_Date and c.Location_Code =@Loc_Code

--  combining the one to many loc_count to mach count 
SELECT		--b.loc_count_ID,
----		c.Loc_Code,
----		b.loc_count_date,
            c.Alias,
            d.CoinsIn_Total
      FROM Location a  inner join Loc_Count b ON a.Location_ID = b.Location_ID
      inner join Mach_Count d on b.Loc_Count_ID = d.Loc_Count_ID
      inner join Machine c on c.Machine_ID = d.Machine_ID
      WHERE b.Loc_Count_Date = @Loc_Count_Date and a.Location_Code =@Loc_Code

--USAGE
/*
Declare @Loc_Count_Date datetime2 = '2012-02-01', @Loc_Code varchar(25)= 'W-Arc-1'
Execute [dbo].[usp_Select_for_Worksheet_RUD] @Loc_Count_Date ,@Loc_Code
*/

--Below joins all 5
--SELECT		b.loc_count_ID,
--			b.loc_count_date,
--            a.acc_code,--just want to display the account code
--            c.Location_Name,--for the dropdown
--            c.Address1,--fom worksheet display
--            c.Location_Office_Phone, --fom worksheet display 
--            e.Alias,
--            d.CoinsIn_Total
--      FROM Acc a inner join  Location c  on a.Acc_Code = c.Acc_Code
--      inner join Loc_Count b ON b.Location_ID = c.Location_ID
--      inner join Mach_Count d on d.Loc_Count_ID = b.Loc_Count_ID 
--      inner join Machine e on e.Machine_ID = d.Machine_ID
--      WHERE b.Loc_Count_ID = 15--@CustomerID

END
GO