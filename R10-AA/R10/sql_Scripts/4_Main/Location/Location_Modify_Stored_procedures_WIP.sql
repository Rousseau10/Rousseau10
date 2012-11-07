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
	INSERT INTO [Action_Amusements_Winhost].[dbo].[Location]
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
           ,@Data_Is_Dummy

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
GO


END
GO


exec sp_Insert_vw_Loc_Count
			1
           ,100
           ,5.75
           ,1.50
           ,.75
           ,8
           ,92
           ,46.00
           ,46.00
           ,0
           ,null        
           ,'05-02-2012'
           ,'Walter'
           ,'Spencer'
           --,GETDATE()
           ,'WSpencer'
           ,'True'

           
           select * from [Action_Amusements_Winhost].[dbo].[vw_Location]
           