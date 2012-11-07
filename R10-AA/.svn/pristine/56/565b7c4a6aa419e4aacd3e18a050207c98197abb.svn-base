--Adminstrative Scripts

/* information about the current user */

--server level (login)
select system_user , suser_sname() , suser_sid(), su from master.dbo.syslogins
--db level (db user)
select session_user , current_user , user , user_name() , user_id() from master.dbo.syslogins


SELECT @@SPID AS 'ID', SYSTEM_USER  'sys_Login', USER AS 'User Name' 


--This will get the current Login
declare @Current_Login varchar(50)
declare @SPID table (ID int, SYS_USER varchar(50), USR varchar(50))

insert into @SPID  (ID,SYS_USER,USR)
SELECT @@SPID AS 'ID', SYSTEM_USER  'sys_Login', USER AS 'User Name' 

select  @Current_Login = substring(SYS_USER,CHARINDEX('\',SYS_USER)+1,LEN(SYS_USER) - CHARINDEX('\',SYS_USER)+1)
from  @Spid

--print @Current_Login



--This will return the current Login of the connection(SPID)
create function fn_GetLogin()

@Current_Login varchar(50),
@SPID table (ID int, SYS_USER varchar(50), USR varchar(50))
as
begin
insert into @SPID  (ID,SYS_USER,USR)
SELECT @@SPID AS 'ID', SYSTEM_USER  'sys_Login', USER AS 'User Name' 

select  @Current_Login = substring(SYS_USER,CHARINDEX('\',SYS_USER)+1,LEN(SYS_USER) - CHARINDEX('\',SYS_USER)+1)
from  @Spid

return @Current_Login
end