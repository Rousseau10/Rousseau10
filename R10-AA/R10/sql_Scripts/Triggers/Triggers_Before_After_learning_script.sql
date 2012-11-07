USE [master]
GO

/****** Object:  Database [Action_Amusements_Winhost]    Script Date: 06/10/2012 01:36:24 ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'Action_Amusements_Winhost')
DROP DATABASE [Action_Amusements_Winhost]
GO

USE [master]
GO

/****** Object:  Database [Action_Amusements_Winhost]    Script Date: 06/10/2012 01:36:24 ******/
CREATE DATABASE [Action_Amusements_Winhost] ON  PRIMARY 
( NAME = N'Action_Amusements_Winhost', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Action_Amusements_Winhost.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Action_Amusements_Winhost_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Action_Amusements_Winhost_log.ldf' , SIZE = 10176KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [Action_Amusements_Winhost] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Action_Amusements_Winhost].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Action_Amusements_Winhost] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET ARITHABORT OFF 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET  READ_WRITE 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET RECOVERY FULL 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET  MULTI_USER 
GO

ALTER DATABASE [Action_Amusements_Winhost] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Action_Amusements_Winhost] SET DB_CHAINING OFF 
GO


--//////////////////////////Context/Database drop recreate above finished//////
