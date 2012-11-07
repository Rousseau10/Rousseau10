USE DATABASE Northwind
GO
CREATE PROCEDURE [dbo].[CustWithRecentOrders] @CustomerID nchar(5)
AS

-- without combining the one to many mach count to loc_count
SELECT		b.loc_count_ID,
            a.acc_code,--just want to display the account code
            c.Location_Name,--for the dropdown
            c.Address1,--fom worksheet display
            c.Location_Office_Phone --fom worksheet display 
      FROM Acc a inner join  Location c  on a.Acc_Code = c.Acc_Code
      inner join Loc_Count b ON b.Location_ID = c.Location_ID
      WHERE b.Loc_Count_ID = 15--@CustomerID
      
--  combining the one to many mach count to loc_count
SELECT		b.loc_count_ID,
            a.acc_code,--just want to display the account code
            c.Location_Name,--for the dropdown
            c.Address1,--fom worksheet display
            c.Location_Office_Phone --fom worksheet display 
      FROM Acc a inner join  Location c  on a.Acc_Code = c.Acc_Code
      inner join Loc_Count b ON b.Location_ID = c.Location_ID
      WHERE b.Loc_Count_ID = 15--@CustomerID




SELECT TOP 10
            OrderID,
            OrderDate,
            ShippedDate
      FROM Orders o
      --WHERE CustomerID = @CustomerID
      ORDER BY OrderID DESC
GO 

--execute usp_DELETE_All_Tables_but_Lookups
26	Wrinkles		Arcade		W-Arc-1		W-Arc		
27	Weepies			Arcade		W-Arc-2		W-Arc
30	CocoButters		Restaurant	C-Rest-1	C-Rest	
32	Cookie Cutters	 Restaurant	C-Rest-2	C-Rest	

14	26	2012-01-01	100.0000	
15	26	2012-02-01	100.0000	
16	27	2012-01-01	100.0000	
17	27	2012-02-01	100.0000	
18	30	2012-01-01	200.0000
20	32	2012-01-01	200.0000	
21	32	2012-02-01	200.0000	

34	C-Pool-2	Pool table	1	NULL	1	NULL	NULL	C-Rest-2	
30	W-Crane-1	Treasure Crane	3	NULL	3	NULL	NULL	W-Arc-1	
28	W-Juke1	Super JukeBox	2	NULL	NULL	2	NULL	NULL	W-Arc-1	
27	W-Pool1	Pool	1	NULL	1	NULL	NULL	W-Arc-1	
31	W-Vending-1	Snack Machine	4	NULL	4	NULL	NULL	W-Arc-1
33	W-VendMeters-1	VendMachMeters	5	NULL	5	NULL	NULL	W-Arc-1
