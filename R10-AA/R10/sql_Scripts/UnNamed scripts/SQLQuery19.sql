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


--I did not have adventure works 2008 so basically the lsson is 

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
  
  
  --  converting via Casting: 'varchar to DECIMAL(10,4) tax percentage conversion from varchar to decimal' 'tax rate VARCHAR to real, float and int'

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
        
        
-- converting via CONVERT()'money to varchar; money style- default '
-- converting via CONVERT()'money to varchar; money   style-1' *use this in reporting
-- converting via CONVERT()'money to varchar; money   style-2'
--'Convert money to string(char,nchar,nvarchar,varchar,varchar(max),nvarchar(max)'      
DECLARE @ProductCost MONEY;
SET @ProductCost = 123456789.12667; --'assign'
SELECT
  @ProductCost AS ProductCost,
  CONVERT(VARCHAR(20), @ProductCost, 1) AS 'Cost style 1',--use cost sytle 1 for reporting money data types
  CONVERT(VARCHAR(20), @ProductCost, 2) AS Cost2,
  




        
        