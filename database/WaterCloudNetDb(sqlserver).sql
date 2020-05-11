USE [master]
GO
/****** Object:  Database [WaterCloudNetDb]    Script Date: 05/11/2020 15:09:58 ******/
CREATE DATABASE [WaterCloudNetDb] ON  PRIMARY 
( NAME = N'WaterCloudNetDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\WaterCloudNetDb.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WaterCloudNetDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\WaterCloudNetDb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WaterCloudNetDb] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WaterCloudNetDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WaterCloudNetDb] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET ANSI_NULLS OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET ANSI_PADDING OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET ARITHABORT OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [WaterCloudNetDb] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [WaterCloudNetDb] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [WaterCloudNetDb] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET  DISABLE_BROKER
GO
ALTER DATABASE [WaterCloudNetDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [WaterCloudNetDb] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET  READ_WRITE
GO
ALTER DATABASE [WaterCloudNetDb] SET RECOVERY FULL
GO
ALTER DATABASE [WaterCloudNetDb] SET  MULTI_USER
GO
ALTER DATABASE [WaterCloudNetDb] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [WaterCloudNetDb] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'WaterCloudNetDb', N'ON'
GO
USE [WaterCloudNetDb]
GO
/****** Object:  Default [dbo].[sqlguid]    Script Date: 05/11/2020 15:09:58 ******/
/****** Object:  Default [dbo].[sqlguid]    Script Date: 2018-04-14 15:19:55 ******/
CREATE DEFAULT [dbo].[sqlguid] 
AS
newid()
GO
/****** Object:  UserDefinedDataType [dbo].[PrimaryKey]    Script Date: 05/11/2020 15:09:58 ******/
CREATE TYPE [dbo].[PrimaryKey] FROM [varchar](50) NULL
GO
/****** Object:  Table [dbo].[Sys_UserLogOn]    Script Date: 05/11/2020 15:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_UserLogOn](
	[F_Id] [varchar](50) NOT NULL,
	[F_UserId] [varchar](50) NULL,
	[F_UserPassword] [varchar](50) NULL,
	[F_UserSecretkey] [varchar](50) NULL,
	[F_AllowStartTime] [datetime] NULL,
	[F_AllowEndTime] [datetime] NULL,
	[F_LockStartDate] [datetime] NULL,
	[F_LockEndDate] [datetime] NULL,
	[F_FirstVisitTime] [datetime] NULL,
	[F_PreviousVisitTime] [datetime] NULL,
	[F_LastVisitTime] [datetime] NULL,
	[F_ChangePasswordDate] [datetime] NULL,
	[F_MultiUserLogin] [bit] NULL,
	[F_LogOnCount] [int] NULL,
	[F_UserOnLine] [bit] NULL,
	[F_Question] [varchar](50) NULL,
	[F_AnswerQuestion] [varchar](500) NULL,
	[F_CheckIPAddress] [bit] NULL,
	[F_Language] [varchar](50) NULL,
	[F_Theme] [varchar](50) NULL,
	[F_LoginSession] [varchar](100) NULL,
	[F_ErrorNum] [int] NULL,
 CONSTRAINT [PK_Sys_UserLogOn] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_User]    Script Date: 05/11/2020 15:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_User](
	[F_Id] [varchar](50) NOT NULL,
	[F_Account] [varchar](50) NULL,
	[F_RealName] [varchar](50) NULL,
	[F_NickName] [varchar](50) NULL,
	[F_HeadIcon] [varchar](50) NULL,
	[F_Gender] [bit] NULL,
	[F_Birthday] [datetime] NULL,
	[F_MobilePhone] [varchar](20) NULL,
	[F_Email] [varchar](50) NULL,
	[F_WeChat] [varchar](50) NULL,
	[F_ManagerId] [varchar](50) NULL,
	[F_SecurityLevel] [int] NULL,
	[F_Signature] [varchar](500) NULL,
	[F_OrganizeId] [varchar](50) NULL,
	[F_DepartmentId] [varchar](500) NULL,
	[F_RoleId] [varchar](500) NULL,
	[F_DutyId] [varchar](500) NULL,
	[F_IsAdmin] [bit] NULL,
	[F_IsBoss] [bit] NULL,
	[F_IsLeaderInDepts] [bit] NULL,
	[F_IsSenior] [bit] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
	[F_DingTalkUserId] [varchar](50) NULL,
	[F_DingTalkUserName] [varchar](50) NULL,
	[F_DingTalkAvatar] [varchar](100) NULL,
	[F_WxOpenId] [varchar](50) NULL,
	[F_WxNickName] [varchar](50) NULL,
	[F_HeadImgUrl] [varchar](100) NULL,
 CONSTRAINT [PK_Sys_User] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Sys_User] UNIQUE NONCLUSTERED 
(
	[F_Account] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_ServerState]    Script Date: 05/11/2020 15:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_ServerState](
	[F_Id] [varchar](50) NOT NULL,
	[F_WebSite] [varchar](200) NOT NULL,
	[F_ARM] [varchar](50) NOT NULL,
	[F_CPU] [varchar](50) NOT NULL,
	[F_IIS] [varchar](50) NOT NULL,
	[F_Date] [date] NOT NULL,
	[F_Cout] [int] NOT NULL,
 CONSTRAINT [PK_Sys_ServerState] PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Sys_ServerState] UNIQUE NONCLUSTERED 
(
	[F_WebSite] ASC,
	[F_Date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_RoleAuthorize]    Script Date: 05/11/2020 15:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_RoleAuthorize](
	[F_Id] [varchar](50) NOT NULL,
	[F_ItemType] [int] NULL,
	[F_ItemId] [varchar](50) NULL,
	[F_ObjectType] [int] NULL,
	[F_ObjectId] [varchar](50) NULL,
	[F_SortCode] [int] NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_RoleAuthorize] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Role]    Script Date: 05/11/2020 15:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Role](
	[F_Id] [varchar](50) NOT NULL,
	[F_OrganizeId] [varchar](50) NULL,
	[F_Category] [int] NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_Type] [varchar](50) NULL,
	[F_AllowEdit] [bit] NULL,
	[F_AllowDelete] [bit] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_Sys_Role] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Sys_Role] UNIQUE NONCLUSTERED 
(
	[F_EnCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_QuickModule]    Script Date: 05/11/2020 15:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_QuickModule](
	[F_Id] [varchar](50) NOT NULL,
	[F_ModuleId] [varchar](50) NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_QuickModule] PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Sys_QuickModule] UNIQUE NONCLUSTERED 
(
	[F_ModuleId] ASC,
	[F_CreatorUserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Organize]    Script Date: 05/11/2020 15:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Organize](
	[F_Id] [varchar](50) NOT NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_Layers] [int] NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_ShortName] [varchar](50) NULL,
	[F_CategoryId] [varchar](50) NULL,
	[F_ManagerId] [varchar](50) NULL,
	[F_TelePhone] [varchar](20) NULL,
	[F_MobilePhone] [varchar](20) NULL,
	[F_WeChat] [varchar](50) NULL,
	[F_Fax] [varchar](20) NULL,
	[F_Email] [varchar](50) NULL,
	[F_AreaId] [varchar](50) NULL,
	[F_Address] [varchar](500) NULL,
	[F_AllowEdit] [bit] NULL,
	[F_AllowDelete] [bit] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_Sys_Organize] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Sys_Organize] UNIQUE NONCLUSTERED 
(
	[F_EnCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Notice]    Script Date: 05/11/2020 15:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Notice](
	[F_Id] [varchar](50) NOT NULL,
	[F_Title] [varchar](50) NULL,
	[F_Content] [text] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_CreatorUserName] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_Sys_Notice] PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Sys_Notice] UNIQUE NONCLUSTERED 
(
	[F_Title] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_ModuleButton]    Script Date: 05/11/2020 15:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_ModuleButton](
	[F_Id] [varchar](50) NOT NULL,
	[F_ModuleId] [varchar](50) NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_Layers] [int] NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_Icon] [varchar](50) NULL,
	[F_Location] [int] NULL,
	[F_JsEvent] [varchar](50) NULL,
	[F_UrlAddress] [varchar](500) NULL,
	[F_Split] [bit] NULL,
	[F_IsPublic] [bit] NULL,
	[F_AllowEdit] [bit] NULL,
	[F_AllowDelete] [bit] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_ModuleButton] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Module]    Script Date: 05/11/2020 15:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Module](
	[F_Id] [varchar](50) NOT NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_Layers] [int] NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_Icon] [varchar](50) NULL,
	[F_UrlAddress] [varchar](500) NULL,
	[F_Target] [varchar](50) NULL,
	[F_IsMenu] [bit] NULL,
	[F_IsExpand] [bit] NULL,
	[F_IsPublic] [bit] NULL,
	[F_AllowEdit] [bit] NULL,
	[F_AllowDelete] [bit] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_Module] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Sys_Module] UNIQUE NONCLUSTERED 
(
	[F_FullName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Log]    Script Date: 05/11/2020 15:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Log](
	[F_Id] [varchar](50) NOT NULL,
	[F_Date] [datetime] NULL,
	[F_Account] [varchar](50) NULL,
	[F_NickName] [varchar](50) NULL,
	[F_Type] [varchar](50) NULL,
	[F_IPAddress] [varchar](50) NULL,
	[F_IPAddressName] [varchar](50) NULL,
	[F_ModuleId] [varchar](50) NULL,
	[F_ModuleName] [varchar](50) NULL,
	[F_Result] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_KeyValue] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_Log] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_ItemsDetail]    Script Date: 05/11/2020 15:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_ItemsDetail](
	[F_Id] [varchar](50) NOT NULL,
	[F_ItemId] [varchar](50) NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_ItemCode] [varchar](50) NULL,
	[F_ItemName] [varchar](50) NULL,
	[F_SimpleSpelling] [varchar](500) NULL,
	[F_IsDefault] [bit] NULL,
	[F_Layers] [int] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_ItemsDetail] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Sys_ItemsDetail] UNIQUE NONCLUSTERED 
(
	[F_ItemId] ASC,
	[F_ItemCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Items]    Script Date: 05/11/2020 15:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Items](
	[F_Id] [varchar](50) NOT NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_IsTree] [bit] NULL,
	[F_Layers] [int] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_Items] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Sys_Items] UNIQUE NONCLUSTERED 
(
	[F_EnCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_FilterIP]    Script Date: 05/11/2020 15:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_FilterIP](
	[F_Id] [varchar](50) NOT NULL,
	[F_Type] [bit] NULL,
	[F_StartIP] [varchar](50) NULL,
	[F_EndIP] [varchar](50) NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_Sys_FilterIP] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_DbBackup]    Script Date: 05/11/2020 15:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_DbBackup](
	[F_Id] [varchar](50) NOT NULL,
	[F_BackupType] [varchar](50) NULL,
	[F_DbName] [varchar](50) NULL,
	[F_FileName] [varchar](50) NULL,
	[F_FileSize] [varchar](50) NULL,
	[F_FilePath] [varchar](500) NULL,
	[F_BackupTime] [datetime] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_Sys_DbBackup] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Area]    Script Date: 05/11/2020 15:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Area](
	[F_Id] [varchar](50) NOT NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_Layers] [int] NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_SimpleSpelling] [varchar](50) NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_Area] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Sys_Area] UNIQUE NONCLUSTERED 
(
	[F_Layers] ASC,
	[F_EnCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_Sys_UserLogOn_F_ErrorNum]    Script Date: 05/11/2020 15:10:00 ******/
ALTER TABLE [dbo].[Sys_UserLogOn] ADD  CONSTRAINT [DF_Sys_UserLogOn_F_ErrorNum]  DEFAULT ((0)) FOR [F_ErrorNum]
GO
/****** Object:  Default [DF_Sys_ServerState_F_Cout]    Script Date: 05/11/2020 15:10:00 ******/
ALTER TABLE [dbo].[Sys_ServerState] ADD  CONSTRAINT [DF_Sys_ServerState_F_Cout]  DEFAULT ((0)) FOR [F_Cout]
GO
