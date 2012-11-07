--///////////ALL SKILLS/////////////////////////
--'Implicit Conversion'
--'Explicit conversion' meaning manual convertin via cast() or convert()
--'CAST'	
-- 'converting via CAST() meets ISO datatype standards: 'tax percentage conversion from varchar to decimal'
-- 'converting via CAST() 'cannot cast varchar to int if is has any nun numeric data like a period'
--'how to select variable for sake of showing its value in reustls grid'
-- 'converting via CAST() 'smallint to varchar, bit to tiny int
-- 'converting via CAST() 'decimal(5,2) to float'
-- 'converting via CAST() 'varchar to DECIMAL(10,4) tax percentage conversion from varchar to decimal' 
-- 'converting via CAST() 'tax rate VARCHAR to real, float and int'
-- 'converting via CAST() 'money to varchar(12)',
-- 'converting via CAST() 'money to Decimal(10,4)'
-- 'converting via CAST() 'money to int'
-- 'converting via CAST() 'datetime to varchar'
-- 'converting via CAST() 'SELECT CAST(SCOPE_IDENTITY() AS INT) from tester -- if not an int
-- 'CONVERT' function same as cast but can style the data type	
-- 'converting via CONVERT()'date to varchar 112' -- *what will you for reporting
-- 'converting via CONVERT()'date to varchar 101'
-- 'converting via CONVERT()'date to varchar 106'
-- 'converting via CONVERT()'convert 'datetime to varchar 20'
-- 'converting via CONVERT()'datetime to varchar 21'
-- 'converting via CONVERT()'datetime to varchar 9'
-- 'converting via CONVERT()'money to varchar; money style- default'
-- 'converting via CONVERT()'money to varchar; money   style-1' *use this in reporting
-- 'converting via CONVERT()'money to varchar; money   style-2'
--'Random Numbers' RAND()
--timer 'WAITFOR TIME' sets time to start sproc or batch of code 
--timer 'WAITFOR DELAY' sets delay for  sproc or batch of code to start
--'get last 3 rows'
--'get rows only from yesterday'
--'ISDATE()'
--'varcharDate' *sometyope of keyword maybe used to test string data types before inserting into datetime column'
--'CASE'
--'assign'		*using select or set
--assign 'SET @coinsINBills = 123456789.12667;'  *direct assignment to variable
--assign 'SET @tester_ID= IDENT_CURRENT('Tester') *direct assignment to variable using funtion retun value
--assign 'SELECT @Location_ID = (select Location_ID from Loc_Count where Location_ID= (select MAX(Location_ID)from Location)) * value assigned by subquery result
--assign 'SELECT @Location_ID = Location_ID from Location where Location_Code = @Loc_Code  *direct assignment to variable of a direct query (ie no subquery)
--assign 'SET @coinsIN_running_total = ((select MAX(coinsIN_running_total) from tester_history) + @coinsIN) ' * value assigned by subquery result 
-- 'over(partition b...)'
--'insert thousand of records'
--'insert thousand of records using while loop using RAND()'
--'SET IDENTITY_INSERT'
--'COALESCE()'
--'NULLIF()'
--'ISNULL()'
--'trigger , insert trigger, update trigger'
--'Bowling pin pick-sweep-put back down'
--'CASCADE DELETE test'
--'CASCADE UPDATE test'
--'output parameter'
-- 'UDF' 
--'return values'
--'check sum'
--'Update compound'
--'update an identiy column using identity_insert on/off and a insert then delete query'
--'Order of query'
--'having' *subfilter of record set When Girls Have Originals
--'joins'
--'inner join'
--'left outer'
--'right outer'
--'self join'
--'cros join'
--'union join'
--'get last record'
--'Identity value retrival methods'	*SCOPE_IDENTITY() same spid faster than @@IDENTITY,  @@IDENTITY same spid,  IDENT_CURRENT('tableName') latest from any spid
--'cte'	 *popular / no persist
--'table variables' *old school / no persist
--'temp table' *best for 500k rows or more where you need to ndex the temp table
--'while loop'
--'auto generate dummy date'
--'creating Column and value for it based on a case'
--'ISNUMERIC'
--'SET STATISTICS IO ON;'
--'Triggers'
-- 'Insert image into image datatype column'

--$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$--
--$$$$$$$$$$$$$$$AL MONEY MAKING SKILLS BELOW$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$--
--$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$--


--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--	
--//++++++++++//  CONVERT() and  CAST()  //+++++++++++++//--
--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--	

--Implicit vs Explicit:
--Implicit means that the database engine will convert the data type automatically, 
--a process invisible to the user. Explicit means that you must specify how the data 
--type should be converted. If you don’t specify how SQL Server should convert 
--the data types to do what you want (explicitly), it will try to guess your intentions (implicitly).

