--1000 locations 50 acounts with 10 locations
--first create the 500 locations with same account name
DECLARE @Location_Name varchar(50)
DECLARE @Location_Code varchar(25)
DECLARE @Account_Name varchar(50)
DECLARE @Account_Code varchar(25)
DECLARE @Address1 varchar(50)
DECLARE @Address2 varchar(50)
DECLARE @City varchar(50)
DECLARE @State_Province_Territory varchar(50)
DECLARE @Country varchar(50)
DECLARE @Postal_Code varchar(50)
DECLARE @Contact1_FirstName varchar(50)
DECLARE @Contact1_LastName varchar(50)
DECLARE @Contact1_Role varchar(50)
DECLARE @Contact1_Email varchar(50)
DECLARE @Contact1_Cell varchar(50)
DECLARE @Contact2_FirstName varchar(50)
DECLARE @Contact2_LastName varchar(50)
DECLARE @Contact2_Role varchar(50)
DECLARE @Contact2_Email varchar(50)
DECLARE @Contact2_Cell varchar(50)
DECLARE @Owner_FirstName varchar(50)
DECLARE @Owner_LastName varchar(50)
DECLARE @Owner_Cell varchar(50)
DECLARE @Owner_Email varchar(50)
DECLARE @Location_Office_Phone varchar(50)
DECLARE @Location_Bar_Phone varchar(50)
DECLARE @Email_for_Sales_Report varchar(50)
DECLARE @Notes1 varchar(250)
DECLARE @Notes2 varchar(250)
DECLARE @Comments varchar(250)
DECLARE @Location_Is_Active bit
DECLARE @Tax_Percente_State varchar(10)
DECLARE @Tax_Percente_County varchar(10)
DECLARE @Tax_Percente_Other varchar(10)
DECLARE @Split_Percent varchar(10)
DECLARE @Data_Is_Dummy bit

-- TODO: Set parameter values here.


----------Simple CASE expression: 
--CASE @loopcounter 
--     WHEN 50 THEN result_expression [ ...n ] 
--     [ ELSE else_result_expression ] 
--END 
---------Searched CASE expression:
--CASE
--     WHEN Boolean_expression THEN result_expression [ ...n ] 
--     [ ELSE else_result_expression ] 
--END

declare @loopcounter bigint = -1;
set @loopcounter = @loopcounter + 1
while @loopcounter <= 500
BEGIN
	if @loopcounter = 50 
			print  @loopcounter 
	else if @loopcounter = 350 
			print  @loopcounter
			--else
				-- @loopcounter

EXECUTE  [Action_Amusements_Winhost].[dbo].[sp_Insert_Location] 
   @Location_Name = 
  ,@Location_Code
  ,@Account_Name
  ,@Account_Code
  ,@Address1
  ,@Address2
  ,@City
  ,@State_Province_Territory
  ,@Country
  ,@Postal_Code
  ,@Contact1_FirstName
  ,@Contact1_LastName
  ,@Contact1_Role
  ,@Contact1_Email
  ,@Contact1_Cell
  ,@Contact2_FirstName
  ,@Contact2_LastName
  ,@Contact2_Role
  ,@Contact2_Email
  ,@Contact2_Cell
  ,@Owner_FirstName
  ,@Owner_LastName
  ,@Owner_Cell
  ,@Owner_Email
  ,@Location_Office_Phone
  ,@Location_Bar_Phone
  ,@Email_for_Sales_Report
  ,@Notes1
  ,@Notes2
  ,@Comments
  ,@Location_Is_Active
  ,@Tax_Percente_State
  ,@Tax_Percente_County
  ,@Tax_Percente_Other
  ,@Split_Percent
  ,@Data_Is_Dummy
  
  
  
  END--loop

