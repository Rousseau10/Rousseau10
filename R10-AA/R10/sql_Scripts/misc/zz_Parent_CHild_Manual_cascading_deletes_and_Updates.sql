
--use [Action_Amusements_Winhost]
alter PROCEDURE sp_UPDATE_zz__Aparent_Child 
--Aparent pamrs
 @Loc_Count_ID int = null --means not optional
 ,@Loc_Code varchar(10)
 ,@Loc varchar(10)= null
 ,@DOP date
 ,@CoinsIN money = null
 ,@Nullable_Rating int = null
 --child parms
 ,@Mach_Count_ID int = null
 --,@Loc_Count_ID int
--,@CoinsIn money
 ,@CoinsBils money = null
 ,@Nullable_Mach_Rating int = null
AS
BEGIN



SELECT @Loc_Count_ID = Loc_Count_ID 
      ,@Loc_code = Loc_code
      ,@Loc = Loc
      ,@DOP = DOP
      ,@CoinsIN= CoinsIN
      ,@Nullable_Rating= 6
  FROM [Action_Amusements_Winhost].[dbo].[zz_aParent]
  where Loc_Code = @Loc_Code --and  DOP = @DOP
  
  

SELECT @Mach_Count_ID= Mach_Count_ID 
      ,@Loc_Count_ID = Loc_Count_ID
      ,@CoinsIn = CoinsIn
      ,@CoinsBils = CoinsBils
      ,@Nullable_Mach_Rating= 7
  FROM [Action_Amusements_Winhost].[dbo].[zz_Child]
  where Loc_Count_ID = @Loc_Count_ID



select Loc_Code , DOP from zz_Aparent
set @Loc_Count_ID = (select Loc_Count_ID from dbo.zz_Aparent where Loc_Code = @Loc_Code  )--AND DOP = @DOP

update dbo.zz_Aparent
set 
	Loc_Code = @Loc_Code
	,Loc = @Loc
	,DOP = @DOP
	,CoinsIN = @CoinsIN
	,Nullable_Rating = @Nullable_Rating
where Loc_Code = @Loc_Code --and  DOP = @DOP

update zz_Child
set 
	Loc_Count_ID = @Loc_Count_ID
	,CoinsIn = @Loc_Count_ID
	,CoinsBils = @CoinsBils
	,Nullable_Mach_Rating = @Nullable_Mach_Rating
where Loc_Count_ID = @Loc_Count_ID
   
END
GO

--execute sp_UPDATE_zz__Aparent_Child @Loc_Code = 'd1', @DOP = '01-01-2012'


DECLARE @Loc_Count_ID int
DECLARE @Loc_Code varchar(10) = 'd1'
DECLARE @Loc varchar(10)
DECLARE @DOP date = '01-01-2012'
DECLARE @CoinsIN money
DECLARE @Nullable_Rating int = 7
DECLARE @Mach_Count_ID int
DECLARE @CoinsBils money
DECLARE @Nullable_Mach_Rating int = 7

-- TODO: Set parameter values here.

EXECUTE sp_UPDATE_zz__Aparent_Child
   --@Loc_Count_ID = @Loc_Count_ID gets internally in sproc select sub query 
  @Loc_Code = @Loc_Code
  ,@Loc = @Loc
  ,@DOP = @DOP
  ,@CoinsIN = @CoinsIN
  ,@Nullable_Rating = @Nullable_Rating
  ,@Mach_Count_ID = @Mach_Count_ID
  ,@CoinsBils = @CoinsBils
  ,@Nullable_Mach_Rating = @Nullable_Mach_Rating
GO




select * from dbo.zz_Aparent 
select * from dbo.zz_Child

select a.*,b.* from dbo.zz_Aparent a join 
dbo.zz_Child b on a.Loc_Count_ID = b.Loc_Count_ID