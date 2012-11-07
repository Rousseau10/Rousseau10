USE [Action_Amusements_Winhost];
GO

IF OBJECT_ID('[dbo].[usp_AccSelect]') IS NOT NULL
BEGIN 
    DROP PROC [dbo].[usp_AccSelect] 
END 
GO
CREATE PROC [dbo].[usp_AccSelect] 
    @Acc_Code NVARCHAR(25)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [Acc_Code], [Acc_ID], [Acc_Name], [Address1], [Begin_Date], [End_Date], [Is_Active], [Acc_Details], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Acc_Office_Phone], [Acc_Office_Fax], [Other_Office_Phone], [Other_Office_Fax], [POC_FirstName], [POC_LastName], [POC_Role], [POC_Email], [POC_Cell], [Notes], [Comments], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion], [RowVersion] 
	FROM   [dbo].[Acc] 
	WHERE  ([Acc_Code] = @Acc_Code OR @Acc_Code IS NULL) 

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_AccInsert]') IS NOT NULL
BEGIN 
    DROP PROC [dbo].[usp_AccInsert] 
END 
GO
CREATE PROC [dbo].[usp_AccInsert] 
    @Acc_Code nvarchar(25),
    @Acc_Name nvarchar(50),
    @Address1 nvarchar(50),
    @Begin_Date date,
    @End_Date date,
    @Is_Active bit,
    @Acc_Details nvarchar(200),
    @Address2 nvarchar(50),
    @City nvarchar(50),
    @State_Province_Territory nvarchar(50),
    @Country nvarchar(50),
    @Postal_Code nvarchar(50),
    @Owner_FirstName nvarchar(50),
    @Owner_LastName nvarchar(50),
    @Owner_Cell nvarchar(50),
    @Owner_Email nvarchar(50),
    @Acc_Office_Phone nvarchar(50),
    @Acc_Office_Fax nvarchar(50),
    @Other_Office_Phone nvarchar(50),
    @Other_Office_Fax nvarchar(50),
    @POC_FirstName nvarchar(50),
    @POC_LastName nvarchar(50),
    @POC_Role nvarchar(50),
    @POC_Email nvarchar(50),
    @POC_Cell nvarchar(50),
    @Notes nvarchar(250),
    @Comments nvarchar(250),
    @Record_Modify_Date datetime2,
    @Modifiers_Login nvarchar(50),
    @Data_Is_Dummy bit,
    @Flagged_for_Deletion bit
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[Acc] ([Acc_Code], [Acc_Name], [Address1], [Begin_Date], [End_Date], [Is_Active], [Acc_Details], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Acc_Office_Phone], [Acc_Office_Fax], [Other_Office_Phone], [Other_Office_Fax], [POC_FirstName], [POC_LastName], [POC_Role], [POC_Email], [POC_Cell], [Notes], [Comments], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion])
	SELECT @Acc_Code, @Acc_Name, @Address1, @Begin_Date, @End_Date, @Is_Active, @Acc_Details, @Address2, @City, @State_Province_Territory, @Country, @Postal_Code, @Owner_FirstName, @Owner_LastName, @Owner_Cell, @Owner_Email, @Acc_Office_Phone, @Acc_Office_Fax, @Other_Office_Phone, @Other_Office_Fax, @POC_FirstName, @POC_LastName, @POC_Role, @POC_Email, @POC_Cell, @Notes, @Comments, @Record_Modify_Date, @Modifiers_Login, @Data_Is_Dummy, @Flagged_for_Deletion
	
	-- Begin Return Select <- do not remove
	SELECT [Acc_Code], [Acc_ID], [Acc_Name], [Address1], [Begin_Date], [End_Date], [Is_Active], [Acc_Details], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Acc_Office_Phone], [Acc_Office_Fax], [Other_Office_Phone], [Other_Office_Fax], [POC_FirstName], [POC_LastName], [POC_Role], [POC_Email], [POC_Cell], [Notes], [Comments], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion], [RowVersion]
	FROM   [dbo].[Acc]
	WHERE  [Acc_Code] = @Acc_Code
	-- End Return Select <- do not remove
               
	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_AccUpdate]') IS NOT NULL
