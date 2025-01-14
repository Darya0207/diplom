USE [master]
GO
CREATE DATABASE [koleso]
GO
USE [koleso]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cars](
	[carId] [int] IDENTITY(1,1) NOT NULL,
	[mark] [nvarchar](50) NOT NULL,
	[model] [nvarchar](50) NOT NULL,
	[year] [int] NOT NULL,
	[color] [nvarchar](50) NOT NULL,
	[clientId] [int] NOT NULL,
 CONSTRAINT [PK_cars] PRIMARY KEY CLUSTERED 
(
	[carId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cartSerivce](
	[cartId] [int] NOT NULL,
	[serviceId] [int] NOT NULL,
	[clientId] [int] NOT NULL,
 CONSTRAINT [PK_cartSerivce] PRIMARY KEY CLUSTERED 
(
	[cartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [clients](
	[clientId] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [nvarchar](50) NOT NULL,
	[lastName] [nvarchar](50) NOT NULL,
	[surName] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](18) NOT NULL,
 CONSTRAINT [PK_clients] PRIMARY KEY CLUSTERED 
(
	[clientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Marks](
	[markId] [int] NOT NULL,
	[markName] [nvarchar](20) NOT NULL,
	[image] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Marks] PRIMARY KEY CLUSTERED 
(
	[markId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [roles](
	[roleId] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [serviceRequests](
	[serviceRequestId] [int] IDENTITY(1,1) NOT NULL,
	[serviceId] [int] NOT NULL,
	[clientId] [int] NOT NULL,
	[workerId] [int] NOT NULL,
	[carId] [int] NOT NULL,
	[statusId] [int] NOT NULL,
	[dateStart] [date] NOT NULL,
	[dateEnd] [date] NULL,
	[notes] [nvarchar](200) NULL,
 CONSTRAINT [PK_serviceRequests] PRIMARY KEY CLUSTERED 
(
	[serviceRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [servicesList](
	[serviceId] [int] IDENTITY(1,1) NOT NULL,
	[serviceName] [nvarchar](50) NOT NULL,
	[description] [nvarchar](150) NOT NULL,
	[cost] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_servicesList] PRIMARY KEY CLUSTERED 
(
	[serviceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [statusList](
	[statusId] [int] IDENTITY(1,1) NOT NULL,
	[statusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_statusList] PRIMARY KEY CLUSTERED 
(
	[statusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [users](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[roleId] [int] NOT NULL,
	[workerId] [int] NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [workers](
	[workerId] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [nvarchar](50) NOT NULL,
	[lastName] [nvarchar](50) NOT NULL,
	[surName] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](18) NOT NULL,
	[jobTitle] [nvarchar](50) NOT NULL,
	[sallary] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_workers] PRIMARY KEY CLUSTERED 
(
	[workerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [cars] ON 

INSERT [cars] ([carId], [mark], [model], [year], [color], [clientId]) VALUES (1, N'Toyota', N'Corolla', 2018, N'Серебристый', 1)
INSERT [cars] ([carId], [mark], [model], [year], [color], [clientId]) VALUES (2, N'Ford', N'Focus', 2019, N'Синий', 2)
INSERT [cars] ([carId], [mark], [model], [year], [color], [clientId]) VALUES (3, N'Volkswagen', N'Golf', 2020, N'Черный', 3)
INSERT [cars] ([carId], [mark], [model], [year], [color], [clientId]) VALUES (4, N'BMW', N'X5', 2017, N'Белый', 4)
SET IDENTITY_INSERT [cars] OFF
GO
SET IDENTITY_INSERT [clients] ON 

INSERT [clients] ([clientId], [firstName], [lastName], [surName], [email], [phone]) VALUES (1, N'Иван', N'Иванов', N'Иванович', N'ivanov@mail.com', N'+7 (111) 111-11-11')
INSERT [clients] ([clientId], [firstName], [lastName], [surName], [email], [phone]) VALUES (2, N'Петр', N'Петров', N'Петрович', N'petrov@mail.com', N'+7 (222) 222-22-22')
INSERT [clients] ([clientId], [firstName], [lastName], [surName], [email], [phone]) VALUES (3, N'Мария', N'Сидорова', N'Павловна', N'sidorova@mail.com', N'+7 (333) 333-33-33')
INSERT [clients] ([clientId], [firstName], [lastName], [surName], [email], [phone]) VALUES (4, N'Алексей', N'Козлов', N'Игоревич', N'kozlov@mail.com', N'+7 (444) 444-44-44')
INSERT [clients] ([clientId], [firstName], [lastName], [surName], [email], [phone]) VALUES (5, N'Еленаs', N'Никитинаs', N'Алексеевнаs', N'nikitina@mail.coms', N'+7 (555) 555-55-55')
SET IDENTITY_INSERT [clients] OFF
GO
SET IDENTITY_INSERT [roles] ON 

INSERT [roles] ([roleId], [roleName]) VALUES (1, N'Администратор')
INSERT [roles] ([roleId], [roleName]) VALUES (2, N'Механик')
INSERT [roles] ([roleId], [roleName]) VALUES (3, N'Менеджер')
INSERT [roles] ([roleId], [roleName]) VALUES (4, N'Бухгалтер')
INSERT [roles] ([roleId], [roleName]) VALUES (5, N'Клиент')
SET IDENTITY_INSERT [roles] OFF
GO
SET IDENTITY_INSERT [serviceRequests] ON 

INSERT [serviceRequests] ([serviceRequestId], [serviceId], [clientId], [workerId], [carId], [statusId], [dateStart], [dateEnd], [notes]) VALUES (1, 1, 1, 5, 1, 1, CAST(N'2024-02-01' AS Date), CAST(N'2024-02-02' AS Date), N'Плановое ТО')
INSERT [serviceRequests] ([serviceRequestId], [serviceId], [clientId], [workerId], [carId], [statusId], [dateStart], [dateEnd], [notes]) VALUES (2, 2, 2, 1, 2, 2, CAST(N'2024-02-03' AS Date), CAST(N'2024-02-05' AS Date), N'Ремонт двигателя')
INSERT [serviceRequests] ([serviceRequestId], [serviceId], [clientId], [workerId], [carId], [statusId], [dateStart], [dateEnd], [notes]) VALUES (3, 3, 3, 2, 3, 1, CAST(N'2024-02-06' AS Date), CAST(N'2024-02-07' AS Date), N'Замена тормозных колодок')
INSERT [serviceRequests] ([serviceRequestId], [serviceId], [clientId], [workerId], [carId], [statusId], [dateStart], [dateEnd], [notes]) VALUES (4, 4, 4, 3, 4, 3, CAST(N'2024-02-08' AS Date), CAST(N'2024-02-09' AS Date), N'Шиномонтаж')
SET IDENTITY_INSERT [serviceRequests] OFF
GO
SET IDENTITY_INSERT [servicesList] ON 

INSERT [servicesList] ([serviceId], [serviceName], [description], [cost]) VALUES (1, N'Замена масла', N'Замена масла и масляного фильтра', CAST(2000 AS Decimal(18, 0)))
INSERT [servicesList] ([serviceId], [serviceName], [description], [cost]) VALUES (2, N'Ремонт двигателя', N'Диагностика и ремонт двигателя', CAST(10000 AS Decimal(18, 0)))
INSERT [servicesList] ([serviceId], [serviceName], [description], [cost]) VALUES (3, N'Замена тормозных колодок', N'Замена передних и задних тормозных колодок', CAST(3000 AS Decimal(18, 0)))
INSERT [servicesList] ([serviceId], [serviceName], [description], [cost]) VALUES (4, N'Шиномонтаж', N'Балансировка и замена шин', CAST(4000 AS Decimal(18, 0)))
INSERT [servicesList] ([serviceId], [serviceName], [description], [cost]) VALUES (5, N'Техническое обслуживание', N'Полная диагностика и обслуживание автомобиля', CAST(1500 AS Decimal(18, 0)))
SET IDENTITY_INSERT [servicesList] OFF
GO
SET IDENTITY_INSERT [statusList] ON 

INSERT [statusList] ([statusId], [statusName]) VALUES (1, N'В обработке')
INSERT [statusList] ([statusId], [statusName]) VALUES (2, N'Выполнено')
INSERT [statusList] ([statusId], [statusName]) VALUES (3, N'Отменено')
INSERT [statusList] ([statusId], [statusName]) VALUES (4, N'В ожидании')
SET IDENTITY_INSERT [statusList] OFF
GO
SET IDENTITY_INSERT [users] ON 

INSERT [users] ([userId], [roleId], [workerId], [login], [password]) VALUES (2, 1, 1, N'admin', N'admin')
INSERT [users] ([userId], [roleId], [workerId], [login], [password]) VALUES (3, 2, 2, N'mechanic', N'mechanic')
INSERT [users] ([userId], [roleId], [workerId], [login], [password]) VALUES (4, 3, 3, N'manager', N'manager')
INSERT [users] ([userId], [roleId], [workerId], [login], [password]) VALUES (5, 4, 4, N'accountant', N'accountant')
SET IDENTITY_INSERT [users] OFF
GO
SET IDENTITY_INSERT [workers] ON 

INSERT [workers] ([workerId], [firstName], [lastName], [surName], [email], [phone], [jobTitle], [sallary]) VALUES (1, N'Александр', N'Смирнов', N'Петрович', N'smirnov@mail.com', N'+7 (666) 666-66-66', N'Мастер', CAST(30000 AS Decimal(18, 0)))
INSERT [workers] ([workerId], [firstName], [lastName], [surName], [email], [phone], [jobTitle], [sallary]) VALUES (2, N'Евгений', N'Кузнецов', N'Игоревич', N'kuznetsov@mail.com', N'+7 (777) 777-77-77', N'Механик', CAST(25000 AS Decimal(18, 0)))
INSERT [workers] ([workerId], [firstName], [lastName], [surName], [email], [phone], [jobTitle], [sallary]) VALUES (3, N'Ольга', N'Иванова', N'Александровна', N'ivanova@mail.com', N'+7 (888) 888-88-88', N'Менеджер', CAST(35000 AS Decimal(18, 0)))
INSERT [workers] ([workerId], [firstName], [lastName], [surName], [email], [phone], [jobTitle], [sallary]) VALUES (4, N'Дмитрий', N'Соколов', N'Дмитриевич', N'sokolov@mail.com', N'+7 (999) 999-99-99', N'Механик', CAST(26000 AS Decimal(18, 0)))
INSERT [workers] ([workerId], [firstName], [lastName], [surName], [email], [phone], [jobTitle], [sallary]) VALUES (5, N'Татьяна', N'Лебедева', N'Андреевна', N'lebedeva@mail.com', N'+7 (101) 101-01-01', N'Бухгалтер', CAST(42000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [workers] OFF
GO
ALTER TABLE [cars]  WITH CHECK ADD  CONSTRAINT [FK_cars_clients] FOREIGN KEY([clientId])
REFERENCES [clients] ([clientId])
GO
ALTER TABLE [cars] CHECK CONSTRAINT [FK_cars_clients]
GO
ALTER TABLE [cartSerivce]  WITH CHECK ADD  CONSTRAINT [FK_cartSerivce_clients] FOREIGN KEY([clientId])
REFERENCES [clients] ([clientId])
GO
ALTER TABLE [cartSerivce] CHECK CONSTRAINT [FK_cartSerivce_clients]
GO
ALTER TABLE [cartSerivce]  WITH CHECK ADD  CONSTRAINT [FK_cartSerivce_servicesList] FOREIGN KEY([serviceId])
REFERENCES [servicesList] ([serviceId])
GO
ALTER TABLE [cartSerivce] CHECK CONSTRAINT [FK_cartSerivce_servicesList]
GO
ALTER TABLE [serviceRequests]  WITH CHECK ADD  CONSTRAINT [FK_serviceRequests_cars] FOREIGN KEY([carId])
REFERENCES [cars] ([carId])
GO
ALTER TABLE [serviceRequests] CHECK CONSTRAINT [FK_serviceRequests_cars]
GO
ALTER TABLE [serviceRequests]  WITH CHECK ADD  CONSTRAINT [FK_serviceRequests_clients] FOREIGN KEY([clientId])
REFERENCES [clients] ([clientId])
GO
ALTER TABLE [serviceRequests] CHECK CONSTRAINT [FK_serviceRequests_clients]
GO
ALTER TABLE [serviceRequests]  WITH CHECK ADD  CONSTRAINT [FK_serviceRequests_servicesList] FOREIGN KEY([serviceId])
REFERENCES [servicesList] ([serviceId])
GO
ALTER TABLE [serviceRequests] CHECK CONSTRAINT [FK_serviceRequests_servicesList]
GO
ALTER TABLE [serviceRequests]  WITH CHECK ADD  CONSTRAINT [FK_serviceRequests_statusList] FOREIGN KEY([statusId])
REFERENCES [statusList] ([statusId])
GO
ALTER TABLE [serviceRequests] CHECK CONSTRAINT [FK_serviceRequests_statusList]
GO
ALTER TABLE [serviceRequests]  WITH CHECK ADD  CONSTRAINT [FK_serviceRequests_workers] FOREIGN KEY([workerId])
REFERENCES [workers] ([workerId])
GO
ALTER TABLE [serviceRequests] CHECK CONSTRAINT [FK_serviceRequests_workers]
GO
ALTER TABLE [users]  WITH CHECK ADD  CONSTRAINT [FK_users_roles] FOREIGN KEY([roleId])
REFERENCES [roles] ([roleId])
GO
ALTER TABLE [users] CHECK CONSTRAINT [FK_users_roles]
GO
ALTER TABLE [users]  WITH CHECK ADD  CONSTRAINT [FK_users_workers] FOREIGN KEY([workerId])
REFERENCES [workers] ([workerId])
GO
ALTER TABLE [users] CHECK CONSTRAINT [FK_users_workers]
GO
USE [master]
GO
ALTER DATABASE [koleso] SET  READ_WRITE 
GO
