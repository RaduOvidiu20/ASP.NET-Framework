USE [master]
GO
/****** Object:  Database [todoDB]    Script Date: 2/17/2023 5:51:30 PM ******/
CREATE DATABASE [todoDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'todoDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER01\MSSQL\DATA\todoDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'todoDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER01\MSSQL\DATA\todoDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [todoDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [todoDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [todoDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [todoDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [todoDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [todoDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [todoDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [todoDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [todoDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [todoDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [todoDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [todoDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [todoDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [todoDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [todoDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [todoDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [todoDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [todoDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [todoDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [todoDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [todoDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [todoDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [todoDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [todoDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [todoDB] SET RECOVERY FULL 
GO
ALTER DATABASE [todoDB] SET  MULTI_USER 
GO
ALTER DATABASE [todoDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [todoDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [todoDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [todoDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [todoDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [todoDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'todoDB', N'ON'
GO
ALTER DATABASE [todoDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [todoDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [todoDB]
GO
/****** Object:  Table [dbo].[task_type]    Script Date: 2/17/2023 5:51:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[task_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) NULL,
 CONSTRAINT [PK_task] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tasks]    Script Date: 2/17/2023 5:51:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tasks](
	[task_id] [int] IDENTITY(1,1) NOT NULL,
	[task_name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[designated_for] [nvarchar](50) NULL,
	[status] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tasks] PRIMARY KEY CLUSTERED 
(
	[task_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_role]    Script Date: 2/17/2023 5:51:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_role] [nvarchar](50) NULL,
 CONSTRAINT [PK_user_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2/17/2023 5:51:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[role] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [todoDB] SET  READ_WRITE 
GO
