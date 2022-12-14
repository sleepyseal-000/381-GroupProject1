USE [master]
GO
/****** Object:  Database [eStreamingMovies]    Script Date: 10/12/2022 10:14:22 PM ******/
CREATE DATABASE [eStreamingMovies]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'eStreamingMovies', FILENAME = N'/var/opt/mssql/data/eStreamingMovies.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'eStreamingMovies_log', FILENAME = N'/var/opt/mssql/log/eStreamingMovies_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [eStreamingMovies] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eStreamingMovies].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [eStreamingMovies] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [eStreamingMovies] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [eStreamingMovies] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [eStreamingMovies] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [eStreamingMovies] SET ARITHABORT OFF 
GO
ALTER DATABASE [eStreamingMovies] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [eStreamingMovies] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [eStreamingMovies] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [eStreamingMovies] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [eStreamingMovies] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [eStreamingMovies] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [eStreamingMovies] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [eStreamingMovies] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [eStreamingMovies] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [eStreamingMovies] SET  DISABLE_BROKER 
GO
ALTER DATABASE [eStreamingMovies] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [eStreamingMovies] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [eStreamingMovies] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [eStreamingMovies] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [eStreamingMovies] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [eStreamingMovies] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [eStreamingMovies] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [eStreamingMovies] SET RECOVERY FULL 
GO
ALTER DATABASE [eStreamingMovies] SET  MULTI_USER 
GO
ALTER DATABASE [eStreamingMovies] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [eStreamingMovies] SET DB_CHAINING OFF 
GO
ALTER DATABASE [eStreamingMovies] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [eStreamingMovies] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [eStreamingMovies] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [eStreamingMovies] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'eStreamingMovies', N'ON'
GO
ALTER DATABASE [eStreamingMovies] SET QUERY_STORE = OFF
GO
USE [eStreamingMovies]
GO
/****** Object:  Schema [Employee]    Script Date: 10/12/2022 10:14:22 PM ******/
CREATE SCHEMA [Employee]
GO
/****** Object:  Schema [Movie]    Script Date: 10/12/2022 10:14:22 PM ******/
CREATE SCHEMA [Movie]
GO
/****** Object:  Schema [Payment]    Script Date: 10/12/2022 10:14:22 PM ******/
CREATE SCHEMA [Payment]
GO
/****** Object:  Schema [User]    Script Date: 10/12/2022 10:14:22 PM ******/
CREATE SCHEMA [User]
GO
/****** Object:  Rule [MovieGenre]    Script Date: 10/12/2022 10:14:22 PM ******/
CREATE RULE [dbo].[MovieGenre] 
AS
@col IN ('AA', 'AN', 'CO', 'DO', 'DR', 'FA', 'CL', 'HO', 'MY', 'SF', 'WS')
GO
/****** Object:  UserDefinedDataType [dbo].[address]    Script Date: 10/12/2022 10:14:22 PM ******/
CREATE TYPE [dbo].[address] FROM [varchar](60) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[address2]    Script Date: 10/12/2022 10:14:22 PM ******/
CREATE TYPE [dbo].[address2] FROM [varchar](60) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[City]    Script Date: 10/12/2022 10:14:22 PM ******/
CREATE TYPE [dbo].[City] FROM [varchar](60) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[FullName]    Script Date: 10/12/2022 10:14:22 PM ******/
CREATE TYPE [dbo].[FullName] FROM [varchar](60) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Id]    Script Date: 10/12/2022 10:14:22 PM ******/
CREATE TYPE [dbo].[Id] FROM [int] NULL
GO
/****** Object:  UserDefinedDataType [dbo].[manager]    Script Date: 10/12/2022 10:14:22 PM ******/
CREATE TYPE [dbo].[manager] FROM [varchar](60) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Name]    Script Date: 10/12/2022 10:14:22 PM ******/
CREATE TYPE [dbo].[Name] FROM [varchar](20) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Phone]    Script Date: 10/12/2022 10:14:22 PM ******/
CREATE TYPE [dbo].[Phone] FROM [int] NULL
GO
/****** Object:  UserDefinedDataType [dbo].[standardnumber]    Script Date: 10/12/2022 10:14:22 PM ******/
CREATE TYPE [dbo].[standardnumber] FROM [int] NULL
GO
/****** Object:  UserDefinedDataType [dbo].[standardstring]    Script Date: 10/12/2022 10:14:22 PM ******/
CREATE TYPE [dbo].[standardstring] FROM [varchar](60) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[State]    Script Date: 10/12/2022 10:14:22 PM ******/
CREATE TYPE [dbo].[State] FROM [varchar](2) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Title]    Script Date: 10/12/2022 10:14:22 PM ******/
CREATE TYPE [dbo].[Title] FROM [varchar](60) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Username]    Script Date: 10/12/2022 10:14:22 PM ******/
CREATE TYPE [dbo].[Username] FROM [varchar](60) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[ZipCode]    Script Date: 10/12/2022 10:14:22 PM ******/
CREATE TYPE [dbo].[ZipCode] FROM [int] NULL
GO
/****** Object:  Table [Employee].[Employee]    Script Date: 10/12/2022 10:14:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Employee].[Employee](
	[EmployeeFirstName] [dbo].[Name] NULL,
	[EmployeeAddress] [dbo].[address] NULL,
	[EmployeePhone] [dbo].[Phone] NULL,
	[EmployeeEmail] [varchar](60) NULL,
	[Salary] [int] NULL,
	[HireDate] [datetime] NULL,
	[SocialSecurityNumber] [varchar](12) MASKED WITH (FUNCTION = 'partial(0, "xxx-xx-", 4)') NULL,
	[EmployeeId] [dbo].[Id] NOT NULL,
	[EmployeeLastName] [dbo].[Name] NULL,
 CONSTRAINT [XPKEmployee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [XAK1Employee] UNIQUE NONCLUSTERED 
(
	[SocialSecurityNumber] ASC,
	[EmployeePhone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Movie].[Movie]    Script Date: 10/12/2022 10:14:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Movie].[Movie](
	[MovieTitle] [dbo].[Title] NULL,
	[MovieDirector] [dbo].[FullName] NULL,
	[Description] [varchar](100) NULL,
	[Rating] [varchar](1) NULL,
	[MovieId] [dbo].[Id] NOT NULL,
	[Genre] [char](1) NULL,
	[UserId] [dbo].[Id] NULL,
	[AccountOneId] [dbo].[Id] NULL,
	[AccountTwoId] [dbo].[Id] NULL,
 CONSTRAINT [XPKMovie] PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [XAK1Movie] UNIQUE NONCLUSTERED 
(
	[MovieTitle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Movie].[MovieGenre]    Script Date: 10/12/2022 10:14:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Movie].[MovieGenre](
	[GenreId] [dbo].[Id] NOT NULL,
	[Genre] [dbo].[standardstring] NULL,
	[MovieId] [dbo].[Id] NOT NULL,
 CONSTRAINT [XPKMovieGenre] PRIMARY KEY CLUSTERED 
(
	[GenreId] ASC,
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Payment].[PaymentSubscription]    Script Date: 10/12/2022 10:14:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Payment].[PaymentSubscription](
	[PaymentTransactionNumber] [int] NOT NULL,
	[PaymentType] [varchar](20) NULL,
	[PaymentAmount] [numeric](18, 0) NULL,
	[PaymentDate] [datetime] NULL,
	[PaymentStatus] [varchar](10) NULL,
	[EmployeeId] [dbo].[Id] NOT NULL,
	[DueDate] [datetime] NULL,
	[TypeOfSubscription] [varchar](10) NULL,
 CONSTRAINT [XPKPaymentSubscription] PRIMARY KEY CLUSTERED 
(
	[PaymentTransactionNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Payment].[UserCreditCard]    Script Date: 10/12/2022 10:14:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Payment].[UserCreditCard](
	[CreditCardNumber] [varchar](20) MASKED WITH (FUNCTION = 'partial(0, "xxxxxxxxxxxx", 4)') NOT NULL,
	[CreditCardExp] [datetime] NOT NULL,
	[StatusCode] [varchar](10) NULL,
	[PaymentTransactionNumber] [int] NOT NULL,
	[CreditCardType] [varchar](60) NULL,
 CONSTRAINT [XPKUserCreditCard] PRIMARY KEY CLUSTERED 
(
	[PaymentTransactionNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [User].[User1Preferences]    Script Date: 10/12/2022 10:14:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [User].[User1Preferences](
	[ThumbnailNumber] [int] NULL,
	[RecommendedGenreSelection] [varchar](60) NULL,
	[UserId] [dbo].[Id] NOT NULL,
	[AccountOneId] [dbo].[Id] NOT NULL,
	[RecoveryPhoneNumber] [dbo].[Phone] NULL,
 CONSTRAINT [XPKUser1Preferences] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[AccountOneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [User].[User2Preferences]    Script Date: 10/12/2022 10:14:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [User].[User2Preferences](
	[ThumbnailNumber] [int] NULL,
	[RecommendedGenreSelection] [varchar](60) NULL,
	[UserId] [dbo].[Id] NOT NULL,
	[AccountTwoId] [dbo].[Id] NOT NULL,
	[RecoveryPhoneNumber] [dbo].[Phone] NULL,
 CONSTRAINT [XPKUser2Preferences] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[AccountTwoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [User].[UserAccountOne]    Script Date: 10/12/2022 10:14:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [User].[UserAccountOne](
	[UserName] [dbo].[Username] NULL,
	[UserId] [dbo].[Id] NOT NULL,
	[CreateDate] [datetime] NULL,
	[AccountOneId] [dbo].[Id] NOT NULL,
	[Password] [varchar](60) NULL,
 CONSTRAINT [XPKUserAccountOne] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[AccountOneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [User].[UserAccountTwo]    Script Date: 10/12/2022 10:14:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [User].[UserAccountTwo](
	[UserName] [dbo].[Username] NULL,
	[UserId] [dbo].[Id] NOT NULL,
	[CreateDate] [datetime] NULL,
	[AccountTwoId] [dbo].[Id] NOT NULL,
	[Password] [varchar](60) NULL,
 CONSTRAINT [XPKUserAccountTwo] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[AccountTwoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [User].[UserManagement]    Script Date: 10/12/2022 10:14:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [User].[UserManagement](
	[UserManagementAddress] [dbo].[address] NULL,
	[UserManagementCity] [dbo].[City] NULL,
	[UserManagementFirstName] [dbo].[Name] NULL,
	[UserManagementLastName] [dbo].[Name] NULL,
	[UserManagementState] [dbo].[State] NULL,
	[UserManagementZipCode] [dbo].[ZipCode] NULL,
	[UserEmail] [varchar](60) NULL,
	[UserId] [dbo].[Id] NOT NULL,
	[Active] [bit] NULL,
	[UserManagementBirthdate] [datetime] NULL,
	[PaymentTransactionNumber] [int] NULL,
 CONSTRAINT [XPKUserManagement] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [XAK1UserManagement] UNIQUE NONCLUSTERED 
(
	[UserManagementAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [XIE1Employee]    Script Date: 10/12/2022 10:14:22 PM ******/
