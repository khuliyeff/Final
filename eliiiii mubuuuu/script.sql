/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2017 (14.0.1000)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [fhn]
GO
/****** Object:  Table [dbo].[AboutUs]    Script Date: 8/13/2018 4:59:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AboutUs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AboutTxt] [nvarchar](50) NULL,
	[MiniTxt] [nvarchar](150) NULL,
	[Text] [ntext] NULL,
 CONSTRAINT [PK_AboutUs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 8/13/2018 4:59:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](150) NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Benefits]    Script Date: 8/13/2018 4:59:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Benefits](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](350) NULL,
	[Header] [nvarchar](80) NULL,
	[HeaderTxr] [ntext] NULL,
	[Text] [ntext] NULL,
	[Icon] [nvarchar](350) NULL,
	[IconTxt] [ntext] NULL,
 CONSTRAINT [PK_Benefits] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Buyns]    Script Date: 8/13/2018 4:59:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buyns](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Price] [nvarchar](150) NULL,
	[Month] [nvarchar](250) NULL,
	[PSD] [nvarchar](250) NULL,
	[HTML] [nvarchar](250) NULL,
 CONSTRAINT [PK_Buyns] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Buys]    Script Date: 8/13/2018 4:59:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Header] [nvarchar](250) NULL,
	[Txt] [nvarchar](350) NULL,
 CONSTRAINT [PK_Buys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 8/13/2018 4:59:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Header] [nvarchar](80) NULL,
	[HeadTxt] [nvarchar](80) NULL,
	[Text] [ntext] NULL,
	[BackPhoto] [nvarchar](350) NULL,
	[Photo] [nvarchar](350) NULL,
	[Phead] [nvarchar](80) NULL,
	[Ptxt] [ntext] NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactUs]    Script Date: 8/13/2018 4:59:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactUs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Email] [nvarchar](200) NULL,
	[Subject] [ntext] NULL,
	[Message] [ntext] NULL,
 CONSTRAINT [PK_ContactUs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Features]    Script Date: 8/13/2018 4:59:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Features](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Header] [nvarchar](80) NULL,
	[Text] [ntext] NULL,
	[Photo] [nvarchar](350) NULL,
	[Icon] [nvarchar](350) NULL,
	[IconHead] [nvarchar](50) NULL,
	[IconTxt] [ntext] NULL,
 CONSTRAINT [PK_Features] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 8/13/2018 4:59:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Logo] [nvarchar](350) NULL,
	[Icon] [nvarchar](350) NULL,
 CONSTRAINT [PK_Footer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Home]    Script Date: 8/13/2018 4:59:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Home](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](350) NULL,
	[Header] [nvarchar](150) NULL,
	[Text] [text] NULL,
	[BackPhoto] [nvarchar](350) NULL,
 CONSTRAINT [PK_Home] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IconFeature]    Script Date: 8/13/2018 4:59:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IconFeature](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [nvarchar](350) NULL,
	[Tittle] [nvarchar](350) NULL,
	[Text] [nvarchar](350) NULL,
 CONSTRAINT [PK_IconFeature] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Icons]    Script Date: 8/13/2018 4:59:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Icons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [nvarchar](350) NULL,
	[Title] [nvarchar](150) NULL,
	[Text] [nvarchar](150) NULL,
 CONSTRAINT [PK_aboticons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Screenshots]    Script Date: 8/13/2018 4:59:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Screenshots](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Background] [nvarchar](350) NULL,
	[Head] [nvarchar](80) NULL,
	[Text] [ntext] NULL,
 CONSTRAINT [PK_Screenshots] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sPhoto]    Script Date: 8/13/2018 4:59:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sPhoto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](350) NULL,
 CONSTRAINT [PK_sPhoto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statisticas]    Script Date: 8/13/2018 4:59:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statisticas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [nvarchar](350) NULL,
	[Number] [int] NULL,
	[Name] [nvarchar](80) NULL,
 CONSTRAINT [PK_Statisticas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teamas]    Script Date: 8/13/2018 4:59:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teamas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](250) NULL,
	[Name] [nvarchar](50) NULL,
	[Position] [nvarchar](250) NULL,
 CONSTRAINT [PK_Teamas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 8/13/2018 4:59:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Header] [nvarchar](150) NULL,
	[txt] [ntext] NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Works]    Script Date: 8/13/2018 4:59:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Works](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Video] [nvarchar](350) NULL,
 CONSTRAINT [PK_Works] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AboutUs] ON 

INSERT [dbo].[AboutUs] ([Id], [AboutTxt], [MiniTxt], [Text]) VALUES (1, N'About us', N'Maecenas dictum ex ut convallis consectetur', N'Curabitur eget lobortis arcu, non venenatis felis. Duis volutpat lorem eros, tempus ornare velit sodales in. Vivamus at risus neque. Duis auctor lorem id ipsum sollicitudin congue.')
INSERT [dbo].[AboutUs] ([Id], [AboutTxt], [MiniTxt], [Text]) VALUES (2, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[AboutUs] OFF
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([Id], [FullName], [Email], [Password]) VALUES (1, N'Ali Quliyev', N'aliag@code.edu.az', N'AJR4BjqMXAwZN6Q0r4ofsWDUWbOTiLiy0rOExInrMc9uPDGXzthmlCkB3UcyTUlA4Q==')
INSERT [dbo].[Admins] ([Id], [FullName], [Email], [Password]) VALUES (2, N'Mubariz Isayev', N'mubariz@code.edu.az', N'AJR4BjqMXAwZN6Q0r4ofsWDUWbOTiLiy0rOExInrMc9uPDGXzthmlCkB3UcyTUlA4Q==')
SET IDENTITY_INSERT [dbo].[Admins] OFF
SET IDENTITY_INSERT [dbo].[Benefits] ON 

INSERT [dbo].[Benefits] ([Id], [Photo], [Header], [HeaderTxr], [Text], [Icon], [IconTxt]) VALUES (1, N'mobile-02.png', N'Benefits', N'Lorem Ipsum is simply dummy text of the printing', N'Curabitur eget lobortis arcu, non venenatis felis. Duis vol lorem eros, tempus ornare velit sodales in. Vivamus at riseque. Duis auctor lorem.', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Benefits] OFF
SET IDENTITY_INSERT [dbo].[Buyns] ON 

INSERT [dbo].[Buyns] ([Id], [Name], [Price], [Month], [PSD], [HTML]) VALUES (1, N'Basic', N'$ 12.99', N'12 months support', N'6 PSD template', N'10 HTML template')
INSERT [dbo].[Buyns] ([Id], [Name], [Price], [Month], [PSD], [HTML]) VALUES (2, N'Premium', N'$ 30.99', N'12 months support', N'6 PSD template', N'10 HTML template')
INSERT [dbo].[Buyns] ([Id], [Name], [Price], [Month], [PSD], [HTML]) VALUES (3, N'Enterprise', N'$ 80.99', N'12 months support', N'6 PSD template', N'10 HTML template')
SET IDENTITY_INSERT [dbo].[Buyns] OFF
SET IDENTITY_INSERT [dbo].[Buys] ON 

INSERT [dbo].[Buys] ([Id], [Header], [Txt]) VALUES (1, N'Choose a plan to fit your needs', N'Duis auctor lorem id ipsum sollicitudin congue')
SET IDENTITY_INSERT [dbo].[Buys] OFF
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([Id], [Header], [HeadTxt], [Text], [BackPhoto], [Photo], [Phead], [Ptxt]) VALUES (1, N'Client love us', N'Morbi lacinia orci eu consectetur porta', N'“Curabitur eget lobortis arcu, non venenatis felis. Duis volutpat lorem eros, tempus ornare velit sodales in. Vivamus at risus neque. Duis auctor lorem id ipsum sollicitudin congue.

', N'client-slider-bg.jpg', N'client01.png', N'TYRION LANNISTER', N'Master of Coin')
SET IDENTITY_INSERT [dbo].[Clients] OFF
SET IDENTITY_INSERT [dbo].[ContactUs] ON 

INSERT [dbo].[ContactUs] ([Id], [Name], [Email], [Subject], [Message]) VALUES (1, N'Ali', N'aliag@CODE.EDU.AZ', N'asdasda', N'kasdasdjsads')
SET IDENTITY_INSERT [dbo].[ContactUs] OFF
SET IDENTITY_INSERT [dbo].[Features] ON 

INSERT [dbo].[Features] ([Id], [Header], [Text], [Photo], [Icon], [IconHead], [IconTxt]) VALUES (1, N'Amazing key features', N'Praesent eu dolor dignissim tincidunt lectus', N'app-screen02.jpg', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Features] OFF
SET IDENTITY_INSERT [dbo].[Home] ON 

INSERT [dbo].[Home] ([Id], [Photo], [Header], [Text], [BackPhoto]) VALUES (1, N'hand_bg.png', N'Best way to present your 
beautiful mobile apps', N'Available on App Store, Play Store and Window Store ', N'main-img.jpg')
SET IDENTITY_INSERT [dbo].[Home] OFF
SET IDENTITY_INSERT [dbo].[IconFeature] ON 

INSERT [dbo].[IconFeature] ([Id], [Icon], [Tittle], [Text]) VALUES (1, N'icon-ic_design ficon', N'Creative design', N'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.')
INSERT [dbo].[IconFeature] ([Id], [Icon], [Tittle], [Text]) VALUES (2, N'icon-ic_customize ficon', N'Easy to customize', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit est is.')
INSERT [dbo].[IconFeature] ([Id], [Icon], [Tittle], [Text]) VALUES (3, N'icon-ic_speed ficon', N'Fast speed', N'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.')
SET IDENTITY_INSERT [dbo].[IconFeature] OFF
SET IDENTITY_INSERT [dbo].[Icons] ON 

INSERT [dbo].[Icons] ([Id], [Icon], [Title], [Text]) VALUES (1, N'icon-ic_flat_design ficon', N'Flat Design', N'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.')
INSERT [dbo].[Icons] ([Id], [Icon], [Title], [Text]) VALUES (2, N'icon-ic_market ficon', N'Marketable', N'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.')
INSERT [dbo].[Icons] ([Id], [Icon], [Title], [Text]) VALUES (3, N'icon-ic_photos ficon', N'Edit Photos', N'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.')
SET IDENTITY_INSERT [dbo].[Icons] OFF
SET IDENTITY_INSERT [dbo].[Screenshots] ON 

INSERT [dbo].[Screenshots] ([Id], [Background], [Head], [Text]) VALUES (1, N'iPhone.png', N'Awesome screenshots', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry!')
SET IDENTITY_INSERT [dbo].[Screenshots] OFF
SET IDENTITY_INSERT [dbo].[sPhoto] ON 

INSERT [dbo].[sPhoto] ([Id], [Photo]) VALUES (1, N'app-screen01.jpg')
INSERT [dbo].[sPhoto] ([Id], [Photo]) VALUES (2, N'app-screen02.jpg')
INSERT [dbo].[sPhoto] ([Id], [Photo]) VALUES (3, N'app-screen03.jpg')
INSERT [dbo].[sPhoto] ([Id], [Photo]) VALUES (4, N'app-screen04.jpg')
INSERT [dbo].[sPhoto] ([Id], [Photo]) VALUES (5, N'app-screen05.jpg')
INSERT [dbo].[sPhoto] ([Id], [Photo]) VALUES (6, N'app-screen04.jpg')
INSERT [dbo].[sPhoto] ([Id], [Photo]) VALUES (7, N'app-screen03.jpg')
INSERT [dbo].[sPhoto] ([Id], [Photo]) VALUES (8, N'app-screen02.jpg')
INSERT [dbo].[sPhoto] ([Id], [Photo]) VALUES (9, N'app-screen04.jpg')
SET IDENTITY_INSERT [dbo].[sPhoto] OFF
SET IDENTITY_INSERT [dbo].[Statisticas] ON 

INSERT [dbo].[Statisticas] ([Id], [Icon], [Number], [Name]) VALUES (1, N'icon-ic_download ficon', 649, N'DOWNLOADED')
INSERT [dbo].[Statisticas] ([Id], [Icon], [Number], [Name]) VALUES (2, N'icon-ic_apple ficon', 628, N'IOS USERS
')
INSERT [dbo].[Statisticas] ([Id], [Icon], [Number], [Name]) VALUES (3, N'icon-ic_android ficon', 247, N'ANDROID USERS')
INSERT [dbo].[Statisticas] ([Id], [Icon], [Number], [Name]) VALUES (4, N'icon-ic_windows ficon', 325, N'WINDOWS USERS')
SET IDENTITY_INSERT [dbo].[Statisticas] OFF
SET IDENTITY_INSERT [dbo].[Teamas] ON 

INSERT [dbo].[Teamas] ([Id], [Photo], [Name], [Position]) VALUES (1, N'team01.jpg', N'DANIEL MOORE', N'Project Manager')
INSERT [dbo].[Teamas] ([Id], [Photo], [Name], [Position]) VALUES (2, N'team02.jpg', N'CAROL MILLS', N'UI Designer')
INSERT [dbo].[Teamas] ([Id], [Photo], [Name], [Position]) VALUES (3, N'team03.jpg', N'SIMON LAMB', N'Developer')
SET IDENTITY_INSERT [dbo].[Teamas] OFF
SET IDENTITY_INSERT [dbo].[Teams] ON 

INSERT [dbo].[Teams] ([Id], [Header], [txt]) VALUES (1, N'Our Awesome Team', N'Epsum factorial non deposit quid pro quo hic escorol')
SET IDENTITY_INSERT [dbo].[Teams] OFF
