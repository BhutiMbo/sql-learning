USE [70-461]
GO

/****** Object:  Table [dbo].[tblEmployee]    Script Date: 03-Feb-26 4:42:59 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblEmployee](
	[EmployeeNumber] [int] NOT NULL,
	[EmployeeFirstName] [varchar](50) NOT NULL,
	[EmployeeMiddleName] [varchar](50) NULL,
	[EmployeeLastName] [varchar](50) NOT NULL,
	[EmployeeGovernmentID] [char](10) NULL,
	[DateOfBirth] [date] NOT NULL
) ON [PRIMARY]
GO

