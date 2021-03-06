USE [Action_Amusements_Winhost]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Loc_Count_MVC]    Script Date: 06/18/2012 11:46:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS
-- Create date: 06-16-2012
-- =============================================

ALTER PROCEDURE [dbo].[sp_Insert_Loc_Count_MVC]
    @Loc_Code varchar(40)
	-- Add the parameters for the stored procedure here
			,@Location_ID int 
		   ,@Loc_Count_Date date
           ,@CoinsIn money
           ,@Tax_State money
           ,@Tax_County money
           ,@Tax_Other money
           ,@Tax_Total money
           ,@Gross money
           ,@Split_Operator money
           ,@Split_Location money
           ,@Advance money
           ,@Notes varchar(50)

           ,@Counter_FirstName varchar(50)
           ,@Counter_LastName varchar(50)
           ,@Data_Is_Dummy bit
           ,@Flagged_for_deletion bit
AS
BEGIN

select @Location_ID = Location_ID from Location where Location_Code = @Loc_Code
INSERT INTO [Action_Amusements_Winhost].[dbo].[Loc_Count]
           ([Location_ID]
           ,[CoinsIn]
           ,[Loc_Count_Date]
           ,[Tax_State]
           ,[Tax_County]
           ,[Tax_Other]
           ,[Tax_Total]
           ,[Gross]
           ,[Split_Operator]
           ,[Split_Location]
           ,[Advance]
           ,[Notes]
           ,[Counter_FirstName]
           ,[Counter_LastName]
           ,[Data_Is_Dummy]
           ,[Flagged_for_Deletion])
     VALUES
           (
			@Location_ID
           ,@CoinsIn 
           ,@Loc_Count_Date
           ,@Tax_State 
           ,@Tax_County 
           ,@Tax_Other 
           ,@Tax_Total 
           ,@Gross 
           ,@Split_Operator 
           ,@Split_Location 
           ,@Advance 
           ,@Notes 
           ,@Counter_FirstName 
           ,@Counter_LastName 
           ,@Data_Is_Dummy
           ,@Flagged_for_deletion
           )
END
