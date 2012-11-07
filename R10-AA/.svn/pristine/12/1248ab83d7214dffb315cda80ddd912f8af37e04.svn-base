
-- =============================================
-- Author:		ARS,fn_GetLoginOfSPID
-- Create date: 5-15-2012
-- Description:	Returns the Current Server Login Name of the SPID
-- =============================================
CREATE FUNCTION fn_GetLoginOfSPID
(
	-- Add the parameters for the function here
	-- nothing needs to be passed in
)
RETURNS varchar(50)
AS
BEGIN
	-- Declare the return variable here
	DECLARE  @Current_Login varchar(50)

	-- Add the T-SQL statements to compute the return value here
	declare @SPID table (ID int, SYS_USER varchar(50), USR varchar(50))
insert into @SPID  (ID,SYS_USER,USR)
SELECT @@SPID AS 'ID', SYSTEM_USER  'sys_Login', USER AS 'User Name' 
select  @Current_Login = substring(SYS_USER,CHARINDEX('\',SYS_USER)+1,LEN(SYS_USER) - CHARINDEX('\',SYS_USER)+1)
from  @Spid


	-- Return the result of the function
	RETURN  @Current_Login 

END
GO

--/////////////////////////
--print dbo.fn_GetLoginOfSPID()

