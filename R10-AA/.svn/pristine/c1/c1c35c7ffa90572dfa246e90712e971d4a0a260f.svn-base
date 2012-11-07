
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS, sp_Location_UPDATE
-- Create date: 11-14-2012
--////// //////////update/////////////////////////////
create procedure sp_Location_UPDATE
	   @Location_Code_Filter varchar(50)
	  ,@Location_Name varchar(50)
      ,@Location_Code varchar(25)
      ,@Account_Name varchar(50)= null
      ,@Account_Code varchar(25)= null
      ,@Address1 varchar(50)= null
      ,@Address2 varchar(50)= null
      ,@City varchar(50)= null
      ,@State_Province_Territory varchar(50)= null
      ,@Country varchar(50)= null
      ,@Postal_Code varchar(50)= null
      ,@Contact1_FirstName varchar(50)= null
      ,@Contact1_LastName varchar(50)= null
      ,@Contact1_Role varchar(50)= null
      ,@Contact1_Email varchar(50)= null
      ,@Contact1_Cell varchar(50)= null
      ,@Contact2_FirstName varchar(50)= null
      ,@Contact2_LastName varchar(50)= null
      ,@Contact2_Role varchar(50)= null
      ,@Contact2_Email varchar(50)= null
      ,@Contact2_Cell varchar(50)= null
      ,@Owner_FirstName varchar(50)= null
      ,@Owner_LastName varchar(50)= null
      ,@Owner_Cell varchar(50)= null
      ,@Owner_Email varchar(50)= null
      ,@Location_Office_Phone varchar(50)= null
      ,@Location_Bar_Phone varchar(50)= null
      ,@Email_for_Sales_Report varchar(50)= null
      ,@Notes1 varchar(250)= null
      ,@Notes2 varchar(250)= null
      ,@Comments varchar(250)= null
      ,@Location_Is_Active bit
      ,@Tax_Percente_State varchar(10)= null
      ,@Tax_Percente_County varchar(10)= null
      ,@Tax_Percente_Other varchar(10)= null
      ,@Split_Percent varchar(10)
      --@Location_Modify_Date datetime>
      --@Modifiers_Login varchar(50)>
      ,@Data_Is_Dummy bit = null
      ,@Flagged_for_Deletion bit= null
 AS
 BEGIN  
set nocount on  
UPDATE [Action_Amusements_Winhost].[dbo].[Location]
   SET [Location_Name] = @Location_Name
      ,[Location_Code] = @Location_Code
      ,[Account_Name] = @Account_Name
      ,[Account_Code] = @Account_Code
      ,[Address1] = @Address1
      ,[Address2] = @Address2
      ,[City] = @City
      ,[State_Province_Territory] = @State_Province_Territory
      ,[Country] = @Country
      ,[Postal_Code] = @Postal_Code
      ,[Contact1_FirstName] = @Contact1_FirstName
      ,[Contact1_LastName] = @Contact1_LastName
      ,[Contact1_Role] = @Contact1_Role
      ,[Contact1_Email] = @Contact1_Email
      ,[Contact1_Cell] = @Contact1_Cell
      ,[Contact2_FirstName] = @Contact2_FirstName
      ,[Contact2_LastName] = @Contact2_LastName
      ,[Contact2_Role] = @Contact2_Role
      ,[Contact2_Email] = @Contact2_Email
      ,[Contact2_Cell] = @Contact2_Cell
      ,[Owner_FirstName] = @Owner_FirstName
      ,[Owner_LastName] = @Owner_LastName
      ,[Owner_Cell] = @Owner_Cell
      ,[Owner_Email] = @Owner_Email
      ,[Location_Office_Phone] = @Location_Office_Phone
      ,[Location_Bar_Phone] = @Location_Bar_Phone
      ,[Email_for_Sales_Report] = @Email_for_Sales_Report
      ,[Notes1] = Notes1
      ,[Notes2] = Notes2
      ,[Comments] = @Comments
      ,[Location_Is_Active] = @Location_Is_Active
      ,[Tax_Percente_State] = @Tax_Percente_State
      ,[Tax_Percente_County] = @Tax_Percente_County
      ,[Tax_Percente_Other] = @Tax_Percente_Other
      ,[Split_Percent] = @Split_Percent
      ,[Location_Modify_Date] = GETDATE()
      ,[Modifiers_Login] = dbo.fn_GetLoginOfSPID()
      ,[Data_Is_Dummy] = @Data_Is_Dummy
      ,[Flagged_for_Deletion] = @Flagged_for_Deletion
 WHERE Location_Code = @Location_Code_Filter
 END
GO

----////////below is the spoc to use for front end, these are only required parms///////////
Declare @Location_Code_Filter varchar(50)= 'FunArc-Dayto4',@Location_Code varchar(25)= 'FunArc-Dayto49', @Location_Name varchar(50)= 'Fun Arcade9',@Location_Is_Active bit = 'true', @Split_Percent varchar(10) = '0.5'
EXEC dbo.sp_Location_UPDATE @Location_Code_Filter  = @Location_Code_Filter  , @Location_Code = @Location_Code, @Location_Name  = @Location_Name, @Location_Is_Active =  @Location_Is_Active ,  @Split_Percent = @Split_Percent
--below are the optional parms
		@Account_Name varchar(50)= null
      ,@Account_Code varchar(25)= null
      ,@Address1 varchar(50)= null
      ,@Address2 varchar(50)= null
      ,@City varchar(50)= null
      ,@State_Province_Territory varchar(50)= null
      ,@Country varchar(50)= null
      ,@Postal_Code varchar(50)= null
      ,@Contact1_FirstName varchar(50)= null
      ,@Contact1_LastName varchar(50)= null
      ,@Contact1_Role varchar(50)= null
      ,@Contact1_Email varchar(50)= null
      ,@Contact1_Cell varchar(50)= null
      ,@Contact2_FirstName varchar(50)= null
      ,@Contact2_LastName varchar(50)= null
      ,@Contact2_Role varchar(50)= null
      ,@Contact2_Email varchar(50)= null
      ,@Contact2_Cell varchar(50)= null
      ,@Owner_FirstName varchar(50)= null
      ,@Owner_LastName varchar(50)= null
      ,@Owner_Cell varchar(50)= null
      ,@Owner_Email varchar(50)= null
      ,@Location_Office_Phone varchar(50)= null
      ,@Location_Bar_Phone varchar(50)= null
      ,@Email_for_Sales_Report varchar(50)= null
      ,@Notes1 varchar(250)= null
      ,@Notes2 varchar(250)= null
      ,@Comments varchar(250)= null
      ,@Tax_Percente_State varchar(10)= null
      ,@Tax_Percente_County varchar(10)= null
      ,@Tax_Percente_Other varchar(10)= null
      ,@Data_Is_Dummy bit = null
      ,@Flagged_for_Deletion bit= null
--   select * from Location