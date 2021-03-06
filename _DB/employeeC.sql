USE [master]
GO

/****** Object:  Database [employeeC]    Script Date: 05/04/2021 09:27:41 PM ******/
CREATE DATABASE [employeeC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'employeeC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\employeeC.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'employeeC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\employeeC_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [employeeC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [employeeC] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [employeeC] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [employeeC] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [employeeC] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [employeeC] SET ARITHABORT OFF 
GO

ALTER DATABASE [employeeC] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [employeeC] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [employeeC] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [employeeC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [employeeC] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [employeeC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [employeeC] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [employeeC] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [employeeC] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [employeeC] SET  DISABLE_BROKER 
GO

ALTER DATABASE [employeeC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [employeeC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [employeeC] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [employeeC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [employeeC] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [employeeC] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [employeeC] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [employeeC] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [employeeC] SET  MULTI_USER 
GO

ALTER DATABASE [employeeC] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [employeeC] SET DB_CHAINING OFF 
GO

ALTER DATABASE [employeeC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [employeeC] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [employeeC] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [employeeC] SET QUERY_STORE = OFF
GO

ALTER DATABASE [employeeC] SET  READ_WRITE 
GO

