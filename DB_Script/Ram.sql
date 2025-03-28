USE [master]
GO
/****** Object:  Database [Ram]    Script Date: 02/08/2023 13:20:19 ******/
CREATE DATABASE [Ram]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ram', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Ram.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Ram_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Ram_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Ram] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ram].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ram] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ram] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ram] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ram] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ram] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ram] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ram] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ram] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ram] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ram] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ram] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ram] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ram] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ram] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ram] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Ram] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ram] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ram] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ram] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ram] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ram] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ram] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ram] SET RECOVERY FULL 
GO
ALTER DATABASE [Ram] SET  MULTI_USER 
GO
ALTER DATABASE [Ram] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ram] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ram] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ram] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Ram] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Ram', N'ON'
GO
USE [Ram]
GO
/****** Object:  Table [dbo].[GG_RegDB]    Script Date: 02/08/2023 13:20:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GG_RegDB](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Contact] [nvarchar](50) NULL,
	[Temp_Id_No] [nvarchar](50) NULL,
	[Entery_Date] [datetime] NULL,
	[Exit_Date] [datetime] NULL,
	[Security_Id] [nvarchar](50) NULL,
	[Meeting_Whom] [nvarchar](150) NULL,
	[Email_Id] [nvarchar](150) NULL,
	[VechicleNo] [nvarchar](50) NULL,
	[VisitorAddress] [nvarchar](max) NULL,
	[Purpose] [nvarchar](50) NULL,
	[CollegeId] [nvarchar](50) NULL,
 CONSTRAINT [PK_GG_RegDB] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Insert_Users]    Script Date: 02/08/2023 13:20:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Insert_Users](
	[relation_id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](150) NULL,
	[FullName] [nvarchar](150) NULL,
	[MobileNo] [nvarchar](50) NULL,
	[EmailId] [nvarchar](150) NULL,
	[IsActive] [nvarchar](50) NULL,
 CONSTRAINT [PK_Insert_Users] PRIMARY KEY CLUSTERED 
(
	[relation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Students]    Script Date: 02/08/2023 13:20:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NULL,
	[email] [nvarchar](150) NULL,
	[contact] [nvarchar](150) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 02/08/2023 13:20:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Fname] [nvarchar](250) NULL,
	[Lname] [nvarchar](150) NULL,
	[Email] [nvarchar](150) NULL,
	[Password] [nvarchar](250) NULL,
	[Gender] [nvarchar](50) NULL,
	[Dob] [date] NULL,
	[Mobile] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[City] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserMst]    Script Date: 02/08/2023 13:20:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMst](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](250) NULL,
	[LastName] [nvarchar](250) NULL,
	[City] [nvarchar](50) NULL,
	[EMail] [nvarchar](250) NULL,
	[Password] [nvarchar](250) NULL,
 CONSTRAINT [PK_UserMst] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[GG_RegDB] ADD  CONSTRAINT [DF_GG_RegDB_Entery_Date]  DEFAULT (getdate()) FOR [Entery_Date]
GO
/****** Object:  StoredProcedure [dbo].[Proc_Insert_Users]    Script Date: 02/08/2023 13:20:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Proc_Insert_Users]

@UserId nvarchar(150),
@FullName nvarchar(150),
@MobileNo nvarchar(50), 
@EmailId nvarchar(150),
@IsActive nvarchar(50)

as
INSERT INTO Insert_Users (UserId,FullName,MobileNo,EmailId,IsActive)VALUES(@UserId,@FullName,@MobileNo,@EmailId,@IsActive)
GO
/****** Object:  StoredProcedure [dbo].[Proc_Select_Reg]    Script Date: 02/08/2023 13:20:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Proc_Select_Reg]

--@UserId nvarchar(150),
--@FullName nvarchar(150),
--@MobileNo nvarchar(50), 
--@EmailId nvarchar(150),
--@IsActive nvarchar(50)
--as
--INSERT INTO Insert_Users (UserId,FullName,MobileNo,EmailId,IsActive)VALUES(@UserId,@FullName,@MobileNo,@EmailId,@IsActive)
as
SELECT * FROM Insert_Users

GO
USE [master]
GO
ALTER DATABASE [Ram] SET  READ_WRITE 
GO
