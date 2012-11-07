-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS
-- Create date: 11-14-2012
create PROCEDURE sp_Insert_vw_Location
	        @Location_Name varchar(50)
           ,@Location_Code varchar(25)
           ,@Account_Name varchar(50)
           ,@Account_Code varchar(25)
           ,@Address1 varchar(50)
           ,@Address2 varchar(50)
           ,@City varchar(50)
           ,@State_Province_Territory varchar(50)
           ,@Country varchar(50)
           ,@Postal_Code varchar(50)
           ,@Contact1_FirstName varchar(50)
           ,@Contact1_LastName varchar(50)
           ,@Contact1_Role varchar(50)
           ,@Contact1_Email varchar(50)
           ,@Contact1_Cell varchar(50)
           ,@Contact2_FirstName  varchar(50)
           ,@Contact2_LastName varchar(50)
           ,@Contact2_Role varchar(50)
           ,@Contact2_Email varchar(50)
           ,@Contact2_Cell varchar(50)
           ,@Owner_FirstName varchar(50)
           ,@Owner_LastName varchar(50)
           ,@Owner_Cell varchar(50)
           ,@Owner_Email varchar(50)
           ,@Location_Office_Phone varchar(50)
           ,@Location_Bar_Phone varchar(50)
           ,@Email_for_Sales_Report varchar(50)
           ,@Notes1 varchar(250)
           ,@Notes2 varchar(250)
           ,@Comments varchar(250)
           ,@Location_Is_Active bit
           ,@Tax_Percente_State varchar(10)
           ,@Tax_Percente_County varchar(10)
           ,@Tax_Percente_Other varchar(10)
           ,@Split_Percent varchar(10)
         --,[Location_Modify_Date]
           ,@Modifiers_Login varchar(50)
           ,@Data_Is_Dummy varchar(10)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO [Action_Amusements_Winhost].[dbo].[Location]
           ([Location_Name]
           ,[Location_Code]
           ,[Account_Name]
           ,[Account_Code]
           ,[Address1]
           ,[Address2]
           ,[City]
           ,[State_Province_Territory]
           ,[Country]
           ,[Postal_Code]
           ,[Contact1_FirstName]
           ,[Contact1_LastName]
           ,[Contact1_Role]
           ,[Contact1_Email]
           ,[Contact1_Cell]
           ,[Contact2_FirstName]
           ,[Contact2_LastName]
           ,[Contact2_Role]
           ,[Contact2_Email]
           ,[Contact2_Cell]
           ,[Owner_FirstName]
           ,[Owner_LastName]
           ,[Owner_Cell]
           ,[Owner_Email]
           ,[Location_Office_Phone]
           ,[Location_Bar_Phone]
           ,[Email_for_Sales_Report]
           ,[Notes1]
           ,[Notes2]
           ,[Comments]
           ,[Location_Is_Active]
           ,[Tax_Percente_State]
           ,[Tax_Percente_County]
           ,[Tax_Percente_Other]
           ,[Split_Percent]
           --,[Location_Modify_Date]
           ,[Modifiers_Login]
           ,[Data_Is_Dummy])
     VALUES
           (@Location_Name
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
           --,[Location_Modify_Date]
           ,@Modifiers_Login
           ,@Data_Is_Dummy)

END
GO


exec sp_Insert_vw_Location
'Skippys_Pizza_A1A'
           ,'NSB12'
           ,'Skippys_Pizza_Restaraunts'
           ,'SPR'
           ,'3001 A1 Avenue'
           ,'3rd Floor'
           ,'New Smyrna Beach'
           ,'FL'
           ,'USA'
           ,'32169'
           ,'Ron'
           ,'Hendricks'
           ,'Manager'
           ,'RHendricks@aol.com'
           ,'3868462232'
           ,'Sheryl'
           ,'Weinstein'
           ,'Bartender'
           ,'WB2785ISME@Gmail.com'
           ,'3868462239'
           ,'Jim'
           ,'Lopez'
           ,'3868462277'
           ,'JimmyLopez33@comcast.com'
           ,'3868469999'
           ,'3868468888'
           ,'RHendricks@aol.com'
           ,'This is one of 5 locations for this account'
           ,null
           ,'no comments'
           ,'true'
           ,'.045'
           ,'.015'
           ,'.005'
           ,'.6'
           --,GETDATE()
           ,'WSpencer'
           ,'true'
			
           
           select * from [Action_Amusements_Winhost].[dbo].[Location]
           