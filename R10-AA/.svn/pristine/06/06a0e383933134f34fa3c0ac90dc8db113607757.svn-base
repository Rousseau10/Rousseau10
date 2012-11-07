
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS
-- Create date: 05-14-2012
-- =============================================
alter PROCEDURE sp_Insert_vw_Loc_Count
    --output parameter(s)
     @Loc_Count_ID_OUTPUT INT OUTPUT
    ,@Loc_Code varchar(40)
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
           --,[Record_Modified_Date]
           --,@Modifiers_Login varchar(50)
           ,@Data_Is_Dummy bit
           ,@Flagged_for_deletion bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select @Location_ID = (select Location_ID from Location where Location_Code = @Loc_Code)
INSERT INTO [Action_Amusements_Winhost].[dbo].[vw_Loc_Count_all_columns]
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
           --,[Record_Modified_Date]
           --,[Modifiers_Login]
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
           --,[Record_Modified_Date]
           --,@Modifiers_Login varchar(50)
           ,@Data_Is_Dummy
           ,@Flagged_for_deletion
           )


           --get output parameter for child table mach_cunt
           set @Loc_Count_ID_OUTPUT =  SCOPE_IDENTITY()
END
GO





SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ARS
-- Create date: 05-14-2012
-- =============================================
alter PROCEDURE sp_Insert_Test_Loc_Count
    (--output parameter(s)
     @Loc_Count_ID_OUTPUT INT OUTPUT 
    ,@Loc_Code varchar(40) = null
	-- Add the parameters for the stored procedure here
			,@Location_ID int = null 
		   ,@Loc_Count_Date date = null
           ,@CoinsIn money = null
           ,@Tax_State money = null
           ,@Tax_County money = null
           ,@Tax_Other money = null
           ,@Tax_Total money = null
           ,@Gross money = null
           ,@Split_Operator money = null
           ,@Split_Location money = null
           ,@Advance money = null
           ,@Notes varchar(50) = null
           
           ,@Counter_FirstName varchar(50) = null
           ,@Counter_LastName varchar(50) = null
           --,[Record_Modified_Date]
           --,@Modifiers_Login varchar(50)
           ,@Data_Is_Dummy bit = null
           ,@Flagged_for_deletion bit = null)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select @Location_ID = (select Location_ID from Location where Location_Code = @Loc_Code)
INSERT INTO [Action_Amusements_Winhost].[dbo].[Test_Loc_Count]
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
           --,[Record_Modified_Date]
           --,[Modifiers_Login]
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
           --,[Record_Modified_Date]
           --,@Modifiers_Login varchar(50)
           ,@Data_Is_Dummy
           ,@Flagged_for_deletion
           )


           Set @Loc_Count_ID_OUTPUT = (select SCOPE_IDENTITY())
END
GO



--USAGE



declare @Counter int = 0
declare @random money = 0
WHILE @Counter < 10
BEGIN
set @Counter = @Counter + 1
set @random = ((RAND() * 1000) *.5)
SET IDENTITY_INSERT tester on
INSERT tester(id,coinsIN) VALUES (((select max(id) from tester)+ 1), (select case when @random < 50 then @random + 100 else @random end))
SET IDENTITY_INSERT tester off
--waitfor below is needed or the cte select will run into the insert, and insert trigger fire
WAITFOR DELAY '00:00:0:01';
with cte_resultSet (Parent_ID,child_ID, CoinsIn, CoinsIn_Runing)
as
	(
	select top 1 a.id,b.id,a.coinsIN,b.coinsIN_running_total from tester a inner join tester_history b on a.id = b.id order by b.id desc ,b.coinsIN_running_total asc
	)
select * from cte_resultSet order by CoinsIn_Runing asc

END



declare @Loc_Count_ID_OUTPUT INT 
declare     @rand money = ((select (RAND() * 1000)*.5))
			--above for looping data in
declare @Loc_Code varchar(40) = 'funArc-Daytona-2'
	-- Add the parameters for the stored procedure here
declare @Location_ID int = (select Location_ID from Location where Location_Code = @Loc_Code)

		 --  ,@Loc_Count_Date date = (select max(Loc_count_date) from loc_count where Location_ID = @Location_ID)
   --        ,@CoinsIn money = (select @rand)
   --        ,@Tax_State money = (select @rand * .045)
   --        ,@Tax_County money = (select @rand * .02) 
   --        ,@Tax_Other money = (select @rand * .01) 
   --        ,@Tax_Total money = ((select @Tax_State) + (select @Tax_County)  + (select @Tax_Other)) 
   --        ,@Gross money = (select 
   --        ,@Split_Operator money
   --        ,@Split_Location money
   --        ,@Advance money
   --        ,@Notes varchar(50)
   --        ,@Counter_FirstName varchar(50)
   --        ,@Counter_LastName varchar(50)
   --        --,[Record_Modified_Date]
   --        --,@Modifiers_Login varchar(50)
   --        ,@Data_Is_Dummy bit
   --        ,@Flagged_for_deletion bit

			--select @Location_ID = 
exec sp_Insert_Test_Loc_Count @Loc_Count_ID_OUTPUT = @Loc_Count_ID_OUTPUT, @Location_ID = @Location_ID,@Loc_Code = @Loc_Code
print @Loc_Count_ID_OUTPUT
--select * from Test_Loc_Count
select a.Location_ID Location_ID_Location,b.Location_ID Location_ID_Test_Loc_Count,b.* from Location a inner join Test_Loc_Count b on a.Location_ID = b.Location_ID
