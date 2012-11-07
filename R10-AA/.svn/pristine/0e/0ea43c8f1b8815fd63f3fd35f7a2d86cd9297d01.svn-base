-- ================================================
-- Template generated from Template Explorer using:
-- Create Trigger (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- See additional Create Trigger templates for more
-- examples of different Trigger statements.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS tr_Insert_z_child_tables
-- Create date: 05-28-2012
-- Description:	inserts parent id to child table upon insert to parent tester
-- =============================================
SET NOCOUNT ON


alter TRIGGER tr_Insert_Tester
ON tester
FOR INSERT
AS
--declare @id as int = (select IDENT_CURRENT('tester'))
--print @id
INSERT tester_history (id,coinsIN_running_total) VALUES ((select IDENT_CURRENT('tester')), (select sum(coinsIN) from tester))
--select max(id) from tester

go

alter TRIGGER tr_Insert_Tester
ON tester
FOR UPDATE
AS
--declare @id as int = (select IDENT_CURRENT('tester'))
--print @id
--'Bowling pin pick-swpe-put back down'
--declare @running_Total as money = (select CoinsIn_running_total from tester_history where)  
INSERT tester_history (id,coinsIN_running_total) VALUES ((select IDENT_CURRENT('tester')), (select sum(coinsIN) from tester))
--select max(id) from tester

go

INSERT tester(coinsIN) VALUES ('100')
INSERT tester(coinsIN) VALUES ('100')
INSERT tester(coinsIN) VALUES ('100')
--truncate table tester_history
--delete  tester
select min(id)'tester_id_before modify' from tester
select min(id)'tester_history_id_before modify' from tester_history
 --Test CASCADE DELETE
delete from tester where id =200048--(select min(id) from tester)
select min(id)'tester_id after delete row with min(id)' from tester
select min(id)'tester_history_id after delete row with min(id)',coinsIN_running_total  from tester_history group by coinsIn_running_total
 


declare @id as int = (select IDENT_CURRENT('tester'))
print @id
INSERT tester_history (id) VALUES (@id)


--//////////////'Bowling pin pick-swpe-put back down'//////////////////////



