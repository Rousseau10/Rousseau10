BEGIN TRAN

--selects and joins all 5 main tables
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

ROLLBACK