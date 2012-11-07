--////////code batch start///////////////
declare  @loop_count int = 100
while (select max(workout_id) from WorkOut) < @loop_count 
begin
insert into  workout
([Date],DeadLift_final_set_Max, dataIsDumy)
values
((GETDATE()  + 3), ((@loop_count - 50) + 1), 'true')
--select @@IDENTITY as '@@IDENTITY'
--select SCOPE_IDENTITY() as 'SCOPE_IDENTITY()'
--SELECT IDENT_CURRENT('tester')as 'IDENT_CURRENT'
set @loop_count = @loop_count + 2
end 
--////////////code batch end///////////////
select [Date],DeadLift_final_set_Max, dataIsDumy,* from workout
--SELECT CAST(SCOPE_IDENTITY() AS INT) from tester -- if not an int
delete from WorkOut where workout_ID > 1000
