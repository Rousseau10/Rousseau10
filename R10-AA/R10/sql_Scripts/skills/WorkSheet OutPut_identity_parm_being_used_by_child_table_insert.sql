--//////skillls output parameter  *Note only sprocs can have an outpu parm/
alter PROCedure sp_Test_OutPut_Parm 
@CoinIn money
,@tester_ID INT OUTPUT
--,@coinsIN money output
AS
begin
	insert into tester (coinsIN) values(@CoinIn )
	set @tester_ID =  SCOPE_IDENTITY() --Max(id)
	--FROM tester --a inner join tester_History b
	--on a.id = b.id
	
	--where
	--b.CoinsIn_Running_total is not null
	--group by a.coinsIN
end
go



alter procedure sp_insert_Tester_History
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



--USAGE
declare @id_OUTPUTTED_from_tester int, @coinsIN  money
exec sp_Test_OutPut_Parm 
 @coinIn = 1000, @tester_ID = @id_OUTPUTTED_from_tester  output

print  @id_OUTPUTTED_from_tester 

exec sp_insert_Tester_History @id= @id_OUTPUTTED_from_tester,@coinsIn = 1000 
--view test results
select b.history_id, MAX(a.id)'parent_table_id',MAX(b.id)'child_table_id', b.coinsIN_running_total 
from  tester a
inner join 
tester_History b
on a.id = b.id
group by history_id,coinsIN_running_total 



alter procedure sp_insert_into_Tester_and_Tester_History
as
begin

declare @id_OUTPUTTED_from_tester int, @coinsIN  money
exec sp_Test_OutPut_Parm 
 @coinIn = 1000, @tester_ID = @id_OUTPUTTED_from_tester  output

--print  @id_OUTPUTTED_from_tester 

exec sp_insert_Tester_History @id= @id_OUTPUTTED_from_tester,@coinsIn = 1000 

end
go


exec sp_insert_into_Tester_and_Tester_History
--view test results
select b.history_id, MAX(a.id)'parent_table_id',MAX(b.id)'child_table_id', b.coinsIN_running_total 
from  tester a
inner join 
tester_History b
on a.id = b.id
group by history_id,coinsIN_running_total 