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
-- =============================================
alter PROCEDURE sp_Insert_vw_Loc_Count
	-- Add the parameters for the stored procedure here
			@Location_ID int
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
           ,@Location_Count_Date datetime
           ,@Counter_FirstName varchar(50)
           ,@Counter_LastName varchar(50)
           --,[Record_Modified_Date]
           ,@Modifiers_Login varchar(50)
           ,@Data_Is_Dummy bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO [Action_Amusements_Winhost].[dbo].[vw_Loc_Count]
           ([Location_ID]
           ,[CoinsIn]
           ,[Tax_State]
           ,[Tax_County]
           ,[Tax_Other]
           ,[Tax_Total]
           ,[Gross]
           ,[Split_Operator]
           ,[Split_Location]
           ,[Advance]
           ,[Notes]
           ,[Location_Count_Date]
           ,[Counter_FirstName]
           ,[Counter_LastName]
         --,[Record_Modified_Date]
           ,[Modifiers_Login]
           ,[Data_Is_Dummy])
   
     VALUES
           (@Location_ID
           ,@CoinsIn
           ,@Tax_State
           ,@Tax_County
           ,@Tax_Other
           ,@Tax_Total
           ,@Gross
           ,@Split_Operator
           ,@Split_Location
           ,@Advance
           ,@Notes
           ,@Location_Count_Date
           ,@Counter_FirstName
           ,@Counter_LastName
        -- ,[Record_Modified_Date]
           ,@Modifiers_Login
           ,@Data_Is_Dummy)  
           
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

           
           select * from [Action_Amusements_Winhost].[dbo].[vw_Loc_Count]
           