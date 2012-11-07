
--/Note can only have one trigger per table triggering on same thing like Update or Delete
USE [Action_Amusements_Winhost]
GO 
Create TRIGGER trg_show_Location
ON Location
for INSERT
AS
BEGIN
print 'After trigger - Before Select '
select top 2 * from Location order by Location_ID DESC
print 'After trigger- After  Select '
END
GO

USE [Action_Amusements_Winhost]
GO 
Create  TRIGGER trg_show_Machine
ON Machine
for INSERT,UPDATE,DELETE
AS
BEGIN
select top 10 * from Machine order by Machine_ID DESC
END
GO



USE [Action_Amusements_Winhost]
GO 
Create  TRIGGER trg_show_Mach_Count
ON Mach_Count
for INSERT,UPDATE,DELETE
AS
BEGIN
select top 10 * from Mach_Count order by Mach_Count_ID DESC
END
GO

USE [Action_Amusements_Winhost]
GO 
Create  TRIGGER trg_show_Loc_Count
ON Loc_Count
for INSERT,UPDATE,DELETE
AS
BEGIN
select top 10 * from Loc_Count order by Loc_Count_ID DESC
END
GO

USE [Action_Amusements_Winhost]
GO 
Create TRIGGER trg_show_Expenses_Monthly
ON Expenses_Monthly
for INSERT,UPDATE,DELETE
AS
BEGIN
select top 10 * from Expenses_Monthly order by Expenses_Monthly_ID DESC
END
GO

--instead of comparison-
USE [Action_Amusements_Winhost]
GO 
Create TRIGGER trg_INSTEAD_OF_show_Location
ON Location
INSTEAD OF  UPDATE,DELETE
AS
BEGIN
select top 2 * from Location order by Location_ID DESC
print 'instead of'
END
GO

INSERT INTO [Action_Amusements_Winhost].[dbo].[Location]
           ([Location_Name]
           ,[Location_Code] 
           ,[Account_Code]   
           ,split_percent      
           ,[Data_Is_Dummy]
           ,Location_Is_Active
           ,[Flagged_for_Deletion])
     VALUES
           ('Fun Arcade Daytona 15'
           ,'FunArc-Daytona-15'
           ,'MarvelArc'
           ,'.05'
           ,'true'
           ,'true'
           ,NULL)

UPDATE [Location]
SET address1 = 'update'
WHERE Location_Code = 'FunArc-Daytona-12'

DELETE from Location Where [Location_Code] = 'FunArc-Daytona-19'

select top 3 * from location order by Location_ID desc


--///functional trigger
--instead of comparison-
USE [Action_Amusements_Winhost]
GO 
Create TRIGGER trg_INSTEAD_OF_Functional_Location
ON Location
INSTEAD OF  DELETE
AS
BEGIN
print 'Before trigger -  about to insert'
INSERT INTO [Action_Amusements_Winhost].[dbo].[Location]
           ([Location_Name]
           ,[Location_Code] 
           ,[Account_Code]   
           ,split_percent      
           ,[Data_Is_Dummy]
           ,Location_Is_Active
           ,[Flagged_for_Deletion])
     VALUES
           ('Fun Arcade Daytona 32'
           ,'FunArc-Daytona-32'
           ,'MarvelArc'
           ,'.05'
           ,'true'
           ,'true'
           ,NULL)
--select top 2 * from Location order by Location_ID DESC
print 'Before trigger - after insert '
END
GO



--select * from location