--///Blogging SPROCS
--////////////////////insert
create  procedure usp_Insert_Blogs

@Name varchar(20), 
@Url  varchar(20)

as
begin
set nocount on
insert into Blogs (Name,Url) values (@Name, @url)
end
go


declare @name varchar(20) = 'Wallies Blog'
declare @Url varchar(20)  = 'blog.wally.com'
execute usp_Insert_Blogs @Name = @name, @Url = @Url

select * from blogs

--////////////////////update
alter  procedure usp_Update_Blogs

@Name varchar(20), 
@Url  varchar(20)
as
begin
set nocount on
update Blogs
set Name = @Name , @Url = Url
where BlogID = (select IDENT_CURRENT('Blogs'))
end
go

--usage
declare @name varchar(20) = 'Pallies Blog'
declare @Url varchar(20)  = 'Pallies.com'
execute usp_Insert_Blogs @Name = @name, @Url = @Url
select * from Blogs

--delete
--////////////////////update
alter  procedure usp_DELETE_Blogs
--@Name varchar(20), 
--@Url  varchar(20)
as
begin
set nocount on
Delete Blogs
where BlogID = (select IDENT_CURRENT('Blogs'))
end
go
--usage

execute usp_DELETE_Blogs 
select * from Blogs


--//////////select/////////////
create  procedure usp_Select_Blogs
 @BlogID_Filter int
as
begin
set nocount on
Select * from blogs
where BlogID = @BlogID_Filter
end
go

--usage
declare  @BlogID_Filter int= 4 
execute usp_Select_Blogs @BlogID_Filter= @BlogID_Filter
select * from Blogs