USE [AndroidTraining_Emp]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 23.02.2019 7:38:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[ID] [int] NOT NULL,
	[name] [varchar](200) NULL,
	[email] [varchar](200) NULL,
	[phone] [varchar](200) NULL,
	[address] [varchar](200) NULL,
	[dept] [varchar](200) NULL,
	[picResPath] [varchar](200) NULL,
	[picResID] [int] NULL,
	[hireDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Employees] ([ID], [name], [email], [phone], [address], [dept], [picResPath], [picResID], [hireDate]) VALUES (1, N'Mohammad Hmedat', N'moh@mohe.com', N'0568474940', N'Ramalla', N'IT', N'mm', 2131230838, CAST(N'2010-02-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([ID], [name], [email], [phone], [address], [dept], [picResPath], [picResID], [hireDate]) VALUES (2, N'Mohammad Hmedat', N'moh@mohe.com', N'0568474940', N'Ramalla', N'IT', N'mm', 2131230841, CAST(N'2010-02-01T00:00:00.000' AS DateTime))
