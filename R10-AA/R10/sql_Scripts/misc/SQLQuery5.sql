USE [Action_Amusements_Winhost]
GO

/****** Object:  Table [dbo].[test]    Script Date: 05/24/2012 08:34:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tester](
	[id] [int] identity(1,1) not NULL,
	[coinsIN_month_History] [money] NULL
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[tester_history](
	[history_id] [int] identity(1,1) not NULL,
	[id] [int]  not NULL,
	[coinsIN_month_History] [money] NULL
) ON [PRIMARY]

GO


USE [Action_Amusements_Winhost]
GO

/****** Object:  Table [dbo].[Machine]    Script Date: 05/24/2012 08:35:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Machine](
	[Machine_ID] [int] IDENTITY(1,1) NOT NULL,
	[Alias] [varchar](50) NOT NULL,
	[Machine_Name] [varchar](50) NULL,
	[Machine_Class] [varchar](20) NULL,
	[Machine_Owner_FirstName] [varchar](20) NULL,
	[Machine_Owner_LastName] [varchar](30) NULL,
	[Manufacturer] [varchar](50) NULL,
	[Purchased_From] [varchar](50) NULL,
	[Purchase_Date] [datetime] NULL,
	[Purchase_Details] [varchar](200) NULL,
	[Model] [varchar](30) NULL,
	[Serial] [varchar](80) NULL,
	[Cost] [money] NULL,
	[Shipping_Costs] [money] NULL,
	[Additional_Cost] [money] NULL,
	[Additional_Costs_Details] [varchar](200) NULL,
	[Warranty_Details] [varchar](200) NULL,
	[Warranty_Expiration_Date] [datetime] NULL,
	[Keys_1] [varchar](50) NULL,
	[Keys_2] [varchar](50) NULL,
	[Keys_3] [varchar](50) NULL,
	[Keys_4] [varchar](50) NULL,
	[External_Key] [varchar](50) NULL,
	[Machine_Count_Order] [int] NULL,
	[Machine_Notes] [varchar](200) NULL,
	[Machine_Comments] [varchar](200) NULL,
	[Location_Code] [varchar](25) NOT NULL,
	[Machine_Modify_Date] [datetime] NOT NULL,
	[Modifiers_Login] [varchar](50) NULL,
	[Data_Is_Dummy] [bit] NULL,
	[Flagged_for_Deletion] [bit] NULL,
 CONSTRAINT [PK_Machine] PRIMARY KEY CLUSTERED 
(
	[Alias] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Machine]  WITH CHECK ADD  CONSTRAINT [FK_Machine_one_to_Many_Location_col_Loc_Code_Cascading_Update_Delete] FOREIGN KEY([Location_Code])
REFERENCES [dbo].[Location] ([Location_Code])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Machine] CHECK CONSTRAINT [FK_Machine_one_to_Many_Location_col_Loc_Code_Cascading_Update_Delete]
GO

ALTER TABLE [dbo].[Machine] ADD  CONSTRAINT [DF_Machine_Machine_Modify_Date]  DEFAULT (getdate()) FOR [Machine_Modify_Date]
GO

ALTER TABLE [dbo].[Machine] ADD  CONSTRAINT [DF_Machine_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()) FOR [Modifiers_Login]
GO

