--Create Table CRUD stored procedure template
--Note for find and replace the code block is between the GO's
--ALos why get so many red lines and errors, put GO between code batches anb is a VERY good practce

---------STEP-1 do a find and replace all to table to table name
USE [Action_Amusements_Winhost]
GO

drop table [Interviews]
go

create TABLE [dbo].[Interviews](
	[ID] [int] IDENTITY(1,1) NOT NULL ,
	[Date] [date] NULL ,
	[Interview_Number] [int]  NULL ,
	[Day] [nvarchar](50) NULL ,
	[Time] [nvarchar](50) NULL ,
	[Place] [nvarchar](50) NULL ,
	[Lead_Source] [nvarchar](50) NULL ,
	[Staffing] [bit] NULL ,
	[Interviewer1_Name] [nvarchar](50) NULL ,
	[Interviewer1_Role] [nvarchar](50) NULL ,
	[Interviewer2_Name] [nvarchar](50) NULL ,
	[Interviewer2_Role] [nvarchar](50) NULL ,
	[Interviewer3_Name] [nvarchar](50) NULL ,
	[Interviewer3_Role] [nvarchar](50) NULL ,
	[Interviewer_Phone] [nvarchar](50) NULL ,
	[Interview_email] [nvarchar](50) NULL ,
	[HR_Phone] [nvarchar](50) NULL ,
	[HR_email] [nvarchar](50) NULL ,
	[Recuiter_Phone] [nvarchar](50) NULL ,
	[Recuiter_email] [nvarchar](50) NULL ,
	[Other_Phone] [nvarchar](50) NULL ,
	[Other_email] [nvarchar](50) NULL ,
	[Interview_Type] [nvarchar](50) NULL ,
	[Test_Details] [nvarchar](200) NULL ,
	[Tech_Q_A] [nvarchar](200) NULL ,
	[Negotiation_Details] [nvarchar](200) NULL ,
	[Details] [nvarchar](200) NULL ,
	[Comments] [nvarchar](200) NULL ,
	[Improvements] [nvarchar](200) NULL ,
	[Notes] [nvarchar](200) NULL ,
	[Got_Job] [bit] NULL ,
	[Position] [nvarchar](50) NULL ,
	[Pay] [nvarchar](50) NULL ,
	[Comp_Name] [nvarchar](50) NULL ,
	[Comp_Number] [nvarchar](50) NULL ,
	[Comp_URL] [nvarchar](50) NULL ,
	[Duration] [varchar](50) NULL ,
	[How_Ended] [varchar](50) NULL
) ON [PRIMARY]

GO

---------STEP-2 Run the create script so you can script the inert from it
---------STEP-3 R CL new table > script as > Insert > to clip board > paste over other template INSERT
---------STEP-4 Run the Delete to test, it is already ready

alter procedure usp_DELETE_Interviews
@ID int --filter
as
begin
DELETE FROM [Action_Amusements_Winhost].[dbo].[Interviews]
     WHERE ID= @ID
end
GO
---------STEP-5 copy and paste the create tables DDL into Declarant (top) section of UPDATE
---------STEP-6 copy and paste the Declarant (top) section of UPDATE to the declarant section of INSERT less the @ID

alter procedure usp_UPDATE_Interviews
	@ID int ,--filter
	@Date date = NULL,--yes alow it to be passed as null,
	-- but since it cannot be null in biz rules (therefore in the table) we handle it implicitly for our user below
	@Interview_Number int = NULL ,
	@Day varchar(50) =  NULL ,
	@Time varchar(50) =  NULL ,
	@Place varchar(50) =  NULL ,
	@Lead_Source varchar(50) =  NULL ,
	@Staffing bit =  NULL ,
	@Interviewer1_Name varchar(50) =  NULL ,
	@Interviewer1_Role varchar(50) =  NULL ,
	@Interviewer2_Name varchar(50) =  NULL ,
	@Interviewer2_Role varchar(50) =  NULL ,
	@Interviewer3_Name varchar(50) =  NULL ,
	@Interviewer3_Role varchar(50) =  NULL ,
	@Interviewer_Phone varchar(50) =  NULL ,
	 @Interview_email varchar(50) =  NULL , 
	 @HR_Phone varchar(50) =  NULL ,
	 @HR_email varchar(50) =  NULL ,
	 @Recuiter_Phone varchar(50) =  NULL ,
	 @Recuiter_email varchar(50) =  NULL ,
	 @Other_Phone varchar(50) =  NULL ,
	 @Other_email varchar(50) =  NULL ,
	 @Interview_Type varchar(50) =  NULL ,
	 @Test_Details varchar(200) =  NULL ,
	 @Tech_Q_A varchar(200) =  NULL ,
	 @Negotiation_Details varchar(200) =  NULL ,
	 @Details varchar(200) =  NULL ,
	 @Comments varchar(200) =  NULL ,
	 @Improvements varchar(200) =  NULL ,
	 @Notes varchar(200) =  NULL ,
	 @Got_Job bit  =  NULL ,
	 @Position varchar(50) =  NULL ,
	 @Pay varchar(50) =  NULL ,
	 @Comp_Name varchar(50) =  NULL ,
	 @Comp_Number varchar(50) =  NULL ,
	 @Comp_URL varchar(50) =  NULL ,
	 @Duration varchar(50)  =  NULL ,
	 @How_Ended varchar(50)  = NULL