CREATE NONCLUSTERED INDEX [XIE1Employee] ON [Employee].[Employee]
(
	[EmployeeFirstName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [XIE1UserManagement]    Script Date: 10/12/2022 10:14:22 PM ******/
CREATE NONCLUSTERED INDEX [XIE1UserManagement] ON [User].[UserManagement]
(
	[UserManagementLastName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [Movie].[Movie]  WITH CHECK ADD  CONSTRAINT [FK_Movie_UserAccountOne] FOREIGN KEY([UserId], [AccountOneId])
REFERENCES [User].[UserAccountOne] ([UserId], [AccountOneId])
GO
ALTER TABLE [Movie].[Movie] CHECK CONSTRAINT [FK_Movie_UserAccountOne]
GO
ALTER TABLE [Movie].[Movie]  WITH CHECK ADD  CONSTRAINT [FK_Movie_UserAccountTwo] FOREIGN KEY([UserId], [AccountTwoId])
REFERENCES [User].[UserAccountTwo] ([UserId], [AccountTwoId])
GO
ALTER TABLE [Movie].[Movie] CHECK CONSTRAINT [FK_Movie_UserAccountTwo]
GO
ALTER TABLE [Movie].[MovieGenre]  WITH CHECK ADD  CONSTRAINT [FK_MovieGenre_Movie] FOREIGN KEY([MovieId])
REFERENCES [Movie].[Movie] ([MovieId])
GO
ALTER TABLE [Movie].[MovieGenre] CHECK CONSTRAINT [FK_MovieGenre_Movie]
GO
ALTER TABLE [Payment].[PaymentSubscription]  WITH CHECK ADD  CONSTRAINT [FK_PaymentSubscription_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [Employee].[Employee] ([EmployeeId])
GO
ALTER TABLE [Payment].[PaymentSubscription] CHECK CONSTRAINT [FK_PaymentSubscription_Employee]
GO
ALTER TABLE [Payment].[UserCreditCard]  WITH CHECK ADD  CONSTRAINT [FK_UserCreditCard_PaymentSubscription] FOREIGN KEY([PaymentTransactionNumber])
REFERENCES [Payment].[PaymentSubscription] ([PaymentTransactionNumber])
GO
ALTER TABLE [Payment].[UserCreditCard] CHECK CONSTRAINT [FK_UserCreditCard_PaymentSubscription]
GO
ALTER TABLE [User].[User1Preferences]  WITH CHECK ADD  CONSTRAINT [R69] FOREIGN KEY([UserId], [AccountOneId])
REFERENCES [User].[UserAccountOne] ([UserId], [AccountOneId])
GO
ALTER TABLE [User].[User1Preferences] CHECK CONSTRAINT [R69]
GO
ALTER TABLE [User].[User2Preferences]  WITH CHECK ADD  CONSTRAINT [R68] FOREIGN KEY([UserId], [AccountTwoId])
REFERENCES [User].[UserAccountTwo] ([UserId], [AccountTwoId])
GO
ALTER TABLE [User].[User2Preferences] CHECK CONSTRAINT [R68]
GO
ALTER TABLE [User].[UserAccountOne]  WITH CHECK ADD  CONSTRAINT [FK_UserAccountOne_UserManagement] FOREIGN KEY([UserId])
REFERENCES [User].[UserManagement] ([UserId])
GO
ALTER TABLE [User].[UserAccountOne] CHECK CONSTRAINT [FK_UserAccountOne_UserManagement]
GO
ALTER TABLE [User].[UserAccountTwo]  WITH CHECK ADD  CONSTRAINT [FK_UserAccountTwo_UserManagement] FOREIGN KEY([UserId])
REFERENCES [User].[UserManagement] ([UserId])
GO
ALTER TABLE [User].[UserAccountTwo] CHECK CONSTRAINT [FK_UserAccountTwo_UserManagement]
GO
ALTER TABLE [User].[UserManagement]  WITH CHECK ADD  CONSTRAINT [FK_UserManagement_PaymentSubscription] FOREIGN KEY([PaymentTransactionNumber])
REFERENCES [Payment].[PaymentSubscription] ([PaymentTransactionNumber])
GO
ALTER TABLE [User].[UserManagement] CHECK CONSTRAINT [FK_UserManagement_PaymentSubscription]
GO
ALTER TABLE [User].[User1Preferences]  WITH CHECK ADD  CONSTRAINT [Thumbailchoice_1706127992] CHECK  (([ThumbnailNumber]=(0) OR [ThumbnailNumber]=(1) OR [ThumbnailNumber]=(2) OR [ThumbnailNumber]=(3) OR [ThumbnailNumber]=(4) OR [ThumbnailNumber]=(5)))
GO
ALTER TABLE [User].[User1Preferences] CHECK CONSTRAINT [Thumbailchoice_1706127992]
GO
USE [master]
GO
ALTER DATABASE [eStreamingMovies] SET  READ_WRITE 
GO
