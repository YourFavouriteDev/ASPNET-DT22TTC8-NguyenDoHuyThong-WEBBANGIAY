USE [TMDT_BanGiay]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](150) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[FullName] [nvarchar](50) NULL,
	[Email] [nvarchar](255) NULL,
	[Mobi] [nvarchar](20) NULL,
	[Address] [nvarchar](255) NULL,
	[Gender] [bit] NULL,
	[Status] [bit] NULL,
	[CreateTime] [datetime] NULL,
	[AccountCategoryID] [nvarchar](50) NULL,
 CONSTRAINT [PK_ACCOUNT] PRIMARY KEY NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountCategory]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountCategory](
	[AccountCategoryID] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_ACCOUNTTYPE] PRIMARY KEY NONCLUSTERED 
(
	[AccountCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[ArticleID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Title] [nvarchar](200) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Content] [ntext] NULL,
	[Keyword] [nvarchar](4000) NULL,
	[ImageList] [nvarchar](4000) NULL,
	[SourcePage] [nvarchar](50) NULL,
	[SourceLink] [nvarchar](255) NULL,
	[AttachmentFile] [nvarchar](4000) NULL,
	[ViewTime] [int] NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
	[CreateTime] [datetime] NULL,
	[ArticleCategoryID] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_ARTICLE] PRIMARY KEY NONCLUSTERED 
(
	[ArticleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArticleCategory]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleCategory](
	[ArticleCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Title] [nvarchar](200) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
	[CreateTime] [datetime] NULL,
	[ArticleMainCategoryID] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_ARTICLECATEGORY] PRIMARY KEY NONCLUSTERED 
(
	[ArticleCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArticleMainCategory]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleMainCategory](
	[ArticleMainCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Title] [nvarchar](200) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_ARTICLEMAINCATEGORY] PRIMARY KEY NONCLUSTERED 
(
	[ArticleMainCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](100) NULL,
	[FullName] [nvarchar](50) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Mobi] [nvarchar](20) NULL,
	[Address] [nvarchar](255) NULL,
	[Gender] [bit] NULL,
	[Status] [bit] NULL,
	[CreateTime] [datetime] NULL,
	[ApproveBy] [nvarchar](50) NULL,
	[ClientCategoryID] [int] NULL,
	[FacebookID] [nvarchar](100) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientCategory]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientCategory](
	[ClientCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Title] [nvarchar](200) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_ClientCategory] PRIMARY KEY CLUSTERED 
(
	[ClientCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentProduct]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentProduct](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[NameComment] [nvarchar](30) NOT NULL,
	[Content] [ntext] NULL,
	[CreateTime] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_CommentProduct] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
	[Email] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Mobi] [nvarchar](20) NULL,
	[Content] [ntext] NULL,
	[AttachmentFile] [nvarchar](4000) NULL,
	[Status] [bit] NULL,
	[CreateTime] [datetime] NULL,
	[ApproveBy] [nvarchar](50) NULL,
	[ContactCategoryID] [int] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactCategory]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactCategory](
	[ContactCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Title] [nvarchar](200) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_ContactCategory] PRIMARY KEY CLUSTERED 
