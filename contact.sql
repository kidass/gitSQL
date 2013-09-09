drop table [Customer_B_ContactRecord]
drop table [Customer_B_Info]
drop table [Customer_B_Company]
drop table [Customer_B_CompanyInfo]
drop table [Customer_B_Tag]
drop table [Customer_B_Deal]
--������¼��ID,�ͻ�ID,������ID,���ڣ��������ݣ��´�ʱ�䣬�´�����
CREATE TABLE [dbo].[Customer_B_ContactRecord](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] int  not NULL,
	[StaffID] [varchar](50) not NULL,
	[StaffName] [varchar](50) not NULL,	
	[ContactDate] [datetime] NULL,
	[ContactRecord] [varchar](1500)  NULL DEFAULT (''),
	[NextContactDate] [datetime] NULL,
	[NextContactRecord] [varchar](1500)  NULL DEFAULT (''),
	[CreatDate] [datetime] NULL,
 CONSTRAINT [PK_Customer_B_ContactRecord] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

--�ͻ�������ID����������ǩ����˾ID,��˾���ƣ����ţ��绰����ַ��������
CREATE TABLE [dbo].[Customer_B_Info](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](50)  NULL DEFAULT (''),
	[StaffID] [varchar](50) not NULL,
	[TagTitle] [varchar](50)  NULL DEFAULT (''),
	[CompanyID] int  NULL,
	[CompanyName] [varchar](100)  NULL DEFAULT (''),
	[Department] [varchar](100) NULL,
	[PhoneNumber] [varchar](100)  NULL DEFAULT (''),
	[Address] [varchar](100)  NULL DEFAULT (''),
	[BackGroundInfo] [varchar](1000)  NULL DEFAULT (''),
	[CreatDate] [datetime] NULL,
 CONSTRAINT [PK_Customer_B_Info] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

--��˾����˾ID,��˾����
CREATE TABLE [dbo].[Customer_B_Company](
	[CompanyID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName][varchar](50) not NULL,
	[CreatDate] [datetime] NULL,
 CONSTRAINT [PK_Customer_B_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

--��˾��Ϣ����˾ID����˾��Ϣ,��������
CREATE TABLE [dbo].[Customer_B_CompanyInfo](
	[CompanyID] [int]  NOT NULL,
	[CompanyInfo][varchar](1500) not NULL,
	[CreatDate] [datetime] NULL,
 CONSTRAINT [PK_Customer_B_CompanyInfo] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

--��ǩ��ID,��˾ID���ͻ�ID����ǩ����
CREATE TABLE [dbo].[Customer_B_Tag](
	[TagID] [int] IDENTITY(1,1) NOT NULL,
	[StaffID] [varchar](50) not NULL,
	[CompanyID] [int]   NULL,
	[CustomerID]int NULL,
	[TagName] varchar(50) NULL default(''),
	[CreatDate] [datetime] NULL,
 CONSTRAINT [PK_Customer_B_Tag] PRIMARY KEY CLUSTERED 
(
	[TagID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

--���ױ�ID����˾ID���ͻ�ID,���֣������������
CREATE TABLE [dbo].[Customer_B_Deal](
	[DealID] [int] IDENTITY(1,1) NOT NULL,
	[StaffID] [varchar](50) not NULL,
	[CompanyID] [int]   NULL,
	[CustomerID]int NULL,
	[DealName] varchar(50) NULL default(''),
	[DealInfo] varchar(1500) NULL default(''),
	[DealMoney] [numeric](16, 2) NULL DEFAULT (0),
	[DealCategory] varchar(50) NULL default(''),
	[DealDate] [datetime] NULL,
	[CreatDate] [datetime] NULL,
 CONSTRAINT [PK_Customer_B_Deal] PRIMARY KEY CLUSTERED 
(
	[DealID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