BEGIN 
    DROP PROC [dbo].[usp_AccUpdate] 
END 
GO
CREATE PROC [dbo].[usp_AccUpdate] 
    @Acc_Code nvarchar(25),
    @Acc_ID int,
    @Acc_Name nvarchar(50),
    @Address1 nvarchar(50),
    @Begin_Date date,
    @End_Date date,
    @Is_Active bit,
    @Acc_Details nvarchar(200),
    @Address2 nvarchar(50),
    @City nvarchar(50),
    @State_Province_Territory nvarchar(50),
    @Country nvarchar(50),
    @Postal_Code nvarchar(50),
    @Owner_FirstName nvarchar(50),
    @Owner_LastName nvarchar(50),
    @Owner_Cell nvarchar(50),
    @Owner_Email nvarchar(50),
    @Acc_Office_Phone nvarchar(50),
    @Acc_Office_Fax nvarchar(50),
    @Other_Office_Phone nvarchar(50),
    @Other_Office_Fax nvarchar(50),
    @POC_FirstName nvarchar(50),
    @POC_LastName nvarchar(50),
    @POC_Role nvarchar(50),
    @POC_Email nvarchar(50),
    @POC_Cell nvarchar(50),
    @Notes nvarchar(250),
    @Comments nvarchar(250),
    @Record_Modify_Date datetime2,
    @Modifiers_Login nvarchar(50),
    @Data_Is_Dummy bit,
    @Flagged_for_Deletion bit
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Acc]
	SET    [Acc_Code] = @Acc_Code, [Acc_Name] = @Acc_Name, [Address1] = @Address1, [Begin_Date] = @Begin_Date, [End_Date] = @End_Date, [Is_Active] = @Is_Active, [Acc_Details] = @Acc_Details, [Address2] = @Address2, [City] = @City, [State_Province_Territory] = @State_Province_Territory, [Country] = @Country, [Postal_Code] = @Postal_Code, [Owner_FirstName] = @Owner_FirstName, [Owner_LastName] = @Owner_LastName, [Owner_Cell] = @Owner_Cell, [Owner_Email] = @Owner_Email, [Acc_Office_Phone] = @Acc_Office_Phone, [Acc_Office_Fax] = @Acc_Office_Fax, [Other_Office_Phone] = @Other_Office_Phone, [Other_Office_Fax] = @Other_Office_Fax, [POC_FirstName] = @POC_FirstName, [POC_LastName] = @POC_LastName, [POC_Role] = @POC_Role, [POC_Email] = @POC_Email, [POC_Cell] = @POC_Cell, [Notes] = @Notes, [Comments] = @Comments, Record_Modify_Date =  getdate() ,Modifiers_Login =  [dbo].[fn_GetLoginOfSPID](), [Data_Is_Dummy] = @Data_Is_Dummy, [Flagged_for_Deletion] = @Flagged_for_Deletion
	WHERE  [Acc_Code] = @Acc_Code
	
	-- Begin Return Select <- do not remove
	SELECT [Acc_Code], [Acc_ID], [Acc_Name], [Address1], [Begin_Date], [End_Date], [Is_Active], [Acc_Details], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Acc_Office_Phone], [Acc_Office_Fax], [Other_Office_Phone], [Other_Office_Fax], [POC_FirstName], [POC_LastName], [POC_Role], [POC_Email], [POC_Cell], [Notes], [Comments], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion], [RowVersion]
	FROM   [dbo].[Acc]
	WHERE  [Acc_Code] = @Acc_Code	
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_AccDelete]') IS NOT NULL
BEGIN 
    DROP PROC [dbo].[usp_AccDelete] 
END 
GO
CREATE PROC [dbo].[usp_AccDelete] 
    @Acc_Code nvarchar(25)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[Acc]
	WHERE  [Acc_Code] = @Acc_Code

	COMMIT
GO

----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