(
	[ContactCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Total] [float] NULL,
	[Email] [nvarchar](255) NULL,
	[FullName] [nvarchar](50) NULL,
	[Mobi] [nvarchar](20) NULL,
	[Mobi2] [nvarchar](20) NULL,
	[Address] [nvarchar](200) NULL,
	[Gender] [bit] NULL,
	[PaymentMethod] [int] NULL,
	[Comment] [nvarchar](4000) NULL,
	[OrderStatus] [bit] NULL,
	[DeliverStatus] [bit] NULL,
	[ChargeStatus] [bit] NULL,
	[CreateTime] [datetime] NULL,
	[ClientID] [int] NULL,
	[StaffID] [int] NULL,
	[ImageList] [nvarchar](500) NULL,
	[DeliverTime] [datetime] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetailList]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetailList](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Picture]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Picture](
	[PictureID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Title] [nvarchar](200) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
	[CreateTime] [datetime] NULL,
	[ViewTime] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[PictureCategoryID] [int] NULL,
 CONSTRAINT [PK__Picture__8C2866F8FCD4D7B6] PRIMARY KEY CLUSTERED 
(
	[PictureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PictureCategory]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PictureCategory](
	[PictureCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Title] [nvarchar](200) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[PictureMainCategoryID] [int] NULL,
 CONSTRAINT [PK__PictureC__2DD7C710D1F3FCB5] PRIMARY KEY CLUSTERED 
(
	[PictureCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PictureMainCategory]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PictureMainCategory](
	[PictureMainCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Title] [nvarchar](200) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[Icon] [nvarchar](50) NULL,
 CONSTRAINT [PK__PictureM__030F2A3700CE2DC1] PRIMARY KEY CLUSTERED 
(
	[PictureMainCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Title] [nvarchar](200) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Content] [ntext] NULL,
	[Keyword] [nvarchar](4000) NULL,
	[ImageList] [nvarchar](4000) NULL,
	[GalleryImageList] [nvarchar](4000) NULL,
	[SourcePage] [nvarchar](50) NULL,
	[SourceLink] [nvarchar](255) NULL,
	[ViewTime] [int] NULL,
	[AttachmentFile] [nvarchar](4000) NULL,
	[Price] [float] NULL,
	[OldPrice] [float] NULL,
	[Promotions] [nvarchar](4000) NULL,
	[WarrantyPolicy] [nvarchar](4000) NULL,
	[Specifications] [nvarchar](4000) NULL,
	[Accessories] [nvarchar](4000) NULL,
	[Quantity] [int] NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[ProductCategoryID] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ProductCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Title] [nvarchar](200) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[ProductMainCategoryID] [int] NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMainCategory]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMainCategory](
	[ProductMainCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Title] [nvarchar](200) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Icon] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProductMainCategory] PRIMARY KEY CLUSTERED 
(
	[ProductMainCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductWisList]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductWisList](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NULL,
	[ProductID] [int] NULL,
 CONSTRAINT [PK_ProductWisList] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Property]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Property](
	[PropertyID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Title] [nvarchar](200) NULL,
	[PropertyValue] [nvarchar](255) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Icon] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
	[PropertyCategoryID] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Property] PRIMARY KEY CLUSTERED 
(
	[PropertyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropertyCategory]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertyCategory](
	[PropertyCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NULL,
	[Code] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Icon] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_PropertyMainCategory] PRIMARY KEY CLUSTERED 
(
	[PropertyCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropertyProduct]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertyProduct](
	[PropertyProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[PropertyID] [int] NULL,
	[Price] [float] NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Description] [nvarchar](4000) NULL,
	[Position] [int] NULL,
	[Status] [bit] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_PropertyProduct] PRIMARY KEY CLUSTERED 
