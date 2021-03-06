USE [Action_Amusements_Winhost]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_vw_Mach_Count]    Script Date: 06/17/2012 00:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS,,Name
-- Create date: 11-14-2012
-- =============================================
create PROCEDURE [dbo].[sp_Insert_Mach_Count_MVC]
	-- Add the parameters for the stored procedure here
	 @Machine_ID int
	 ,@Loc_Count_ID int--very importtant for child update and delete will cascade
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

INSERT INTO [Action_Amusements_Winhost].[dbo].[Mach_Count]
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
