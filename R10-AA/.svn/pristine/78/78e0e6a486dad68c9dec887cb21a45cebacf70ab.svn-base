BEGIN TRAN

--drop table location
create TABLE [dbo].[Location](
	[Location_ID] [int] IDENTITY(1,1) NOT NULL,
	[Location_Name] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Location_Code] [NVARCHAR](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Account_Code] [NVARCHAR](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,--
	[Loc_Begin_Date] [date] NOT NULL ,
	[Loc_End_Date] [date] NULL ,
	[Is_Active] [bit] NOT NULL,
	[Address1] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address2] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[City] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[State_Province_Territory] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Country] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Postal_Code] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact1_FirstName] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact1_LastName] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact1_Role] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact1_Email] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact1_Cell] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact2_FirstName] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact2_LastName] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact2_Role] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact2_Email] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact2_Cell] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_FirstName] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_LastName] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_Cell] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner_Email] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Location_Office_Phone] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Location_Bar_Phone] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email_for_Sales_Report] [NVARCHAR](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Notes1] [NVARCHAR](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Notes2] [NVARCHAR](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Comments] [NVARCHAR](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	
	[Tax_Percente_State] [NVARCHAR](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tax_Percente_County] [NVARCHAR](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tax_Percente_Other] [NVARCHAR](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Split_Percent] [NVARCHAR](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Record_Modify_Date] [datetime] NOT NULL CONSTRAINT [DF_Location_Location_Modify_Date]  DEFAULT (getdate()),
	[Modifiers_Login] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_Location_Modifiers_Login]  DEFAULT ([dbo].[fn_GetLoginOfSPID]()),
	[Data_Is_Dummy] [bit] NULL,
	[Flagged_for_Deletion] [bit] NULL,
 CONSTRAINT [PK_Clustered_Location_col_Loc_Code] PRIMARY KEY CLUSTERED 
(
	[Location_Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],


 CONSTRAINT [UK_Location_col_Location_Name] UNIQUE NONCLUSTERED 

(
	[Location_Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

) ON [PRIMARY]

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Location]') AND name = N'UC_Non_Clustered_Location_col_Location_ID')
CREATE UNIQUE NONCLUSTERED INDEX [UC_Non_Clustered_Location_col_Location_ID] ON [dbo].[Location] 
(
	[Location_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO


SET IDENTITY_INSERT [dbo].[Location] ON
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code],  [Account_Code],[Loc_begin_Date],[Loc_end_Date], [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [is_Active], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (1, N'Fun Arcade Daytona 1', N'FunArc-Daytona-1',  N'MarvelArc',	'1-1-2011'	 ,null,		N'1212 Clyde and Morris Blvd.', NULL, N'Daytona Beach', N'FL', N'USA', N'32114', N'Angel', N'DosSanches', N'Manager', N'ADosSanchez215@gmail.com', N'386775230', N'Jared', N'Plounder', N'Assistant Manager', NULL, NULL, N'Henry', N'McLorrey', N'3869802316', N'HMcLorrey@MarvelArcades.com', N'3867234040', NULL, N'LPollock@MarvelArcades.com', N'Email sales reports to Marvel accountant Liz Pollack', NULL, N'Will be moving to new address in October 2012', 1, N'.045', N'.02', NULL, N'0.5', CAST(0x0000A057013546C4 AS DateTime), N'Owner', 1, 0)
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code],  [Account_Code],[Loc_Begin_Date],[Loc_end_Date],  [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [is_Active], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (10, N'Fun Arcade Daytona 2', N'FunArc-Daytona-2', N'MarvelArc',		'1-1-2011' ,null,		 N'310 S. Atlantic Ave.', NULL, N'New Smyrna Beach', N'FL', N'USA', N'32169', N'Raymond', N'Bellot', N'Manager', N'RBellot2005@Gmail.com', N'3862618877', N'Jane', N'Appleton', N'Bartender', NULL, NULL, N'Henry', N'McLorrey', N'9045556815', N'HMCLorrey@MarvelArcades.com', N'3869011291', N'3861094389', N'LPollack@MArvelArcades.com', NULL, NULL, NULL, 1, N'.045', N'.02', NULL, N'.05', CAST(0x0000A0580175B533 AS DateTime), N'Owner', 1, NULL)
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code],  [Account_Code],[Loc_Begin_Date],[Loc_end_Date],  [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [is_Active], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (5, N'Not Assigned', N'N/A',  N'N/A','1-1-1974' ,null, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'0', N'0', N'0', N'0', CAST(0x0000A05700FB1B70 AS DateTime), N'RKlouss', 1, 0)
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [Location_Code],  [Account_Code],[Loc_Begin_Date],[Loc_end_Date],  [Address1], [Address2], [City], [State_Province_Territory], [Country], [Postal_Code], [Contact1_FirstName], [Contact1_LastName], [Contact1_Role], [Contact1_Email], [Contact1_Cell], [Contact2_FirstName], [Contact2_LastName], [Contact2_Role], [Contact2_Email], [Contact2_Cell], [Owner_FirstName], [Owner_LastName], [Owner_Cell], [Owner_Email], [Location_Office_Phone], [Location_Bar_Phone], [Email_for_Sales_Report], [Notes1], [Notes2], [Comments], [is_Active], [Tax_Percente_State], [Tax_Percente_County], [Tax_Percente_Other], [Split_Percent], [Record_Modify_Date], [Modifiers_Login], [Data_Is_Dummy], [Flagged_for_Deletion]) VALUES (11, N'ShootOuts Sports Bar', N'Shoot-Flagler',  N'Shoot-Flagler', 	'1-1-2011'	 ,null,		N'927 East Ponce De Oro Ave.', NULL, N'Flagler', N'FL', N'USA', N'32155', N'Sarah', N'Williams', N'Owner/Manager', N'SarahWiliams35@gmail.com', N'3862228989', NULL, NULL, NULL, NULL, NULL, N'Sarah', N'Williams', N'3862228989', N'SarahWiliams35@gmail.com', N'386790939', N'3867900940', N'SarahWiliams35@gmail.com', NULL, NULL, NULL, 1, N'.045', N'.025', N'.001', N'.6', CAST(0x0000A0580180C229 AS DateTime), N'Owner', 1, NULL)
SET IDENTITY_INSERT [dbo].[Location] OFF
ROLLBACK