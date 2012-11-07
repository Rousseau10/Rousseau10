USE [Triggers]
GO
-- Create table for employees
CREATE TABLE Employees 
(EmpCode VARCHAR(8) PRIMARY KEY, Name VARCHAR(50) NOT NULL, 
Designation VARCHAR(50) NOT NULL, QualificationCode TINYINT, 
Deleted BIT NOT NULL DEFAULT 0)
GO
-- Create look up table for employees qualification
CREATE TABLE Lib_Qualification 
(QualificationCode TINYINT PRIMARY KEY, Qualification VARCHAR(20) NOT NULL)
GO
-- Add constraint to lib_qualification
ALTER TABLE dbo.Lib_Qualification ADD CONSTRAINT
FK_Lib_Qualification_Lib_Qualification FOREIGN KEY
( QualificationCode ) REFERENCES dbo.Lib_Qualification
( QualificationCode ) ON UPDATE NO ACTION 
ON DELETE NO ACTION 
GO 
-- Add constraint to employees 
ALTER TABLE dbo.EMPLOYEES ADD CONSTRAINT
FK_EMPLOYEES_Lib_Qualification FOREIGN KEY
( QualificationCode ) REFERENCES dbo.Lib_Qualification
( QualificationCode ) ON UPDATE NO ACTION 
ON DELETE NO ACTION 
GO
-- Insert data into lib_qualification table
Insert into lib_qualification VALUES (1, 'MS')
Insert into lib_qualification VALUES (2, 'MCS')
Insert into lib_qualification VALUES (3, 'BCS')
Insert into lib_qualification VALUES (4, 'MBA')
GO
-- Insert data into employees table
Insert into Employees VALUES ('405-21-1' ,'Emp1' ,'Designation1' ,1 ,0)
Insert into Employees VALUES ('527-54-7' ,'Emp2' ,'Designation2' ,2 ,0)
Insert into Employees VALUES ('685-44-2' ,'Emp3' ,'Designation3' ,1 ,0)
Insert into Employees VALUES ('044-21-3' ,'Emp4' ,'Designation4' ,3 ,0)
Insert into Employees VALUES ('142-21-9' ,'Emp5' ,'Designation5' ,2 ,0)
GO
-- Create view by two base tables
CREATE VIEW vw_EmpQualification
AS
SELECT EmpCode, Name, Designation, Qualification
FROM employees E inner join lib_qualification Q
ON E.qualificationCOde = Q.QualificationCode
WHERE deleted = 0
GO 
Select * from vw_EmpQualification
GO

--///////////
USE [Triggers]
GO
CREATE TRIGGER INSTEADOF_TR_I_EmpQualification 
ON vw_EmpQualification
/*This a Before Trigger)*/
INSTEAD OF /* notice no FOR INSERT  or AFTER INSERT like in After Triggers)*/
INSERT 
AS
BEGIN
DECLARE @Code TINYINT
SELECT @Code = qualificationCode 
FROM lib_Qualification L INNER JOIN INSERTED I
ON L.qualification = I.qualification
IF (@code is NULL )
BEGIN
RAISERROR (N'The provided qualification does not exist in qualification library',
16, 1)
RETURN
END
INSERT INTO employees (empcode, name, designation,qualificationCode,deleted) 
SELECT empcode, name, designation, @code, 0 
FROM inserted 
END
GO

--///test it
USE [Triggers]
GO 
-- Insert data in view
INSERT INTO vw_EmpQualification VALUES ('425-27-1', 'Emp8','Manager','MBA')
GO
-- To confirm the data insertion
SELECT * FROM vw_EmpQualification
GO

---Why and WHen to use ISTEAD OF TRIGGERS
--"INSTEAD OF UPDATE Trigger for update operation"

--There may be several scenarios where using INSTEAD of triggers can solve this problem. 
--In the case of views with multiple base tables, you may only issue update statements that affect a single base table at a time. 
--If any update statement on our view affects multiple base tables at a time then the following error would be generated


--Script #4: Create INSTEAD OF trigger for handling update operations on view
USE [Triggers]
GO
CREATE TRIGGER INSTEADOF_TR_U_EmpQualification 
ON vw_EmpQualification
INSTEAD OF UPDATE AS
BEGIN
IF (UPDATE(qualification)) -- If qualification is updated
BEGIN
DECLARE @code TINYINT
UPDATE employees
SET @code = L.qualificationcode 
FROM lib_qualification L INNER JOIN inserted I 
ON L.qualification = I.qualification
IF (@code is NULL )
BEGIN
RAISERROR (N'The provided qualification does not exist in qualification library',
16, 1)
RETURN
END
UPDATE employees
SET qualificationCode = @code
FROM inserted I INNER JOIN employees E ON I.empcode = E.empcode
END