(
	[PropertyProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[AcademicTitles] [nvarchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
	[Specialize] [nvarchar](50) NULL,
	[Email] [nvarchar](255) NULL,
	[Mobi] [nvarchar](20) NULL,
	[Address] [nvarchar](255) NULL,
	[Gender] [bit] NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[WorkSchedule] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[StaffCategoryID] [int] NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffCategory]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffCategory](
	[StaffCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Title] [nvarchar](200) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[StaffMainCategoryID] [int] NULL,
 CONSTRAINT [PK_StaffCategory] PRIMARY KEY CLUSTERED 
(
	[StaffCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffMainCategory]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffMainCategory](
	[StaffMainCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Title] [nvarchar](200) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_StaffMainCategory] PRIMARY KEY CLUSTERED 
(
	[StaffMainCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 6/27/2025 4:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysdiagrams](
	[name] [sysname] NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] IDENTITY(1,1) NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[diagram_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_ACCOUNT_ACCOUNTTY_ACCOUNTT] FOREIGN KEY([AccountCategoryID])
REFERENCES [dbo].[AccountCategory] ([AccountCategoryID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_ACCOUNT_ACCOUNTTY_ACCOUNTT]
GO
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_ARTICLE_ACCOUNT_A_ACCOUNT] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_ARTICLE_ACCOUNT_A_ACCOUNT]
GO
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_ARTICLE_ARTICLECA_ARTICLEC] FOREIGN KEY([ArticleCategoryID])
REFERENCES [dbo].[ArticleCategory] ([ArticleCategoryID])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_ARTICLE_ARTICLECA_ARTICLEC]
GO
ALTER TABLE [dbo].[ArticleCategory]  WITH CHECK ADD  CONSTRAINT [FK_ARTICLEC_ACCOUNT_A_ACCOUNT] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[ArticleCategory] CHECK CONSTRAINT [FK_ARTICLEC_ACCOUNT_A_ACCOUNT]
GO
ALTER TABLE [dbo].[ArticleCategory]  WITH CHECK ADD  CONSTRAINT [FK_ARTICLEC_ARTICLEMA_ARTICLEM] FOREIGN KEY([ArticleMainCategoryID])
REFERENCES [dbo].[ArticleMainCategory] ([ArticleMainCategoryID])
GO
ALTER TABLE [dbo].[ArticleCategory] CHECK CONSTRAINT [FK_ARTICLEC_ARTICLEMA_ARTICLEM]
GO
ALTER TABLE [dbo].[ArticleMainCategory]  WITH CHECK ADD  CONSTRAINT [FK_ARTICLEM_ACCOUNT_A_ACCOUNT] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[ArticleMainCategory] CHECK CONSTRAINT [FK_ARTICLEM_ACCOUNT_A_ACCOUNT]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Account] FOREIGN KEY([ApproveBy])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Account]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_ClientCategory] FOREIGN KEY([ClientCategoryID])
REFERENCES [dbo].[ClientCategory] ([ClientCategoryID])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_ClientCategory]
GO
ALTER TABLE [dbo].[ClientCategory]  WITH CHECK ADD  CONSTRAINT [FK_ClientCategory_Account] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[ClientCategory] CHECK CONSTRAINT [FK_ClientCategory_Account]
GO
ALTER TABLE [dbo].[CommentProduct]  WITH CHECK ADD FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO
ALTER TABLE [dbo].[CommentProduct]  WITH CHECK ADD  CONSTRAINT [FK__CommentPr__Produ__4222D4EF] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CommentProduct] CHECK CONSTRAINT [FK__CommentPr__Produ__4222D4EF]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_Account] FOREIGN KEY([ApproveBy])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_Account]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_ContactCategory] FOREIGN KEY([ContactCategoryID])
REFERENCES [dbo].[ContactCategory] ([ContactCategoryID])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_ContactCategory]
GO
ALTER TABLE [dbo].[ContactCategory]  WITH CHECK ADD  CONSTRAINT [FK_ContactCategory_Account] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[ContactCategory] CHECK CONSTRAINT [FK_ContactCategory_Account]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Client]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Staff] FOREIGN KEY([StaffID])
REFERENCES [dbo].[Staff] ([StaffID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Staff]
GO
ALTER TABLE [dbo].[OrderDetailList]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetailList] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetailList]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetailList] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Picture]  WITH CHECK ADD  CONSTRAINT [FK__Picture__CreateB__33D4B598] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Picture] CHECK CONSTRAINT [FK__Picture__CreateB__33D4B598]
GO
ALTER TABLE [dbo].[Picture]  WITH CHECK ADD  CONSTRAINT [FK__Picture__Picture__32E0915F] FOREIGN KEY([PictureCategoryID])
REFERENCES [dbo].[PictureCategory] ([PictureCategoryID])
GO
ALTER TABLE [dbo].[Picture] CHECK CONSTRAINT [FK__Picture__Picture__32E0915F]
GO
ALTER TABLE [dbo].[PictureCategory]  WITH CHECK ADD  CONSTRAINT [FK__PictureCa__Creat__300424B4] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[PictureCategory] CHECK CONSTRAINT [FK__PictureCa__Creat__300424B4]
GO
ALTER TABLE [dbo].[PictureCategory]  WITH CHECK ADD  CONSTRAINT [FK__PictureCa__Pictu__2F10007B] FOREIGN KEY([PictureMainCategoryID])
REFERENCES [dbo].[PictureMainCategory] ([PictureMainCategoryID])
GO
ALTER TABLE [dbo].[PictureCategory] CHECK CONSTRAINT [FK__PictureCa__Pictu__2F10007B]
GO
ALTER TABLE [dbo].[PictureMainCategory]  WITH CHECK ADD  CONSTRAINT [FK__PictureMa__Creat__2C3393D0] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[PictureMainCategory] CHECK CONSTRAINT [FK__PictureMa__Creat__2C3393D0]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Account] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Account]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([ProductCategoryID])
REFERENCES [dbo].[ProductCategory] ([ProductCategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_Account] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_ProductCategory_Account]
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_ProductMainCategory] FOREIGN KEY([ProductMainCategoryID])
REFERENCES [dbo].[ProductMainCategory] ([ProductMainCategoryID])
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_ProductCategory_ProductMainCategory]
GO
ALTER TABLE [dbo].[ProductMainCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductMainCategory_Account] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[ProductMainCategory] CHECK CONSTRAINT [FK_ProductMainCategory_Account]
GO
ALTER TABLE [dbo].[ProductWisList]  WITH CHECK ADD FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO
ALTER TABLE [dbo].[ProductWisList]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Property]  WITH CHECK ADD  CONSTRAINT [FK_Property_Account] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Property] CHECK CONSTRAINT [FK_Property_Account]
GO
ALTER TABLE [dbo].[Property]  WITH CHECK ADD  CONSTRAINT [FK_Property_PropertyMainCategory] FOREIGN KEY([PropertyCategoryID])
REFERENCES [dbo].[PropertyCategory] ([PropertyCategoryID])
GO
ALTER TABLE [dbo].[Property] CHECK CONSTRAINT [FK_Property_PropertyMainCategory]
GO
ALTER TABLE [dbo].[PropertyCategory]  WITH CHECK ADD  CONSTRAINT [FK_PropertyMainCategory_Account] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[PropertyCategory] CHECK CONSTRAINT [FK_PropertyMainCategory_Account]
GO
ALTER TABLE [dbo].[PropertyProduct]  WITH CHECK ADD  CONSTRAINT [FK_PropertyProduct_Account] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[PropertyProduct] CHECK CONSTRAINT [FK_PropertyProduct_Account]
GO
ALTER TABLE [dbo].[PropertyProduct]  WITH CHECK ADD  CONSTRAINT [FK_PropertyProduct_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PropertyProduct] CHECK CONSTRAINT [FK_PropertyProduct_Product]
GO
ALTER TABLE [dbo].[PropertyProduct]  WITH CHECK ADD  CONSTRAINT [FK_PropertyProduct_Property] FOREIGN KEY([PropertyID])
REFERENCES [dbo].[Property] ([PropertyID])
GO
ALTER TABLE [dbo].[PropertyProduct] CHECK CONSTRAINT [FK_PropertyProduct_Property]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Account] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Account]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_StaffCategory] FOREIGN KEY([StaffCategoryID])
REFERENCES [dbo].[StaffCategory] ([StaffCategoryID])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_StaffCategory]
GO
ALTER TABLE [dbo].[StaffCategory]  WITH CHECK ADD  CONSTRAINT [FK_StaffCategory_Account] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[StaffCategory] CHECK CONSTRAINT [FK_StaffCategory_Account]
GO
ALTER TABLE [dbo].[StaffCategory]  WITH CHECK ADD  CONSTRAINT [FK_StaffCategory_StaffMainCategory] FOREIGN KEY([StaffMainCategoryID])
REFERENCES [dbo].[StaffMainCategory] ([StaffMainCategoryID])
GO
ALTER TABLE [dbo].[StaffCategory] CHECK CONSTRAINT [FK_StaffCategory_StaffMainCategory]
GO
ALTER TABLE [dbo].[StaffMainCategory]  WITH CHECK ADD  CONSTRAINT [FK_StaffMainCategory_Account] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[StaffMainCategory] CHECK CONSTRAINT [FK_StaffMainCategory_Account]
GO
