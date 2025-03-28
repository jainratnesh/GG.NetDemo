USE [Ram]
GO
/****** Object:  Table [dbo].[GG_RegDB]    Script Date: 23-05-2023 16:20:39 ******/
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
/****** Object:  Table [dbo].[Insert_Users]    Script Date: 23-05-2023 16:20:39 ******/
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
/****** Object:  Table [dbo].[Students]    Script Date: 23-05-2023 16:20:39 ******/
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
/****** Object:  Table [dbo].[UserDetails]    Script Date: 23-05-2023 16:20:39 ******/
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
/****** Object:  Table [dbo].[UserMst]    Script Date: 23-05-2023 16:20:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_Insert_Users]    Script Date: 23-05-2023 16:20:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_Select_Reg]    Script Date: 23-05-2023 16:20:39 ******/
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
