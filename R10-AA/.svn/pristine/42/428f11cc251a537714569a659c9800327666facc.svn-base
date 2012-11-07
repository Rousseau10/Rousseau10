
alter procedure sp_Test_UPDATE

 @ID int ,
 @CoinsIn money 

as
begin

update test
set CoinsIn = @CoinsIn
where ID = @ID

end
go

declare
@ID int = 1,
 @CoinsIn money = 300
 
Exec sp_Test_UPDATE @ID = @ID, @CoinsIn = @CoinsIn
select * from test

