create PROCEDURE [dbo].[sp_Insert_Loc_Count_MVC]
    --output parameter(s)
    -- @Loc_Count_ID_OUTPUT INT OUTPUT
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


           ----get output parameter for child table mach_cunt
           --set @Loc_Count_ID_OUTPUT =  SCOPE_IDENTITY()
END