as
begin
----handle expected 'non nulls' - using "Pick em up(put in @vars), Sweep Lane (Delete row), put back down (re-Insert into row columns)
----This is NOT 'set based' because would not work if more than one row being updated

set nocount on;
UPDATE [Action_Amusements_Winhost].[dbo].[Interviews]
---------STEP-7--copy do your findNreplace magic 
   SET 
    [Date]=@Date  ,
	Interview_Number = @Interview_Number	,
	[Day]  = @Day   ,
	[Time]  = @Time   ,
	Place  = @Place    ,
	Lead_Source  = @Lead_Source   ,
	Staffing  = @Staffing     ,
	Interviewer1_Name  = @Interviewer1_Name   ,
	Interviewer1_Role  = @Interviewer1_Role   ,
	Interviewer2_Name  =  @Interviewer2_Name  ,
	Interviewer2_Role  =  @Interviewer2_Role  ,
	Interviewer3_Name  =  @Interviewer3_Name  ,
	Interviewer3_Role  = @Interviewer3_Role   ,
	Interviewer_Phone  =  @Interviewer_Phone  ,
	 Interview_email  =  @Interview_email   ,
	 HR_Phone  = @HR_Phone     ,
	 HR_email  =    @HR_email ,
	 Recuiter_Phone  = @Recuiter_Phone   ,
	 Recuiter_email  =  @Recuiter_email   ,
	 Other_Phone  =   @Other_Phone  ,
	 Other_email  =   @Other_email  ,
	 Interview_Type  = @Interview_Type   ,
	 Test_Details = @Test_Details    ,
	 Tech_Q_A  =  @Tech_Q_A  ,
	 Negotiation_Details  = @Negotiation_Details   ,
	 Details  =    @Details ,
	 Comments  =  @Comments   ,
	 Improvements  = @Improvements   ,
	 Notes  = @Notes   ,
	 Got_Job  = @Got_Job   ,
	 Position  = @Position   ,
	 Pay  =    @Pay   ,
	 Comp_Name  =  @Comp_Name  ,
	 Comp_Number  = @Comp_Number    ,
	 Comp_URL  = @Comp_URL    ,
	 Duration  =  @Duration   ,
	 How_Ended  =   @How_Ended  
 WHERE ID= @ID
end
GO

alter proc usp_INSERT_Interviews
--section just below should be correct from STEP 6
	@Date date ,
	@Interview_Number int ,
	@Day varchar(50) =  NULL ,
	@Time varchar(50) =  NULL ,
	@Place varchar(50) =  NULL ,
	@Lead_Source varchar(50) =  NULL ,
	@Staffing bit =  NULL ,
	@Interviewer1_Name varchar(50) =  NULL ,
	@Interviewer1_Role varchar(50) =  NULL ,
	@Interviewer2_Name varchar(50) =  NULL ,
	@Interviewer2_Role varchar(50) =  NULL ,
	@Interviewer3_Name varchar(50) =  NULL ,
	@Interviewer3_Role varchar(50) =  NULL ,
	@Interviewer_Phone varchar(50) =  NULL ,
	 @Interview_email varchar(50) =  NULL , 
	 @HR_Phone varchar(50) =  NULL ,
	 @HR_email varchar(50) =  NULL ,
	 @Recuiter_Phone varchar(50) =  NULL ,
	 @Recuiter_email varchar(50) =  NULL ,
	 @Other_Phone varchar(50) =  NULL ,
	 @Other_email varchar(50) =  NULL ,
	 @Interview_Type varchar(50) =  NULL ,
	 @Test_Details varchar(200) =  NULL ,
	 @Tech_Q_A varchar(200) =  NULL ,
	 @Negotiation_Details varchar(200) =  NULL ,
	 @Details varchar(200) =  NULL ,
	 @Comments varchar(200) =  NULL ,
	 @Improvements varchar(200) =  NULL ,
	 @Notes varchar(200) =  NULL ,
	 @Got_Job bit  =  NULL ,
	 @Position varchar(50) =  NULL ,
	 @Pay varchar(50) =  NULL ,
	 @Comp_Name varchar(50) =  NULL ,
	 @Comp_Number varchar(50) =  NULL ,
	 @Comp_URL varchar(50) =  NULL ,
	 @Duration varchar(50)  =  NULL ,
	 @How_Ended varchar(50)  = NULL
