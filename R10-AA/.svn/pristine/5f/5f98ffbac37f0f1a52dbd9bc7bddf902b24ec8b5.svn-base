--USE [Action_Amusements_Winhost]
--GO

--declare @Proc nvarchar(50)
--declare @RowCnt int
--declare @MaxRows int
--declare @ExecSql nvarchar(255)

--select @RowCnt = 1
--select @Proc = 'usp_InsertUser'

---- These next two rows are specific to source table or query
--declare @Import table (rownum int IDENTITY (1, 1) Primary key NOT NULL , EmployeeID varchar(9))
--insert into @Import (EmployeeID) select EmployeeID from EmployeeImportTable

--select @MaxRows=count(*) from @Import

--while @RowCnt <= @MaxRows
--begin
--    select @ExecSql = 'exec ' + @Proc + ' ''' + EmployeeID + '''' from @Import where rownum = @RowCnt 
--    --print @ExecSql
--    execute sp_executesql @ExecSql
--    Select @RowCnt = @RowCnt + 1
--end


create procedure sp_insert_Tester_History_Using_sp_ExecuteSQL

@id int
,@coinsIN money
as
begin
declare @coinsIN_running_total money
set @coinsIN_running_total = ((select MAX(coinsIN_running_total) from tester_history) + @coinsIN) 
insert into tester_history (id,coinsIN_running_total)
values(@id,@coinsIN_running_total )
end
go
USE [Action_Amusements_Winhost]
GO

declare @Proc nvarchar(50)
declare @RowCnt int
declare @MaxRows int
declare @ExecSql nvarchar(255)

select @RowCnt = 1
select @Proc = 'sp_insert_Tester_History_Using_sp_ExecuteSQL'

-- These next two rows are specific to source table or query
--declare @Import table (rownum int IDENTITY (1, 1) Primary key NOT NULL , EmployeeID varchar(9))

insert into Tester_History (ID,coinsIN_running_total ) Values ((select IDENT_CURRENT('tester')),((select coinsIn from tester where id = (select Max(id)from tester))+ (select MAX(coinsIN_running_total)from tester_history)));
--select * from  tester;select * from  tester_history;
select @MaxRows=count(*) from @Import

while @RowCnt <= @MaxRows
begin
    select @ExecSql = 'exec ' + @Proc + ' ''' + EmployeeID + '''' from @Import where rownum = @RowCnt 
    --print @ExecSql
    execute sp_executesql @ExecSql
    Select @RowCnt = @RowCnt + 1
end
----Only thing missin g in "select @ExecSql = 'exec ' + @Proc + ' ''' + EmployeeID + '''' from @Import where rownum = @RowCnt " is to use "CAST(EmployeeID AS NVARCHAR)", otherwise this will result in an error while using a numeric ID.