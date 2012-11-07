--///////////////retuning the just inserted identity /////////////////
--Conclusion
select SCOPE_IDENTITY() --returns what YOUR spid just inseted and is FASTER than @@IDENTITY so they say
select @@IDENTITY --returns what YOUR spid just inseted 
select IDENT_CURRENT('tableName')  --returns the latest spid regardless of whose inserted it so do not use 
									--for the purpose of getting the identity from record in the parent table just inserted and putting that value in the child
									-- or you will end up with data curruption and orphaned records
									--it do not need to need to be executed in same batch with an INSERT
--certainly select IDENT_CURRENT('tableName') is useful in other scenarious lets say you do want the highest identy period
select IDENT_CURRENT('tester')



--////////code batch start///////////////
declare  @loop_count int = 20000
while (select max(id) from tester) < @loop_count 
begin
insert into  tester
(CoinsIN)
values
((select Max(coinsin) from tester) + 9)
select @@IDENTITY as '@@IDENTITY'
select SCOPE_IDENTITY() as 'SCOPE_IDENTITY()'
SELECT IDENT_CURRENT('tester')as 'IDENT_CURRENT'
end 
--////////////code batch end///////////////
select * from tester



--////////code batch start///////////////
declare @t table (
    id int identity primary key,
    somecol datetime default getdate()
)
insert into @t
default values

select SCOPE_IDENTITY() --returns 1
select @@IDENTITY --returns 1
--////////////code batch end///////////////


SELECT CAST(SCOPE_IDENTITY() AS INT) from tester -- if not an int


--////////code batch start///////////////
insert tester 
(coinsIN)
values 
(600)
select SCOPE_IDENTITY()
--////////////code batch end///////////////

