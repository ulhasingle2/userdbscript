USE [ZipDB]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/18/2020 8:52:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Account_no] [int] IDENTITY(1,1) NOT NULL,
	[Email_id] [nvarchar](50) NOT NULL,
	[Account_amt] [int] NOT NULL,
 CONSTRAINT [PK_Account_1] PRIMARY KEY CLUSTERED 
(
	[Account_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/18/2020 8:52:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Salary] [int] NULL,
	[Expenses] [int] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Account_no], [Email_id], [Account_amt]) VALUES (1, N'Mangesh_Raul@gmaill.com', 900)
INSERT [dbo].[Account] ([Account_no], [Email_id], [Account_amt]) VALUES (2, N'Nkhil_bh12@hotmail.com', 1000)
INSERT [dbo].[Account] ([Account_no], [Email_id], [Account_amt]) VALUES (3, N'Sagar321@gmaill.com', 800)
SET IDENTITY_INSERT [dbo].[Account] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Name], [Email], [Salary], [Expenses]) VALUES (1, N'Gagan', N'Gagan@gmail.com', 80000, 9000)
INSERT [dbo].[Users] ([ID], [Name], [Email], [Salary], [Expenses]) VALUES (2, N'Nikhil', N'Nkhil_bh12@hotmail.com', 750000, 25000)
INSERT [dbo].[Users] ([ID], [Name], [Email], [Salary], [Expenses]) VALUES (3, N'Rajendra', N'Rajendra@gmaill.com', 800000, 12000)
INSERT [dbo].[Users] ([ID], [Name], [Email], [Salary], [Expenses]) VALUES (4, N'Mangesh', N'Mangesh_Raul@gmaill.com', 600000, 15000)
INSERT [dbo].[Users] ([ID], [Name], [Email], [Salary], [Expenses]) VALUES (5, N'Sagar', N'Sagar321@gmaill.com', 750000, 15000)
INSERT [dbo].[Users] ([ID], [Name], [Email], [Salary], [Expenses]) VALUES (6, N'Vaibhav', N'vaibhav123@gmail.com', 10000, 9500)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Index [AccountUniqe]    Script Date: 6/18/2020 8:52:26 AM ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [AccountUniqe] UNIQUE NONCLUSTERED 
(
	[Account_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
