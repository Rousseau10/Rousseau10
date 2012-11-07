USE [Blogging]
GO
/****** Object:  Trigger [dbo].[Trg_Show_Modifications]    Script Date: 06/12/2012 09:15:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER TRIGGER [dbo].[Trg_Show_Modifications]
   ON [dbo].[Blogs]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
update blogs
Set url = Stuff(url,3,5,'SKINY')
where blogid = (select Max(blogid) from blogs)
    -- Insert statements for trigger here

END
