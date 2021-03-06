USE [LAND]
GO
/****** Object:  User [p003]    Script Date: 2019/1/4 下午 05:50:15 ******/
CREATE USER [p003] FOR LOGIN [p003] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [p003]
GO
/****** Object:  Table [dbo].[appraisal]    Script Date: 2019/1/4 下午 05:50:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[appraisal](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [nvarchar](50) NULL,
	[UpID] [int] NULL,
	[Level] [int] NOT NULL,
 CONSTRAINT [PK_appraisal] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[appraisal_detail]    Script Date: 2019/1/4 下午 05:50:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[appraisal_detail](
	[Year] [int] NOT NULL,
	[SID] [int] NOT NULL,
	[UID] [varchar](10) NOT NULL,
	[aims] [int] NULL,
 CONSTRAINT [PK_appraisal_detail] PRIMARY KEY CLUSTERED 
(
	[Year] ASC,
	[SID] ASC,
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appraisql_ini]    Script Date: 2019/1/4 下午 05:50:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appraisql_ini](
	[SID] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[Disbution] [numeric](10, 2) NULL,
 CONSTRAINT [PK_Appraisql_ini] PRIMARY KEY CLUSTERED 
(
	[SID] ASC,
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 2019/1/4 下午 05:50:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ItemID] [int] IDENTITY(1,1) NOT NULL,
	[Item_name] [nvarchar](50) NOT NULL,
	[Upid] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 2019/1/4 下午 05:50:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [varchar](16) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionProg]    Script Date: 2019/1/4 下午 05:50:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionProg](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [varchar](16) NOT NULL,
	[ProID] [varchar](16) NOT NULL,
 CONSTRAINT [PK_PermissionProg] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Programs]    Script Date: 2019/1/4 下午 05:50:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programs](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[ProID] [varchar](16) NOT NULL,
	[ProName] [nvarchar](100) NOT NULL,
	[UpID] [varchar](16) NULL,
	[Sort] [int] NOT NULL,
	[para] [int] NULL,
	[State] [int] NULL,
	[path] [varchar](50) NULL,
 CONSTRAINT [PK_Programs_1] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Until]    Script Date: 2019/1/4 下午 05:50:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Until](
	[UID] [varchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Create_date] [datetime] NOT NULL,
	[Address] [nvarchar](100) NULL,
	[Tel] [varchar](20) NULL,
	[Fix] [varchar](20) NULL,
	[Dorm] [int] NULL,
	[Manager] [nvarchar](20) NULL,
	[Due_date] [datetime] NULL,
	[As_Manage1] [nvarchar](20) NULL,
	[As_Manage2] [nvarchar](20) NULL,
	[Ass_Group] [int] NULL,
	[Areacenter] [int] NULL,
	[Gen_Juris] [int] NULL,
	[PS] [nvarchar](100) NULL,
 CONSTRAINT [PK_Until] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[appraisal] ON 

INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (4, N'存款業務', NULL, 1)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (5, N'放款業務', NULL, 1)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (6, N'總存款', 4, 2)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (7, N'活期存款', 4, 2)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (9, N'目標達成率', 6, 3)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (10, N'手續費收入', NULL, 1)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (11, N'成長額', 6, 3)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (12, N'成長率', 6, 3)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (13, N'目標達成率', 7, 3)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (14, N'成長額', 7, 3)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (15, N'自有資金', 5, 2)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (16, N'企業金融', 5, 2)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (17, N'個人金融', 5, 2)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (18, N'企金放款', 16, 3)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (19, N'民間企業', 16, 3)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (21, N'房貸業務', 17, 3)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (22, N'信貸業務', 17, 3)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (23, N'全行手收', 10, 2)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (26, N'財管手收', 10, 2)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (27, N'目標達成率', 23, 3)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (28, N'成長額', 23, 3)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (29, N'成長率', 23, 3)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (30, N'手續費收入', 26, 3)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (31, N'目標達成率', 18, 4)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (32, N'成長額', 18, 4)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (33, N'成長率', 18, 4)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (34, N'成長額', 19, 4)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (35, N'成長率', 19, 4)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (36, N'目標達成率', 30, 4)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (37, N'成長額', 30, 4)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (38, N'信託', 36, 5)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (39, N'保險', 36, 5)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (40, N'信託', 37, 5)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (41, N'保險', 37, 5)
INSERT [dbo].[appraisal] ([SID], [Subject], [UpID], [Level]) VALUES (49, N'目標達成率', 10, 2)
SET IDENTITY_INSERT [dbo].[appraisal] OFF
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([ItemID], [Item_name], [Upid]) VALUES (1, N'Ass_Group', NULL)
INSERT [dbo].[Item] ([ItemID], [Item_name], [Upid]) VALUES (2, N'Areacenter', NULL)
INSERT [dbo].[Item] ([ItemID], [Item_name], [Upid]) VALUES (3, N'Gen_Juris', NULL)
INSERT [dbo].[Item] ([ItemID], [Item_name], [Upid]) VALUES (4, N'Dorm', NULL)
INSERT [dbo].[Item] ([ItemID], [Item_name], [Upid]) VALUES (5, N'自用', 4)
INSERT [dbo].[Item] ([ItemID], [Item_name], [Upid]) VALUES (6, N'非自用', 4)
SET IDENTITY_INSERT [dbo].[Item] OFF
SET IDENTITY_INSERT [dbo].[Permission] ON 

INSERT [dbo].[Permission] ([SID], [PID], [Name]) VALUES (1, N'admin', N'系统管理者')
SET IDENTITY_INSERT [dbo].[Permission] OFF
SET IDENTITY_INSERT [dbo].[PermissionProg] ON 

INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (93, N'admin', N'A')
INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (94, N'admin', N'A001')
INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (95, N'admin', N'A002')
INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (96, N'admin', N'B')
INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (97, N'admin', N'B001')
INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (98, N'admin', N'B001')
INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (99, N'admin', N'B003')
INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (100, N'admin', N'B004')
INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (101, N'admin', N'B005')
INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (102, N'admin', N'C')
INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (103, N'admin', N'C001')
INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (104, N'admin', N'C002')
INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (105, N'admin', N'C003')
INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (106, N'admin', N'C004')
INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (107, N'admin', N'D')
INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (108, N'admin', N'D001')
INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (109, N'admin', N'E')
INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (110, N'admin', N'E001')
INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (111, N'admin', N'E002')
INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (112, N'admin', N'E003')
INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (113, N'admin', N'G')
INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (114, N'admin', N'G001')
INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (115, N'admin', N'H')
INSERT [dbo].[PermissionProg] ([SID], [PID], [ProID]) VALUES (116, N'admin', N'H001')
SET IDENTITY_INSERT [dbo].[PermissionProg] OFF
SET IDENTITY_INSERT [dbo].[Programs] ON 

INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (1, N'A', N'營業單位資料管理', NULL, 0, NULL, 1, NULL)
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (2, N'A001', N'營業單位資料維護', N'A', 0, 0, 1, N'../BusinessUT/Maintain.aspx')
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (3, N'A002', N'營業單位資料查詢', N'A', 0, 0, 1, N'../BusinessUT/Inquire.aspx')
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (4, N'B', N'經營績效考核', NULL, 0, NULL, 1, NULL)
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (5, N'B001', N'管理續效考核項目維護', N'B', 0, 0, 1, N'../appraisal/item_main.aspx')
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (6, N'C', N'報表查詢', NULL, 0, NULL, 1, NULL)
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (7, N'C001', N'經營縝效考核配分查詢', N'C', 0, 0, 1, N'../appraisal/select.aspx')
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (8, N'C002', N'檔案管理', N'C', 0, 0, 1, N'../ReportQuery/FileUpload.aspx')
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (9, N'C003', N'作業流程與追蹤管控', N'C', 0, 0, 1, N'../ReportQuery/Workflow.aspx')
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (10, N'D', N'歷史資料查詢', NULL, 0, NULL, 1, NULL)
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (11, N'D001', N'歷史資料查詢', N'D', 0, 0, 1, N'../History/select.aspx')
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (12, N'E', N'系統管理', NULL, 0, NULL, 1, NULL)
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (13, N'E001', N'系統設定', N'E', 0, 0, 1, N'../SystemManagement/SystemSettings.aspx')
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (14, N'E002', N'批次作業管理', N'E', 0, 0, 1, N'../SystemManagement/BatchJob.aspx')
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (15, N'E003', N'操作紀錄查詢', N'E', 0, 0, 1, N'../SystemManagement/SystemLog.aspx')
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (16, N'F', N'權限管理', NULL, 0, NULL, 1, NULL)
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (17, N'F001', N'管理者帳號維護', N'F', 0, 0, 1, N'../D00/D001.aspx')
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (18, N'G', N'修改密碼', NULL, 0, NULL, 1, NULL)
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (19, N'G001', N'帳號密碼修改', N'G', 0, 0, 1, N'')
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (20, N'H', N'登出', NULL, 0, NULL, 1, NULL)
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (21, N'H001', N'登出帳號', N'H', 0, 0, 1, N'/../Login.aspx')
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (22, N'B001', N'管理績效考核項目', N'B', 0, 0, 1, N'../appraisal/partition.aspx')
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (23, N'C004', N'報表查詢', N'C', 0, 0, 1, N'../ReportQuery/GenerateReport.aspx')
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (28, N'B003', N'業績考核項目設定', N'B', 0, 0, 1, N'../appraisal/Item_app.aspx')
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (29, N'B004', N'業績考核配分上傅', N'B', 0, 0, 1, N'../appraisal/upload.aspx')
INSERT [dbo].[Programs] ([SID], [ProID], [ProName], [UpID], [Sort], [para], [State], [path]) VALUES (30, N'B005', N'業績考核作業', N'B', 0, 0, 1, N'../appraisal/PerformanceAppraisal.aspx')
SET IDENTITY_INSERT [dbo].[Programs] OFF
ALTER TABLE [dbo].[Programs] ADD  CONSTRAINT [DF_Programs_Sort]  DEFAULT ((0)) FOR [Sort]
GO