IF (UPDATE(EmpCode)) -- If employee code is updated
BEGIN
RAISERROR (N'You can not edit employee code, Transaction has been failed', 16, 1)
RETURN
END
IF (UPDATE(name)) -- If name is updated 
BEGIN
UPDATE employees
SET name = I.name 
FROM inserted I INNER JOIN employees E ON I.empcode = E.empcode 
WHERE E.empcode = I.empcode
END 

IF (UPDATE(designation)) -- If designation is updated
BEGIN
UPDATE employees
SET designation = I.designation 
FROM inserted I INNER JOIN employees E ON I.empcode = E.empcode 
WHERE E.empcode = I.empcode
END
END
GO

--Now we can verify the proper functioning of our trigger for an update statement.

--Script #5: Update data in view and verify functionality of INSTEAD OF trigger
USE [Triggers]
GO 
-- Update data in view
UPDATE vw_EmpQualification
SET designation = 'Designation4 Updated', Qualification = 'MCS'
WHERE empcode = '044-21-3'
GO
-- To confirm the data update
SELECT * FROM vw_EmpQualification
GO
--The INSTEAD OF UPDATE trigger handled the update and the update is reflected in the selected data below.



--//////INSTEAD OF trigger for DELETE operation///////////////////////

--INSTEAD OF trigger may be attached for delete operations. 
--In our case we are required that when rows are deleted through the view,
-- a deleted flag in the table should be marked "1" for those rows, but rows should not actually be deleted.
-- Such rows may be deleted in bulk later at specified time if needed. 
--For this we may create the following INSTEAD OF DELETE trigger.

--Script #6: Create INSTEAD OF trigger for handling delete operations on view
USE [Triggers]
GO 
CREATE TRIGGER INSTEADOF_TR_D_EmpQualification 
ON vw_EmpQualification
INSTEAD OF DELETE AS
BEGIN
update employees
set deleted = 1
where empcode in (select empcode from deleted)
END
GO

--To verify the implementation for deletes the following script can be used

--Script #7: Delete data from view and verify functionality of INSTEAD OF trigger
USE [Triggers]
GO 
-- Delete data in view
DELETE FROM vw_EmpQualification
WHERE Designation = 'Manager'
GO
-- To confirm the data update
SELECT * FROM vw_EmpQualification
SELECT * FROM Employees
GO
--The deleted row still exist in the base table, but it is not shown 
--in the view because the deleted flag is set to "1" in the base table.



/*Summary

After going through these examples for implementing INSTEAD OF triggers for insert, update and delete
 operations on a view, there are some considerations that are required to keep in mind while planning
  to implement INSTEAD OF triggers.

If you do not specify the INSTEAD OF or AFTER keyword in the trigger header and just use the FOR keyword,
 then by default an AFTER trigger will be created.
You can have only one trigger for each of insert, update or delete option on a single table or view.
If you have created an INSTEAD OF trigger on a table then you can not use the cascade option as an UPDATE
 and DELETE rule. Cascade for delete rule will be prohibited if INSTEAD OF trigger is defined for delete
  operation and same is the case for update operations.
If you have already used cascade for delete or update options for a table then you can not create an 
INSTEAD OF trigger for that specific DML operation on that table.
INSTEAD OF triggers do not work in a recursive manner. Even if you update the same table inside the 
INSTEAD OF trigger, the trigger will not be invoked a second time. So INSTEAD OF triggers can be used to avoid recursion.
You can define both AFTER and INSTEAD OF triggers for the same DML operation on the same table.
If defined on an object, an AFTER trigger can be invoked as a result of DML operations from inside the INSTEAD OF trigger.
The deleted table for an INSTEAD OF INSERT trigger is always empty and the inserted table for INSTEAD OF DELETE trigger is always empty.
Next Steps

Keeping in mind the basic functionality of INSTEAD OF triggers, these can be used in a number of scenarios.
 Performance should be considered and properly tested before implementing INSTEAD OF triggers.
 In some scenarios they can boost the performance e.g. by skipping unnecessary roll backs, 
 but sometimes they may be a threat to performance. Normally using INSTEAD OF triggers for DML operations 
 on views is safe while implementing these for changing the flow of operations. Code implemented inside the
 INSTEAD OF trigger should be optimized as it performs alternative operations compared to the original 
 requested DML operation.
 
 */