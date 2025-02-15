USE [KDVD_Rental]
GO
/****** Object:  Table [dbo].[Age]    Script Date: 14.02.2025 9:41:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NULL,
 CONSTRAINT [PK_Age] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 14.02.2025 9:41:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[F] [varchar](250) NULL,
	[I] [varchar](250) NULL,
	[O] [varchar](250) NULL,
	[phone] [varchar](50) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 14.02.2025 9:41:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[F] [varchar](250) NULL,
	[I] [varchar](250) NULL,
	[O] [varchar](250) NULL,
	[phone] [varchar](50) NULL,
	[id_role] [int] NULL,
	[salary] [decimal](16, 2) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Film]    Script Date: 14.02.2025 9:41:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Film](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NULL,
	[id_genre] [int] NULL,
	[id_age] [int] NULL,
	[rental_cost] [decimal](16, 2) NULL,
 CONSTRAINT [PK_Film] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 14.02.2025 9:41:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 14.02.2025 9:41:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipt](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[id_rental] [int] NULL,
	[id_film] [int] NULL,
 CONSTRAINT [PK_Receipt] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rental]    Script Date: 14.02.2025 9:41:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rental](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[date_of_issue] [date] NULL,
	[id_client] [int] NULL,
	[id_employee] [int] NULL,
	[date_of_delivery] [date] NULL,
 CONSTRAINT [PK_Rental] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 14.02.2025 9:41:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Age] ON 

INSERT [dbo].[Age] ([ID], [title]) VALUES (1, N'+3')
INSERT [dbo].[Age] ([ID], [title]) VALUES (2, N'+6')
INSERT [dbo].[Age] ([ID], [title]) VALUES (3, N'+12')
INSERT [dbo].[Age] ([ID], [title]) VALUES (4, N'+16')
INSERT [dbo].[Age] ([ID], [title]) VALUES (5, N'+18')
SET IDENTITY_INSERT [dbo].[Age] OFF
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ID], [F], [I], [O], [phone]) VALUES (1, N'Yeager', N'Eren', N'Grishovich', N'88835505565')
INSERT [dbo].[Client] ([ID], [F], [I], [O], [phone]) VALUES (2, N'Nagiev', N'Dmitri', N'Othestvo', N'10298311321')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([ID], [F], [I], [O], [phone], [id_role], [salary]) VALUES (5, N'Kazuma', N'Sato', N'Dontnovich', N'89656099426', 1, CAST(10.20 AS Decimal(16, 2)))
INSERT [dbo].[Employee] ([ID], [F], [I], [O], [phone], [id_role], [salary]) VALUES (6, N'Kirkorov', N'Filipp', N'Birdrosovich', N'89342423422', 2, CAST(200000.21 AS Decimal(16, 2)))
INSERT [dbo].[Employee] ([ID], [F], [I], [O], [phone], [id_role], [salary]) VALUES (7, N'Rezero', N'Rem', N'Dontich', N'89123131231', 3, CAST(99.99 AS Decimal(16, 2)))
INSERT [dbo].[Employee] ([ID], [F], [I], [O], [phone], [id_role], [salary]) VALUES (8, N'Rezero', N'Ram', N'Dontich', N'89123232356', 3, CAST(99.99 AS Decimal(16, 2)))
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Film] ON 

INSERT [dbo].[Film] ([ID], [title], [id_genre], [id_age], [rental_cost]) VALUES (1, N'A 30 Year old virgin can become a wizard? ', 4, 5, CAST(30.00 AS Decimal(16, 2)))
INSERT [dbo].[Film] ([ID], [title], [id_genre], [id_age], [rental_cost]) VALUES (5, N'The Rebirth of a Middle-Aged Man into ', 3, 3, CAST(25.00 AS Decimal(16, 2)))
INSERT [dbo].[Film] ([ID], [title], [id_genre], [id_age], [rental_cost]) VALUES (6, N'Smile', 1, 5, CAST(40.00 AS Decimal(16, 2)))
INSERT [dbo].[Film] ([ID], [title], [id_genre], [id_age], [rental_cost]) VALUES (7, N'Miracle eggs', 7, 4, CAST(15.00 AS Decimal(16, 2)))
INSERT [dbo].[Film] ([ID], [title], [id_genre], [id_age], [rental_cost]) VALUES (8, N'Find Father', 2, 2, CAST(100.00 AS Decimal(16, 2)))
INSERT [dbo].[Film] ([ID], [title], [id_genre], [id_age], [rental_cost]) VALUES (9, N'Hatiko', 5, 3, CAST(5.00 AS Decimal(16, 2)))
INSERT [dbo].[Film] ([ID], [title], [id_genre], [id_age], [rental_cost]) VALUES (10, N'Smeshariki', 7, 1, CAST(1.00 AS Decimal(16, 2)))
SET IDENTITY_INSERT [dbo].[Film] OFF
GO
SET IDENTITY_INSERT [dbo].[Genre] ON 

INSERT [dbo].[Genre] ([ID], [title]) VALUES (1, N'Ужасы')
INSERT [dbo].[Genre] ([ID], [title]) VALUES (2, N'Триллер')
INSERT [dbo].[Genre] ([ID], [title]) VALUES (3, N'Комедия')
INSERT [dbo].[Genre] ([ID], [title]) VALUES (4, N'Романтика')
INSERT [dbo].[Genre] ([ID], [title]) VALUES (5, N'Драмма')
INSERT [dbo].[Genre] ([ID], [title]) VALUES (6, N'Фантастика')
INSERT [dbo].[Genre] ([ID], [title]) VALUES (7, N'Психологическое')
SET IDENTITY_INSERT [dbo].[Genre] OFF
GO
SET IDENTITY_INSERT [dbo].[Receipt] ON 

INSERT [dbo].[Receipt] ([ID], [id_rental], [id_film]) VALUES (4, 5, 5)
INSERT [dbo].[Receipt] ([ID], [id_rental], [id_film]) VALUES (5, 6, 1)
SET IDENTITY_INSERT [dbo].[Receipt] OFF
GO
SET IDENTITY_INSERT [dbo].[Rental] ON 

INSERT [dbo].[Rental] ([ID], [date_of_issue], [id_client], [id_employee], [date_of_delivery]) VALUES (5, CAST(N'2000-10-10' AS Date), 1, 5, CAST(N'2020-10-10' AS Date))
INSERT [dbo].[Rental] ([ID], [date_of_issue], [id_client], [id_employee], [date_of_delivery]) VALUES (6, CAST(N'2000-10-10' AS Date), 2, 6, CAST(N'2024-01-20' AS Date))
SET IDENTITY_INSERT [dbo].[Rental] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([ID], [title]) VALUES (1, N'Employee')
INSERT [dbo].[Role] ([ID], [title]) VALUES (2, N'Admin')
INSERT [dbo].[Role] ([ID], [title]) VALUES (3, N'Cashier')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Role] FOREIGN KEY([id_role])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Role]
GO
ALTER TABLE [dbo].[Film]  WITH CHECK ADD  CONSTRAINT [FK_Film_Age] FOREIGN KEY([id_age])
REFERENCES [dbo].[Age] ([ID])
GO
ALTER TABLE [dbo].[Film] CHECK CONSTRAINT [FK_Film_Age]
GO
ALTER TABLE [dbo].[Film]  WITH CHECK ADD  CONSTRAINT [FK_Film_Genre] FOREIGN KEY([id_genre])
REFERENCES [dbo].[Genre] ([ID])
GO
ALTER TABLE [dbo].[Film] CHECK CONSTRAINT [FK_Film_Genre]
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [FK_Receipt_Film] FOREIGN KEY([id_film])
REFERENCES [dbo].[Film] ([ID])
GO
ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [FK_Receipt_Film]
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [FK_Receipt_Rental] FOREIGN KEY([id_rental])
REFERENCES [dbo].[Rental] ([ID])
GO
ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [FK_Receipt_Rental]
GO
ALTER TABLE [dbo].[Rental]  WITH CHECK ADD  CONSTRAINT [FK_Rental_Client] FOREIGN KEY([id_client])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[Rental] CHECK CONSTRAINT [FK_Rental_Client]
GO
ALTER TABLE [dbo].[Rental]  WITH CHECK ADD  CONSTRAINT [FK_Rental_Employee] FOREIGN KEY([id_employee])
REFERENCES [dbo].[Employee] ([ID])
GO
ALTER TABLE [dbo].[Rental] CHECK CONSTRAINT [FK_Rental_Employee]
GO
