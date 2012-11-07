--///////////////insert thousand of records using while loop/////////////////



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






SELECT CAST(SCOPE_IDENTITY() AS INT) from tester -- if not an int


--////////code batch start///////////////
insert tester 
(coinsIN)
values 
(600)
select SCOPE_IDENTITY()
--////////////code batch end///////////////

