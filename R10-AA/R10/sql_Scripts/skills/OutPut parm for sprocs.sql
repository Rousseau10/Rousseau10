--//////////output columnzwip can only be used in a SPROC not a regular query/////////////
declare @latest_identity int output
insert into tester (coinsIN) values(545)
output.id = @latest_identity