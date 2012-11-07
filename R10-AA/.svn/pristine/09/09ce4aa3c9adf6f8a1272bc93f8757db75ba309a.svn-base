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
-- Author:		ARS,,Name
-- Create date: 11-14-2012
-- =============================================
alter PROCEDURE sp_Insert_vw_Mach_Count
	-- Add the parameters for the stored procedure here
	 @Machine_ID int
	,@CoinsIn_Cents money
	,@CoinsIn_Bills money 
	,@Adjustment_1 money
	,@Adjustment_2_Misc money
	,@Adjustment_Total money
	,@Adjustment_1_Decription varchar(100)
	,@Adjustment_2_Misc_Decription varchar(100)
	,@Meter_Bills money
	,@Meter_Cents money
	,@Meter_Pieces smallint
   --,Record_Modified_Date uses getdate as default
   ,@Modifiers_Login varchar(50)
   ,@Machine_Data_Is_Dummy bit 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO [Action_Amusements_Winhost].[dbo].[vw_Mach_Count]
           ([Machine_ID]
           ,[CoinsIn_Cents]
           ,[CoinsIn_Bills]
           ,[Adjustment_1]
           ,[Adjustment_2_Misc]
           ,[Adjustment_Total]
           ,[Adjustment_1_Decription]
           ,[Adjustment_2_Misc_Decription]
           ,[Meter_Bills]
           ,[Meter_Cents]
           ,[Meter_Pieces]
          -- ,Record_Modified_Date uses GetDate() as default
           ,[Modifiers_Login]
           ,[Machine_Data_Is_Dummy])
   
     VALUES
           (@Machine_ID
           ,@CoinsIn_Cents
           ,@CoinsIn_Bills
           ,@Adjustment_1
           ,@Adjustment_2_Misc
           ,@Adjustment_Total
           ,@Adjustment_1_Decription
           ,@Adjustment_2_Misc_Decription
           ,@Meter_Bills
           ,@Meter_Cents
           ,@Meter_Pieces
           --,@Record_Modified_Date uses GetDate() as default value or binding in design in base table
           ,@Modifiers_Login
           ,@Machine_Data_Is_Dummy)  
           
END
GO

exec sp_Insert_vw_Mach_Count
1
           ,500
           ,25
           ,0
           ,0
           ,0
           ,'description'
           ,''
           ,1050
           ,500
           ,300
           ,'GBoss'
           ,'true'
           
           select * from [Action_Amusements_Winhost].[dbo].[Mach_Count]