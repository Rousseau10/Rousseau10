

--Main 4 
CREATE TRIGGER TRG_AFTER_Show_Location
   ON  dbo.Location
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
select * from Location order by Location_ID desc

END
GO
CREATE TRIGGER TRG_AFTER_Show_Machine
   ON  dbo.Machine
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
select * from Machine order by Machine_ID desc

END
GO


CREATE TRIGGER TRG_AFTER_Show_Loc_Count
   ON  dbo.Loc_Count
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
select * from Loc_Count order by Loc_Count_ID desc

END
GO

CREATE TRIGGER TRG_AFTER_Show_Mach_Count
   ON  dbo.Mach_Count
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
select * from Mach_Count order by Mach_Count_ID desc

END
GO

--other tables

CREATE TRIGGER TRG_AFTER_Show_Expenses_Monthly
   ON  dbo.Expenses_Monthly
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
select * from Expenses_Monthly order by Expenses_Monthly_ID desc

END
GO

--other tables that have not been made via EF Code First
CREATE TRIGGER TRG_AFTER_Show_Machine_Transaction_History
   ON  Machine_Transaction_History
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
select * from Machine_Transaction_History order by Machine_Transaction_History_ID desc

END
GO

CREATE TRIGGER TRG_AFTER_Show_Machine_Movement_History_ID
   ON  dbo.Machine_Movement_History
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
select * from Machine_Movement_History order by Machine_Movement_History_ID desc

END
GO

CREATE TRIGGER TRG_AFTER_Show_Location_History
   ON  dbo.Location_History
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
select * from Location_History order by Location_History_ID desc

END
GO


--4 main tables test
--Location
--delete from Location where Location_Code = 'FunArc-Daytona-32'
--Machine
--update Machine set Machine_Owner_FirstName = 'Jeffrey' where Machine_Owner_FirstName = 'jeff'
--Loc_Count 
--update Loc_Count set Advance = 0 where Loc_Count_ID = 12
--Mach_Count satisfied