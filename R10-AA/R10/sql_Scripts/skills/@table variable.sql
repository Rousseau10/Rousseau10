--////////code batch start///////////////
declare @t table (
    id int identity primary key,
    somecol datetime default getdate()
)
insert into @t
default values

select SCOPE_IDENTITY()--returns 1
select @@IDENTITY --returns 1
--////////////code batch end///////////////