--'IMPLICIT Conversion'
DECLARE @Val1 CHAR(2) = '2';
DECLARE @Val2 INT = 3;
SELECT
  (@Val1 + @Val2) AS Total,--IMplicit converion sql server did n its own to make @val1(char(2) and int
CASE --'CASE'
    WHEN ISNUMERIC(@Val1 + @Val2) = 0 THEN 'No' --'ISNUMERIC()'
    WHEN ISNUMERIC(@Val1 + @Val2) = 1 THEN 'Yes'
END AS IsNumber; --'creating Column and value for it based on a case' 

--'NO Implicit Convesion -concactenatio happens'
DECLARE @V1 CHAR(2) = '2';
DECLARE @V2 CHAR(6) = 'please';

SELECT
  (@V1 + @V2) AS Total,--was not numeric so insread of combining the values , it concactinates them
CASE --'CASE'
    WHEN ISNUMERIC(@V1 + @V2) = 0 THEN 'No' --'ISNUMERIC()'
    WHEN ISNUMERIC(@V1 + @V2) = 1 THEN 'Yes'
END AS IsNumber; --'creating Column and value for it based on a case' 

--implicit (automatic) DANGEROUS  conversion can bring erroneos results includin truncation
DECLARE @Val3 VARCHAR(4);
DECLARE @Val4 CHAR(2);
SET @Val3 = 'abcd';
SET @Val4 = @Val3
SELECT
  @Val3 AS Value3,
  @Val4 AS Value4;

--implicit (automatic) DANGEROUS from decimal to int 
 DECLARE @Val5 DECIMAL(7,2);
DECLARE @Val6 INT;
SET @Val5 = 12345.67;
SET @Val6 = @Val5
SELECT
  @Val5 AS Value5,
  @Val6 AS Value6;
 
  
--implicit (automatic) DANGEROUS 
--From what I’ve told you, you’ll see that the REAL value 
--has insufficient precision to hold the INT,
-- and the original value has been rounded down.
DECLARE @Vall1 INT  = 1000000000
DECLARE @Vall2 INT  = 1000000028
DECLARE @Vall3 REAL
Set @Vall3=@Vall2
SELECT
 CASE
       WHEN @Vall3 = @Vall1
       THEN 'Yes! These numbers are equal'
       ELSE 'No!These numbers are''nt equal'
 END AS [Equality Test],
 CONVERT(INT, @Vall3) as [Vall3 as an int], @Vall3 as [Vall3]
 
 
 --you should also be aware of the impact that implicit conversions can have on a query’s performance. 
 --To demonstrate what I mean, 
 --I’ve created and populated the following table in the AdventureWorks2008 database:
 
 --basically the lesson was that if your query filter is a different data type than the column it filters on, execution plan will do a scan and not a seek 
 --and will implicity convert the filter columns value from string to int
 --so be sure to convert the data type in the where clause to the datatype of the column your filtering on
 
 

SET STATISTICS IO ON; --'SET STATISTICS IO ON;'

--'EXPLICIT conversion'


--Explicit Data Conversions

--Explicit conversions let you exercise more control over your data type conversions whenever
-- you compare, combine, or move data from one database object to another. To support explicit 
--conversions, SQL Server provides two important functions: CAST and CONVERT.
-- The functions are similar in their ability to convert data. 
--However, the CAST function conforms to ISO specifications, which makes it more portable.
-- The CONVERT function, on the other hand, is specific to SQL Server, 
-- but it supports additional functionality that lets you better control the format of some types of data.


--Working with the CAST Function:
CAST (expression AS data_type [ (length ) ] )


 --  converting via Casting: 'varchar to binary'
SELECT
  Location_Code ,
  CAST(Location_Name AS BINARY(30)) AS BinaryLocationName
FROM
  Location
WHERE
  Location_ID = (select min(location_ID)from Location)

 --  converting via Casting:  'varchar to sql_variant'
  SELECT
  Location_Code ,
  CAST(Location_Name AS sql_variant) AS sql_variantLocationName
FROM
  Location
WHERE
  Location_ID = (select min(location_ID)from Location)


--  converting via Casting: 'datetime to varchar'
SELECT
  CAST(Location_Modify_Date AS VARCHAR) AS Location_Modify_Date_Varchar
FROM
  Location
WHERE
  Location_ID = (select min(location_ID)from Location)
  
  --  converting via Casting: 'money to varchar(12)', 'money to Decimal(10,4)','money to int'
SELECT
  CAST(CoinsIN AS VARCHAR(10)) AS varcharPrice,
  CAST(CoinsIN  AS DECIMAL(10,4)) AS DecimalPrice,
  CAST(CoinsIN  AS INT) AS IntPrice
  FROM
  Loc_Count
WHERE
  Loc_Count_ID = (select min(Loc_Count_ID)from Loc_Count)
  
  
  --  converting via Casting: 'varchar to DECIMAL(10,4) tax percentage conversion from varchar to decimal' 
  --'tax rate VARCHAR to real, float and int'

SELECT
  CAST(Tax_Percente_State AS real) AS REAL_Tax_Percente_State,
  CAST(Tax_Percente_State  AS DECIMAL(10,4)) AS Decimal_Tax_Percente_State,
  CAST(Tax_Percente_State  AS float) AS float_Tax_Percente_State,
  CAST(Tax_Percente_State  AS int) AS int_Tax_Percente_State-- 'cannot cast varchar to int if is has any nun numeric data like a period'

 FROM
  Location
WHERE
  Location_ID = (select min(location_ID)from Location)

  
  
  --'cast string to int if string completely made up of numbers'
  --'how to select variable for sake of showing its value in reustls grid'
  declare @value1 as char(4) = '275'
  select CAST(@value1 AS int) AS int_from_char
  
  
  --  converting via Casting: 'smallint to varchar', 'bit to tiny int','decimal(5,2) to float'
  declare @1 smallint = 1294
  declare @2 decimal(5,3) = 39.832
  SELECT
  CAST(@1 AS VARCHAR(10)) AS 'smallint to varchar',
  CAST(Data_Is_Dummy AS TINYINT) AS 'bit to tiny int',
  CAST(@2 AS FLOAT) AS 'decimal(5,2) to float'
FROM
  Location
WHERE
  Location_ID = (select min(location_ID)from Location)
  
--Working with the CONVERT Function
--convert 'date to varchar 112', 'date to varchar 101','date to varchar 106'
--'datetime to varchar 20','datetime to varchar 21','datetime to varchar 9'


SELECT
 
  CONVERT(VARCHAR(20), Loc_Count_Date, 112) AS  'date to varchar 112',
  CONVERT(VARCHAR(10), Loc_Count_Date, 101) AS  'date to varchar 101',
  CONVERT(VARCHAR(20), Loc_Count_Date, 106) AS  'date to varchar 106',
  
  CONVERT(VARCHAR(30), Record_Modified_Date, 20) AS 'datetime to varchar 20',
  CONVERT(VARCHAR(30), Record_Modified_Date, 21) AS 'datetime to varchar 21',
  CONVERT(VARCHAR(30), Record_Modified_Date, 9) AS 'datetime to varchar 9'
  FROM
  Loc_Count
WHERE
  Loc_Count_ID = (select min(Loc_Count_ID)from Loc_Count)
  
  
  
  --'ISDATE()' ,  'table variable' , 'case', 'Insert date check varcharDate ISDATE(varcharDate)=1
  --'varcharDate' *sometyope of keyword maybe used to test string data types before inserting into datetime column'
  DECLARE @Dates TABLE(
        Date_ID INT IDENTITY(1,1),
       TheDate datetime)
/* insert some string values into a column whose datatype is a DateTime */
INSERT INTO @Dates(TheDate)
SELECT CASE WHEN ISDATE(VarcharDate)=0
            THEN NULL
            ELSE VarcharDate END
FROM
(VALUES ('1 Jan 2011'),
        ('2 Jan 2011'),
        ('3 Jan 2011'),
        ('4 Jan 2011'),
        ('')) AS X (VarcharDate);
        
        select * from @Dates
        
        
-- converting via CONVERT()'money to varchar; money style- default'
-- converting via CONVERT()'money to varchar; money   style-1' *use this in reporting
-- converting via CONVERT()'money to varchar; money   style-2'
--'Convert money to string(char,nchar,nvarchar,varchar,varchar(max),nvarchar(max)'      
DECLARE @ProductCost MONEY;
SET @ProductCost = 123456789.12667; --'assign'
SELECT
  @ProductCost AS ProductCost,
  CONVERT(VARCHAR(20), @ProductCost, 1) AS 'Cost style 1',--use cost sytle 1 for reporting money data types
  CONVERT(VARCHAR(20), @ProductCost, 2) AS Cost2,
  

      

--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--	
--//++++++++++//  COALESCE() and  IFNULL() and ISNUL() //+++++++++++++//--
--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--	



--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--	
--//++++++++++//ways to 'assign' values to variables and parameters//+++++++++++++//--
--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--	

--//////code batch start -key word 'set'//////////
declare @coinsInBills money;
SET @coinsINBills = 123456789.12667; --'assign'
print @coinsInBills
--//////////code batch end////////////

--//////code batch start -key word 'select'//////////
declare @Loc_Code varchar(50)= 'FunArc-Daytona-2'
declare @Location_ID int
SELECT @Location_ID = Location_ID from Location where Location_Code = @Loc_Code
print @Location_ID
SELECT @Location_ID = (select Location_ID from Loc_Count where Location_ID= (select MAX(Location_ID)from Location))
print @Location_ID
--//////////code batch end////////////
  
  
--//////code batch start search -key word 'set'////////// 
declare  @CoinIn money = 100
declare @tester_ID INT 
insert into tester (coinsIN) values(@CoinIn )
set @tester_ID= IDENT_CURRENT('Tester')
--////////////code batch end///////////////	

	--////////code batch start 'set using query'///////////////
declare @coinsIN money = 75	
declare @coinsIN_running_total money
set @coinsIN_running_total = ((select MAX(coinsIN_running_total) from tester_history) + @coinsIN) 
print @coinsIN_running_total
--////////////code batch end///////////////


--////////code batch start 'OUTPUT PARAMETER' *note onlys sprocs can have output parms///////////////
alter PROCedure sp_Test_OutPut_Parm 
@CoinIn money
,@tester_ID INT OUTPUT

AS
begin
--tester
	insert into tester (coinsIN) values(@CoinIn )
	set @tester_ID =  SCOPE_IDENTITY() --Max(id)
end
go
--tester_history
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



--USAGE for two spocs executed separatly
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


--Create 1 parent SPROC wrapping the two child SPROCS 
alter procedure sp_insert_into_Tester_and_Tester_History
AS
BEGIN

	declare @id_OUTPUTTED_from_tester int, @coinsIN  money
	exec sp_Test_OutPut_Parm 
	 @coinIn = 1000, @tester_ID = @id_OUTPUTTED_from_tester  output

	exec sp_insert_Tester_History @id= @id_OUTPUTTED_from_tester,@coinsIn = 1000 

END
GO
--USAGE 1 parent SPROC wrapping the two child SPROCS 
exec sp_insert_into_Tester_and_Tester_History
--view test results
select b.history_id, MAX(a.id)'parent_table_id',MAX(b.id)'child_table_id', b.coinsIN_running_total 
from  tester a
inner join 
tester_History b
on a.id = b.id
group by history_id,coinsIN_running_total 
--////////////code batch end///////////////





--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--	
--//++++++++++//CTE, table variable, temp tables//+++++++++++++//--	
--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--	


--////////code batch start - 'table variable'///////////////
declare @t table (
    id int identity primary key,
    somecol datetime default getdate()
)
insert into @t
default values

select SCOPE_IDENTITY()--returns 1
select @@IDENTITY --returns 1
--////////////code batch end////////////////////

--////////code batch start - 'cte'///////////////
with cte_Tester (id)
	as
	(select max(id)
	     from tester
	)
	select cte_Tester.id,tester.coinsIn 
	from tester
	inner join cte_Tester
	on cte_Tester.id = tester.id
--////////////code batch end///////////////


--////////code batch start - 'cte'///////////////
with cte_resultSet (Parent_ID,child_ID, CoinsIn, CoinsIn_Runing)
as
	(
	select top 3 a.id,b.id,a.coinsIN,b.coinsIN_running_total from tester a inner join tester_history b on a.id = b.id order by b.id desc ,b.coinsIN_running_total asc
	)
select * from cte_resultSet order by CoinsIn_Runing asc
--////////////code batch end///////////////

	
--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--	
--//++++++++++// Joins /+++++++++++++//--	
--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--	

--////////////code batch start - 'inner join'///////////////
--inner join brings result from each table where the is a match on the joining columns
select a.*,b.*,c.*
from 
z_a_Customer a
inner join z_b_Address b
on a.Customer_id = b.Customer_id
inner join z_c_Purchases c
on b.Customer_id = c.Customer_id
--////////////code batch end////////////////////


--////////code batch start - 'left outer join'///////////////
select a.*,b.*,c.*
from 
z_a_Customer a
left outer join z_b_Address b
on a.Customer_id = b.Customer_id
left outer join z_c_Purchases c
on b.Customer_id = c.Customer_id
--
--////////////code batch end////////////////////

--////////code batch start - 'left outer join'///////////////
--*same as left just shows al records from the right tables regardless if there is a match on the left
--////////////code batch end////////////////////

--////////code batch start - 'self join'///////////////
--self join just puts columns next to each other
select a.*,b.*
from 
z_a_Customer a
join z_a_Customer b
on a.Customer_id = b.Customer_id

--////////////code batch end////////////////////

--////////code batch start - 'cross join'///////////////
--is just a screwup join
select a.*,b.*
from 
z_a_Customer a
cross join z_b_Address b
--on a.Customer_id = b.Customer_id
--////////////code batch end////////////////////

--////////code batch start - 'union join'///////////////
--just combines 2 record set with same column numbers (in order) and same data types per column unless you convert the data types
--union will not combine dup records, union all will 
select * from z_a_Customer 
union 
select * from  z_a_Customer 

select * from z_a_Customer 
union all
select * from  z_a_Customer 

--////////////code batch end////////////////////

--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--	
--//++++++++++// Updates /+++++++++++++//--	
--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--	

--////////bacth start - 'compound update' * no aggregates can be in an update so had to asign the variable prior///////////////
--first assign values to vaiables. I used both select and set, but either or works
declare @coinsIN_running_total money = (select SUM(CoinsIN) from tester)
declare @id int
set @id = (select max(id) from tester)
--then do the update
update tester_history 
set  coinsIN_running_total = @coinsIN_running_total, id = @id
from tester t
INNER JOIN 
tester_history th
on
t.id = th.id

select top 8 * from tester
select top 8 * from tester_history



	
--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--	
--//++++++++++// 'Order of query' /+++++++++++++//--	
--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--	

--////////code batch start - 'Order of query'///////////////
select t.id,th.id,t.coinsIn , SUM(t.coinsIN) as 'running total'
from tester t
INNER JOIN 
tester_history th
on
t.id = th.id
where th.id > 0 --works (select max(id) from tester)
group by t.id,th.id,t.coinsIn 
having th.id > (select min(id)from tester) AND  th.id < (select max(id)from tester) 
order by t.coinsIn desc
--pnuemonic device
--When		WHERE
--Girls		GROUP BY
--Have		HAVING -- is a subfilter or further narrowing of the result set
--Originals	ORDERB Y


--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--	
--//++++++++++//COALESCE() vs ISNULL(), NULLIF() vs CASE, , IS NOT NULL, IS NULL//+++++++++++++//--	
--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--

--'ISNULL()' similiar to coalesce but *An expression involving ISNULL with non-null parameters is considered to be NOT NULL,
select ISNULL(coinsIN_running_total,0) from tester_history order by coinsIN_running_total
--similair to isnull
select coinsIN_running_total from tester_history order by coinsIN_running_total


--'COALESCE()' *similiar to isnull but while expressions involving COALESCE with non-null parameters is considered to be NULL
select COALESCE(coinsIN_running_total,0) from tester_history order by coinsIN_running_total
--similair to isnull
select coinsIN_running_total from tester_history order by coinsIN_running_total


--'NULLIF()'Returns a null value if the two specified expressions are equal. * nullif() similair to CASE



IF OBJECT_ID ('dbo.budgets','U') IS NOT NULL
   DROP TABLE budgets;
GO
SET NOCOUNT ON;
CREATE TABLE dbo.budgets
(
   dept            tinyint   IDENTITY,
   current_year      decimal   NULL,
   previous_year   decimal   NULL
);
INSERT budgets VALUES(100000, 150000);
INSERT budgets VALUES(NULL, 300000);
INSERT budgets VALUES(0, 100000);
INSERT budgets VALUES(NULL, 150000);
INSERT budgets VALUES(300000, 300000);
GO  
SET NOCOUNT OFF;
SELECT AVG(NULLIF(COALESCE(current_year,
   previous_year), 0.00)) AS 'Average Budget'
FROM budgets;
GO


select * from dbo.budgets
select *, nullif( previous_year,150000) from dbo.budgets


create  table #temp1 ( current_year decimal ,previous_year decimal ,new_column decimal)

insert into #temp1 ( current_year ,previous_year  ,new_column) 
select current_year,previous_year, case nullif( current_year,previous_year) when 0 then 100 end as 'new_column'
from dbo.budgets

--'IS NOT NULL'
select * from #temp1 
where new_column IS NOT NULL
drop table #temp1

--'IS NULL'
select *,'is null' = null from dbo.budgets 
where current_year is null



select a.id,b.coinsIN_running_total,SUM(a.coinsIn) 
from tester a 
inner join
tester_history b
on a.id = b.id
Where b.id < 900000
Group by a.id,b.coinsIN_running_total,a.coinsIN
Having a.coinsIn < 1000000
Order by b.coinsIN_Running_Total





--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--	
--//++++++++++// trigger , insert trigger, update trigger//+++++++++++++//--	
--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--



--////////code batch start - 'insert trigger'///////////////
alter TRIGGER tr_Insert_Tester
ON tester
FOR INSERT
AS
--declare @id as int = (select IDENT_CURRENT('tester'))
--print @id
INSERT tester_history (id,coinsIN_running_total) VALUES ((select IDENT_CURRENT('tester')), (select sum(coinsIN) from tester))
go
--////////////code batch end////////////////////

--truncate table tester_history
--delete from tester

--////////code batch start - 'insert trigger test'///////////////
--insert trigger test--fire the trigger
declare @Counter int = 0
declare @random money = 0
WHILE @Counter < 10
BEGIN
set @Counter = @Counter + 1
set @random = ((RAND() * 1000) *.5)
SET IDENTITY_INSERT tester on
INSERT tester(id,coinsIN) VALUES (((select max(id) from tester)+ 1), (select case when @random < 50 then @random + 100 else @random end))
SET IDENTITY_INSERT tester off
--waitfor below is needed or the cte select will run into the insert, and insert trigger fire
WAITFOR DELAY '00:00:0:01';
with cte_resultSet (Parent_ID,child_ID, CoinsIn, CoinsIn_Runing)
as
	(
	select top 1 a.id,b.id,a.coinsIN,b.coinsIN_running_total from tester a inner join tester_history b on a.id = b.id order by b.id desc ,b.coinsIN_running_total asc
	)
select * from cte_resultSet order by CoinsIn_Runing asc

END
--////////////code batch end////////////////////


--////////code batch start - 'update trigger'///////////////
alter TRIGGER tr_Update_Tester
ON tester
FOR UPDATE
AS  
UPDATE tester_history 
set id = (select IDENT_CURRENT('tester')), coinsIN_running_total = (select sum(coinsIN) from tester)
where id = (select IDENT_CURRENT('tester'))
go

--////////////code batch end////////////////////

--////////code batch start - 'update trigger test'///////////////
declare @random money = 0
set @random = ((RAND() * 1000) *.5)
Update tester
set coinsIN  = (select case when @random < 50 then @random + 100 else @random end)
where id = (select MAX(id) from tester)
select a.id tester_ID,b.id tester_history_id,a.coinsIN,b.coinsIN_running_total from tester a join tester_history b on a.id = b.id where a.id = (select MAX(id) from tester) or a.id = ((select MAX(id) from tester)-1) or a.id = ((select MAX(id) from tester)-2)  
order by a.id
--////////////code batch end////////////////////

--////////code batch start - 'CASCADE DELETE test'///////////////
select min(id)'tester_id_before delete' from tester
select min(id)'tester_history_id_before delete' from tester_history
delete from tester where id = (select min(id) from tester)
select min(id)'tester_id after delete row with min(id)' from tester
select min(id)'tester_history_id after delete row with min(id)',coinsIN_running_total  from tester_history group by coinsIn_running_total
--////////////code batch end////////////////////

--////////code batch start - 'CASCADE DELETE test'///////////////
select min(id)'tester_id_before update' from tester
select min(id)'tester_history_id_before update' from tester_history
-- 'SET IDENTITY_INSERT' to ON
SET IDENTITY_INSERT tester on
update tester set id = ((select max(id) from tester) + 1) where id = (select min(id) from tester)
SET IDENTITY_INSERT tester off
select min(id)'tester_id after update row with min(id)' from tester
select min(id)'tester_history_id after update  row with min(id)',coinsIN_running_total  from tester_history group by coinsIn_running_total
--////////////code batch end////////////////////

--//////////////'Bowling pin pick-swpe-put back down'//////////////////////


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



--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--	
--//++++++++++// 'Random Numbers in a Certain Numerical Range'//+++++++++++++//--	
--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--

--'Random Numbers' 

--The following SQL code can be used to generate random integers between 
--the values of the @MinValue and @MaxValue variables.

DECLARE @RandomNumber decimal(6,2)
DECLARE @RandomDecimal decimal(6,2)
DECLARE @MaxValue decimal(6,2)
DECLARE @MinValue decimal(6,2)

SET @MaxValue = 300
SET @MinValue = 100

SELECT @RandomNumber = RAND()

SELECT @RandomDecimal = ((((@MaxValue + 1) - @MinValue) * @RandomNumber + @MinValue)* 2)

SELECT @RandomNumber as RandomNumber, @RandomDecimal as RandomDecimal

--The output of this SQL will be a random number between 2 and 12 (inclusive).

--///////////////insert thousand of records using while loop using RAND()/////////////////

--////////code batch start///////////////
declare  @loopCount int = (select count(*) from tester) + 3
WHILE (select count(*) from tester) < @loopCount 
BEGIN
	DECLARE @RandNumber decimal(6,2)
	DECLARE @RandDecimal decimal(6,2)
	DECLARE @MaxVal decimal(6,2)
	DECLARE @MinVal decimal(6,2)
	SET @MaxVal = 300
	SET @MinVal= 100
	SELECT @RandNumber = RAND()
	SELECT @RandDecimal = ((((@MaxVal + 1) - @MinVal) * @RandNumber + @MinVal)* 2)
	insert into  tester
	(CoinsIN)
	values (@RandDecimal)	 
END
select a.*,b.* from tester a join tester_history b on a.id = b.id where a.id = (select MAX(id) from tester) or a.id = ((select MAX(id) from tester)-1) or b.id = ((select MAX(id) from tester)-2)  
--////////////code batch end///////////////




--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--	
--//++++++++++// 'WAITFOR TIME, WAITFOR DELAY'//+++++++++++++//--	
--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--


--A. Using 'WAITFOR TIME'

--The following example executes the stored procedure sp_update_job
-- at 10:20 P.M. (22:20).

USE msdb;
EXECUTE sp_add_job @job_name = 'TestJob';
BEGIN
    WAITFOR TIME '22:20';
    EXECUTE sp_update_job @job_name = 'TestJob',
        @new_name = 'UpdatedJob';
END;
GO


declare @random money = rand()
insert into tester (coinsIn) values (@random)
select  a.*, b.*, @random random from tester a inner join tester_history b on a.id = b.id 
--B. Using 'WAITFOR DELAY'

declare @LastThreeRows int
select @LastThreeRows = COUNT(*)-3 from tester
print @LastThreeRows


BEGIN
    WAITFOR DELAY '00:00:01';
    EXECUTE sp_helpdb;
END;
GO
--C. Using WAITFOR DELAY with a local variable

The following example shows how a local variable can be used with the WAITFOR DELAY option. A stored procedure is created to wait for a variable period of time and then returns information to the user as to the number of hours, minutes, and seconds that have elapsed.

USE AdventureWorks2012;
GO
IF OBJECT_ID('dbo.TimeDelay_hh_mm_ss','P') IS NOT NULL
    DROP PROCEDURE dbo.TimeDelay_hh_mm_ss;
GO
CREATE PROCEDURE dbo.TimeDelay_hh_mm_ss 
    (
    @DelayLength char(8)= '00:00:00'
    )
AS
DECLARE @ReturnInfo varchar(255)
IF ISDATE('2000-01-01 ' + @DelayLength + '.000') = 0
    BEGIN
        SELECT @ReturnInfo = 'Invalid time ' + @DelayLength 
        + ',hh:mm:ss, submitted.';
        -- This PRINT statement is for testing, not use in production.
        PRINT @ReturnInfo 
        RETURN(1)
    END
BEGIN
    WAITFOR DELAY @DelayLength
    SELECT @ReturnInfo = 'A total time of ' + @DelayLength + ', 
        hh:mm:ss, has elapsed! Your time is up.'
    -- This PRINT statement is for testing, not use in production.
    PRINT @ReturnInfo;
END;
GO
/* This statement executes the dbo.TimeDelay_hh_mm_ss procedure. */
EXEC TimeDelay_hh_mm_ss '00:00:10';
GO




--////////code batch start ''get rows only from yesterday''///////////////
-- 'over(partition b...)'
;with cte as
(
  select
    Loc_Count_ID,Location_ID,Split_Operator,Record_Modified_Date,
    row_number() over(partition by datediff(d, 0, Record_Modified_Date) order by Record_Modified_Date desc) as rn 
  from Loc_Count
)
select *
from cte  
where rn = 1
order by Record_Modified_Date
--////////code batch end///////////////


--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--	
--//++++++++++// 'OUTPUT parameter instead of scalar funtion *scalar functions are unpopular'//+++++++++++++//--	
--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--
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


--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--	
--//++++++++++// 'UDF' *scalar functions are unpopular//+++++++++++++//--	
--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--

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

--/////////////////////////batch code end////////////////////////////////


--/////'update an identiy column using identity_insert on/off and a insert then delete query'////
--/////////////////////////batch code begin////////////////////////////////
select * from tester

set identity_insert tester on
	go
	declare @old_id int = (select MAX(id)from tester)
	insert into tester(id, coinsIn) 
		 values((@old_id + 1),(select coinsIN from tester  where id = (select MAX(id) from tester)))
	      
	-- Delete will only work if no referencing FK's
	delete from tester where ID =  @old_id
set identity_insert tester off
go

select * from tester
--/////////////////////////batch code end////////////////////////////////



--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--	
--//++++++++++// 'Triggers'//+++++++++++++//--	
--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--

USE [Triggers]
GO
-- Create table for employees
CREATE TABLE Employees 
(EmpCode VARCHAR(8) PRIMARY KEY, Name VARCHAR(50) NOT NULL, 
Designation VARCHAR(50) NOT NULL, QualificationCode TINYINT, 
Deleted BIT NOT NULL DEFAULT 0)
GO
-- Create look up table for employees qualification
CREATE TABLE Lib_Qualification 
(QualificationCode TINYINT PRIMARY KEY, Qualification VARCHAR(20) NOT NULL)
GO
-- Add constraint to lib_qualification
ALTER TABLE dbo.Lib_Qualification ADD CONSTRAINT
FK_Lib_Qualification_Lib_Qualification FOREIGN KEY
( QualificationCode ) REFERENCES dbo.Lib_Qualification
( QualificationCode ) ON UPDATE NO ACTION 
ON DELETE NO ACTION 
GO 
-- Add constraint to employees 
ALTER TABLE dbo.EMPLOYEES ADD CONSTRAINT
FK_EMPLOYEES_Lib_Qualification FOREIGN KEY
( QualificationCode ) REFERENCES dbo.Lib_Qualification
( QualificationCode ) ON UPDATE NO ACTION 
ON DELETE NO ACTION 
GO
-- Insert data into lib_qualification table
Insert into lib_qualification VALUES (1, 'MS')
Insert into lib_qualification VALUES (2, 'MCS')
Insert into lib_qualification VALUES (3, 'BCS')
Insert into lib_qualification VALUES (4, 'MBA')
GO
-- Insert data into employees table
Insert into Employees VALUES ('405-21-1' ,'Emp1' ,'Designation1' ,1 ,0)
Insert into Employees VALUES ('527-54-7' ,'Emp2' ,'Designation2' ,2 ,0)
Insert into Employees VALUES ('685-44-2' ,'Emp3' ,'Designation3' ,1 ,0)
Insert into Employees VALUES ('044-21-3' ,'Emp4' ,'Designation4' ,3 ,0)
Insert into Employees VALUES ('142-21-9' ,'Emp5' ,'Designation5' ,2 ,0)
GO
-- Create view by two base tables
CREATE VIEW vw_EmpQualification
AS
SELECT EmpCode, Name, Designation, Qualification
FROM employees E inner join lib_qualification Q
ON E.qualificationCOde = Q.QualificationCode
WHERE deleted = 0
GO 
Select * from vw_EmpQualification
GO

--///////////
USE [Triggers]
GO
CREATE TRIGGER INSTEADOF_TR_I_EmpQualification 
ON vw_EmpQualification
/*This a Before Trigger)*/
INSTEAD OF /* notice no FOR INSERT and AFTER INSERT the same thing'like in After Triggers)*/
INSERT 
AS
BEGIN
DECLARE @Code TINYINT
SELECT @Code = qualificationCode 
FROM lib_Qualification L INNER JOIN INSERTED I
ON L.qualification = I.qualification
IF (@code is NULL )
BEGIN
RAISERROR (N'The provided qualification does not exist in qualification library',
16, 1)
RETURN
END
INSERT INTO employees (empcode, name, designation,qualificationCode,deleted) 
SELECT empcode, name, designation, @code, 0 
FROM inserted 
END
GO

--///test it
USE [Triggers]
GO 
-- Insert data in view
INSERT INTO vw_EmpQualification VALUES ('425-27-1', 'Emp8','Manager','MBA')
GO
-- To confirm the data insertion
SELECT * FROM vw_EmpQualification
GO

---Why and WHen to use ISTEAD OF TRIGGERS
--"INSTEAD OF UPDATE Trigger for update operation"

--There may be several scenarios where using INSTEAD of triggers can solve this problem. 
--In the case of views with multiple base tables, you may only issue update statements that affect a single base table at a time. 
--If any update statement on our view affects multiple base tables at a time then the following error would be generated


--Script #4: Create INSTEAD OF trigger for handling update operations on view
USE [Triggers]
GO
CREATE TRIGGER INSTEADOF_TR_U_EmpQualification 
ON vw_EmpQualification
INSTEAD OF UPDATE AS
BEGIN
IF (UPDATE(qualification)) -- If qualification is updated
BEGIN
DECLARE @code TINYINT
UPDATE employees
SET @code = L.qualificationcode 
FROM lib_qualification L INNER JOIN inserted I 
ON L.qualification = I.qualification
IF (@code is NULL )
BEGIN
RAISERROR (N'The provided qualification does not exist in qualification library',
16, 1)
RETURN
END
UPDATE employees
SET qualificationCode = @code
FROM inserted I INNER JOIN employees E ON I.empcode = E.empcode
END

IF (UPDATE(EmpCode)) -- If employee code is updated
BEGIN
RAISERROR (N'You can not edit employee code, Transaction has been failed', 16, 1)
RETURN
END
IF (UPDATE(name)) -- If name is updated 
BEGIN
UPDATE employees
SET name = I.name 
FROM inserted I INNER JOIN employees E ON I.empcode = E.empcode 
WHERE E.empcode = I.empcode
END 

IF (UPDATE(designation)) -- If designation is updated
BEGIN
UPDATE employees
SET designation = I.designation 
FROM inserted I INNER JOIN employees E ON I.empcode = E.empcode 
WHERE E.empcode = I.empcode
END
END
GO

--Now we can verify the proper functioning of our trigger for an update statement.

--Script #5: Update data in view and verify functionality of INSTEAD OF trigger
USE [Triggers]
GO 
-- Update data in view
UPDATE vw_EmpQualification
SET designation = 'Designation4 Updated', Qualification = 'MCS'
WHERE empcode = '044-21-3'
GO
-- To confirm the data update
SELECT * FROM vw_EmpQualification
GO
--The INSTEAD OF UPDATE trigger handled the update and the update is reflected in the selected data below.



--//////INSTEAD OF trigger for DELETE operation///////////////////////

--INSTEAD OF trigger may be attached for delete operations. 
--In our case we are required that when rows are deleted through the view,
-- a deleted flag in the table should be marked "1" for those rows, but rows should not actually be deleted.
-- Such rows may be deleted in bulk later at specified time if needed. 
--For this we may create the following INSTEAD OF DELETE trigger.

--Script #6: Create INSTEAD OF trigger for handling delete operations on view
USE [Triggers]
GO 
CREATE TRIGGER INSTEADOF_TR_D_EmpQualification 
ON vw_EmpQualification
INSTEAD OF DELETE AS
BEGIN
update employees
set deleted = 1
where empcode in (select empcode from deleted)
END
GO

--To verify the implementation for deletes the following script can be used

--Script #7: Delete data from view and verify functionality of INSTEAD OF trigger
USE [Triggers]
GO 
-- Delete data in view
DELETE FROM vw_EmpQualification
WHERE Designation = 'Manager'
GO
-- To confirm the data update
SELECT * FROM vw_EmpQualification
SELECT * FROM Employees
GO
--The deleted row still exist in the base table, but it is not shown 
--in the view because the deleted flag is set to "1" in the base table.



/*Summary

After going through these examples for implementing INSTEAD OF triggers for insert, update and delete
 operations on a view, there are some considerations that are required to keep in mind while planning
  to implement INSTEAD OF triggers.

If you do not specify the INSTEAD OF or AFTER keyword in the trigger header and just use the FOR keyword,
 then by default an AFTER trigger will be created.
You can have only one trigger for each of insert, update or delete option on a single table or view.
If you have created an INSTEAD OF trigger on a table then you can not use the cascade option as an UPDATE
 and DELETE rule. Cascade for delete rule will be prohibited if INSTEAD OF trigger is defined for delete
  operation and same is the case for update operations.
If you have already used cascade for delete or update options for a table then you can not create an 
INSTEAD OF trigger for that specific DML operation on that table.
INSTEAD OF triggers do not work in a recursive manner. Even if you update the same table inside the 
INSTEAD OF trigger, the trigger will not be invoked a second time. So INSTEAD OF triggers can be used to avoid recursion.
You can define both AFTER and INSTEAD OF triggers for the same DML operation on the same table.
If defined on an object, an AFTER trigger can be invoked as a result of DML operations from inside the INSTEAD OF trigger.
The deleted table for an INSTEAD OF INSERT trigger is always empty and the inserted table for INSTEAD OF DELETE trigger 
--is always empty.
Next Steps

Keeping in mind the basic functionality of INSTEAD OF triggers, these can be used in a number of scenarios.
 Performance should be considered and properly tested before implementing INSTEAD OF triggers.
 In some scenarios they can boost the performance e.g. by skipping unnecessary roll backs, 
 but sometimes they may be a threat to performance. Normally using INSTEAD OF triggers for DML operations 
 on views is safe while implementing these for changing the flow of operations. Code implemented inside the
 INSTEAD OF trigger should be optimized as it performs alternative operations compared to the original 
 requested DML operation.
 
 */
 
 
 --///////////////inserting Files into nvarchar(MAX)400 chars (2 gig)////////////////--





--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--	
--//++++++++++// 'Insert whole file into NVARCHAR(MAX)'//+++++++++++++//--	
--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--


--/////////////////////////batch code Begin////////////////////////////////
 CREATE TABLE #MyTestTable (
    MyData NVARCHAR(MAX)
 )
 
 -- Puts all eACH row in text fnot new table row----RESULTS: works fine
 BULK INSERT [#MyTestTable]
FROM 'D:\MyTextFileComaDeliited.txt'

 SELECT * FROM #MyTestTable

 
 --Puts WHOLE file into row  ----RESULTS: works fine
BULK INSERT [#MyTestTable]
FROM 'D:\MyTextFileComaDeliited.txt'
WITH (ROWTERMINATOR = '\0',
      CODEPAGE = 'ACP')     
SELECT * FROM #MyTestTable

 

 --.XLS Puts WHOLE file into row  ----RESULTS: went in but all chewed up 
--BULK INSERT [#MyTestTable]
--FROM 'D:\Friday Call In Email.xls'
--WITH (ROWTERMINATOR = '|',
--      CODEPAGE = 'ACP')     
--SELECT * FROM #MyTestTable

 
 
 
  --.SQL Puts WHOLE file into row  ----RESULTS: works
BULK INSERT [#MyTestTable]
FROM 'D:\All_Tables_functions_DAta_J23.sql'
WITH (ROWTERMINATOR = '\0',
      CODEPAGE = 'ACP')     
SELECT * FROM #MyTestTable


BULK INSERT [#MyTestTable]
FROM 'D:\All_Tables_functions_DAta_J23.sql'
WITH (ROWTERMINATOR = '\0',
      CODEPAGE = 'ACP')     
SELECT * FROM #MyTestTable

 

 --.DOC - Puts WHOLE file into row ----RESULTS: went in but all chewed up 
--BULK INSERT [#MyTestTable]
--FROM 'D:\Manuscript_GZK_Just_Text.doc'
--WITH (ROWTERMINATOR = '\0',
--      CODEPAGE = 'ACP')     
--SELECT * FROM #MyTestTable

 

 --.DOC with images - Puts WHOLE file into row--RESULTS: went in but all chewed up 
--BULK INSERT [#MyTestTable]
--FROM 'D:\Manuscript_GZK_With_Images.doc'
--WITH (ROWTERMINATOR = '\0',
--      CODEPAGE = 'ACP')  

--/////////////////////////batch code end////////////////////////////////

  
  
  --//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--	
--//++++++++++// 'Insert IMAGES (into IMAGEdatatype Columns'//+++++++++++++//--	
--//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//--


--/////////////////////////batch code Begin////////////////////////////////
  
  
  
CREATE TABLE #myTable(Document varbinary(max)) 
INSERT INTO #myTable(Document) 
SELECT * FROM 
OPENROWSET(BULK N'C:\Documents and Settings\Owner\My Documents\My Pictures\AddEntity.JPG', SINGLE_BLOB) 
as images

select * from #myTable
drop table #myTable

--/////////////////////////batch code Begin////////////////////////////////

--/////////////////////////batch code End////////////////////////////////
  
DECLARE	@imgNumber int
--DECLARE	@imgNameString varchar(20)
DECLARE	@imgString varchar(80)
DECLARE @insertString varchar(3000)
SET @imgNumber = 1

WHILE @imgNumber < 4

		BEGIN
		--SET @imgNameString = 'pic' + + CONVERT(varchar,@imgNumber) + '.jpg'
		--print @imgNameString
		SET @imgString = 'C:\Documents and Settings\Owner\My Documents\My Pictures\pic' + CONVERT(varchar,@imgNumber) + '.jpg'

		SET @insertString = N'INSERT INTO Test_More_TimeS_GUID_Image_File([image]) 
		SELECT * FROM OPENROWSET(BULK N''' + @imgString + ''', SINGLE_BLOB) as tempImg'
		--print @insertString
		EXEC(@insertString)
		SET @imgNumber = @imgNumber + 1

END --while loop
GO --remove values from vars in memory


--/////////////////////////batch code End////////////////////////////////


INSERT INTO Test_More_TimeS_GUID_Image_File([image]) 
SELECT * FROM 
OPENROWSET(BULK N'C:\Documents and Settings\Owner\My Documents\My Pictures\AddEntity.JPG', SINGLE_BLOB) 
as images

select * from Test_More_TimeS_GUID_Image_File





UPDATE Test_More_TimeS_GUID_Image_File
SET [image] = 
(SELECT * FROM 
OPENROWSET(BULK N'C:\Documents and Settings\Owner\My Documents\My Pictures\pic1.JPG', SINGLE_BLOB) AS Updatedimages)
WHERE COMMENTS IS  null

select * from Test_More_TimeS_GUID_Image_File

--/////////////////////////batch code End////////////////////////////////


--/////////////////////////batch code Begin////////////////////////////////


--C:\Documents and Settings\Owner\My Documents\My Pictures\

--/////////////////////////batch code End////////////////////////////////