as
begin
set nocount on;

------*below insert should be correct from STEP-3
INSERT INTO [Action_Amusements_Winhost].[dbo].[Interviews]
           ([Date]
           ,[Interview_Number]
           ,[Day]
           ,[Time]
           ,[Place]
           ,[Lead_Source]
           ,[Staffing]
           ,[Interviewer1_Name]
           ,[Interviewer1_Role]
           ,[Interviewer2_Name]
           ,[Interviewer2_Role]
           ,[Interviewer3_Name]
           ,[Interviewer3_Role]
           ,[Interviewer_Phone]
           ,[Interview_email]
           ,[HR_Phone]
           ,[HR_email]
           ,[Recuiter_Phone]
           ,[Recuiter_email]
           ,[Other_Phone]
           ,[Other_email]
           ,[Interview_Type]
           ,[Test_Details]
           ,[Tech_Q_A]
           ,[Negotiation_Details]
           ,[Details]
           ,[Comments]
           ,[Improvements]
           ,[Notes]
           ,[Got_Job]
           ,[Position]
           ,[Pay]
           ,[Comp_Name]
           ,[Comp_Number]
           ,[Comp_URL]
           ,[Duration]
           ,[How_Ended])
     VALUES
           (@Date,
					   @Interview_Number,
					   @Day,
					   @Time,
					   @Place,
					   @Lead_Source,
					   @Staffing,
					   @Interviewer1_Name,
					   @Interviewer1_Role,
					   @Interviewer2_Name,
					   @Interviewer2_Role,
					   @Interviewer3_Name,
					   @Interviewer3_Role,
					   @Interviewer_Phone,
					   @Interview_emaiL ,
					   @HR_Phone,
					   @HR_emaiL ,
					   @Recuiter_Phone,
					   @Recuiter_emaiL ,
					   @Other_Phone,
					   @Other_emaiL ,
					   @Interview_Type,
					   @Test_Details,
					   @Tech_Q_A,
					   @Negotiation_Details,
					   @Details,
					   @Comments,
					   @Improvements,
					   @Notes,
					   @Got_Job,
					   @Position,
					   @Pay,
					   @Comp_Name,
					   @Comp_Number,
					   @Comp_URL ,
					   @Duration,
					   @How_Ended)
  end
 GO
----STEP-8 Run and CREATE the UPDATE and INSERT SPROCS
----STEP-9 Test Usage by changing any expected parms in the bloew decalre, @ID always stays as is.
----STEP-10 Run test Code block


--USAGE OF AL THREE CRUDs

--/////////test -block to run ///////
Declare @ID int
DECLARE @Date date --='7-3-2012'--not madatory becuase handled if null in sproc
Declare @interview_Number int--not madatory becuase handled if null in sproc
--select  CONVERT(VARCHAR(20),  '1-1-2012', 112) 
--select @date = CONVERT(VARCHAR(20),  '01012012', 112)
--truncate table Interviews

EXECUTE  [Action_Amusements_Winhost].[dbo].[usp_INSERT_Interviews] 
 @date = '7-3-2012',
 @interview_Number = 7
  select * from Interviews  
   
   select @id =   max(id) from Interviews
   
   set @Date  ='1-6-2012' --explicit update trying TODATETIMEOFFSET UPDATE it vs Bowling p/s/putbackdown
   --set @Date = Null
   IF @Date IS NULL
		select  @date =  [DATE] from Interviews where ID = @ID --implicit Bowling p/s/putbackdown
   IF @interview_Number IS NULL
		select  @interview_Number =  interview_Number from Interviews where ID = @ID --implicit Bowling p/s/putbackdown
   EXECUTE  [Action_Amusements_Winhost].[dbo].[usp_UPDATE_Interviews] 
   @ID = @ID
   ,@Date = @Date
	,@interview_Number  = @interview_Number
  select * from Interviews 
  

 --EXECUTE  [Action_Amusements_Winhost].[dbo].[usp_DELETE_Interviews] 
 --  @ID =  @ID
 --select * from Interviews 


 --/////////End block to run ///////