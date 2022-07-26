USE [project_prj301_2]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 03/24/2022 15:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[account_id] [int] NULL,
	[phone_number] [varchar](50) NOT NULL,
	[email] [nvarchar](50) NULL,
	[address] [nvarchar](50) NOT NULL,
	[note] [nvarchar](50) NULL,
	[status] [varchar](1) NOT NULL,
	[total_money] [float] NOT NULL,
	[Date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT [dbo].[Order] ([id], [fullname], [account_id], [phone_number], [email], [address], [note], [status], [total_money], [Date]) VALUES (1, N'hao', 0, N'3434', N'haonphe153346@fpt.edu.vn', N'3434', N'434', N'1', 45, CAST(0xB6430B00 AS Date))
INSERT [dbo].[Order] ([id], [fullname], [account_id], [phone_number], [email], [address], [note], [status], [total_money], [Date]) VALUES (2, N'test', 0, N'43434', N'test@email', N'Nghe An ese', N'ship nhanh dkm', N'1', 888, CAST(0xB6430B00 AS Date))
INSERT [dbo].[Order] ([id], [fullname], [account_id], [phone_number], [email], [address], [note], [status], [total_money], [Date]) VALUES (3, N'ngungungu', 0, N'54545', N'ngungungu@email', N'Tan Ky City', N'nhanh len ma oi', N'2', 555, CAST(0xB6430B00 AS Date))
INSERT [dbo].[Order] ([id], [fullname], [account_id], [phone_number], [email], [address], [note], [status], [total_money], [Date]) VALUES (4, N'admin test', 0, N'098417248241', N'test@email', N'Nghe AN VInh Ha NOi Citi', N'ship nhanhn len di', N'1', 71, CAST(0xB6430B00 AS Date))
INSERT [dbo].[Order] ([id], [fullname], [account_id], [phone_number], [email], [address], [note], [status], [total_money], [Date]) VALUES (5, N'Hao dep trai', 2, N'09847747', N'hao@email', N'haoaddress', N'nhanh e', N'1', 2000, CAST(0xB6430B00 AS Date))
INSERT [dbo].[Order] ([id], [fullname], [account_id], [phone_number], [email], [address], [note], [status], [total_money], [Date]) VALUES (6, N'Hao dep trai', 2, N'09598533', N'hao@email', N'haoaddress', N'nhanh len e oi', N'1', 500, CAST(0xB5430B00 AS Date))
INSERT [dbo].[Order] ([id], [fullname], [account_id], [phone_number], [email], [address], [note], [status], [total_money], [Date]) VALUES (7, N'A new order', 0, N'434343', N'hao@email', N'haodddd', N'nhanhkkkk', N'2', 3200, CAST(0xB4430B00 AS Date))
INSERT [dbo].[Order] ([id], [fullname], [account_id], [phone_number], [email], [address], [note], [status], [total_money], [Date]) VALUES (8, N'testorrder', 0, N'443434343', N'admin@admin', N'nghe an dđ', N'333333', N'2', 600, CAST(0xB3430B00 AS Date))
INSERT [dbo].[Order] ([id], [fullname], [account_id], [phone_number], [email], [address], [note], [status], [total_money], [Date]) VALUES (9, N'test order', 0, N'4343434', N'adminadmin', N'nghe an dkkk', N'4555555', N'0', 1200, CAST(0xB2430B00 AS Date))
INSERT [dbo].[Order] ([id], [fullname], [account_id], [phone_number], [email], [address], [note], [status], [total_money], [Date]) VALUES (10, N'checkout', 0, N'34034349', N'check@admon', N'4434343', N'43434343', N'0', 369, CAST(0xB6430B00 AS Date))
INSERT [dbo].[Order] ([id], [fullname], [account_id], [phone_number], [email], [address], [note], [status], [total_money], [Date]) VALUES (11, N'order nao', 2, N'43434343', N'admintest', N'nghe an haha', N'3434343', N'0', 6000, CAST(0xB1430B00 AS Date))
INSERT [dbo].[Order] ([id], [fullname], [account_id], [phone_number], [email], [address], [note], [status], [total_money], [Date]) VALUES (12, N'order hehe ', 0, N'4343434', N'admin', N'admin nghe an', N'434343443', N'1', 4000, CAST(0xB0430B00 AS Date))
INSERT [dbo].[Order] ([id], [fullname], [account_id], [phone_number], [email], [address], [note], [status], [total_money], [Date]) VALUES (14, N'order kokoko', 0, N'nvnvnvnv', N'nnvnvnv', N'vnnvvnnv', N'3434343', N'0', 2300, CAST(0xAF430B00 AS Date))
INSERT [dbo].[Order] ([id], [fullname], [account_id], [phone_number], [email], [address], [note], [status], [total_money], [Date]) VALUES (15, N'name', 0, N'0304923', N'mail@dd', N'2423423', N'4242342', N'2', 83, CAST(0xB6430B00 AS Date))
INSERT [dbo].[Order] ([id], [fullname], [account_id], [phone_number], [email], [address], [note], [status], [total_money], [Date]) VALUES (16, N'cccc', 0, N'242323', N'cccc@ff', N'42343', N'4324', N'0', 35, CAST(0xB6430B00 AS Date))
INSERT [dbo].[Order] ([id], [fullname], [account_id], [phone_number], [email], [address], [note], [status], [total_money], [Date]) VALUES (17, N'haodev', 0, N'haodev', N'haodev@haodev', N'haodev', N'haodev', N'0', 30, CAST(0xB6430B00 AS Date))
SET IDENTITY_INSERT [dbo].[Order] OFF
/****** Object:  Table [dbo].[DailyReport]    Script Date: 03/24/2022 15:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyReport](
	[non_customer] [int] NULL,
	[customer] [int] NULL,
	[Date] [date] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[DailyReport] ([non_customer], [customer], [Date]) VALUES (1200, 1500, CAST(0xB6430B00 AS Date))
INSERT [dbo].[DailyReport] ([non_customer], [customer], [Date]) VALUES (500, 800, CAST(0xB5430B00 AS Date))
INSERT [dbo].[DailyReport] ([non_customer], [customer], [Date]) VALUES (250, 263, CAST(0xB4430B00 AS Date))
INSERT [dbo].[DailyReport] ([non_customer], [customer], [Date]) VALUES (1100, 500, CAST(0xB3430B00 AS Date))
INSERT [dbo].[DailyReport] ([non_customer], [customer], [Date]) VALUES (741, 789, CAST(0xB2430B00 AS Date))
INSERT [dbo].[DailyReport] ([non_customer], [customer], [Date]) VALUES (550, 202, CAST(0xB1430B00 AS Date))
INSERT [dbo].[DailyReport] ([non_customer], [customer], [Date]) VALUES (512, 345, CAST(0xB0430B00 AS Date))
/****** Object:  Table [dbo].[Category]    Script Date: 03/24/2022 15:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] NOT NULL,
	[category_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (1, N'Thơm')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (2, N'Bấm vị')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (3, N'Nguyên bản')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (4, N'Cigar')
/****** Object:  Table [dbo].[Users]    Script Date: 03/24/2022 15:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[users_id] [int] NOT NULL,
	[users_name] [varchar](30) NOT NULL,
	[users_password] [varchar](30) NOT NULL,
	[users_email] [varchar](50) NOT NULL,
	[users_phone] [varchar](10) NOT NULL,
	[users_address] [varchar](100) NOT NULL,
	[users_role] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[users_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Users] ([users_id], [users_name], [users_password], [users_email], [users_phone], [users_address], [users_role]) VALUES (1, N'admin', N'admin', N'admin@admin', N'0123456789', N'DH', 1)
INSERT [dbo].[Users] ([users_id], [users_name], [users_password], [users_email], [users_phone], [users_address], [users_role]) VALUES (2, N'test', N'test', N'test@test', N'012345693', N'nghe an', 0)
INSERT [dbo].[Users] ([users_id], [users_name], [users_password], [users_email], [users_phone], [users_address], [users_role]) VALUES (3, N'aaa', N'aaa', N'aaa@ddd', N'aaa', N'aaa', 0)
/****** Object:  Table [dbo].[Product]    Script Date: 03/24/2022 15:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [int] NOT NULL,
	[product_name] [varchar](50) NOT NULL,
	[product_price] [float] NOT NULL,
	[product_quanlity] [int] NOT NULL,
	[product_image] [varchar](50) NOT NULL,
	[category_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (1, N'Black Devil', 10, 500, N'black_devil.png', 1)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (2, N'Lucky Strikes', 20, 500, N'lucky_strikes.png', 2)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (3, N'Chapman Coffe', 15, 100, N'chapmancoffe.png', 1)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (4, N'Mond Blue Berry', 99, 50, N'mondblueberry.png', 2)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (5, N'Marula', 23, 40, N'marula.png', 2)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (6, N'Raison Ice Café', 26, 52, N'raison_ice_cafe.png', 2)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (7, N'Africa Random', 22, 43, N'afica_random_5.png', 2)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (8, N'Raison French Yogo', 99, 95, N'raison_french_yogo.png', 2)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (9, N'Cohiba', 12, 44, N'cohiba.png', 3)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (10, N'Zouk ', 21, 24, N'zouk.png', 1)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (11, N'Cayoun', 14, 55, N'cayoun.png', 1)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (12, N'Forte', 10, 77, N'forte.png', 3)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (13, N'Africe Ice Jack', 48, 99, N'africe_ice_jack.png', 2)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (14, N'Raison Sun Presso', 88, 88, N'raison_sun_presso.png', 2)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (15, N'Cayoun Double Blast', 24, 74, N'cayoun_double_blast.png', 2)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (16, N'Esse Change', 31, 47, N'esse_change.png', 2)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (18, N'Esse Double Wine', 53, 54, N'esse_double_wine.png', 2)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (19, N'Africa Rula', 69, 66, N'africa_rula.png', 2)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (20, N'Lucky Double Wine', 47, 77, N'lucky_double_wine.png', 2)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (21, N'Capri', 21, 66, N'capri.png', 1)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (22, N'Chapman Vani', 15, 44, N'chapman_vani.png', 1)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (23, N'Chapman Cherry', 15, 55, N'chapman_cherry.png', 1)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (24, N'Mond Applemint', 64, 77, N'mond_applemint.png', 2)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (25, N'BBcc', 26, 26, N'26', 3)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (26, N'a', 25, 35, N'25', 1)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (28, N'hao', 22, 22, N'22', 2)
INSERT [dbo].[Product] ([product_id], [product_name], [product_price], [product_quanlity], [product_image], [category_id]) VALUES (500, N'name', 444, 44, N'44', 3)
/****** Object:  Table [dbo].[Order_Details]    Script Date: 03/24/2022 15:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[price] [float] NULL,
	[num] [int] NULL,
	[total_number] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order_Details] ON
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_number]) VALUES (1, 1, 2, 20, 1, 20)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_number]) VALUES (2, 1, 3, 15, 1, 15)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_number]) VALUES (3, 1, 1, 10, 1, 10)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_number]) VALUES (4, 4, 1, 10, 1, 10)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_number]) VALUES (5, 4, 2, 20, 1, 20)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_number]) VALUES (6, 4, 3, 15, 1, 15)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_number]) VALUES (7, 4, 6, 26, 1, 26)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_number]) VALUES (8, 10, 8, 99, 3, 297)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_number]) VALUES (9, 10, 2, 20, 2, 40)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_number]) VALUES (10, 10, 1, 10, 1, 10)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_number]) VALUES (11, 10, 7, 22, 1, 22)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_number]) VALUES (12, 4, 2, 15, 4, 40)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_number]) VALUES (13, 15, 1, 10, 2, 20)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_number]) VALUES (14, 15, 2, 20, 2, 40)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_number]) VALUES (15, 15, 5, 23, 1, 23)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_number]) VALUES (16, 16, 2, 20, 1, 20)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_number]) VALUES (17, 16, 3, 15, 1, 15)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_number]) VALUES (18, 17, 3, 15, 2, 30)
SET IDENTITY_INSERT [dbo].[Order_Details] OFF
/****** Object:  ForeignKey [FK__Order_Det__order__571DF1D5]    Script Date: 03/24/2022 15:20:42 ******/
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([id])
GO
/****** Object:  ForeignKey [FK__Order_Det__produ__5812160E]    Script Date: 03/24/2022 15:20:42 ******/
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
/****** Object:  ForeignKey [FK__Product__categor__08EA5793]    Script Date: 03/24/2022 15:20:42 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([category_id])
GO
