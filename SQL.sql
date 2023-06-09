USE [I2021_G1]
GO
/****** Object:  Table [dbo].[Artigos]    Script Date: 4/29/2023 4:53:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artigos](
	[Cod_Artigo] [nvarchar](5) NOT NULL,
	[Cod_Categoria] [nvarchar](6) NOT NULL,
	[Cod_Sub_Categoria] [nvarchar](9) NOT NULL,
	[Designacao] [nvarchar](60) NOT NULL,
	[Descricao] [nvarchar](1000) NULL,
	[Stock] [int] NOT NULL,
	[Tipo_IVA] [nvarchar](4) NOT NULL,
	[Preco_Compra] [decimal](12, 2) NOT NULL,
	[Preco_Venda] [decimal](12, 2) NOT NULL,
	[Desconto] [int] NOT NULL,
	[Imagem1] [nvarchar](50) NOT NULL,
	[Imagem2] [nvarchar](50) NOT NULL,
	[Imagem3] [nvarchar](50) NOT NULL,
	[FLG_Ativo] [bit] NOT NULL,
 CONSTRAINT [PK_Artigos] PRIMARY KEY CLUSTERED 
(
	[Cod_Artigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 4/29/2023 4:53:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[Cod_Categoria] [nvarchar](6) NOT NULL,
	[Designacao] [nvarchar](30) NOT NULL,
	[Imagem] [nvarchar](50) NULL,
	[FLG_Ativo] [bit] NOT NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[Cod_Categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doc]    Script Date: 4/29/2023 4:53:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doc](
	[Num_Doc] [nvarchar](11) NOT NULL,
	[FLG_Tipo_Doc] [nvarchar](3) NOT NULL,
	[Cod_Entidade] [nvarchar](8) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Data_Doc] [smalldatetime] NOT NULL,
	[Tipo_Pagamento] [nvarchar](30) NOT NULL,
	[FLG_Ativo] [bit] NOT NULL,
 CONSTRAINT [PK_Doc] PRIMARY KEY CLUSTERED 
(
	[Num_Doc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresas]    Script Date: 4/29/2023 4:53:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresas](
	[Cod_Empresa] [nvarchar](1) NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
	[Endereco] [nvarchar](50) NOT NULL,
	[Pais] [nvarchar](30) NOT NULL,
	[Cod_Postal] [nvarchar](8) NOT NULL,
	[Localidade] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Num_Telefone] [nvarchar](9) NOT NULL,
	[Capital_Social] [nvarchar](14) NOT NULL,
	[Registo_Comercial] [nvarchar](30) NOT NULL,
	[Matricula_CRC] [nvarchar](20) NOT NULL,
	[NIF] [nvarchar](9) NOT NULL,
	[Contador_Clientes] [smallint] NOT NULL,
	[Contador_Fornecedores] [smallint] NOT NULL,
	[Contador_Operadores] [smallint] NOT NULL,
	[Contador_Administradores] [smallint] NOT NULL,
	[Contador_Artigos] [smallint] NOT NULL,
	[Contador_IVA] [smallint] NOT NULL,
	[Contador_Categorias] [smallint] NOT NULL,
	[Contador_Sub_Categorias] [smallint] NOT NULL,
	[Contador_Tipos_Pagamento] [smallint] NOT NULL,
	[Ano_Trabalho] [nvarchar](4) NOT NULL,
	[FLG_Ativo] [bit] NOT NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[Cod_Empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entidades]    Script Date: 4/29/2023 4:53:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entidades](
	[Cod_Entidade] [int] IDENTITY(1,1) NOT NULL,
	[FLG_Entidade] [nvarchar](1) NOT NULL,
	[Nome] [nvarchar](80) NOT NULL,
	[Cod_Pais] [nvarchar](2) NOT NULL,
	[Num_Telefone] [nvarchar](9) NOT NULL,
	[Num_Telemovel] [nvarchar](9) NOT NULL,
	[Email] [nvarchar](80) NOT NULL,
	[NIF] [nvarchar](9) NULL,
	[Data_Registo] [smalldatetime] NOT NULL,
	[Utilizador] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](45) NOT NULL,
	[FLG_Ativo] [bit] NOT NULL,
 CONSTRAINT [PK_Cod_entidade2] PRIMARY KEY CLUSTERED 
(
	[Cod_Entidade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IVA]    Script Date: 4/29/2023 4:53:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IVA](
	[Cod_IVA] [nvarchar](3) NOT NULL,
	[Taxa_IVA] [smallint] NULL,
	[Tipo_IVA] [nvarchar](1) NULL,
	[Designacao] [nvarchar](30) NULL,
	[FLG_Ativo] [bit] NULL,
 CONSTRAINT [PK_Tab_IVA] PRIMARY KEY CLUSTERED 
(
	[Cod_IVA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Linhas]    Script Date: 4/29/2023 4:53:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Linhas](
	[ID_Linhas] [smallint] IDENTITY(1,1) NOT NULL,
	[Num_Doc] [nvarchar](11) NOT NULL,
	[Num_Linha] [smallint] NOT NULL,
	[Cod_Artigo] [nvarchar](8) NOT NULL,
	[Quantidade] [smallint] NOT NULL,
	[P_Unitario] [decimal](10, 2) NOT NULL,
	[Taxa_Iva] [smallint] NOT NULL,
	[P_Final] [decimal](10, 2) NOT NULL,
	[Taxa_Desconto] [nvarchar](3) NOT NULL,
	[FLG_Ativo] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Linhas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 4/29/2023 4:53:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[Cod_Pais] [nvarchar](2) NOT NULL,
	[Pais] [nvarchar](50) NULL,
	[FLG_Ativo] [bit] NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED 
(
	[Cod_Pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Series]    Script Date: 4/29/2023 4:53:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Series](
	[Cod_Serie] [nvarchar](8) NOT NULL,
	[FLG_Tipo_Doc] [nvarchar](3) NULL,
	[Ano_Trabalho] [nvarchar](4) NULL,
	[Contador] [smallint] NULL,
	[FLG_Ativo] [bit] NULL,
 CONSTRAINT [PK_Series] PRIMARY KEY CLUSTERED 
(
	[Cod_Serie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sub_Categorias]    Script Date: 4/29/2023 4:53:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sub_Categorias](
	[Cod_Sub_Categoria] [nvarchar](9) NOT NULL,
	[Cod_Categoria] [nvarchar](6) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Imagem] [nvarchar](50) NOT NULL,
	[FLG_Ativo] [bit] NOT NULL,
 CONSTRAINT [PK_Sub_Categorias] PRIMARY KEY CLUSTERED 
(
	[Cod_Sub_Categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipos_Doc]    Script Date: 4/29/2023 4:53:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipos_Doc](
	[ID_Tipo_Doc] [timestamp] NOT NULL,
	[FLG_Tipo_Doc] [nvarchar](3) NOT NULL,
	[Designacao] [nvarchar](50) NOT NULL,
	[Descritivo_Impressao] [nvarchar](30) NOT NULL,
	[FLG_ESC] [nvarchar](1) NOT NULL,
	[FLG_DC] [nvarchar](2) NOT NULL,
	[FLG_Entidade] [nvarchar](1) NOT NULL,
	[FLG_Venda] [bit] NOT NULL,
	[FLG_Compra] [bit] NOT NULL,
	[FLG_Stock] [bit] NOT NULL,
	[Cod_Serie] [nvarchar](8) NOT NULL,
	[FLG_Ativo] [bit] NOT NULL,
 CONSTRAINT [PK_TiposDocumentos] PRIMARY KEY CLUSTERED 
(
	[FLG_Tipo_Doc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipos_Pagamento]    Script Date: 4/29/2023 4:53:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipos_Pagamento](
	[Cod_Tipo_Pagamento] [nvarchar](4) NOT NULL,
	[Tipo_Pagamento] [nvarchar](20) NOT NULL,
	[Imagem] [nvarchar](15) NULL,
	[FLG_Ativo] [bit] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0001', N'CATG01', N'SUBCATG01', N'Desktop Lenovo Legion T5 26IAB7-875', N'Fabricante: Lenovo
Memória RAM: 16 GB
Capacidade de armazenamento: 512 GB
Arquitetura de CPU: Alder Lake
Número Núcleos CPU: 6-Core
Série de CPU: Intel Core i5
Motor Gráfico (GPU): GeForce RTX 3060
Processador: Intel Core i5-12400F
Sistema Operativo: Não Incluído (Free DOS)
Tipo de Armazenamento: SSD', 49, N'N', CAST(566.23 AS Decimal(12, 2)), CAST(736.10 AS Decimal(12, 2)), 0, N'A0001_1.jpg', N'A0001_2.jpg', N'A0001_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0002', N'CATG01', N'SUBCATG01', N'Computador Desktop Lenovo Ideacentre Gaming 5 17IAB7-903', N'Fabricante: Lenovo
Memória RAM: 8 GB
Capacidade de armazenamento: 512 GB
Arquitetura de CPU: Alder Lake
Número Núcleos CPU: 6-Core
Série de CPU: Intel Core i5
Motor Gráfico (GPU): GeForce RTX 3060
Processador: Intel Core i5-12400F
Sistema Operativo: Não Incluído (Free DOS)
Tipo de Armazenamento: SSD', 34, N'N', CAST(699.00 AS Decimal(12, 2)), CAST(908.70 AS Decimal(12, 2)), 20, N'A0002_1.jpg', N'A0002_2.jpg', N'A0002_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0003', N'CATG01', N'SUBCATG01', N'Computador Desktop MSI MAG Meta S 5SI-031XIB', N'Fabricante: MSI
Memória RAM: 16 GB
Capacidade de armazenamento: 512 GB
Arquitetura de CPU: Zen 2
Série de CPU: AMD Ryzen 5
Motor Gráfico (GPU): GeForce GTX 1660 SUPER
Processador: AMD Ryzen 5 3600
Sistema Operativo: Não Incluído (Free DOS)
Tipo de Armazenamento: SSD', 37, N'N', CAST(679.00 AS Decimal(12, 2)), CAST(882.70 AS Decimal(12, 2)), 5, N'A0003_1.jpg', N'A0003_2.jpg', N'A0003_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0004', N'CATG01', N'SUBCATG01', N'Computador Victus by HP 15L Gaming Desktop TG02-0026np', N'Fabricante: HP
Memória RAM: 16 GB
Capacidade de armazenamento: 512 GB
Arquitetura de CPU: Zen 3
Série de CPU: AMD Ryzen 7
Motor Gráfico (GPU): GeForce RTX 3060, Radeon Graphics
Processador: AMD Ryzen 7 5700G
Sistema Operativo: Não Incluído (Free DOS)
Tipo de Armazenamento: SSD', 9, N'N', CAST(990.90 AS Decimal(12, 2)), CAST(1288.17 AS Decimal(12, 2)), 0, N'A0004_1.jpg', N'A0004_2.jpg', N'A0004_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0005', N'CATG01', N'SUBCATG02', N'Portátil MSI 17.3" Pulse GL76 12UGK-098XPT', N'Fabricante: MSI
Memória RAM: 16 GB
Arquitetura de CPU: Alder Lake
Número Núcleos CPU: 14-Core
Capacidade de armazenamento: 1 TB
Motor Gráfico (GPU): GeForce RTX 3070 Max-Q
Processador: Intel Core i7-12700H
Taxa de Atualização Ecrã: 360 Hz
Tamanho Ecrã: 17.3"
Resolução: 1920 x 1080 (Full HD)
Série de CPU: Intel Core i7
Sistema Operativo: Não Incluído (Free DOS)', 3, N'N', CAST(1229.90 AS Decimal(12, 2)), CAST(1598.87 AS Decimal(12, 2)), 15, N'A0005_1.jpg', N'A0005_2.jpg', N'A0005_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0006', N'CATG01', N'SUBCATG02', N'Portátil MSI 17" Creator Z17 A12UHST-036PT', N'Processador: Alder Lake i7-12700H(45W)
Memória RAM: 32 GB 4800MHz DDR5  (16GB*2) 
Armazenamento: 1 TB NVMe PCIe Gen4x4
Tela: 17" 16:10 QHD+ 165Hz Touch
Controlador gráfico: RTX3080
Sistema operativo Windows11 Pro', 5, N'N', CAST(3449.99 AS Decimal(12, 2)), CAST(4484.99 AS Decimal(12, 2)), 0, N'A0006_1.jpg', N'A0006_2.jpg', N'A0006_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0007', N'CATG01', N'SUBCATG02', N'Portátil Lenovo Legion 5 (6ª Geração) 15ACH6-255 15.6"', N'Fabricante: Lenovo
Memória RAM: 16 GB
Arquitetura de CPU: Zen 3
Número Núcleos CPU: 8-Core
Capacidade de armazenamento: 512 GB
Motor Gráfico (GPU): GeForce RTX 3070, Radeon Graphics
Processador: AMD Ryzen 7 5800H
Taxa de Atualização Ecrã: 165 Hz
Tamanho Ecrã: 15.6"
Resolução: 1920 x 1080 (Full HD)
Série de CPU: AMD Ryzen 7
Sistema Operativo: Não Incluído ', 12, N'N', CAST(1054.92 AS Decimal(12, 2)), CAST(1371.40 AS Decimal(12, 2)), 0, N'A0007_1.jpg', N'A0007_2.jpg', N'A0007_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0008', N'CATG01', N'SUBCATG03', N'Apple Mac Studio 2022 M1 Ultra Prateado
', N'O Mac Studio é a grande novidade em desktops Mac. Combina um desempenho prodigioso, mais possibilidades de ligação e uma potência inovadora num formato incrivelmente compacto que lhe permite ter um estúdio completo onde quiser. E tudo começa por decidir se prefere o processador M1 Max ultrarrápido ou o novo M1 Ultra, o mais potente de sempre num computador pessoal.', 8, N'N', CAST(3479.73 AS Decimal(12, 2)), CAST(4523.65 AS Decimal(12, 2)), 0, N'A0008_1.jpg', N'A0008_2.jpg', N'A0008_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0009', N'CATG01', N'SUBCATG02', N'Apple MacBook Pro 2021 14.2"M1 Pro Cinzento Sideral', N'Chegou o MacBook Pro mais poderoso de sempre. Tem um gigantesco desempenho e autonomia graças aos processadores ultrarrápidos M1 Pro ou M1 Max, os primeiros concebidos pela Apple a pensar nos profissionais. Depois, conta ainda com um incrível ecrã Liquid Retina XDR e a melhor câmara e som de um portátil Mac, além de todas as portas de que precisa. Este MacBook Pro é verdadeiramente revolucionário e é um colosso.', 19, N'N', CAST(1485.43 AS Decimal(12, 2)), CAST(1931.06 AS Decimal(12, 2)), 0, N'A0009_1.jpg', N'A0009_2.jpg', N'A0009_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0010', N'CATG01', N'SUBCATG03', N'Computador Desktop MSI Creator P100A 10TC-1273ES', N'Fabricante: MSI
Memória RAM: 16 GB
Capacidade de armazenamento: 2 TB, 1 TB
Número Núcleos CPU: 8-Core
Série de CPU: Intel Core i7
Motor Gráfico: GeForce RTX 3060, Intel UHD Graphics 630
Processador: Intel Core i7-10700
Sistema Operativo: Windows 11 Pro
Tipo de Armazenamento: HDD, SSD', 4, N'N', CAST(1054.23 AS Decimal(12, 2)), CAST(1370.50 AS Decimal(12, 2)), 50, N'A0010_1.jpg', N'A0010_2.jpg', N'A0010_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0011', N'CATG01', N'SUBCATG01', N'Computador HP Pavilion Gaming TG01', N'Marca: HP
Modelo: Pavilion gaming desktop tg01-2109ns
CPU: AMD Ryzen R5-5600G
Memória RAM: 16 GB
Armazenamento: 512 GB
Gráfica: NVIDIA', 5, N'N', CAST(713.34 AS Decimal(12, 2)), CAST(927.34 AS Decimal(12, 2)), 21, N'A0011_1.jpg', N'A0011_2.jpg', N'A0011_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0012', N'CATG04', N'SUBCATG22', N'Televisão LG Série C2 SmartTV 55" OLED evo 4K UHD', N'Fabricante: LG
Campanha: LG TVs
Classe Energética: G
Tamanho Ecrã: 55"
Resolução: 3840 x 2160 (4K Ultra HD)
Adaptive Sync: G-SYNC, FreeSync
Taxa de Atualização Ecrã: 120 Hz
Padrão VESA: 300 x 200 mm
Sistema Operativo: webOS
Tecnologia de Exibição: OLED Evo', 12, N'N', CAST(1229.90 AS Decimal(12, 2)), CAST(1598.87 AS Decimal(12, 2)), 0, N'A0012_1.jpg', N'A0012_2.jpg', N'A0012_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0013', N'CATG04', N'SUBCATG21', N'Monitor Lenovo Legion Y25-30', N'Fabricante: Lenovo
Estado do Produto: Promoção
Classe Energética: E
Adaptive Sync: FreeSync
Tamanho Ecrã: 24.5"
Portas I/O: USB 3.2, DisplayPort, HDMI
Aspect Ratio: 16:9
Resolução: 1920 x 1080 (Full HD)
Tempo de Resposta: 0.5 ms
Taxa de Atualização Ecrã: 280 Hz', 9, N'N', CAST(250.20 AS Decimal(12, 2)), CAST(325.26 AS Decimal(12, 2)), 0, N'A0013_1.jpg', N'A0013_2.jpg', N'A0013_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0014', N'CATG04', N'SUBCATG21', N'Monitor Curvo LG UltraGear 34GN850-B', N'Fabricante: LG
Classe Energética: G
Adaptive Sync: G-SYNC Compatible, FreeSync
Tamanho Ecrã: 34"
Resolução: 3440 x 1440 (UltraWide QHD)
Tempo de Resposta: 1 ms
Taxa de Atualização Ecrã: 160 Hz
Tipo de Painel: IPS (In-Plane Switching)
Multimédia: Hub USB
Padrão VESA: 100 x 100 mm
Painel Plano ou Curvo	', 12, N'N', CAST(565.90 AS Decimal(12, 2)), CAST(735.67 AS Decimal(12, 2)), 0, N'A0014_1.jpg', N'A0014_2.jpg', N'A0014_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0015', N'CATG04', N'SUBCATG22', N'Televisão LG Série A2 SmartTV 65 OLED 4K UHD', N' Fabricante: LG
Campanha: LG TVs
Classe Energética: F
Tamanho Ecrã: 65"
Resolução: 3840 x 2160 (4K Ultra HD)
Taxa de Atualização Ecrã: 60 Hz
Padrão VESA: 300 x 200 mm
Sistema Operativo: webOS
Tecnologia de Exibição: OLED', 8, N'N', CAST(1131.90 AS Decimal(12, 2)), CAST(1471.47 AS Decimal(12, 2)), 0, N'A0015_1.jpg', N'A0015_2.jpg', N'A0015_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0016', N'CATG04', N'SUBCATG21', N'Monitor Lenovo L24e-30 VA 23.8 FHD 16:9 75Hz FreeSync', N'Fabricante: Lenovo
Classe Energética: E
Adaptive Sync: FreeSync
Tamanho Ecrã: 23.8"
Aspect Ratio: 16:9
Resolução: 1920 x 1080 (Full HD)
Tempo de Resposta: 4 ms
Taxa de Atualização Ecrã: 75 Hz
Padrão VESA: 100 x 100 mm', 16, N'N', CAST(84.63 AS Decimal(12, 2)), CAST(110.02 AS Decimal(12, 2)), 0, N'A0016_1.jpg', N'A0016_2.jpg', N'A0016_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0017', N'CATG04', N'SUBCATG23', N'Projetor LG ProBeam Laser WUXGA BF50NST', N'5.000 ANSI lumens de brilho fornecem precisão e clareza, mesmo em salas de conferências bem iluminadas sem perda de qualidade de imagem, aumentando a produtividade das reuniões de negócios.', 15, N'N', CAST(1847.93 AS Decimal(12, 2)), CAST(2399.90 AS Decimal(12, 2)), 0, N'A0017_1.jpg', N'A0017_2.jpg', N'A0017_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0018', N'CATG04', N'SUBCATG23', N'Projetor BenQ MW536 WXGA', N'A BenQ só usa lentes de vidro de alta qualidade para minimizar a aberração cromática, garantindo a qualidade de imagem a longo prazo em clareza brilhante.', 31, N'N', CAST(369.60 AS Decimal(12, 2)), CAST(480.48 AS Decimal(12, 2)), 0, N'A0018_1.jpg', N'A0018_2.jpg', N'A0018_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0019', N'CATG05', N'SUBCATG27', N'Colunas Logitech Z333 Stereo 2.1 80W Peak', N'Tire o máximo partido dos seus filmes jogos e música com as colunas Logitech Z333 2.1. Com duas colunas de 40W e um subwoofer de 24W o sistema de som Logitech Z333 fornece uma experiência de audio verdadeiramente poderosa independentemente do que está a ouvir', 21, N'N', CAST(46.12 AS Decimal(12, 2)), CAST(59.96 AS Decimal(12, 2)), 0, N'A0019_1.jpg', N'A0019_2.jpg', N'A0019_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0020', N'CATG05', N'SUBCATG26', N'Soundbar LG SL4 2.1 300W Wireless Preta', N'A Soundbar LG SL4 de 2.1 canais apresenta potência máxima de 300 W e foi concebida para equipar televisores e proporcionar a melhor qualidade de som, aumentando a sensação de imersão e proporcionando uma melhor experiência de televisão.', 10, N'N', CAST(84.63 AS Decimal(12, 2)), CAST(110.02 AS Decimal(12, 2)), 0, N'A0020_1.jpg', N'A0020_2.jpg', N'A0020_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0021', N'CATG03', N'SUBCATG16', N'Teclado Mecânico Razer Huntsman V2', N'Uma capacidade de resposta inigualável nunca pareceu tão magra. Conheça o Razer Huntsman V2 TKL - um teclado de jogo óptico sem tenkeyless com melhor acústica, latência de entrada quase nula, e outras características de topo de gama para assegurar um factor de forma compacto orientado para um desempenho de tamanho normal.', 7, N'N', CAST(146.23 AS Decimal(12, 2)), CAST(190.10 AS Decimal(12, 2)), 0, N'A0021_1.jpg', N'A0021_2.jpg', N'A0021_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0022', N'CATG03', N'SUBCATG16', N'Teclado Mecânico HyperX Alloy Origin', N'O HyperX Alloy Origins 60 é um teclado durável extremamente portátil com 60% do tamanho original, oferecendo mais espaço para movimentos do seu rato. Ele apresenta uma estrutura durável em alumínio e fiáveis switches HyperX, equilibrados para velocidade e desempenho, projetados para suportar até 80 milhões de toques nas teclas. As capas de tecla de camada dupla de PBT possuem funções secundárias impressas, assim você pode localizar facilmente qualquer funcionalidade adicional que precise. Deixe o seu estilo brilhar mais fortemente com o design de LED exposto dos switches HyperX e os incríveis efeitos de iluminação', 8, N'N', CAST(73.10 AS Decimal(12, 2)), CAST(95.03 AS Decimal(12, 2)), 0, N'A0022_1.jpg', N'A0022_2.jpg', N'A0022_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0023', N'CATG03', N'SUBCATG20', N'Webcam Ewent EW1590 Full HD 1080p', N'A webcam Ewent EW1590 Full HD 1080P oferece uma imagem nítida e clara graças à resolução Full HD 1080P. Funciona instantaneamente sem instalação de driver. A câmara tem microfone embutido.', 13, N'N', CAST(19.18 AS Decimal(12, 2)), CAST(24.93 AS Decimal(12, 2)), 0, N'A0023_1.jpg', N'A0023_2.jpg', N'A0023_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0024', N'CATG03', N'SUBCATG20', N'Webcam Elgato Facecam Premium FHD 1080p', N'Uma lente de nível profissional com um sensor de imagem de última geração. Circuito de alta velocidade que produz vídeos impressionantes não compactados. E a memória interna para recuperar as configurações de imagem em todos os seus computadores', 12, N'N', CAST(106.20 AS Decimal(12, 2)), CAST(138.06 AS Decimal(12, 2)), 0, N'A0024_1.jpg', N'A0024_2.jpg', N'A0024_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0025', N'CATG03', N'SUBCATG15', N'Rato Óptico Logitech G502 Lightspeed Wireless', N'O G502 é um ícone, no topo das paradas em todas as gerações, e o rato de escolha para jogadores sérios. Agora, o G502 junta-se às fileiras dos ratos de jogos sem fio mais avançados do mundo com o lançamento do G502 LIGHTSPEED. O LIGHTSPEED é ultra-rápido e fiável com desempenho fiável na competição por profissionais de esports.', 6, N'N', CAST(92.33 AS Decimal(12, 2)), CAST(120.03 AS Decimal(12, 2)), 0, N'A0025_1.jpg', N'A0025_2.jpg', N'A0025_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0026', N'CATG03', N'SUBCATG15', N'Rato Óptico Razer DeathAdder Essential 2021 6400DPI Preto', N'A Razer DeathAdder é, há mais de uma década, uma linha icónica de ratos para jogos na arena global de esports. Conquistou uma reputação de fiabilidade pela qual os gamers colocam a mão no fogo devido à sua durabilidade, conforto e ergonomia comprovados. Agora, a Razer está ainda a tornar mais acessível, com o mais recente membro da família – o Razer DeathAdder Essential.', 6, N'N', CAST(15.32 AS Decimal(12, 2)), CAST(19.90 AS Decimal(12, 2)), 0, N'A0026_1.jpg', N'A0026_2.jpg', N'A0026_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0027', N'CATG03', N'SUBCATG17', N'Tapete MSI Agility GD70 Gaming', N'A sua superfície não apenas permite controlo flexível e preciso para os ratos, como também proporciona uma experiência de utilização incrivelmente suave com baixo atrito. Dando a sensação de deslizar sem esforço.', 21, N'N', CAST(23.03 AS Decimal(12, 2)), CAST(29.90 AS Decimal(12, 2)), 0, N'A0027_1.jpg', N'A0027_2.jpg', N'A0027_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0028', N'CATG03', N'SUBCATG17', N'Tapete Razer Gigantus V2 3XL Preto', N'Se o que você deseja é fazer jogadas de respeito, pense em grande com o Razer Gigantus V2. Um mousepad macio com superfície de tecido texturizada, projetado para ajudar nas suas jogadas com movimentos fluidos e mira com precisão pixelar.', 7, N'N', CAST(38.50 AS Decimal(12, 2)), CAST(49.90 AS Decimal(12, 2)), 0, N'A0028_1.jpg', N'A0028_2.jpg', N'A0028_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0029', N'CATG02', N'SUBCATG08', N'Memória RAM Netac Shadow 32GB 2x16GB', N'A Netac Shadow é um módulo de memória de baixa potência e de alta velocidade de funcionamento que utilizam dispositivos DDR4 SDRAM. Cada 288- pinos DIMM usa contactos banhados a ouro. O SDRAM Unbuffered DIMM destina-se a ser utilizado como memória principal quando instalado em sistemas tais como PCs.', 18, N'N', CAST(80.50 AS Decimal(12, 2)), CAST(104.50 AS Decimal(12, 2)), 0, N'A0029_1.jpg', N'A0029_2.jpg', N'A0029_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0030', N'CATG02', N'SUBCATG08', N'Memória RAM Corsair Vengeance RGB Pro 16GB 2x8GB', N'As memórias DDR4 VENGEANCE RGB PRO Series com overclocking iluminam o seu PC com luzes RGB dinâmicas multizona enquanto oferece o melhor desempenho.', 28, N'N', CAST(72.00 AS Decimal(12, 2)), CAST(93.40 AS Decimal(12, 2)), 0, N'A0030_1.jpg', N'A0030_2.jpg', N'A0030_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0031', N'CATG03', N'SUBCATG18', N'Headset HyperX Cloud II 7.1 Vermelho', N'O HyperX® Cloud II dispõe de um dispositivo de controlo avançado de áudio USB, com um design inovador que amplifica o áudio e a voz garantindo uma excelente experiência de jogo. Poderá ouvir o que nem imagina. Entre num mundo que os outros gamers jamais conhecerão: ouça o ruído de botas sobre o piso ou as pás de uma ventoinha distante', 10, N'N', CAST(61.60 AS Decimal(12, 2)), CAST(79.90 AS Decimal(12, 2)), 0, N'A0031_1.jpg', N'A0031_2.jpg', N'A0031_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0032', N'CATG03', N'SUBCATG18', N'Headset Asus ROG Delta Gaming RGB Preto', N'O ROG Delta é o primeiro headset para gaming no mundo com o ESS 9218 quad DAC, líder do setor e de alta fidelidade, que proporciona um som impecável e detalhado para dar aos jogadores experientes a vantagem que precisam para vencer. O ROG Delta possui um conector USB-C e vem com um adaptador USB-C para USB 2.0. Um efeito de iluminação RGB circular único, de arco-íris, proporciona um visual estiloso para destacar você no campo de batalha.', 15, N'N', CAST(130.90 AS Decimal(12, 2)), CAST(169.90 AS Decimal(12, 2)), 0, N'A0032_1.jpg', N'A0032_2.jpg', N'A0032_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0033', N'CATG02', N'SUBCATG13', N'Water Cooler CPU Cooler Master MasterLiquid ML240L V2', N'Novo design da bomba com componentes internos atualizados para maior resistência ao desgaste e desempenho mais duradouro. EPDM de classe industrial especialmente formulado usado para vedação reforçada para prevenção de vazamentos.', 6, N'N', CAST(55.40 AS Decimal(12, 2)), CAST(71.90 AS Decimal(12, 2)), 0, N'A0033_1.jpg', N'A0033_2.jpg', N'A0033_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0034', N'CATG02', N'SUBCATG13', N'Water Cooler CPU Corsair H170i Elite LCD', N'Os refrigeradores com melhor desempenho de um dos maiores nomes em refrigeração, os refrigeradores de CPU LCD tudo-em-um ELITE oferecem uma janela única tanto para o desempenho do seu PC como para o seu próprio estilo e personalidade.', 18, N'N', CAST(277.13 AS Decimal(12, 2)), CAST(360.27 AS Decimal(12, 2)), 0, N'A0034_1.jpg', N'A0034_2.jpg', N'A0034_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0035', N'CATG02', N'SUBCATG07', N'Placa Gráfica MSI GeForce RTX 3060 Ventus 2X ', N'A GeForce RTX™ 3060 permite que você enfrente os jogos mais recentes usando a potência do Ampere - a arquitetura RTX de 2ª geração da NVIDIA. Obtenha um desempenho incrível com núcleos Ray Tracing e núcleos Tensor, novos multiprocessadores de streaming e memória G6 de alta velocidade.', 11, N'N', CAST(331.10 AS Decimal(12, 2)), CAST(430.43 AS Decimal(12, 2)), 0, N'A0035_1.jpg', N'A0035_2.jpg', N'A0035_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0036', N'CATG02', N'SUBCATG07', N'Placa Gráfica MSI GeForce RTX 4090 Gaming X', N'NVIDIA® GeForce RTX® 4090 é o derradeiro GPU GeForce. Traz um enorme salto em desempenho, eficiência e gráficos com inteligência artificial. Usufrui de jogos de alto desempenho, mundos virtuais incrivelmente detalhados, produtividade sem precedentes e novas maneiras de criar. É alimentado pela arquitetura NVIDIA Ada Lovelace e vem com 24 GB de memória G6X para oferecer a melhor experiência para jogadores e criadores.', 10, N'N', CAST(1676.98 AS Decimal(12, 2)), CAST(2180.07 AS Decimal(12, 2)), 0, N'A0036_1.jpg', N'A0036_2.jpg', N'A0036_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0037', N'CATG03', N'SUBCATG19', N'Microfone HyperX QuadCast S Gaming USB', N'O HyperX QuadCast™ S é um microfone condensador USB de aparência fantástica com ótimo som. Iluminação RGB impressionante e personalizável e efeitos dinâmicos adicionam estilo a qualquer configuração. QuadCast S é um microfone com tudo o que pode pedir, com uma montagem antivibração contra choque e um filtro pop integrado. O indicador LED exibe de forma proeminente o status do seu microfone e você pode simplesmente tocar para silenciar para evitar contratempos na transmissão.', 8, N'N', CAST(113.90 AS Decimal(12, 2)), CAST(148.07 AS Decimal(12, 2)), 0, N'A0037_1.jpg', N'A0037_2.jpg', N'A0037_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0038', N'CATG01', N'SUBCATG03', N'Microfone HyperX SoloCast Standalone', N'Para editores de vídeo, streamers e gamers que procuram um microfone USB com alta qualidade de som, o HyperX SoloCast é obrigatório. Ele é Plug N Play, tornando-o simples de usar, com alguns dos recursos favoritos como o sensor de toque para silenciar e o LED indicador de microfone em mudo. O microfone versátil possui um pedestal ajustável e também é compatível com a maioria das hastes, assim você pode colocá-lo na mesa ou na haste.', 1, N'N', CAST(47.90 AS Decimal(12, 2)), CAST(62.27 AS Decimal(12, 2)), 0, N'A0038_1.jpg', N'A0038_2.jpg', N'A0038_3.jpg', 0)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0039', N'CATG02', N'SUBCATG14', N'Pasta Térmica Noctua NT-H2 3.5g Premium Grade', N'A NT-H2 é a segunda geração aprimorada do premiado composto térmico híbrido da Noctua. Combinando os recursos comprovados da icónica NT-H1, excelente facilidade de uso e aclamada estabilidade a longo prazo com uma fórmula nova e ajustada de micropartículas para um desempenho térmico ainda melhor, a NT-H2 é uma pasta de grau entusiasta para os mais altos padrões. Quer se trate de refrigeração à base de ar ou água, aplicações de CPU ou GPU, overclocking ou sistemas silenciosos: a NT-H2 fornecerá consistentemente resultados excelentes e, graças aos toalhetes de limpeza incluídos, é tão fácil de remover como de aplicar.', 15, N'N', CAST(10.70 AS Decimal(12, 2)), CAST(13.90 AS Decimal(12, 2)), 0, N'A0039_1.jpg', N'A0039_2.jpg', N'A0039_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0040', N'CATG02', N'SUBCATG14', N'Pasta Térmica Arctic MX-4 45g 2019 Edition High Performance', N'O design das embalagens de pasta térmica da Arctic mudou várias vezes ao longo dos anos. A fórmula da composição permaneceu inalterada; portanto, as suas pastas MX representam alto desempenho e qualidade há anos', 8, N'N', CAST(26.90 AS Decimal(12, 2)), CAST(34.90 AS Decimal(12, 2)), 0, N'A0040_1.jpg', N'A0040_2.jpg', N'A0040_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0041', N'CATG02', N'SUBCATG12', N'Placa de Rede Asus PCE-AX1800 Wi-Fi Dual-band PCIe', N'Com a tecnologia WiFi 6 (802.11ax), o ASUS PCE-AX1800 fornece velocidades sem fios até 1,5X mais rápidas do que os dispositivos WiFi 5 (802.11ac). Uma combinação revolucionária de tecnologias OFDMA e MU-MIMO assegura a ligação WiFi mais eficiente para o seu PC.', 11, N'N', CAST(37.70 AS Decimal(12, 2)), CAST(48.90 AS Decimal(12, 2)), 0, N'A0041_1.jpg', N'A0041_2.jpg', N'A0041_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0042', N'CATG02', N'SUBCATG12', N'Placa de Rede Asus PCE-N15 N300 Wi-Fi PCI Express', N'Para configurar rapidamente uma ligação sem-fios segura. Pressione o botão WPS no PCE-N15 por cerca de 3, de seguida pressione também o botão WPS do router. Poderá escolher usar WPS por software, escolhendo o utilitário WPS no assistente de WPS. E terminar a configuração em 3 passos.', 11, N'N', CAST(9.94 AS Decimal(12, 2)), CAST(12.90 AS Decimal(12, 2)), 0, N'A0042_1.jpg', N'A0042_2.jpg', N'A0042_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0043', N'CATG02', N'SUBCATG06', N'Motherboard ATX MSI Pro Z690-A DDR4', N'Com anos de experiência, a MSI conhece bem a construção de motherboards de alto desempenho. As equipas de R&D e engenharia avaliaram uma ampla seleção de componentes de alta qualidade e desenvolveram produtos para fiabilidade mesmo em condições extremas.', 16, N'N', CAST(169.33 AS Decimal(12, 2)), CAST(219.90 AS Decimal(12, 2)), 0, N'A0043_1.jpg', N'A0043_2.jpg', N'A0043_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0044', N'CATG02', N'SUBCATG06', N'Motherboard ATX Gigabyte Z690 UD DDR4', N'As motherboards da GIGABYTE incluem vários softwares úteis e intuitivos para ajudar os utilizadores a controlar todos os aspectos da motherboard e fornecer um efeito de iluminação personalizável com uma estética excepcional para se adaptar à sua personalidade única.', 8, N'N', CAST(165.48 AS Decimal(12, 2)), CAST(214.90 AS Decimal(12, 2)), 0, N'A0044_1.jpg', N'A0044_2.jpg', N'A0044_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0045', N'CATG02', N'SUBCATG09', N'ATX MSI MPG A1000G 1000W 80 Plus Gold', N'A eficiência do seu fornecimento de energia influencia diretamente o desempenho do seu sistema e o seu consumo de energia. A certificação 80 PLUS Gold promete um menor consumo de energia e uma maior eficiência.', 10, N'N', CAST(118.76 AS Decimal(12, 2)), CAST(219.90 AS Decimal(12, 2)), 0, N'A0045_1.jpg', N'A0045_2.jpg', N'A0045_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0046', N'CATG02', N'SUBCATG09', N'ATX Corsair CV Series 650W', N'As fontes de alimentação CV da CORSAIR são ideais para fornecer energia para o seu novo PC doméstico ou de trabalho, com eficiência 80 PLUS Bronze garantida para proporcionar máxima potência para o seu sistema continuamente.', 15, N'N', CAST(46.13 AS Decimal(12, 2)), CAST(59.90 AS Decimal(12, 2)), 0, N'A0046_1.jpg', N'A0046_2.jpg', N'A0046_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0047', N'CATG05', N'SUBCATG26', N'Soundbar Samsung HW-Q600B 3.1.2 Canais 360W', N'Explore a profundidade do som com a tecnologia Dolby Atmos e DTS:X que dá destaque ao áudio, ao mesmo tempo que cria uma experiência envolvente.', 9, N'N', CAST(423.90 AS Decimal(12, 2)), CAST(549.90 AS Decimal(12, 2)), 0, N'A0047_1.jpg', N'A0047_2.jpg', N'A0047_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0048', N'CATG05', N'SUBCATG26', N'Soundbar Ewent EW3525 RGB Bluetooth 12W', N'A barra de som stereo EWENT EW3525 com 12W de potência máxima, foi projetada para chegar a todo o público jogador e a todos os utilizadores que queiram desfrutar do melhor som sem precisar de um espaço grande. O seu design de pequeno formato, a sua acessibilidade em todos os momentos e a sua variedade de combinações de luz de cor garantem uma experiência de jogo inimaginável', 7, N'N', CAST(23.15 AS Decimal(12, 2)), CAST(29.90 AS Decimal(12, 2)), 0, N'A0048_1.jpg', N'A0048_2.jpg', N'A0048_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0049', N'CATG03', N'SUBCATG18', N'Headphones Sony MDR-RF811RK Wireless Pretos', N'Headphones sem fios Sony RF811RK, que oferece-lhe liberdade de movimentos e grande autonomia de bateria', 6, N'N', CAST(61.60 AS Decimal(12, 2)), CAST(79.90 AS Decimal(12, 2)), 0, N'A0049_1.jpg', N'A0049_2.jpg', N'A0049_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0050', N'CATG01', N'SUBCATG03', N'Computador Desktop Lenovo IdeaCentre 3 07ADA5-457', N'Fabricante: Lenovo
Memória RAM: 4 GB
Capacidade de armazenamento: 128 GB
Arquitetura de CPU: Zen
Série de CPU: AMD Athlon
Motor Gráfico (GPU): Radeon Graphics
Processador: AMD Athlon 3050U
Sistema Operativo: Windows 11 Home
Tipo de Armazenamento: SSD', 17, N'N', CAST(192.43 AS Decimal(12, 2)), CAST(249.90 AS Decimal(12, 2)), 0, N'A0050_1.jpg', N'A0050_2.jpg', N'A0050_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0051', N'CATG01', N'SUBCATG03', N'Computador Desktop Fujitsu ESPRIMO D7010', N'Fabricante: Fujitsu
Memória RAM: 8 GB
Capacidade de armazenamento: 256 GB
Arquitetura de CPU: Comet Lake
Série de CPU: Intel Core i3
Motor Gráfico (GPU): Intel UHD Graphics 630
Processador: Intel Core i3-10100
Sistema Operativo: Windows 10 Pro 64 Bits
Tipo de Armazenamento: SSD', 5, N'N', CAST(392.63 AS Decimal(12, 2)), CAST(509.90 AS Decimal(12, 2)), 0, N'A0051_1.jpg', N'A0051_2.jpg', N'A0051_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0052', N'CATG01', N'SUBCATG02', N'Portátil Lenovo IdeaPad Gaming 3 15ACH6-326 15.6', N'Fabricante: Lenovo
Memória RAM: 8 GB
Arquitetura de CPU: Zen 3
Número Núcleos CPU: 6-Core
Capacidade de armazenamento: 256 GB
Motor Gráfico (GPU): GeForce RTX 3050, Radeon Graphics
Processador: AMD Ryzen 5 5600H
Taxa de Atualização Ecrã: 60 Hz
Tipo Teclado: Retroiluminado, Numérico
Tamanho Ecrã: 15.6"
Resolução: 1920 x 1080 (Full HD)
Série de CPU: AMD Ryzen 5', 8, N'N', CAST(538.93 AS Decimal(12, 2)), CAST(699.90 AS Decimal(12, 2)), 0, N'A0052_1.jpg', N'A0052_2.jpg', N'A0052_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0053', N'CATG02', N'SUBCATG14', N'Pasta Térmica Thermal Grizzly Aeronaut High Performance 7.8g', N'A pasta térmica Aeronaut é o produto ideal para iniciantes com alta eficácia. A excelente proteção da superfície e as boas capacidades de transferência de calor tornam a Aeronaut a escolha ideal para utilizadores que desejam otimizar a sua solução de refrigeração de maneira eficaz ou que desejam usar uma alternativa à pasta térmica incluída de origem com o seu hardware. Embora a quantidade de elementos metálicos na fórmula da Aeronauts seja menor em comparação com outros produtos, ela ainda fornece condutividade térmica fiável e com desempenho perfeito.', 15, N'N', CAST(8.03 AS Decimal(12, 2)), CAST(10.90 AS Decimal(12, 2)), 0, N'A0053_1.jpg', N'A0053_2.jpg', N'A0053_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0054', N'CATG01', N'SUBCATG03', N'Computador Desktop MSI MPG Trident A 12TC-449EU', N'
    Processador Intel® Core™ de até 12ª geração;
    Placa gráfica GeForce RTX™ 30 Series;
    Formato compacto, leve e fácil de transportar;
    10 litros de tamanho, o desktop de jogos mais compacto;
    Refrigeração Silent Storm Cooling 3 - Otimiza o fluxo de ar separando a câmara de CPU, VGA e PSU;
    Conectividade USB Type-C com design reversível;
    Design de LED RGB Mystic Light, personalize o seu visual;
    Enriqueça a sua experiência com o software MSI incluído.
', 0, N'N', CAST(1099.00 AS Decimal(12, 2)), CAST(1428.70 AS Decimal(12, 2)), 0, N'A0054_1.jpg', N'A0054_2.jpg', N'A0054_3.jpg', 0)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0055', N'CATG01', N'SUBCATG01', N'Computador King Mod Liquid EKWB Hydra R7 16GB 512GB RTX 3060', N'Caixa: Caixa ATX com Vidro Temperado
Processador: AMD Ryzen 7 5800X (3.8GHz-4.7GHz)
Arrefecimento: Waterloop personalizado
Motherboard: Motherboard X570
Memórias: Kit 16GB (2 x 8GB) DDR4 3200MHz
Placa gráfica: Placa Gráfica GeForce® RTX 3060 Ti
Armazenamento: Disco SSD 512GB M.2 NVMe
Fonte de alimentação: Fonte de 850W 80+ Gold
Sistema Operativo: Windows 10 Home', 6, N'N', CAST(2599.90 AS Decimal(12, 2)), CAST(3379.87 AS Decimal(12, 2)), 0, N'A0055_1.jpg', N'A0055_2.jpg', N'A0055_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0056', N'CATG03', N'SUBCATG18', N'Headset HyperX Cloud II 7.1 Rosa', N'CONFORTO LENDÁRIO
O HyperX Cloud II foi construído para ser um auricular de jogo muito confortável com um som espantoso. Pensamos muito nos detalhes da nossa espuma de memória de assinatura HyperX, na espuma de couro premium, na força de fixação e na distribuição de peso para criar um auricular que seja confortável através de longas sessões de jogo. Não é de admirar que se tenha tornado o auricular de jogo preferido por milhões de jogadores. Quer queira concentrar-se na competição ou relaxar com alguns dos seus jogos favoritos, há uma Nuvem que é perfeita para si.

ÁUDIO IMERSIVO
Ouça os sons ricos e impactantes dos seus jogos com clareza e precisão. Condutores especialmente afinados de 53mm deixam-no perder-se no mundo dos jogos ou concentrar-se em pistas de áudio importantes.

MICROFONE REMOVÍVEL, QUE CANCELA O RUÍDO
Mantenha as comunicações claras e reduza o ruído ambiente para que não afete a conversa de voz.', 5, N'N', CAST(129.00 AS Decimal(12, 2)), CAST(167.70 AS Decimal(12, 2)), 0, N'A0056_1.jpg', N'A0056_2.jpg', N'A0056_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0057', N'CATG03', N'SUBCATG18', N'Headsets Corsair HS75X PRO Wireless Xbox / Xbox One', N'AUSCULTADOR GAMING CORSAIR HS75 XB WIRELESS
O headset gaming Corsair HS75 XB Wireless para Xbox Series X, Xbox Series S e Xbox One está equipado com um microfone totalmente removível, Dolby Atmos® imersivo e uma ligação direta à consola sem adaptador wireless.

DESENVOLVIDO PARA XBOX
Ligue sem fios e sem adaptador diretamente às consolas Xbox Series X, Xbox Series S, ou Xbox One para baixa latência e áudio de alta qualidade.

AMBIENTE DONBY® ENVOLVENTE
Coloque os sons do jogo à sua volta com uma precisão tridimensional, para que possa reagir mais rapidamente e com maior precisão.

DRIVERS DE ALTA QUALIDADE
Os drivers de áudio de neodímio de alta qualidade de 50 mm com afinação personalizada têm o alcance para ouvir tudo o que precisa.', 6, N'N', CAST(179.90 AS Decimal(12, 2)), CAST(233.87 AS Decimal(12, 2)), 0, N'A0057_1.jpg', N'A0057_2.jpg', N'A0057_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0058', N'CATG04', N'SUBCATG21', N'Monitor AOC Gaming 23.8" 24G2ZE/BK IPS FHD 240Hz 0.5ms', N'240HZ REFRESH RATE
240Hz liberta completamente GPUs de topo de gama, trazendo uma fluidez sem precedentes para a imagem no seu ecrã. Com cada detalhe trazido com foco e cada movimento mostrado com clareza cristalina, sinta as suas reações tornarem-se uma com a ação e elevarem o seu jogo.

0,5MS DE TEMPO DE RESPOSTA
Um tempo de resposta pixel de 0,5 ms significa velocidade sem o borrão para uma experiência melhorada. A ação rápida e as transições dramáticas serão executadas suavemente sem os efeitos de ghosting.

FREESYNC PREMIUM
Desfrute da melhor qualidade visual, mesmo em jogos de ritmo acelerado. A tecnologia AMD FreeSync Premium garante que as taxas de actualização dos GPU e do monitor são sincronizadas, o que proporciona uma experiência de jogo fluida e tear free ao mais alto desempenho. O AMD FreeSync Premium apresenta uma taxa de atualização mínima de 120Hz, diminuindo a desfocagem e aguçando a imagem para uma experiência mais realista. A característica LFC elimina o risc', 7, N'N', CAST(309.00 AS Decimal(12, 2)), CAST(401.70 AS Decimal(12, 2)), 0, N'A0058_1.jpg', N'A0058_2.jpg', N'A0058_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0059', N'CATG05', N'SUBCATG27', N'Colunas DJ Hercules DJSpeaker 32 Party', N'SISTEMA DE LUZES LED
Cada um dos altifalantes DJSpeaker 32 Party possui um sistema de luzes LED para um ambiento repleto de cor. Facilmente controlados através do comando à distância por infravermelhos incluído, os altifalantes permitem-lhe escolher entre 4 modos de iluminação diferentes: mantenha as boas vibrações a fluir sem parar.

QUALIDADE
Os altifalantes de monitorização ativa DJSpeaker 32 Party foram concebidos com componentes de topo de gama para uma precisão e uma reprodução de áudio ótimas, com uma qualidade de audição excecional.

EM QUALQUER PARTE
Os altifalantes DJSpeaker 32 Party são a mistura perfeita de som e luzes, simplificada. Não demasiado grandes nem demasiado pequenos, os altifalantes são incrivelmente fáceis de levar consigo para toda a parte e e combinam na perfeição com qualquer ambiente: desfrute de ótimas vibrações, sem complicações!

SOM ESTÉREO NÍTIDO
Woofer de 7,6 cm. Tweeter descentrado para uma reprodução sonora mais nítida e um efeito estéreo ', 15, N'N', CAST(82.90 AS Decimal(12, 2)), CAST(107.77 AS Decimal(12, 2)), 0, N'A0059_1.jpg', N'A0059_2.jpg', N'A0059_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0060', N'CATG01', N'SUBCATG02', N'Apple MacBook Pro 14.2" | M2 Max CPU 12‑core, GPU 30‑core | ', N'MACBOOK PRO. POTÊNCIA PROFISSIONAL PORTÁTIL
Os processadores M2 Pro ou M2 Max elevam a potência e a velocidade do MacBook Pro de 14 polegadas para um novo patamar, quer esteja ligado à corrente ou não. Com um incrível ecrã Liquid Retina XDR, uma enorme variedade de portas e autonomia para um dia inteiro,1 este é o portátil perfeito para acompanhar o seu ritmo de trabalho.', 17, N'N', CAST(3799.00 AS Decimal(12, 2)), CAST(4938.70 AS Decimal(12, 2)), 0, N'A0060_1.jpg', N'A0060_2.jpg', N'A0060_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0061', N'CATG04', N'SUBCATG21', N'Monitor Lenovo Gaming G27-20 IPS 27" FHD 16:9 144Hz FreeSync', N'Quando se trata de desempenho, o Lenovo G27-20 é superior. Comecemos por observar o seu ecrãde 68,6 cm (27") 1920 x 1080, com resolução Full HD e comutação no plano que oferece incríveis efeitos de iluminação realistas para jogabilidade em 400 cd / m2 luminosos, graças à descodificação. HDR1 em movimento. Nunca perca o ritmo, mesmo nos momentos mais intensos, porque a sua rápida taxa de atualização de 144 Hz e tempo de resposta de 1 ms MPRT2 , juntamente com AMD FreeSync ™ Premium e NVIDIA G-SYNC compatível, eliminam problemas de imagem de experiência, permitindo uma experiência suave, fluida e contínua. Além disso, a tela de gama de cores 99% sRGB com 8 cores reais fará com que o seu jogo pareça impressionante. E, por mais brilhante que seja, com esta tela, os utilizadores podem visualizá-la confortavelmente, porque TÜV Rheinland Low Blue Light e TÜV Rheinland Flicker. A tecnologia gratuita protege os olhos da luz azul prejudicial numa escala deslizante e também elimina a cintilação d', 5, N'N', CAST(229.90 AS Decimal(12, 2)), CAST(298.87 AS Decimal(12, 2)), 0, N'A0061_1.jpg', N'A0061_2.jpg', N'A0061_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0062', N'CATG03', N'SUBCATG17', N'Mousepad Sketch Extended Rosa', N'SUPERFÍCIE DE TECIDO SUAVE
Uma superfície perfeita para o equilíbrio ideal entre velocidade e controlo.

BASE ANTI-DESLIZANTE
Assegura um posicionamento estável independentemente dos movimentos do rato.

EXTREMIDADES COSTURADAS
Extremidades costuradas anti-desgaste que aumentam a resistência e a durabilidade.

FORMATO EXTRA AMPLO
Generoso espaço de manobra, ideal para movimentos mais amplos.

Especificações:
Dimensões: 900 x 350 x 3 mm
Materiais: Espuma de borracha, tecido micro texturado
Compatibilidade: Todos os tipos de sensor de rato', 19, N'N', CAST(12.90 AS Decimal(12, 2)), CAST(16.77 AS Decimal(12, 2)), 0, N'A0062_1.jpg', N'A0062_2.jpg', N'A0062_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0063', N'CATG01', N'SUBCATG02', N'Portátil Asus TUF A15 FA506 15.6" R7 8GB 512GB RTX 3060 144H', N'
Processador: AMD Ryzen 7 5800H (até 4,4 GHz, 20MB, 8 cores, 16 threads)
Sistema Operativo: Sistema Operativo não Incluído
Memória: 8GB SO-DIMM DDR4 3200 MHz
Armazenamento: 512GB M.2 NVMe™ PCIe® 3.0 SSD
Audio: 2 x Auscultadores
Ecrã: Ecrã 15.6" FHD (1920 x 1080), 144 Hz, 250nits, IPS, Anti-Glare
Gráfica	Placa gráfica: NVIDIA® GeForce RTX™ 3060, 6 GB de memória GDDR6
Rede: Wi-Fi 6 (802.11ax)
Bluetooth: 5.2
Câmera: 720p HD
Bateria	4 células (90 Wh)
Peso: 2,30 kg
Cor: Preto', 5, N'N', CAST(1199.90 AS Decimal(12, 2)), CAST(1559.87 AS Decimal(12, 2)), 0, N'A0063_1.jpg', N'A0063_2.jpg', N'A0063_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0064', N'CATG03', N'SUBCATG15', N'Rato Logitech G Series PRO X Superlight Wireless Preto', N'ZERØ ATALHOS
O rato PRO mais leve de sempre, o PRO X SUPERLIGHT é um avanço em termos de engenharia que atinge um peso inferior a 63 g - quase 25% mais leve do que o rato PRO sem fios padrão da Logitech. Isto foi alcançado através de uma engenharia meticulosa para reduzir o peso extremo sem comprometer o desempenho.

ZERØ HESITAÇÃO
Concentre-se apenas em ganhar com o LIGHTSPEED, a sua tecnologia sem fios inovadora pro-grade garante um desempenho eficaz e uma conectividade robusta.

ZERØ FALHAS
O sensor exclusivo HERO 25K da Logitech G fornece precisão, velocidade e consistência incomparáveis. O PRO X SUPERLIGHT proporciona extrema precisão e controlo ultra fino para uma confiança completa, especialmente durante os momentos intensos e de fração de segundo durante o torneio.

ZERØ RESISTÊNCIA
Os skates de PTFE grandes e sem aditivos proporcionam um deslize suave para uma ligação pura e fluida com o jogo.
', 3, N'N', CAST(124.90 AS Decimal(12, 2)), CAST(162.37 AS Decimal(12, 2)), 0, N'A0064_1.jpg', N'A0064_2.jpg', N'A0064_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0065', N'CATG03', N'SUBCATG17', N'Tapete Traitors UKIYO-E - XL Speed Mouse Pad', N'Se quiser fazer um upgrade visual e funcional à sua secretária, o tapete de rato Traitors UKIYO-E é exatamente o acessório de que precisa. Com 355 x 253 mm, este tapete é maior do que um tapete de rato clássico e também apresenta um tema tradicional japonês. Ocupa parte da sua secretária, permitindo-lhe poupar espaço e dar-lhe um look clean.

Graças ao seu lado inferior de borracha, o Traitors Speed permanece sempre no seu lugar. Devido à sua superfície especial, o seu rato desliza suavemente para a frente e para trás e pode demonstrar a sua precisão sem qualquer problema. As margens costuradas garantem que não tem de se preocupar com áreas desgastadas.', 12, N'N', CAST(29.90 AS Decimal(12, 2)), CAST(38.87 AS Decimal(12, 2)), 0, N'A0065_1.jpg', N'A0065_2.jpg', N'A0065_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0066', N'CATG03', N'SUBCATG20', N'Webcam Logitech Brio 4K Ultra HD', N'UM NOVO BENCHMARK PARA WEBCAMS
Avance para a webcam tecnologicamente mais avançada do mundo e obtenha vídeo de qualidade profissional para chamadas em conferência, transmissão em sequência ou gravação de vídeo. A Logitech BRIO está repleta de recursos que produzem vídeos impressionantes em qualquer ambiente. A primeira câmara 4K Ultra HD da Logitech oferece zoom digital 5x e RightLight™ 3 com HDR. A substituição de fundo dá-lhe a liberdade de se encontrar em qualquer lugar.

CAPTURE TODOS OS DETALHES EM 4K HD
Transmita vídeos cristalinos com excelente resolução, excelente taxa de frames, cor e detalhes. A Logitech BRIO oferece resolução 4K Ultra HD a 30 fps ou 1080p a 30/60 fps para fornecer a mais alta qualidade em qualquer aplicativo. Veja mais de perto com o zoom 5x.

TENHA UM ÓTIMO ASPECTO COM QUALQUER LUMINOSIDADE
Agora, você pode fazer uma chamada em conferência, transmitir ou gravar um vídeo em qualquer condição de iluminação - e sempre no seu melhor. Seja em luz leve ou ', 16, N'N', CAST(215.90 AS Decimal(12, 2)), CAST(280.67 AS Decimal(12, 2)), 0, N'A0066_1.jpg', N'A0066_2.jpg', N'A0066_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0067', N'CATG01', N'SUBCATG01', N'Computador King Mod Liquid EKWB Hydra R7 16GB 512GB RTX 3060', N'Caixa: Caixa ATX com Vidro Temperado
Processador: AMD Ryzen 7 5800X (3.8GHz-4.7GHz) Socket AM4
Arrefecimento: Waterloop personalizado
Motherboard: Motherboard X570
Memórias: Kit 16GB (2 x 8GB) DDR4 3200MHz
Placa gráfica: Placa Gráfica GeForce® RTX 3060 Ti
Armazenamento: Disco SSD 512GB M.2 NVMe
Fonte de alimentação: Fonte de 850W 80+ Gold
Sistema Operativo: Windows 10 Home', 11, N'N', CAST(2599.90 AS Decimal(12, 2)), CAST(3379.87 AS Decimal(12, 2)), 0, N'A0067_1.jpg', N'A0067_2.jpg', N'A0067_3.jpg', 0)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0068', N'CATG02', N'SUBCATG07', N'Gráfica PNY GeForce® RTX 4080 Gaming VERTO Triple Fan 16G', N'PNY GEFORCE® RTX 4080 GAMING VERTO TRIPPLE FAN
A NVIDIA® GeForce RTX® 4080 oferece o ultra desempenho e as características que os jogadores e criadores entusiastas exigem. Dê vida aos seus jogos e projetos criativos com ray tracing e gráficos alimentados por IA. É alimentado pela arquitetura extremamente eficiente NVIDIA Ada Lovelace e até 16GB de memória G6X super-rápida.

O MULTIPLICADOR DE DESEMPENHO, PRODUZIDA PELA IA.
O DLSS é um avanço revolucionário em gráficos produzidos pela IA que aumenta bastante o desempenho. Equipado com os novos Núcleos Tensores e Acelerador de Fluxo Óptico de quarta geração nas GPUs GeForce Série RTX 40, o DLSS 3 utiliza a IA para criar quadros adicionais de alta qualidade.', 9, N'N', CAST(1549.90 AS Decimal(12, 2)), CAST(2014.87 AS Decimal(12, 2)), 0, N'A0068_1.jpg', N'A0068_2.jpg', N'A0068_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0069', N'CATG02', N'SUBCATG07', N'Gráfica Gigabyte GeForce® RTX 4070 Ti Eagle OC 12GB GD6X', N'SISTEMA DE ARREFECIMENTO POR FORÇA DO VENTO
O sistema de arrefecimento WINDFORCE apresenta três ventoinhas de lâmina única de 90mm, giratórias alternadas, 6 heatpipes de cobre composto, uma câmara de vapor toca diretamente na GPU, ventoinhas ativas 3D e arrefecimento por ecrã, que em conjunto proporcionam uma dissipação de calor de alta eficiência.

CÂMARA DE VAPOR E HEATPIPE
A câmara de vapor entra em contacto direto com a GPU, juntamente com os heatpipes, que transferem rapidamente o calor da GPU e da VRAM para o dissipador de calor.

DUAL BIOS
A configuração padrão de fábrica é o modo OC, que proporciona aos utilizadores o melhor desempenho. No entanto, mudar para o modo silencioso irá desfrutar de uma experiência mais silenciosa.', 9, N'N', CAST(929.90 AS Decimal(12, 2)), CAST(1208.87 AS Decimal(12, 2)), 0, N'A0069_1.jpg', N'A0069_2.jpg', N'A0069_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0070', N'CATG02', N'SUBCATG07', N'Gráfica ZOTAC GeForce® RTX 3060 Twin Edge OC 12GB GD6', N'OS JOGOS QUE CONHECE E CONFIA
A GeForce® RTX 3060 traz mais uma vez desempenho, eficiência silenciosa, e estética que os gamers hardcore têm vindo a reconhecer e a confiar. Agora poderá também desfrutar de todos os seus jogos favoritos com uma poderosa placa gráfica que permanece fresca e silenciosa. Exatamente da forma que gosta.

ARQUITETURA AMPERE DA NVIDIA
A nova arquitetura Ampere da NVIDIA proporciona a derradeira jogabilidade, com avançados Núcleos Ray Tracing de 2.ª geração e Núcleos Tensor de 3.ª geração com maior rendimento.

VITÓRIA MEDIDA EM MILISSEGUNDOS
O NVIDIA Reflex proporciona a vantagem competitiva final. A mais baixa latência. A melhor capacidade de resposta. Alimentado por GPUs GeForce série RTX 30 e monitores de jogos NVIDIA® G-SYNC®. Adquira alvos mais rapidamente, reaja mais rapidamente, e aumente a precisão dos alvos através de um conjunto revolucionário de tecnologias para medir e optimizar a latência do sistema para jogos competitivos.

ACELERAÇÃO DE', 10, N'N', CAST(459.90 AS Decimal(12, 2)), CAST(597.87 AS Decimal(12, 2)), 0, N'A0070_1.jpg', N'A0070_2.jpg', N'A0070_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0071', N'CATG02', N'SUBCATG05', N'Processador AMD Ryzen 9 7900X 12-Core (4.7GHz-5.6GHz) 76MB A', N'PROCESSADOR AMD RYZEN SÉRIE 7000
Bem-vindo à nova era de desempenho. A série AMD Ryzen 7000 introduz a velocidade do "Zen 4" para jogadores e criadores com puro poder para enfrentar qualquer jogo ou fluxo de trabalho no recreio digital. O processador de PC mais avançado do mundo para jogadores e criadores estende a liderança de desempenho AMD para dar potência ao seu PC.

MUDAR COMO SE JOGA
Quando o seu PC tem o processador de desktop mais avançado do mundo para jogadores, pode concentrar-se no que realmente importa: ser vitorioso no campo de batalha digital. Quer esteja a jogar os títulos mais recentes ou a rever um clássico, os processadores da série AMD Ryzen™ 7000 são uma potência para gaming com núcleos "Zen 4" de alto desempenho. Com até 16 núcleos, 32 threads, boost clocks de até 5,7GHz e até 80MB de cache, os processadores AMD Ryzen 7000 Series oferecem uma mudança poderosa.

AS TECNOLOGIAS MAIS RECENTES
Quer esteja a renderizar em 3D uma alta cena poligonal, a exportar ', 5, N'N', CAST(539.90 AS Decimal(12, 2)), CAST(701.87 AS Decimal(12, 2)), 0, N'A0071_1.jpg', N'A0071_2.jpg', N'A0071_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0072', N'CATG03', N'SUBCATG18', N'Headset Razer Kraken Kitty ED. Quartz Bluetooth', N'BLUETOOTH 5.0
Quando não está no Gaming Mode, a sua ligação sem fios permanece igualmente estável e utiliza menos energia - o auscultador pode durar até 20 horas com a iluminação ligada, ou até 50 horas com a iluminação desligada.


LIGAÇÃO DE BAIXA LATÊNCIA DE 40MS
Ativar o Gaming Mode para aumentar o desempenho sem fios dos auscultadores durante os jogos competitivos, e ser mais rápido a apontar ou reagir com áudio e vídeo ainda mais sincronizado.


RAZER AUDIO APP PARA ANDROID E IOS
Com esta aplicação fácil de usar, pode alterar as definições do equalizador, verificar o estado da bateria, realizar updates do firmware e muito mais, a qualquer hora e em qualquer lugar.


MICROFONE BEAMFORMING
Desenvolvido para captar menos ruído de todas as outras direções.', 9, N'N', CAST(99.90 AS Decimal(12, 2)), CAST(129.87 AS Decimal(12, 2)), 0, N'A0072_1.jpg', N'A0072_2.jpg', N'A0072_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0073', N'CATG03', N'SUBCATG18', N'Headset Thrustmaster T.Racing Scuderia Ferrari DTS Edition -', N'Auscultadores T.Racing Scuderia Ferrari Edition
Drivers analíticos de 50 mm
Microfone Uni-direcional com cancelamento de ruído
Tecnologia DTS® Headphone:X', 17, N'N', CAST(99.90 AS Decimal(12, 2)), CAST(129.87 AS Decimal(12, 2)), 0, N'A0073_1.jpg', N'A0073_2.jpg', N'A0073_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0074', N'CATG02', N'SUBCATG09', N'Fonte Modular Asus ROG Thor 1600W 80+ Titanium', N'IILUMINAÇÃO ASUS AURA SYNC
ASUS Aura Sync é o ecossistema de iluminação que permite sincronizar efeitos de iluminação na sua plataforma de jogo, componentes e periféricos. A ROG Thor Titanium tem LEDs Aura RGB endereçáveis incorporados e prontos para criar a sua aparência personalizada.

VENTOINHA WING-BLADE
A Asus equipou a ROG Thor Titanium com uma ventoinha Wing-Blade patenteada de 135mm para maximizar a vida útil dos componentes. A resistência ao pó IP5X mantém-na a rodar livremente e a tecnologia de 0 db utiliza sensores térmicos para permitir que a ventoinha desligue completamente com potências mais baixas - permitindo uma operação totalmente silenciosa.

CERTIFICAÇÃO 80 PLUS TITANIUM
A ROG Thor Titanium utiliza condensadores japoneses de ponta para garantir uma operação eficiente. Isto garante uma certificação 80 PLUS Titanium, que garante 89% de eficiência a 100% de carga e 92% a 50% de carga. A maior eficiência produz menos calor, reduzindo o ruído da ventoinha e aument', 7, N'N', CAST(799.90 AS Decimal(12, 2)), CAST(1039.87 AS Decimal(12, 2)), 0, N'A0074_1.jpg', N'A0074_2.jpg', N'A0074_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0075', N'CATG03', N'SUBCATG16', N'Teclado Mecânico Ducky One 3 Fuji TKL PBT PT Cherry MX Red', N'TECLADO DUCKY ONE 3
A Ducky apresenta o seu novo teclado mecânico One 3. Com base no sucesso do seu antecessor One 2, o One 3 destaca-se com a nova filosofia de design QUACK Mechanics da Ducky. O One 3 está equipado com inúmeras novas características tentadoras. O Ducky é uma experiência única de dactilografia para todos a partir do momento que se toca no keyboard!

 

TECLADO MECÂNICO HOT SWAPPABLE
Todos os teclados mecânicos padrão Ducky One 3 são hot-swappable e possuem sockets Kailh hot-swap. De cor amarela vibrante, as sockets Kailh foram escolhidas devido à sua impressionante fiabilidade. Os utilizadores podem simplesmente encaixar os switches no devido lugar e puxá-los para fora sem se preocuparem em soldá-los, o que faz com que seja a opção mais eficiente para desfrutar de uma vasta gama de switches mecânicos.

 

PBT VERDADEIRO
A QUACK Mechanics utiliza apenas os melhores materiais, as nossas teclas são feitas de PBT verdadeiro. As legendas discretas são formadas at', 13, N'N', CAST(139.90 AS Decimal(12, 2)), CAST(181.87 AS Decimal(12, 2)), 0, N'A0075_1.jpg', N'A0075_2.jpg', N'A0075_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0076', N'CATG03', N'SUBCATG15', N'Rato Óptico MSI Clutch GM20 Elite 6400DPI RGB Preto', N'SENSOR ÓPTICO RÁPIDO E PRECISO
Um sensor óptico PixArt PAW 3309 de última geração com até 6400 DPI pode acompanhar cada movimento seu.

RETROILUMINAÇÃO RGB MYSTIC LIGHT
Defina o clima com milhões de cores e uma gama de efeitos predefinidos ou sincronize-o com o resto da sua configuração RGB.

QUALIDADE DE CONSTRUÇÃO DURÁVEL
Desfrute de muitos anos de jogos com interruptores OMRON avaliados para mais de 20 milhões de cliques e um conector USB dourado.

SISTEMA DE AJUSTE DE PESO
Obtenha o peso do seu rato na medida certa com o sistema de peso ajustável.

DESIGN ERGONÓMICO
O design ergonómico para destros e a textura antiderrapante não só fornecem aos jogadores uma melhor aderência quando em uso, mas também oferecem melhor conforto durante as longas e intensas sessões de jogos.', 14, N'N', CAST(26.90 AS Decimal(12, 2)), CAST(34.97 AS Decimal(12, 2)), 0, N'A0076_1.jpg', N'A0076_2.jpg', N'A0076_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0077', N'CATG02', N'SUBCATG12', N'NAS QNAP TS-431P3-2G - 4 Baías - 1.7GHz 4-core - 2GB RAM', N'CRIAR UMA REDE DOMÉSTICA MAIS RÁPIDA COM A QNAP
O TS-431P3 inclui uma porta 1GbE e uma porta 2.5GbE para optimizar a experiência NAS e a reprodução de ficheiros multimédia. Outras opções de ligação à rede QNAP incluem adaptadores USB 3.2 Gen 1 a 5GbE (compatível com N-BASET/multi Gigabit), placas QXG 5GbE PCIe, e comutadores QNAP QSW 10GbE. O TS-431P3 possui três portas USB 3.2 Gen 1 que oferece uma excelente performance multitasking.

BACKUP MULTIPONTO, ACESSO E SINCRONIZAÇÃO DE FICHEIROS
Backup Multiponto, Acesso e Sincronização de Ficheiros O TS-431P3 suporta protocolos de partilha de ficheiros (incluindo SMB/CIFS, AFP e NFS) com dispositivos Windows®, Mac® e Linux®/UNIX®. Juntamente com o Qsync ( serviço que transforma o QNAP NAS num centro de dados seguro de alta capacidade para sincronização de ficheiros), qualquer ficheiro carregado para o TS-431P3 estará disponível para todos os dispositivos ligados (tais como computadores, portáteis e dispositivos móveis). O Hybrid Backup ', 14, N'N', CAST(444.90 AS Decimal(12, 2)), CAST(578.37 AS Decimal(12, 2)), 0, N'A0077_1.jpg', N'A0077_2.jpg', N'A0077_3.jpg', 0)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0078', N'CATG03', N'SUBCATG16', N'Teclado Ducky One 3 Daybreak TKL, Hot-swappable, MX-Blue, RG', N'TECLADO DUCKY ONE 3
A Ducky apresenta o seu novo teclado mecânico One 3. Com base no sucesso do seu antecessor One 2, o One 3 destaca-se com a nova filosofia de design QUACK Mechanics da Ducky. O One 3 está equipado com inúmeras novas características tentadoras. O Ducky é uma experiência única de dactilografia para todos a partir do momento que se toca no keyboard!

TECLADO MECÂNICO HOT SWAPPABLE
Todos os teclados mecânicos padrão Ducky One 3 são hot-swappable e possuem sockets Kailh hot-swap. De cor amarela vibrante, as sockets Kailh foram escolhidas devido à sua impressionante fiabilidade. Os utilizadores podem simplesmente encaixar os switches no devido lugar e puxá-los para fora sem se preocuparem em soldá-los, o que faz com que seja a opção mais eficiente para desfrutar de uma vasta gama de switches mecânicos.

CONSTRUÇÃO APERFEIÇOADA
A distribuição do peso e a altura reduzida da caixa melhora a estabilidade geral do teclado e o equilíbrio durante os momentos mais exigentes', 6, N'N', CAST(179.90 AS Decimal(12, 2)), CAST(233.87 AS Decimal(12, 2)), 0, N'A0078_1.jpg', N'A0078_2.jpg', N'A0078_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0079', N'CATG03', N'SUBCATG15', N'Rato Asus ROG Keris Wireless RGB 16000DPI Preto', N'FEITO PARA PROS
ROG Keris Wireless é um rato sem fios FPS leve de 79 gramas com três modos de ligação - com fios, RF 2,4 GHz, ou Bluetooth® LE - e um sensor ROG de 16.000 dpi especialmente ajustado. Também dispõe de push-fit switch sockets com ROG Micro, botões de polímero PBT à esquerda e à direita, botões laterais substituíveis, base ROG Omni Mouse, ROG Paracord e iluminação Aura Sync RGB.

TRÊS MODOS DE LIGAÇÃO
O ROG Keris Wireless pode ser ligado de uma de três maneiras - através de ultrafast 2,4 GHz, Bluetooth® LE com eficiência energética, ou USB com fio. Utilize 2,4 GHz sem fios para jogos, e mude para Bluetooth LE para tarefas diárias.

MÁXIMA PRECISÃO
Cada strike é crítico. No coração do ROG Keris Wireless está um sensor óptico que foi especialmente afinado pela ROG, dando-lhe uma exatidão e precisão infalível para vencer.

DESIGN ERGONÓMICO
A ROG recorreu à ajuda de jogadores profissionais na criação do Keris Wireless, utilizando o seu feedback para criar um rato ga', 10, N'N', CAST(99.90 AS Decimal(12, 2)), CAST(129.87 AS Decimal(12, 2)), 0, N'A0079_1.jpg', N'A0079_2.jpg', N'A0079_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0080', N'CATG01', N'SUBCATG02', N'Portátil MSI Sword 15 A12UE-205XPT 15.6" i7 16GB 512GB RTX 3', N'Processador: Intel® Core™ i7-12700H, 3.5GHz (24M Cache, up to 4.7GHz, 14 cores)
Sistema Operativo: Sistema Operativo não Incluído
Memória: 16GB de memória RAM DDR4 3200MHz (2 x 8GB)
Armazenamento: SSD 512GB NVMe PCIe Gen4x4
Ecrã: 15.6" FHD (1920 x 1080), 144Hz, IPS
Gráfica	Placa Gráfica: Nvidia GeForce RTX 3060, com 6GB de memória VRAM GDDR6
Interface: 1 x USB 3.2 Gen1 Type-C
Rede: Wi-Fi 6 802.11 ax
Bluetooth: 5.2
Câmara: HD (30fps@720p)
Cor: Branco', 13, N'N', CAST(1549.00 AS Decimal(12, 2)), CAST(2013.70 AS Decimal(12, 2)), 0, N'A0080_1.jpg', N'A0080_2.jpg', N'A0080_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0081', N'CATG05', N'SUBCATG24', N'Coluna Steelseries Arena 9', N'5.1 SOM SURROUND SOBRE USB
Experimente o áudio premiado da SteelSeries num sistema de som surround 5.1 verdadeiro mundial para jogos através de uma única ligação USB para PC. 2 altifalantes frontais e 2 altifalantes traseiros trabalham em uníssono com um altifalante dedicado de canal central e um subwoofer para dar vida ao seu som.

COLUNAS TRASEIRAS SEM FIOS
Os dois altifalantes traseiros ligam-se sem fios ao subwoofer, removendo os cabos que chegam de trás para a frente do seu espaço. Os suportes amovíveis com uma inserção roscada na parte de trás permitem a montagem na parede.

DESIGN DE COLUNAS EM 2 VIAS
Entre num mundo de áudio rico, detalhado, e preciso como condutores dinâmicos colaboram para produzir uma paisagem sonora altamente precisa e robusta. Os woofers tratam das frequências médias, permitindo aos tweeters concentrarem-se na máxima clareza dos altos.

POD DE CONTROLO
Um ecrã OLED informativo permite-lhe aceder facilmente ao volume, ao mute, 5,1 Upmix, comutação', 4, N'N', CAST(499.90 AS Decimal(12, 2)), CAST(649.87 AS Decimal(12, 2)), 0, N'A0081_1.jpg', N'A0081_2.jpg', N'A0081_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0082', N'CATG02', N'SUBCATG10', N'Caixa ATX Kolink Citadel Mesh ARGB Preto', N'CITADEL MESH
A Citadel Mesh tem sido uma das nossas caixas de PC Micro-ATX mais populares. Agora está disponível num formato completo ATX, de acordo com os pedidos e o feedback dos clientes. Uma combinação de aço e vidro temperado, a Caixa Kolink Citadel Mesh ATX ARGB está totalmente equipada para acomodar uma vasta gama de hardware de gaming e componentes de arrefecimento.

Graças ao painel frontal mesh e à ventilação lateral, o fluxo de ar natural desta caixa é excecional. Para reforçar, existem quatro ventoinhas de 120mm Umbra ARGB/PWM pré-instaladas ao longo dos painéis frontal e traseiro. O design é user-friendly, com uma gestão de cabos mais acessível e um interior cuidadosamente otimizado, tornando-a uma excelente caixa para todos os entusiastas de PCs.

CLÁSSICO CITADEL
Como versão ATX de tamanho completo da série Citadel Mesh, esta caixa partilha muitas das marcas estéticas desta gama que conhecemos e adoramos. O painel frontal é totalmente mesh e é elevado pela distinta', 7, N'N', CAST(129.90 AS Decimal(12, 2)), CAST(168.87 AS Decimal(12, 2)), 20, N'A0082_1.jpg', N'A0082_2.jpg', N'A0082_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0083', N'CATG01', N'SUBCATG03', N'Computador All-In-One Lenovo IdeaCentre AIO 3 24ITL6-025', N'Fabricante: Lenovo
Memória RAM: 8 GB
Capacidade de armazenamento: 512 GB
Arquitetura de CPU. Tiger Lake
Número Núcleos CPU: 4-Core
Série de CPU: Intel Core i5
Motor Gráfico (GPU): Intel UHD Graphics
Tamanho Ecrã: 23.8"
Ecrã Touch. Não
Resolução: 1920 x 1080 (Full HD)
Processador: Intel Core i5-1135G7
Sistema Operativo: Windows 11 Home
Tipo de Armazenamento: SSD', 13, N'N', CAST(799.90 AS Decimal(12, 2)), CAST(1039.87 AS Decimal(12, 2)), 0, N'A0083_1.jpg', N'A0083_2.jpg', N'A0083_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0084', N'CATG02', N'SUBCATG14', N'Pasta Térmica Corsair TM30 Performance 3g', N'A pasta térmica CORSAIR TM30 ajuda a potencializar o seu PC, com um material térmico premium de óxido de zinco e baixa viscosidade fácil de ser aplicado.

COMPOSTO TÉRMICO PARA ENTUSIASTAS DE CPUS E GPUS
Composto térmico premium feito de óxido de zinco para o desempenho térmico ideal, melhorando a transferência de calor e reduzindo as temperaturas.

MELHOR RESFRIAMENTO DE CPU
A impedância térmica ultrabaixa reduz a temperatura do CPU quando comparada com pastas térmicas comuns.

PREENCHE AS LACUNAS
A baixa viscosidade da CORSAIR TM30 permite que ela preencha facilmente orifícios e canais microscópicos no dissipador de calor do seu CPU e a placa de contato do cooler para maximizar a área de transferência térmica.

FIÁVEL E SEGURA
O composto líquido de alta estabilidade da CORSAIR TM30 dura anos sem secar, quebrar ou alterar a sua consistência. Por isso, você não precisa de se preocupar com a troca ou reaplicação da pasta térmica frequentemente. A TM30 não é condutora e não c', 16, N'N', CAST(6.90 AS Decimal(12, 2)), CAST(8.97 AS Decimal(12, 2)), 0, N'A0084_1.jpg', N'A0084_2.jpg', N'A0084_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0085', N'CATG02', N'SUBCATG13', N'Cooler CPU Noctua NH-D15', N'Construído com base no lendário NH-D14 e depois de elevado estudo da Noctua de forma a oferecer o melhor desempenho conjugado com silêncio, o modelo NH-D15 é um disipador de dupla torre que cumpre com as mais altas expectativas. A disposição mais separada dos heatpipes e das ventoinhas NF-A15 de 140 milímetro com suporte PWM para um controlo automático da velocidade, permite o melhoramento da eficiência do galardoado NH-D14. Equipado com o fiável sistema multisocket SecuFirm2™ e com o aclamado composto térmico NT-H1 da Noctua, o NH-D15 é a escolha perfeita para os utilizadores e entusiastas do silêncio.', 5, N'N', CAST(109.90 AS Decimal(12, 2)), CAST(142.87 AS Decimal(12, 2)), 0, N'A0085_1.jpg', N'A0085_2.jpg', N'A0085_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0086', N'CATG02', N'SUBCATG13', N'Water Cooler CPU MSI MAG CoreLiquid C240 All-In-One', N'Os Water Coolers MAG CORELIQUID C Series apresentam uma grande iluminação ARGB de superfície que certamente deslumbrará a sua construção. Ele é dividido em quatro partes de áreas exclusivas de corte de diamante, com três capazes de iluminar e a última apresentando orgulhosamente o emblema do logotipo da MSI.', 7, N'N', CAST(139.90 AS Decimal(12, 2)), CAST(181.87 AS Decimal(12, 2)), 0, N'A0086_1.jpg', N'A0086_2.jpg', N'A0086_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0087', N'CATG02', N'SUBCATG06', N'Motherboard ATX Gigabyte X670 Aorus Elite AX', N'DESEMPENHO INIGUALÁVEL
Com as rápidas mudanças tecnológicas, a GIGABYTE segue sempre as últimas tendências e fornece aos clientes características avançadas e tecnologias mais recentes. As motherboards da GIGABYTE estão equipadas com uma solução de potência actualizada, os mais recentes padrões de armazenamento e uma conectividade excepcional para permitir um desempenho optimizado para jogos.

DESIGN TÉRMICO EXCEPCIONAL
O desempenho inigualável das motherboards GIGABYTE é garantido por um design térmico inovador e otimizado para assegurar o melhor CPU, Chipset, estabilidade SSD e baixas temperaturas sob aplicação de carga completa e desempenho para jogos.

CONECTIVIDADE
As motherboards GIGABYTE permitem a melhor experiência de ligação com velocidades de transferência de dados em chamas através da próxima geração de rede, armazenamento, e conectividade Wi-Fi.

PERSONALIZAÇÃO
As motherboards da GIGABYTE incluem vários softwares úteis e intuitivos para ajudar os utilizadores a co', 25, N'N', CAST(379.90 AS Decimal(12, 2)), CAST(493.87 AS Decimal(12, 2)), 0, N'A0087_1.jpg', N'A0087_2.jpg', N'A0087_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0088', N'CATG03', N'SUBCATG18', N'Headset Asus ROG Delta Gaming RGB Preto', N'O ROG Delta é o primeiro headset para gaming no mundo com o ESS 9218 quad DAC, líder do setor e de alta fidelidade, que proporciona um som impecável e detalhado para dar aos jogadores experientes a vantagem que precisam para vencer. O ROG Delta possui um conector USB-C e vem com um adaptador USB-C para USB 2.0. Um efeito de iluminação RGB circular único, de arco-íris, proporciona um visual estiloso para destacar você no campo de batalha.
OUÇA CADA DETALHE - SABRE QUAD-DAC ESS ES9218
Algumas pessoas dizem que não há um bom headset para jogos. Essas pessoas nunca experimentaram o ROG Delta. O ESS 9218 Quad-DAC de alta fidelidade fornece processamento de áudio sem perdas, com cada DAC a dedicar a sua capacidade de processamento a um subconjunto da faixa de frequência audível, de baixas, médias, altas a ultra-altas. Os quatro sinais são então combinados, o que produz um som mais claro com um impressionante SNR de 127 dB, muito superior a qualquer dispositivo no mercado. Como resultado, v', 8, N'N', CAST(162.90 AS Decimal(12, 2)), CAST(211.77 AS Decimal(12, 2)), 0, N'A0088_1.jpg', N'A0088_2.jpg', N'A0088_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0089', N'CATG02', N'SUBCATG08', N'Memória RAM G.SKILL Aegis 16GB (2x8GB) DDR4-3200MHz CL16 Pre', N'A SOLUÇÃO IDEAL PARA COMPUTADORES GAMING
Aegis simboliza força e poder. Esta adição de memória DDR4 à família AEGIS é projetada para um desempenho melhorado e alta estabilidade nos mais recentes sistemas de jogo para PC. Dê o desempenho de qualidade que a sua plataforma gaming merece. Não importa o jogo. Quer se trate de FPS RTS MOBA ou MMORPG deixe a memória AEGIS Gaming DDR4 ser a força do seu arsenal de jogo!
CONSTRUÍDA PARA QUALIDADE
Construídas com ICs selecionados de alta qualidade e testados com rigorosos processo de validação da G.SKILL em todas as principais marcas de motherboards as memória AEGIS Gaming DDR4 são projetadas para a melhor compatibilidade e estabilidade.

EFICIÊNCIA ENERGÉTICA
Projetadas com baixa tensão de 1.2V ~ 1.35V no padrão DDR4 isso reduz o requisito de tensão da memória em 20% em relação aos kits de memória DDR3!', 10, N'N', CAST(52.30 AS Decimal(12, 2)), CAST(67.99 AS Decimal(12, 2)), 0, N'A0089_1.jpg', N'A0089_2.jpg', N'A0089_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0090', N'CATG02', N'SUBCATG10', N'Caixa ATX Nox Hummer Quantum RGB Full Tempered Glass Preta', N'Uma caixa robusta com um design original e inovador que permite criar efeitos de cores espetaculares graças às quatro ventoinhas ARGB de 120 mm que ela inclui e que você pode contemplar o tempo todo graças ao seu painel lateral de vidro temperado.

PAINEL FRONTAL
No painel frontal superior, você pode controlar a cor das ventoinhas, além de conectar até 3 USB, uma vez que possui duas conexões 2.0. e uma de alta velocidade 3.0, bem como conexões de áudio.

OPÇÕES DE ARMAZENAMENTO
A Hummer Quantum oferece amplas possibilidades para uma configuração de alto desempenho. É compatível com motherboards ATX, Micro ATX e ITX e possui espaço suficiente para montar dois HDDs de 3,5" e sete SSDs de 2,5". Além disso, para uma configuração mais limpa, possui um sistema de roteamento de cabos de 29 mm para montagem segura e ordenada.

REFRIGERAÇÃO
Uma caixa projetada para instalar opções diferentes em termos de refrigeração e ventilação. Permite instalar até 6 ventoinhas ARGB: três delas no p', 5, N'N', CAST(76.90 AS Decimal(12, 2)), CAST(99.97 AS Decimal(12, 2)), 0, N'A0090_1.jpg', N'A0090_2.jpg', N'A0090_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0091', N'CATG03', N'SUBCATG20', N'Webcam Mars Gaming MWPROW FHD 1080p Branca', N'CMOS ULTRA LARGO 90º FULL HD - 6 CAMADAS DE VIDRO
Excelente qualidade de imagem CMOS FULL HD 1920x1080 com óptica ultra larga de 90º para mais espaço nas suas transmissões sem distorção de imagem, mesmo a distâncias muito curtas. Além disso, as suas 6 camadas de vidro oferecem uma qualidade profissional impecável. Os seus espectadores ficarão completamente imersos no seu streaming com uma imagem nítida e um movimento suave.

ESCOLHA A SUA COR: BRANCO OU PRETO
Disponível em dois acabamentos, branco e preto, escolha o que melhor se adapta à sua configuração!

ANEL LUMINOSO
Mostre sempre o seu melhor rosto com iluminação sem sombras indesejadas e acabamentos de pele perfeitos, graças à luz anular ajustável incorporada. Não necessitará de acessórios de iluminação adicionais, poupando espaço e dinheiro.

HD ILUMINAÇÃO ADAPTATIVA
Graças ao seu avançado processador de imagem, o MWPRO irá adaptar a iluminação da captação CMOS em tempo real para fornecer sempre a melhor imagem possíve', 12, N'N', CAST(29.90 AS Decimal(12, 2)), CAST(38.87 AS Decimal(12, 2)), 0, N'A0091_1.jpg', N'A0091_2.jpg', N'A0091_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0092', N'CATG03', N'SUBCATG20', N'Webcam Lenovo 510 Full HD 1080p Cinza Claro', N'FÁCIL DE UTILIZAR
Uma câmara de vídeo USB (UVC) compatível com a classe de vídeo, concebida para aplicações de teleconferência em ambiente de trabalho ou portátil. É um dispositivo de vídeo digital fiável para transferir dados de vídeo com qualidade HD através de uma interface USB de alta velocidade em modo Full HD que fornece imagens claras para todas as suas necessidades de videoconferência. É fácil de operar, e o mecanismo mecânico funcional cria uma excelente experiência de utilizador. Alimenta ou transmite a sua imagem em tempo real através de um computador para uma rede informática, e também proporciona um reconhecimento facial rápido e seguro para o Windows Hello.', 5, N'N', CAST(47.90 AS Decimal(12, 2)), CAST(62.27 AS Decimal(12, 2)), 0, N'A0092_1.jpg', N'A0092_2.jpg', N'A0092_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0093', N'CATG03', N'SUBCATG19', N'Microfone Ewent EW3550 Multimedia', N'O microfone multimédia Ewent é perfeito para chamadas pela Internet. Coloque o microfone no suporte ajustável para comunicação mãos-livres! Você prefere conectar o microfone ao seu monitor? Sem problemas! O microfone multimédia vem com um clipe autoadesivo. Este microfone é muito compacto e funcional. Você também pode gravar som no seu computador e enviá-lo por e-mail para os seus amigos ou familiares. O microfone multimédia Ewent está equipado com um mini conector estéreo de 3,5 mm.', 8, N'N', CAST(3.90 AS Decimal(12, 2)), CAST(5.07 AS Decimal(12, 2)), 0, N'A0093_1.jpg', N'A0093_2.jpg', N'A0093_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0094', N'CATG03', N'SUBCATG19', N'Microfone MSI Immerse GV60 Streaming', N'MICROFONE STREAMING
O primeiro microfone streaming do MSI, IMMERSE GV60 STREAMING MIC, é desenvolvido com o mesmo ADN que tornou os dispositivos áudio MSI anteriores excelentes. O GV60 distingue-se de outros microfones de streaming ao incorporar todas as características principais que os criadores de streamers e conteúdos pretendem: taxa de amostragem de alta resolução, padrões de captação versáteis, monitorização em tempo real, e plug & play para facilidade de utilização. Este elegante microfone de alumínio fosco transforma instantaneamente qualquer configuração num estúdio para si, ao mesmo tempo que lhe proporciona uma qualidade de gravação sem compromissos com uma taxa de amostragem de alta resolução de 24bit/96kHz.', 5, N'N', CAST(101.90 AS Decimal(12, 2)), CAST(132.47 AS Decimal(12, 2)), 0, N'A0094_1.jpg', N'A0094_2.jpg', N'A0094_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0095', N'CATG05', N'SUBCATG26', N'Soundbar LG S80QR 5.1.3 Canais 620W High Res Audio com Merid', N'MELHOR SOM COM O PROCESSADOR DE IA DA TV LG
A combinação perfeita para a sua TV LG, a barra de som LG possui a Partilha do Modo de Som da TV, que utiliza o processador de som da sua TV LG para analisar o conteúdo que adora e proporcionar um som mais nítido e de melhor qualidade. Desde ver as notícias a jogar jogos, poderá usufruir ao máximo da sua TV LG.

SOM DE CINEMA EM CASA VERDADEIRAMENTE IMERSIVO DE 5.1.3 CANAIS
Áudio de 5.1.3 canais, potência de 620 W, canais verticais triplos, 2 colunas traseiras e um subwoofer. A barra de som LG S80QR é o pacote completo com som nítido e imersivo para uma experiência melhorada de som surround.

PRIMEIROS CANAIS VERTICAIS TRIPLOS DO MUNDO
A barra de som LG é a primeira barra de som com diafragma vertical central e certificado Dolby. Isto significa que a LG barra de som S80QR proporciona uma experiência áudio mais avançada; uma experiência diferenciada com nitidez de voz e um palco sonoro mais amplo. Desfrute da experiência de som mais ime', 10, N'N', CAST(999.90 AS Decimal(12, 2)), CAST(1299.87 AS Decimal(12, 2)), 0, N'A0095_1.jpg', N'A0095_2.jpg', N'A0095_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0096', N'CATG02', N'SUBCATG09', N'Fonte de Alimentação EVGA SuperNOVA G6 750W 80 Plus Gold Ful', N'As fontes de alimentação EVGA SuperNOVA G6 apresentam um novo design de plataforma, usando novos materiais e melhor posicionamento de layout para obter maior desempenho com ondulação e ruído extremamente baixos num formato ainda mais pequeno.

PLATAFORMA NEXT-GEN
Com uma ponte completa, retificação ressonante LLC e design DC-DC, A SuperNOVA G6 oferece estabilidade sólida, eficiência implacável e regulação de tensão extremamente rígida.

HARDWARE + FIRMWARE OPP
O OPP de hardware foi projetado para desarmar em potência máxima de 135% como último recurso para proteger o sistema, mas a SuperNOVA G6 também possui OPP por firmware para antecipar comportamento de carga prejudicial 5-10% antes, desligando a fonte de alimentação quando as condições de sobrecarga persistirem mais de 1 ms, evitando um mau funcionamento da proteção do gatilho de sobrecarga instantânea durante o pico momentâneo de potência.

TAMANHO COMPACTO, MAIS DESEMPENHO.
A eficiência aprimorada e a regulação de tensão', 5, N'N', CAST(132.90 AS Decimal(12, 2)), CAST(172.77 AS Decimal(12, 2)), 0, N'A0096_1.jpg', N'A0096_2.jpg', N'A0096_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0097', N'CATG02', N'SUBCATG09', N'Fonte de Alimentação ATX Seasonic G12 GM 750W 80 PLUS Gold S', N'A série G12 GM está disponível no formato ATX padrão e nas potências mais comuns para um sistema de PC. A Seasonic G12 GM-Series atinge o padrão 80 PLUS® Gold de fornecer pelo menos 87%, 90% e 87% de eficiência de uso de energia em 20%, 50% e 100% de cargas operacionais, respectivamente. Essa eficiência, combinada com a Correção do Fator de Potência Ativa, permite que as fontes de alimentação da série G12 GM diminuam o desperdício de energia, o que se traduz em economia nos custos de energia para os utilizadores. Além de serem muito eficientes, as unidades G12 GM utilizam o design do conversor ressonante LLC e o controlo de ventoinha inteligente e silencioso (S2FC) líder do setor.', 8, N'N', CAST(99.90 AS Decimal(12, 2)), CAST(129.87 AS Decimal(12, 2)), 0, N'A0097_1.jpg', N'A0097_2.jpg', N'A0097_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0098', N'CATG01', N'SUBCATG02', N'Portátil MSI 17.3" Katana GF76 12UE-425XPT', N'Processador: Intel® Core™ i7-12700H, 3.5GHz (24M Cache, up to 4.7GHz, 14 cores)
Sistema Operativo: Windows 11 Home
Memória: 16GB de memória RAM DDR4 3200MHz (2 x 8GB)
Armazenamento: SSD M.2 512GB NVMe PCIe Gen 4x4
Ecrã: 17.3" FHD (1920 x 1080), 144Hz, IPS
Gráfica	Placa Gráfica: Nvidia GeForce RTX 3050Ti, com 4GB de memória VRAM GDDR6
Rede: 802.11 ax Wi-Fi 6
Bluetooth: 5.2
Câmara: HD(30fps@720p)
Peso: 2.6 kg
Cor: Preto
', 6, N'N', CAST(1549.90 AS Decimal(12, 2)), CAST(2014.87 AS Decimal(12, 2)), 0, N'A0098_1.jpg', N'A0098_2.jpg', N'A0098_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0099', N'CATG05', N'SUBCATG27', N'Coluna Marshall Kilburn II Bluetooth Black & Bras', N'20+ HORAS DE TEMPO DE REPRODUÇÃO
A Kilburn II pesa apenas 2,5 kg e oferece mais de 20 horas de reprodução portáteis com uma única carga. O seu tamanho compacto e a sua correia de transporte inspirada na guitarra tornam-na perfeita para levar consigo. Pode acompanhar a duração da bateria do altifalante com o indicador visual de bateria localizado no painel superior do altifalante.

SOM MULTIDIRECCIONAL
Este herói de coração robusto oferece um som maior multidireccional que o mergulhará na sua música, dentro de casa ou fora. Alimentado por 36 Watts, o seu som pronunciado e articulado empurra os limites para um altifalante deste tamanho.

BLUETOOTH 5.0 APTX
A Kilburn II vem equipada com tecnologia Bluetooth 5.0 aptX para a reprodução de música sem fios. Reproduz música com qualquer dispositivo Bluetooth a uma distância de até 10 metros da coluna.

DESENHO DURÁVEL
A Kilburn II apresenta tampas de canto embutidas e um desenho resistente à água, tornando-a extremamente robusta e du', 9, N'N', CAST(269.90 AS Decimal(12, 2)), CAST(350.87 AS Decimal(12, 2)), 0, N'A0099_1.jpg', N'A0099_2.jpg', N'A0099_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0100', N'CATG05', N'SUBCATG25', N'Aparelhagem Micro Hi-Fi Philips TAM4205/12 60W e FM Preta', N'Este micro sistema de aspeto clássico permite-lhe transmitir música e podcasts, reproduzir CD e ouvir rádio FM — tudo com um som rico de 60 W. É perfeito para uma sala de estar ou um espaço aberto de convívio e pode ligar outras fontes através de USB ou entrada de áudio.

TODA A SUA MÚSICA
Este elegante micro sistema permite-lhe transmitir listas de reprodução e muito mais via Bluetooth, reproduzir CD e ouvir rádio FM. O sintonizador de rádio digital com 10 predefinições proporciona uma receção clara e o leitor de CD é capaz de ler CD MP3 e CD gravados.

ALTIFALANTES BASS-REFLEX. TONS BAIXOS MAIS RICOS
Estes altifalantes de prateleira emitem sons nítidos e graves de boa qualidade, graças à combinação entre woofer, tweeter e portas bass-reflex. Uma saída com um máximo de 60 W proporciona um som envolvente em qualquer divisão. Perfeito para uma sala de estar ou espaço aberto de convívio.

DESIGN CLÁSSICO
A unidade central de dois tons e as caixas dos altifalantes relembram o des', 13, N'N', CAST(199.90 AS Decimal(12, 2)), CAST(259.87 AS Decimal(12, 2)), 0, N'A0100_1.jpg', N'A0100_2.jpg', N'A0100_3.jpg', 1)
GO
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0101', N'CATG02', N'SUBCATG12', N'Placa de Rede Asus PCE-AX58BT - AX3000 Dual Band PCI-E WiFi ', N'WIFI 2.7X MAIS RÁPIDO, MESMO EM REDES MOVIMENTADAS
Com a tecnologia WiFi 6 (802.11ax) e largura de banda 160MHz, a placa de rede Asus PCE-AX58BT disponibiliza velocidades sem fios até 2.7 vezes mais rápidas que aparelhos WiFi 5 (802.11ac). A combinação revolucionária das tecnologias OFDMA e MU-MIMO garantem a mais eficiente ligação WiFi para o seu computador. A conectividade MU-MIMO e a inovação tecnológica OFDMA alocam eficientemente largura de banda e comunicam com múltiplos dispositivos em simultâneo. A grande vantagens é uma ligação mais estável e mais rápida para todos os aparelhos.

WIFI MELHOR E POSICIONAMENTO ÓPTIMO DAS ANTENAS
A placa de rede Asus PCE-AX58BT vem com uma base externa que permite posicionar as antenas no exterior do seu computador e ajustar o seu ângulo para obter menos interferências e um sinal de rede óptimo.

BLUETOOTH 2X MAIS RÁPIDO E COM 4X MAIS ALCANCE
Com a Asus PCE-AX58BT beneficiará da conveniência de ligações sem fios a uma gama alargada de disp', 23, N'N', CAST(62.90 AS Decimal(12, 2)), CAST(81.77 AS Decimal(12, 2)), 0, N'A0101_1.jpg', N'A0101_2.jpg', N'A0101_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0102', N'CATG02', N'SUBCATG12', N'Placa de Rede TP-Link Archer TXE75E AXE5400 Wi-Fi 6E & Bluet', N'ATUALIZAR O SEU WIFI PARA 6E
WiFi 6E significa WiFi 6 alargado para a banda de 6 GHz, uma banda de frequência recentemente aberta que acrescenta mais largura de banda, velocidades mais rápidas e menor latência. Isto abre recursos para futuras inovações em AR/VR, 8K streaming, e muito mais.

SUPER AUTO-ESTRADA PARA O STREAMING DESIMPEDIDO
A Archer TXE75E arma o seu PC com a banda de 6 GHz recentemente aberta, desbloqueando todo o potencial do seu router WiFi 6E. Desfrute de streaming desimpedido na banda de 6 GHz - exclusivo para dispositivos WiFi 6E. Isto evita quedas de velocidade e interferências de dispositivos herdados.

RECEPÇÃO WIFI SUPERIOR
A Archer TXE75E leva a recepção WiFi do seu PC ao próximo nível com a combinação revolucionária de OFDMA e MU-MIMO. Isto assegura a eficiência da ligação WiFi do seu PC, permitindo que mais dispositivos comuniquem com o seu router simultaneamente, em vez de esperar por dados por sua vez.

LIGAÇÃO MAIS FORTE COM COLOCAÇÃO DE ANTENA FL', 5, N'N', CAST(83.90 AS Decimal(12, 2)), CAST(109.07 AS Decimal(12, 2)), 0, N'A0102_1.jpg', N'A0102_2.jpg', N'A0102_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0103', N'CATG02', N'SUBCATG07', N'Placa Gráfica XFX Radeon RX 7900 XT Gaming 20GB GDDR6', N'Construídas com base na inovadora arquitetura AMD RDNA™ 3 com tecnologia de chiplet, as placas de vídeo AMD Radeon™ Série RX 7900 XT oferecem desempenho, recursos visuais e eficiência de última geração em 4K e mais além.

AMD SOFTWARE: ADRENALIN EDITION
Criado para fornecer uma interface limpa, moderna e fácil de usar, onde você pode acessar rapidamente os recursos de software mais recentes, estatísticas de jogo, relatórios de desempenho, atualizações de driver e muito mais – tudo a partir de um local conveniente Use o atalho ATL+R para abrir o AMD Software: Adrenalin Edition diretamente no jogo, tornando ainda mais conveniente e fácil ajustar seus recursos favoritos e obter uma experiência fantástica de jogo.

POSSIBILITE A JOGABILIDADE COM FLUIDEZ LÍQUIDA NO SEU SISTEMA COM TECNOLOGIA RADEON™
O Enhanced Sync ajuda os jogadores a minimizar o rasgo de tela enquanto diminui a latência e a intermitência do V-sync tradicional. Disponível para jogos baseados em APIs DirectX® 9, 11, 1', 11, N'N', CAST(1059.90 AS Decimal(12, 2)), CAST(1377.87 AS Decimal(12, 2)), 0, N'A0103_1.jpg', N'A0103_2.jpg', N'A0103_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0104', N'CATG03', N'SUBCATG15', N'Rato Óptico Glorious PC Gaming Race Model O Minus 12000DPI P', N'ESTE É O MODELO O, O RATO PARA JOGOS RGB MAIS LEVE DO MUNDO
Idealizado por uma comunidade de jogadores apaixonados e desenvolvido por uma equipa que aceita nada menos que a perfeição - o Modelo O elevará o seu jogo a níveis inimagináveis. Construído para velocidade, controlo e conforto - reunimos um conjunto completo de recursos ultra premium numa estrutura ambidestra incrivelmente leve. Bem-vindo ao próximo nível de jogos competitivos de E-Sports. Prepare-se para a Ascensão.

HONEYCOMB SHELL - FORÇA E CONFORTO
A estrutura HoneyComb Shell do rato O é a chave para obter um peso leve, mantendo a sua força ultra-durável. Mal sentirá os buracos durante o jogo, mas eles fornecem providenciam ventilação para manter as palmas das mãos frescas. A limpeza é fácil, basta usar qualquer lata de ar comprimido para manter o rato como novo.

CABO ASCEND - LEVE E FLEXÍVEL - COMO SE NEM ESTIVESSE LÁ
Os cabos de stock são péssimos. Diga adeus às alterações e adaptações e diga olá ao cabo Ascend. ', 14, N'N', CAST(59.90 AS Decimal(12, 2)), CAST(77.87 AS Decimal(12, 2)), 0, N'A0104_1.jpg', N'A0104_2.jpg', N'A0104_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0105', N'CATG03', N'SUBCATG16', N'Teclado Microsoft Wired Keyboard 600 PT', N'Você não precisa mais de procurar um teclado de qualidade por um excelente valor. Obtenha todos os recursos de que precisa e muito mais com a qualidade e a confiabilidade da Microsoft. As teclas Quiet Touch e o acesso rápido às teclas de mídia simplificam a maneira como você usa o computador.

MEDIA CENTER
Quatro teclas de acesso permitem controlar as actividades de mídia mais usadas (reproduzir/pausar aumentar o volume diminuir o volume e ativar mudo).

TECLAS SILENCIOSAS
Teclas de perfil ultrafino silenciosas e com resposta.

TECLA DE ACESSO DA CALCULADORA
Com o toque de um botão você pode aceder rapidamente à Calculadora.

DESIGN À PROVA DE DERRAMES
Mate sua sede enquanto trabalha – este teclado foi projectado para ser à prova de derramamentos acidentais.

BOTÃO INICIAR DO WINDOWS
Basta pressionar para abrir o menu Iniciar e pesquisar no seu PC ou na Web caso tenha o Windows Vista ou superior instalado.', 17, N'N', CAST(14.90 AS Decimal(12, 2)), CAST(19.37 AS Decimal(12, 2)), 0, N'A0105_1.jpg', N'A0105_2.jpg', N'A0105_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0106', N'CATG03', N'SUBCATG16', N'Teclado Rapoo N2400 Wired Spill-resistant Keyboard PT Preto', N'DESENHO À PROVA DE DERRAMAMENTO
Bebidas permitidas no seu ambiente de trabalho. O design inteligente e a escolha de materiais protegem o teclado contra danos causados por salpicos.

MEMBRANA ANTI-OXIDAÇÃO SELADA
Mais vale prevenir do que remediar. A membrana selada prolonga a vida do seu teclado. Impede a oxidação da informação circuitos, minimizando o risco de defeitos-chave.

FÁCIL INSTALAÇÃO
Plug and play. Não é necessário drivers ou configuração. Basta ligá-lo a uma porta USB e está pronto a funcionar.', 7, N'N', CAST(14.90 AS Decimal(12, 2)), CAST(19.37 AS Decimal(12, 2)), 0, N'A0106_1.jpg', N'A0106_2.jpg', N'A0106_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0107', N'CATG04', N'SUBCATG23', N'Projetor LG HU85LS CineBeam Laser 4K AI ThinQ', N'O SEU CINEMA DE SONHO EM CASA
Cinema em casa de tirar o fôlego através do mais recente LG Laser 4K CineBeam HU85L. Configure o seu cinema em qualquer lugar da casa.

EXPERIÊNCIA VISUAL INCOMPARÁVEL
Experimente um ambiente de visualização verdadeiramente cinematográfico, aplicando a tecnologia inovadora da LG para a experiência visual, com um ecrã de projeção até 120 polegadas que permanece nítido e e definido.

QUALIDADE DE IMAGEM 4K REALISTA
Com 8,3 milhões de píxeis que utilizam tecnologia XPR, o HU85L fornece uma precisão e detalhes impecáveis com quatro vezes a resolução de Full HD.

LASER DE 3 CANAIS - PRECISÃO DE COR AVANÇADA
A tecnologia de laser de 3 canais com a inclusão de uma fonte vermelha de luz laser para um laser azul típico, suporta Rec.709 e DCI com maior cobertura de cores, que pode garantir desempenhos de reprodução de cor incríveis até um processamento de cor de 12 bits.

LASER DE 3 CANAIS COM TECNOLOGIA SEM RODA
O HU85L com laser de 3 canais, usa as co', 23, N'N', CAST(4729.90 AS Decimal(12, 2)), CAST(6148.87 AS Decimal(12, 2)), 0, N'A0107_1.jpg', N'A0107_2.jpg', N'A0107_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0108', N'CATG02', N'SUBCATG10', N'Caixa Micro-ATX 1Life cm:pack Preta', N'A 1Life cm:pack é uma caixa para PC Micro-ATX. A solução ideal para espaços corporativos ou escritórios domésticos.

SOLUÇÃO FUNCIONAL
Funcionalidade num design compacto. A solução ideal para espaços corporativos ou escritórios domésticos.

VENTOINHA INCLUÍDA
1Life cm:pack inclui 1 ventoinha. Poderá expandir o sistema de ventilação com instalação adicional para um total de 2 ventoinhas', 4, N'N', CAST(24.90 AS Decimal(12, 2)), CAST(32.37 AS Decimal(12, 2)), 0, N'A0108_1.jpg', N'A0108_2.jpg', N'A0108_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0109', N'CATG02', N'SUBCATG10', N'Caixa ATX MPG QUIETUDE 100S ARGB Preta', N'NÃO SE OUVE, MAS ESTÁ A CHEGAR
Para as pessoas que desejam uma configuração modesta e mais reservada, enquanto mantém as coisas divertidas, esta é a melhor solução. A MPG QUIETUDE 100S é a nossa primeira caixa de PC para jogos silenciosa que apresenta uma variedade de especificações de amortecimento de ruído e materiais premium.

MODESTO E DECENTE
O painel frontal do MPG QUIETUDE 100S é acoplado magneticamente. Uma vez removido, revela o filtro de pó por baixo.

MEG SILENT GALE P12
O MPG QUIETUDE 100S apresenta a ventoinha MEG SILENT GALE P12 da MSI, capaz de gerar fluxo de ar suficiente para o arrefecimento do sistema, mantendo os baixos níveis de ruído.

CONTROLO DE VELOCIDADE DE VENTOINHA DE 3 ESTÁGIOS
O MPG QUIETUDE 100S possui um botão de controlo de velocidade da ventoinha, capaz de definir a velocidade da ventoinha em 100%, 70% ou 0% RPM dependendo das suas necessidades.

ESPUMA DE AMORTECIMENTO DE SOM
O MPG QUIETUDE 100S possui três painéis com espumas de amortecim', 7, N'N', CAST(154.90 AS Decimal(12, 2)), CAST(201.37 AS Decimal(12, 2)), 0, N'A0109_1.jpg', N'A0109_2.jpg', N'A0109_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0110', N'CATG02', N'SUBCATG06', N'Motherboard Micro-ATX Asus Prime H610M-D D4', N'FLEXIBILIDADE
Os controlos abrangentes formam a base da série ASUS Prime. A Prime B660 dispõe de ferramentas flexíveis para afinar todos os aspectos do seu sistema, permitindo que os ajustes de desempenho correspondam perfeitamente à forma como trabalha para maximizar a produtividade.

EFICIÊNCIA ENERGÉTICA INTEGRAL
A Unidade de Processamento de Energia (EPU) optimiza automaticamente o consumo de energia e maximiza a poupança de energia com o modo Away - uma configuração inteligente que cria um cenário de extrema poupança de energia, desligando os controladores de I/O não utilizados.

BIOS UEFI
A famosa ASUS UEFI BIOS fornece tudo o que precisa para configurar e afinar o seu sistema. Oferece opções inteligentemente simplificadas para principiantes de construção no PC, bem como características abrangentes para veteranos experientes.

DISSIPADOR DE CALOR M.2
O dissipador de calor M.2 afasta o estrangulamento que pode ocorrer com o armazenamento de M.2 durante transferências sus', 11, N'N', CAST(119.90 AS Decimal(12, 2)), CAST(155.87 AS Decimal(12, 2)), 0, N'A0110_1.jpg', N'A0110_2.jpg', N'A0110_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0111', N'CATG04', N'SUBCATG22', N'Televisão Sony X90K Series SmartTV 75" LED 4K UHD Google TV', N'Fabricante: Sony
Campanha: TV Sony
Classe Energética: E
Tamanho Ecrã: 75"
Resolução: 3840 x 2160 (4K Ultra HD)
Taxa de Atualização Ecrã: 120 Hz
Padrão VESA: 300 x 300 mm
Sistema Operativo: Google TV
Tecnologia de Exibição: LED', 6, N'N', CAST(2699.00 AS Decimal(12, 2)), CAST(3508.70 AS Decimal(12, 2)), 0, N'A0111_1.jpg', N'A0111_2.jpg', N'A0111_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0112', N'CATG04', N'SUBCATG22', N'Televisão Hisense 55A6BG SmartTV 55" LED 4K UHD', N'Fabricante: Hisense
Campanha: Hisense TVs
Classe Energética: F
Tamanho Ecrã: 55"
Resolução: 3840 x 2160 (4K Ultra HD)
Taxa de Atualização Ecrã: 60 Hz
Padrão VESA: 200 x 300 mm
Sistema Operativo: VIDAA U
Tecnologia de Exibição: LED', 5, N'N', CAST(399.90 AS Decimal(12, 2)), CAST(519.87 AS Decimal(12, 2)), 0, N'A0112_1.jpg', N'A0112_2.jpg', N'A0112_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0113', N'CATG01', N'SUBCATG02', N'Portátil MSI 15.6" Modern 15 A5M-286XPT', N'Fabricante: MSI
Memória RAM: 8 GB
Arquitetura de CPU: Zen 2
Número Núcleos CPU: 6-Core
Capacidade de armazenamento: 512 GB
Motor Gráfico (GPU): Radeon Graphics
Processador: AMD Ryzen 5 5500U
Taxa de Atualização Ecrã: 60 Hz
Tipo Teclado: Retroiluminado
Tamanho Ecrã: 15.6"
Ecrã Touch: Não
Resolução: 1920 x 1080 (Full HD)
Série de CPU: AMD Ryzen 5
Sistema Operativo: Não Incluído', 5, N'N', CAST(569.90 AS Decimal(12, 2)), CAST(740.87 AS Decimal(12, 2)), 0, N'A0113_1.jpg', N'A0113_2.jpg', N'A0113_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0114', N'CATG02', N'SUBCATG09', N'Fonte de Alimentação Kolink Enclave 600W 80PLUS Gold Full Mo', N'A série Enclave da Kolink representa uma nova série de fontes de alimentação de alto desempenho com certificação 80 PLUS Gold. Os componentes de qualidade premium, o design avançado e o poderoso single rail de 12V garantem uma entrega de energia robusta e fiável, bem como uma regulação precisa da tensão. A fonte de alimentação de qualidade premium é complementada pela adição bem-vinda do gestão de cabos totalmente modular, bem como por uma ventoinha silenciosa de 120 mm.', 6, N'N', CAST(69.90 AS Decimal(12, 2)), CAST(90.87 AS Decimal(12, 2)), 0, N'A0114_1.jpg', N'A0114_2.jpg', N'A0114_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0115', N'CATG02', N'SUBCATG05', N'Processador Intel Core i5-12400F 6-Core 2.5GHz c/ Turbo 4.4G', N'Os processadores para desktop Intel® Core™ da 12ª Geração oferecem uma nova arquitetura híbrida de desempenho, combinando núcleos de desempenho com núcleos eficientes para aprimorar jogos, produtividade e criação. Num avanço arrojado no desempenho do núcleo, os processadores para desktop Intel® Core™ da 12ª Geração oferecem uma abordagem revolucionária da arquitetura x86.

TECNOLOGIA DE NÚCLEO INOVADORA
Num avanço arrojado no desempenho do núcleo, os processadores para desktop Intel® Core™ da 12ª Geração oferecem uma abordagem revolucionária da arquitetura x86. Os seus núcleos de desempenho, ou “P-cores”, são otimizados para desempenho com thread único ou leve, enquanto os seus núcleos eficientes, ou “E-cores”, são otimizados para escalar cargas de trabalho com threading pesado. O Intel® Thread Director ajuda a monitorizar e analisar dados de desempenho em tempo real para colocar ininterruptamente o thread de aplicação ideal no núcleo certo e otimizar o desempenho por watt. Isso sig', 12, N'N', CAST(182.90 AS Decimal(12, 2)), CAST(237.77 AS Decimal(12, 2)), 0, N'A0115_1.jpg', N'A0115_2.jpg', N'A0115_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0116', N'CATG02', N'SUBCATG05', N'Processador Intel Core i3-12100F 4-Core 3.3GHz c/Turbo 4.3GH', N'Os processadores para desktop Intel® Core™ da 12ª Geração oferecem uma nova arquitetura híbrida de desempenho, combinando núcleos de desempenho com núcleos eficientes para aprimorar jogos, produtividade e criação. Num avanço arrojado no desempenho do núcleo, os processadores para desktop Intel® Core™ da 12ª Geração oferecem uma abordagem revolucionária da arquitetura x86.

TECNOLOGIA DE NÚCLEO INOVADORA
Num avanço arrojado no desempenho do núcleo, os processadores para desktop Intel® Core™ da 12ª Geração oferecem uma abordagem revolucionária da arquitetura x86. Os seus núcleos de desempenho, ou “P-cores”, são otimizados para desempenho com thread único ou leve, enquanto os seus núcleos eficientes, ou “E-cores”, são otimizados para escalar cargas de trabalho com threading pesado. O Intel® Thread Director ajuda a monitorizar e analisar dados de desempenho em tempo real para colocar ininterruptamente o thread de aplicação ideal no núcleo certo e otimizar o desempenho por watt. Isso sig', 9, N'N', CAST(109.90 AS Decimal(12, 2)), CAST(142.87 AS Decimal(12, 2)), 0, N'A0116_1.jpg', N'A0116_2.jpg', N'A0116_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0117', N'CATG02', N'SUBCATG05', N'Processador AMD Ryzen 5 7600X 6-Core 4.7GHz c/ Turbo 5.3GHz', N'Bem-vindo à nova era do desempenho. O processador AMD Ryzen Série 7000 traz a velocidade do “Zen 4” para gamers e criadores com poder puro para enfrentar qualquer jogo ou fluxo de trabalho no playground digital. O processador para desktop mais avançado do mundo para gamers e criadores estende a liderança em desempenho da AMD para alimentar o teu PC.

MUDA A FORMA COMO TU JOGAS
Quando o teu PC tem o processador para desktop mais avançado do mundo para gamers, podes concentrar-te no que realmente importa: ser vitorioso no campo de batalha digital. Estejas a jogar os títulos mais recentes ou revisitando um clássico, os processadores AMD Ryzen™ Série 7000 são uma potência de jogos com núcleos “Zen 4” de alto desempenho.

AS TECNOLOGIAS MAIS RECENTES
Estejas renderizar em 3D uma cena com alto número de polígonos, exportando arquivos de vídeo massivos ou a visualizar um sonho arquitetónico, os processadores AMD Ryzen™ Série 7000 são construídos para vencer o relógio. Com conectividade ', 7, N'N', CAST(349.90 AS Decimal(12, 2)), CAST(454.87 AS Decimal(12, 2)), 0, N'A0117_1.jpg', N'A0117_2.jpg', N'A0117_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0118', N'CATG02', N'SUBCATG05', N'Processador Intel Core i9-13900KF 24-Core 2.2GHz', N'Com um aumento na contagem de núcleos, estes processadores continuam a utilizar a arquitetura híbrida de desempenho Intel para otimizar os seus jogos, criação de conteúdo e produtividade. Aproveite a largura de banda líder do setor de até 16 vias PCIe 5.0 e memória DDR5 de até 5600 MT/s. Turbine o desempenho do seu CPU com um poderoso conjunto de ferramentas de ajuste e overclocking. Desfrute das suas experiências favoritas em até 4 monitores 4K60 simultâneos ou vídeo HDR de até 8K60 com supressão de ruído dinâmico. O suporte para chipsets da série Intel® 700 e a compatibilidade retroativa com os chipsets da série Intel® 600 permitem aceder aos recursos de que você precisa para qualquer tarefa. Esteja você a trabalhar, transmitir, jogar ou criar, os processadores para desktop Intel® Core™ da 13ª Geração oferecem a próxima geração de desempenho inovador.

DESEMPENHO DE ÚLTIMA GERAÇÃO
Os processadores para desktop Intel® Core™ da 13ª ', 10, N'N', CAST(647.90 AS Decimal(12, 2)), CAST(842.27 AS Decimal(12, 2)), 0, N'A0118_1.jpg', N'A0118_2.jpg', N'A0118_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0119', N'CATG01', N'SUBCATG03', N'Computador HP Slim Desktop S01-aF0012np', N'Fabricante: HP
Memória RAM: 8 GB
Capacidade de armazenamento: 512 GB
Arquitetura de CPU: Zen
Série de CPU	AMD Ryzen 3
Motor Gráfico (GPU): Radeon Graphics
Processador: AMD Ryzen 3 3250U
Sistema Operativo: Não Incluído 
Tipo de Armazenamento: SSD', 8, N'N', CAST(349.90 AS Decimal(12, 2)), CAST(454.87 AS Decimal(12, 2)), 0, N'A0119_1.jpg', N'A0119_2.jpg', N'A0119_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0120', N'CATG04', N'SUBCATG22', N'Televisão Samsung LS03B The Frame SmartTV 43" QLED 4K UHD', N'Fabricante: Samsung
Classe Energética: G
Tamanho Ecrã: 43"
Resolução: 3840 x 2160 (4K Ultra HD)
Taxa de Atualização Ecrã: 120 Hz
Padrão VESA: 200 x 200 mm
Sistema Operativo: Tyzen
Tecnologia de Exibição: QLED', 6, N'N', CAST(899.90 AS Decimal(12, 2)), CAST(1169.87 AS Decimal(12, 2)), 0, N'A0120_1.jpg', N'A0120_2.jpg', N'A0120_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0121', N'CATG04', N'SUBCATG22', N'Televisão Hisense 65U7HQ SmartTV 65" ULED 4K UHD', N'Fabricante: Hisense
Classe Energética: G
Tamanho Ecrã: 65"
Resolução: 3840 x 2160 (4K Ultra HD)
Adaptive Sync: FreeSync
Taxa de Atualização Ecrã: 120 Hz
Padrão VESA: 400 x 200 mm
Sistema Operativo: VIDAA U
Tecnologia de Exibição: LED', 7, N'N', CAST(949.90 AS Decimal(12, 2)), CAST(1234.87 AS Decimal(12, 2)), 0, N'A0121_1.jpg', N'A0121_2.jpg', N'A0121_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0122', N'CATG03', N'SUBCATG15', N'Rato Óptico Logitech M90 1000DPI Preto', N'Oferecendo uma excelente relação preço-qualidade o rato M90 da Logitech garante um controlo fiável e confortável graças ao acompanhamento óptico de alta definição de 1000 ppp. O rato com fio Logitech Mouse M90 liga-se simplesmente a uma porta USB do seu computador. De tamanho standard adapta-se tanto aos destros como aos esquerdinos.', 14, N'N', CAST(9.90 AS Decimal(12, 2)), CAST(12.87 AS Decimal(12, 2)), 0, N'A0122_1.jpg', N'A0122_2.jpg', N'A0122_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0123', N'CATG03', N'SUBCATG15', N'Rato Óptico 1Life m:ergo Vertical 1600DPI Preto', N'SENSOR ÓTICO
Sensor de alta precisão com resolução máxima de 1600 DPI.
APOIO PARA O POLEGAR
Uma forma que possibilita um uso confortável por longos períodos de tempo.

POSIÇÃO VERTICAL NATURAL
Formato ergonómico que permite uma posição vertical natural com menos tensão na mão, pulso e braço.

FÁCIL DE CONFIGURAR
Basta ligar a ficha USB no seu computador. Simples e rápido! O seu 1Life m:ergo está pronto a utilizar.', 4, N'N', CAST(14.90 AS Decimal(12, 2)), CAST(19.37 AS Decimal(12, 2)), 0, N'A0123_1.jpg', N'A0123_2.jpg', N'A0123_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0124', N'CATG03', N'SUBCATG17', N'Tapete 1Life gmp:slide Extended XL RGB', N'Tapete de rato desenvolvido para jogadores, destinado a proporcionar um deslize perfeito com qualquer tipo de rato. Proporciona uma aparência fantástica ao teu setup com os seus 3 efeitos de iluminação RGB e 6 cores estáticas. Dimensões: 900 x 350 x 3 mm.

A SUPERFÍCIE IDEAL
Amplo espaço de manobra, ideal para quando jogas numa configuração de baixa resolução, combinado com uma superfície perfeita para o equilíbrio ideal entre velocidade e controlo no jogo.

', 6, N'N', CAST(14.90 AS Decimal(12, 2)), CAST(19.37 AS Decimal(12, 2)), 0, N'A0124_1.jpg', N'A0124_2.jpg', N'A0124_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0125', N'CATG03', N'SUBCATG17', N'Tapete Lenovo Legion Gaming Cloth', N'O mousepad Lenovo Y Gaming foi projetado especificamente para melhorar o desempenho do seu rato proporcionando uma precisão de capacidade delta. Ele é construído com materiais de alta qualidade com uma alta densidade de superfície de microfibra à prova d\água e uma borda trançada para garantir o máximo de resistência.', 12, N'N', CAST(9.90 AS Decimal(12, 2)), CAST(12.87 AS Decimal(12, 2)), 0, N'A0125_1.jpg', N'A0125_2.jpg', N'A0125_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0126', N'CATG03', N'SUBCATG17', N'Tapete SteelSeries QcK Edge XL', N'SÉRIE EDGE
Apresentando a mesma lendária superfície de tecido de microfibra que a QcK, a Série QcK Edge oferece durabilidade extra, graças ao novo tipo de bordas costuradas.

NOVAS BORDAS COSTURADAS
Costurando ao longo das bordas da superfície, assegure-se de que nunca se desgastará ou descascará.

A MÁXIMA PRECISÃO
Testado pela SteelSeries, desenvolvido para os sensores SteelSeries TrueMove, a textura aprimorada da superfície otimiza a precisão de rastreamento do rato para sensores óticos e a laser.

BASE ANTI-DESLIZAMENTO
A base de borracha durável e antiderrapante foi projetada para eliminar movimentos indesejados e fornecer uma plataforma sólida para jogos competitivos.', 9, N'N', CAST(25.90 AS Decimal(12, 2)), CAST(33.67 AS Decimal(12, 2)), 0, N'A0126_1.jpg', N'A0126_2.jpg', N'A0126_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0127', N'CATG02', N'SUBCATG09', N'Fonte de Alimentação EVGA B5 550W 80 Plus Bronze Full Modul', N'Apresentando as fontes de alimentação EVGA B5, as mais recentes fontes de alimentação com certificação 80 PLUS Bronze para continuar a tradição da EVGA em fiabilidade, desempenho e acessibilidade. As fontes de alimentação B5 começam com o padrão mais importante de fiabilidade - condensadores japoneses. Em seguida, as fontes de alimentação B5 fornecem flexibilidade máxima usando um pequeno chassi e um design totalmente modular. A ultra-silenciosa ventoinha Fluid-Dynamic Bearing de 135 mm torna-se silencioso quando acoplada ao modo EVGA ECO para desligar a ventoinhas em cargas médias a baixas. Por último, mas não menos importante, as fontes de alimentação B5 têm um conjunto completo de proteções e uma garantia limitada de 5 anos que você conhece e espera da EVGA.', 9, N'N', CAST(81.90 AS Decimal(12, 2)), CAST(106.47 AS Decimal(12, 2)), 0, N'A0127_1.jpg', N'A0127_2.jpg', N'A0127_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0128', N'CATG03', N'SUBCATG18', N'Headphones Bang & Olufsen Beoplay HX Active Noise Cancelling', N'Oferece uma experiência de som poderosa e autêntica com o Cancelamento Ativo Adaptável de Ruído, uma construção leve e confortável, qualidade de chamada impressionante e até 35 horas de reprodução.

ENCONTRE O SEU FOCO
Com a última geração de cancelamento de ruído ativo adaptável, o Beoplay HX remove efetivamente o ruído de fundo. Materiais premium e um design justo garantem um isolamento de som eficaz, para que possa manter as suas experiências auditivas para si mesmo - ideal quando está a trabalhar em casa e não quer perturbar a sua família. Quatro microfones dedicados garantem que, quando precisa fazer chamadas, a clareza seja melhorada.

CRIE A SUA PAISAGEM SONORA
Os Beoplay HX são ajustados pelos nossos engenheiros líderes da indústria para garantir que ouça a sua música da maneira que o artista deseja. Drivers de 40 mm personalizados com ímans de neodímio proporcionam uma experiência de audição precisa e envolvente. Também pode personalizar o seu perfil de som através do Be', 6, N'N', CAST(424.90 AS Decimal(12, 2)), CAST(552.37 AS Decimal(12, 2)), 0, N'A0128_1.jpg', N'A0128_2.jpg', N'A0128_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0129', N'CATG03', N'SUBCATG20', N'Webcam Razer Kiyo Pro Full HD 1080p', N'IMAGEM AVANÇADA. FIDELIDADE ABSOLUTA.
Atinja os padrões de vídeo profissional para streaming e videoconferência com o Razer Kiyo Pro - uma webcam FHD USB que possui um sensor de luz adaptável de alto desempenho, para que você possa desfrutar de uma qualidade nítida e clara em qualquer configuração e condição de iluminação.

SENSOR DE LUZ ADAPTATIVO
Equipada com um sensor CMOS ultra-sensível Tipo 1/2.8 maior com tecnologia STARVIS™, esta webcam FHD USB pode detectar o quão claro ou escuro estão os seus arredores e ajustar de acordo para uma clareza perfeita de imagem sempre.

STREAMING 1080P A 60FPS SEM COMPRESSÃO
Como uma webcam FHD USB, a Razer Kiyo Pro oferece um nível de fidelidade visual tão nítido quanto suave, para a melhor qualidade de vídeo e experiência de visualização que você pode obter.

HABILITADO PARA HDR A 30 FPS
Faça o seu stream destacar-se com cores mais vibrantes ativando o HDR a 30 FPS, o que aumenta a faixa dinâmica do seu vídeo enquanto corrige áreas sup', 5, N'N', CAST(139.90 AS Decimal(12, 2)), CAST(181.87 AS Decimal(12, 2)), 0, N'A0129_1.jpg', N'A0129_2.jpg', N'A0129_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0130', N'CATG02', N'SUBCATG10', N'Caixa ATX Kolink Citadel Mesh ARGB Preto', N'CITADEL MESH
A Citadel Mesh tem sido uma das nossas caixas de PC Micro-ATX mais populares. Agora está disponível num formato completo ATX, de acordo com os pedidos e o feedback dos clientes. Uma combinação de aço e vidro temperado, a Caixa Kolink Citadel Mesh ATX ARGB está totalmente equipada para acomodar uma vasta gama de hardware de gaming e componentes de arrefecimento.

Graças ao painel frontal mesh e à ventilação lateral, o fluxo de ar natural desta caixa é excecional. Para reforçar, existem quatro ventoinhas de 120mm Umbra ARGB/PWM pré-instaladas ao longo dos painéis frontal e traseiro. O design é user-friendly, com uma gestão de cabos mais acessível e um interior cuidadosamente otimizado, tornando-a uma excelente caixa para todos os entusiastas de PCs.

CLÁSSICO CITADEL
Como versão ATX de tamanho completo da série Citadel Mesh, esta caixa partilha muitas das marcas estéticas desta gama que conhecemos e adoramos. O painel frontal é totalmente mesh e é elevado pela distinta', 3, N'N', CAST(129.90 AS Decimal(12, 2)), CAST(168.87 AS Decimal(12, 2)), 20, N'A0130_1.jpg', N'A0130_2.jpg', N'A0130_3.jpg', 0)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0131', N'CATG03', N'SUBCATG10', N'Caixa ATX Kolink Citadel Mesh ARGB Preto', N'CITADEL MESH
A Citadel Mesh tem sido uma das nossas caixas de PC Micro-ATX mais populares. Agora está disponível num formato completo ATX, de acordo com os pedidos e o feedback dos clientes. Uma combinação de aço e vidro temperado, a Caixa Kolink Citadel Mesh ATX ARGB está totalmente equipada para acomodar uma vasta gama de hardware de gaming e componentes de arrefecimento.

Graças ao painel frontal mesh e à ventilação lateral, o fluxo de ar natural desta caixa é excecional. Para reforçar, existem quatro ventoinhas de 120mm Umbra ARGB/PWM pré-instaladas ao longo dos painéis frontal e traseiro. O design é user-friendly, com uma gestão de cabos mais acessível e um interior cuidadosamente otimizado, tornando-a uma excelente caixa para todos os entusiastas de PCs.

CLÁSSICO CITADEL
Como versão ATX de tamanho completo da série Citadel Mesh, esta caixa partilha muitas das marcas estéticas desta gama que conhecemos e adoramos. O painel frontal é totalmente mesh e é elevado pela distinta', 3, N'N', CAST(129.90 AS Decimal(12, 2)), CAST(168.87 AS Decimal(12, 2)), 20, N'A0131_1.jpg', N'A0131_2.jpg', N'A0131_3.jpg', 0)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0132', N'CATG03', N'SUBCATG15', N'Rato Óptico Razer Naga V2 HyperSpeed MMO Gaming Wireless', N'Ref. Interna: P052621
Fabricante: Razer
Estado do Produto: Novo
DPI: 30000 DPI
Sensor: Óptico
Tipo de conexão	Sem Fio: Bluetooth, 2,4GHz', 14, N'N', CAST(110.00 AS Decimal(12, 2)), CAST(143.00 AS Decimal(12, 2)), 5, N'A0132_1.jpg', N'A0132_2.jpg', N'A0132_3.jpg', 1)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0133', N'CATG01', N'SUBCATG01', N'teste goofy', N'asdassdasdasdasd', 1, N'N', CAST(0.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), 0, N'A0133_1.jpg', N'A0133_2.jpg', N'A0133_3.jpg', 0)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0134', N'CATG01', N'SUBCATG01', N'asdfasjasdfsd', N'asdasdasdfasdfasdfasdf', 1, N'N', CAST(0.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), 0, N'A0134_1.jpg', N'A0134_2.jpg', N'A0134_3.jpg', 0)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0135', N'CATG01', N'SUBCATG01', N'asdasdasdasdfasfadfa', N'asdfasdfasdfa', 44, N'N', CAST(0.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), 0, N'A0135_1.jpg', N'A0135_2.jpg', N'A0135_3.jpg', 0)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0136', N'CATG01', N'SUBCATG01', N'asdasda', N'dasdasdasdas', 324, N'N', CAST(0.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), 0, N'A0136_1.jpg', N'A0136_2.jpg', N'A0136_3.jpg', 0)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0137', N'CATG01', N'SUBCATG01', N'asdasd', N'dasdasdas', 4353, N'N', CAST(0.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), 0, N'A0137_1.jpg', N'A0137_2.jpg', N'A0137_3.jpg', 0)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0138', N'CATG02', N'SUBCATG11', N'Placa de Som Creative SB Audigy RX', N'Experimente as maravilhas do som surround multicanal e crie podcasts de alta qualidade! Os efeitos EAX acelerados por hardware permitem incorporar muitos tipos de efeitos sonoros com facilidade. O Sound Blaster Audigy Rx possui um SNR de 106dB, um amplificador de auscultadores de 600 ohms para monitorização de estúdio e uma suite de software que permite uma personalização completa do áudio.', 8, N'N', CAST(39.90 AS Decimal(12, 2)), CAST(51.87 AS Decimal(12, 2)), 0, N'A0138_1.jpg', N'A0138_2.jpg', N'A0138_3.jpg', 0)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0139', N'CATG02', N'SUBCATG11', N'Placa de Som Creative Sound Blaster Z SE PCI-E', N'A Sound Blaster Z SE é a edição especial da placa mais vendida, a Sound Blaster Z, e vem com recursos atualizados projetados para o desfrute de áudio sem esforço! Além de apresentar as mesmas especificações de áudio de alta qualidade que fizeram de seu antecessor um modelo mais vendido de longa data, ele também foi aprimorado com perfis acústicos de jogos e predefinições de equalização de microfone, todos com o objetivo de aprimorar as suas necessidades de jogos e entretenimento.', 11, N'N', CAST(52.92 AS Decimal(12, 2)), CAST(68.80 AS Decimal(12, 2)), 5, N'A0139_1.jpg', N'A0139_2.jpg', N'A0139_3.jpg', 0)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0140', N'CATG01', N'SUBCATG01', N'adasd', N'dasdasd', 78, N'N', CAST(0.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), 0, N'A0140_1.jpg', N'A0140_2.jpg', N'A0140_3.jpg', 0)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0141', N'CATG01', N'SUBCATG01', N'dd', N'asdasd', 78, N'N', CAST(0.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), 0, N'A0141_1.jpg', N'A0141_2.jpg', N'A0141_3.jpg', 0)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0142', N'CATG01', N'SUBCATG01', N'asdasd', N'asdas', 0, N'N', CAST(0.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), 0, N'A0142_1.jpg', N'A0142_2.jpg', N'A0142_3.jpg', 0)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0143', N'CATG01', N'SUBCATG01', N'asdas', N'asdad', 23, N'N', CAST(0.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), 0, N'A0143_1.jpg', N'A0143_2.jpg', N'A0143_3.jpg', 0)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0144', N'CATG02', N'SUBCATG11', N'Placa de Som Creative SB Audigy RX', N'Experimente as maravilhas do som surround multicanal e crie podcasts de alta qualidade! Os efeitos EAX acelerados por hardware permitem incorporar muitos tipos de efeitos sonoros com facilidade. O Sound Blaster Audigy Rx possui um SNR de 106dB, um amplificador de auscultadores de 600 ohms para monitorização de estúdio e uma suite de software que permite uma personalização completa do áudio.', 7, N'N', CAST(39.90 AS Decimal(12, 2)), CAST(51.87 AS Decimal(12, 2)), 0, N'A0144_1.jpg', N'A0144_2.jpg', N'A0144_3.jpg', 0)
INSERT [dbo].[Artigos] ([Cod_Artigo], [Cod_Categoria], [Cod_Sub_Categoria], [Designacao], [Descricao], [Stock], [Tipo_IVA], [Preco_Compra], [Preco_Venda], [Desconto], [Imagem1], [Imagem2], [Imagem3], [FLG_Ativo]) VALUES (N'A0145', N'CATG02', N'SUBCATG11', N'Placa de Som Creative Sound Blaster', N'A Sound Blaster Z SE é a edição especial da placa mais vendida, a Sound Blaster Z, e vem com recursos atualizados projetados para o desfrute de áudio sem esforço! Além de apresentar as mesmas especificações de áudio de alta qualidade que fizeram de seu antecessor um modelo mais vendido de longa data, ele também foi aprimorado com perfis acústicos de jogos e predefinições de equalização de microfone, todos com o objetivo de aprimorar as suas necessidades de jogos e entretenimento.', 5, N'N', CAST(59.92 AS Decimal(12, 2)), CAST(77.90 AS Decimal(12, 2)), 0, N'A0145_1.jpg', N'A0145_2.jpg', N'A0145_3.jpg', 0)
GO
INSERT [dbo].[Categorias] ([Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'CATG01', N'Computadores', N'CATG01.png', 1)
INSERT [dbo].[Categorias] ([Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'CATG02', N'Componentes', N'CATG02.png', 1)
INSERT [dbo].[Categorias] ([Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'CATG03', N'Periféricos', N'CATG03.png', 1)
INSERT [dbo].[Categorias] ([Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'CATG04', N'Imagem', N'CATG04.png', 1)
INSERT [dbo].[Categorias] ([Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'CATG05', N'Som', N'CATG05.png', 1)
GO
INSERT [dbo].[Doc] ([Num_Doc], [FLG_Tipo_Doc], [Cod_Entidade], [Designacao], [Data_Doc], [Tipo_Pagamento], [FLG_Ativo]) VALUES (N'FC0001/2023', N'FC', N'50', N'Fatura a Clientes-FC0001/2023', CAST(N'2023-04-29T16:52:00' AS SmallDateTime), N'VISA', 1)
GO
INSERT [dbo].[Empresas] ([Cod_Empresa], [Nome], [Endereco], [Pais], [Cod_Postal], [Localidade], [Email], [Num_Telefone], [Capital_Social], [Registo_Comercial], [Matricula_CRC], [NIF], [Contador_Clientes], [Contador_Fornecedores], [Contador_Operadores], [Contador_Administradores], [Contador_Artigos], [Contador_IVA], [Contador_Categorias], [Contador_Sub_Categorias], [Contador_Tipos_Pagamento], [Ano_Trabalho], [FLG_Ativo]) VALUES (N'1', N'HypeStack', N'Complexo Petroquímico - Monte Feio', N'Portugal', N'7520-064', N'Sines', N'hypestack@sines.pt', N'269300100', N'1000000', N'25855', N'6560', N'846925877', 1, 1, 1, 1, 145, 4, 5, 27, 3, N'2023', 1)
GO
SET IDENTITY_INSERT [dbo].[Entidades] ON 

INSERT [dbo].[Entidades] ([Cod_Entidade], [FLG_Entidade], [Nome], [Cod_Pais], [Num_Telefone], [Num_Telemovel], [Email], [NIF], [Data_Registo], [Utilizador], [Password], [FLG_Ativo]) VALUES (45, N'A', N'Test Test1', N'PT', N'269999999', N'969999999', N'test@gmail.com', N'123456789', CAST(N'2000-01-01T00:00:00' AS SmallDateTime), N'45', N'1', 1)
INSERT [dbo].[Entidades] ([Cod_Entidade], [FLG_Entidade], [Nome], [Cod_Pais], [Num_Telefone], [Num_Telemovel], [Email], [NIF], [Data_Registo], [Utilizador], [Password], [FLG_Ativo]) VALUES (47, N'O', N'Test Test2', N'PT', N'269999999', N'969999999', N'test@gmail.com', N'123456789', CAST(N'2000-01-01T00:00:00' AS SmallDateTime), N'', N'', 1)
INSERT [dbo].[Entidades] ([Cod_Entidade], [FLG_Entidade], [Nome], [Cod_Pais], [Num_Telefone], [Num_Telemovel], [Email], [NIF], [Data_Registo], [Utilizador], [Password], [FLG_Ativo]) VALUES (49, N'F', N'Test Test3', N'PT', N'269999999', N'969999999', N'test@gmail.com', N'123456789', CAST(N'2000-01-01T00:00:00' AS SmallDateTime), N'', N'', 1)
INSERT [dbo].[Entidades] ([Cod_Entidade], [FLG_Entidade], [Nome], [Cod_Pais], [Num_Telefone], [Num_Telemovel], [Email], [NIF], [Data_Registo], [Utilizador], [Password], [FLG_Ativo]) VALUES (50, N'C', N'Test Test4', N'PT', N'269999999', N'969999999', N'test@gmail.com', N'123456789', CAST(N'2000-01-01T00:00:00' AS SmallDateTime), N'', N'', 1)
SET IDENTITY_INSERT [dbo].[Entidades] OFF
GO
INSERT [dbo].[IVA] ([Cod_IVA], [Taxa_IVA], [Tipo_IVA], [Designacao], [FLG_Ativo]) VALUES (N'I01', 0, N'0', N'IVA Isento', 1)
INSERT [dbo].[IVA] ([Cod_IVA], [Taxa_IVA], [Tipo_IVA], [Designacao], [FLG_Ativo]) VALUES (N'I02', 6, N'R', N'IVA Reduzido', 1)
INSERT [dbo].[IVA] ([Cod_IVA], [Taxa_IVA], [Tipo_IVA], [Designacao], [FLG_Ativo]) VALUES (N'I03', 13, N'I', N'IVA Intermédio', 1)
INSERT [dbo].[IVA] ([Cod_IVA], [Taxa_IVA], [Tipo_IVA], [Designacao], [FLG_Ativo]) VALUES (N'I04', 23, N'N', N'IVA Normal', 1)
INSERT [dbo].[IVA] ([Cod_IVA], [Taxa_IVA], [Tipo_IVA], [Designacao], [FLG_Ativo]) VALUES (N'I05', 50, N'M', N'IVA Médio', 0)
GO
SET IDENTITY_INSERT [dbo].[Linhas] ON 

INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (303, N'FC0040/2023', 1, N'A0002', 1, CAST(908.70 AS Decimal(10, 2)), 23, CAST(894.16 AS Decimal(10, 2)), N'20%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (304, N'FC0041/2023', 1, N'A0002', 1, CAST(908.70 AS Decimal(10, 2)), 23, CAST(894.16 AS Decimal(10, 2)), N'20%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (305, N'FC0042/2023', 1, N'A0002', 1, CAST(908.70 AS Decimal(10, 2)), 23, CAST(894.16 AS Decimal(10, 2)), N'20%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (306, N'FC0043/2023', 1, N'A0002', 1, CAST(908.70 AS Decimal(10, 2)), 23, CAST(894.16 AS Decimal(10, 2)), N'20%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (307, N'FC0044/2023', 1, N'A0006', 2, CAST(4484.99 AS Decimal(10, 2)), 23, CAST(5516.54 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (308, N'FC0045/2023', 1, N'A0005', 2, CAST(1598.87 AS Decimal(10, 2)), 23, CAST(1671.62 AS Decimal(10, 2)), N'15%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (309, N'FC0046/2023', 1, N'A0010', 2, CAST(1370.50 AS Decimal(10, 2)), 23, CAST(842.86 AS Decimal(10, 2)), N'50%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (310, N'FC0047/2023', 1, N'A0063', 2, CAST(1559.87 AS Decimal(10, 2)), 23, CAST(1918.64 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (311, N'FC0048/2023', 1, N'A0002', 1, CAST(908.70 AS Decimal(10, 2)), 23, CAST(894.16 AS Decimal(10, 2)), N'20%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (312, N'FC0049/2023', 1, N'A0004', 2, CAST(1288.17 AS Decimal(10, 2)), 23, CAST(1584.45 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (313, N'FC0050/2023', 1, N'A0064', 1, CAST(162.37 AS Decimal(10, 2)), 23, CAST(199.72 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (314, N'FC0051/2023', 1, N'A0003', 12, CAST(882.70 AS Decimal(10, 2)), 23, CAST(1031.43 AS Decimal(10, 2)), N'5%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (315, N'FC0051/2023', 2, N'A0004', 7, CAST(1288.17 AS Decimal(10, 2)), 23, CAST(1584.45 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (316, N'FC0051/2023', 3, N'A0002', 6, CAST(908.70 AS Decimal(10, 2)), 23, CAST(894.16 AS Decimal(10, 2)), N'20%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (317, N'FC0051/2023', 4, N'A0001', 3, CAST(736.10 AS Decimal(10, 2)), 23, CAST(905.40 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (318, N'FC0052/2023', 1, N'A0030', 1, CAST(93.40 AS Decimal(10, 2)), 23, CAST(114.88 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (319, N'FC0053/2023', 1, N'A0001', 1, CAST(736.10 AS Decimal(10, 2)), 23, CAST(905.40 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (320, N'FC0054/2023', 1, N'A0001', 1, CAST(736.10 AS Decimal(10, 2)), 23, CAST(905.40 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (321, N'FC0055/2023', 1, N'A0001', 1, CAST(736.10 AS Decimal(10, 2)), 23, CAST(905.40 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (322, N'FC0056/2023', 1, N'A0004', 1, CAST(1288.17 AS Decimal(10, 2)), 23, CAST(1584.45 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (323, N'FC0056/2023', 2, N'A0009', 1, CAST(1931.06 AS Decimal(10, 2)), 23, CAST(2375.20 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (324, N'FC0057/2023', 1, N'A0028', 1, CAST(49.90 AS Decimal(10, 2)), 23, CAST(61.38 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (325, N'FC0057/2023', 2, N'A0072', 3, CAST(129.87 AS Decimal(10, 2)), 23, CAST(159.74 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (326, N'FC0058/2023', 1, N'A0028', 1, CAST(49.90 AS Decimal(10, 2)), 23, CAST(61.38 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (327, N'FC0058/2023', 2, N'A0072', 1, CAST(129.87 AS Decimal(10, 2)), 23, CAST(159.74 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (328, N'FC0058/2023', 3, N'A0129', 1, CAST(181.87 AS Decimal(10, 2)), 23, CAST(223.70 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (329, N'FC0059/2023', 1, N'A0021', 1, CAST(190.10 AS Decimal(10, 2)), 23, CAST(233.82 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (330, N'FC0060/2023', 1, N'A0023', 1, CAST(24.93 AS Decimal(10, 2)), 23, CAST(30.66 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (331, N'FC0061/2023', 1, N'A0026', 1, CAST(19.90 AS Decimal(10, 2)), 23, CAST(24.48 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (332, N'FC0061/2023', 2, N'A0028', 1, CAST(49.90 AS Decimal(10, 2)), 23, CAST(61.38 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (333, N'FC0062/2023', 1, N'A0013', 1, CAST(325.26 AS Decimal(10, 2)), 23, CAST(400.07 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (334, N'FC0063/2023', 1, N'A0025', 1, CAST(120.03 AS Decimal(10, 2)), 23, CAST(147.64 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (335, N'FC0064/2023', 1, N'A0021', 1, CAST(190.10 AS Decimal(10, 2)), 23, CAST(233.82 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (336, N'FC0064/2023', 2, N'A0022', 1, CAST(95.03 AS Decimal(10, 2)), 23, CAST(116.89 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (337, N'FC0064/2023', 3, N'A0023', 1, CAST(24.93 AS Decimal(10, 2)), 23, CAST(30.66 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (338, N'FC0064/2023', 4, N'A0024', 1, CAST(138.06 AS Decimal(10, 2)), 23, CAST(169.81 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (339, N'FC0064/2023', 5, N'A0025', 1, CAST(120.03 AS Decimal(10, 2)), 23, CAST(147.64 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (340, N'FC0064/2023', 6, N'A0026', 1, CAST(19.90 AS Decimal(10, 2)), 23, CAST(24.48 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (341, N'FC0064/2023', 7, N'A0002', 1, CAST(908.70 AS Decimal(10, 2)), 23, CAST(894.16 AS Decimal(10, 2)), N'20%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (342, N'FC0064/2023', 8, N'A0003', 1, CAST(882.70 AS Decimal(10, 2)), 23, CAST(1031.43 AS Decimal(10, 2)), N'5%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (343, N'FC0064/2023', 9, N'A0004', 1, CAST(1288.17 AS Decimal(10, 2)), 23, CAST(1584.45 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (344, N'FC0064/2023', 10, N'A0011', 1, CAST(927.34 AS Decimal(10, 2)), 23, CAST(901.10 AS Decimal(10, 2)), N'21%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (345, N'FC0064/2023', 11, N'A0050', 1, CAST(249.90 AS Decimal(10, 2)), 23, CAST(307.38 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (346, N'FC0064/2023', 12, N'A0059', 1, CAST(107.77 AS Decimal(10, 2)), 23, CAST(132.56 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (347, N'FC0064/2023', 13, N'A0048', 1, CAST(29.90 AS Decimal(10, 2)), 23, CAST(36.78 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (348, N'FC0065/2023', 1, N'A0023', 1, CAST(24.93 AS Decimal(10, 2)), 23, CAST(30.66 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (349, N'GC0008/2023', 1, N'A0034', 1, CAST(360.27 AS Decimal(10, 2)), 23, CAST(443.13 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (350, N'GC0008/2023', 2, N'A0082', 1, CAST(168.87 AS Decimal(10, 2)), 23, CAST(166.17 AS Decimal(10, 2)), N'20%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (351, N'FC0066/2023', 1, N'A0007', 1, CAST(1371.40 AS Decimal(10, 2)), 23, CAST(1686.82 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (352, N'FC0066/2023', 2, N'A0009', 1, CAST(1931.06 AS Decimal(10, 2)), 23, CAST(2375.20 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (353, N'FC0066/2023', 3, N'A0080', 3, CAST(2013.70 AS Decimal(10, 2)), 23, CAST(2476.85 AS Decimal(10, 2)), N'0%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (354, N'FC0066/2023', 4, N'A0005', 1, CAST(1598.87 AS Decimal(10, 2)), 23, CAST(1671.62 AS Decimal(10, 2)), N'15%', 1)
INSERT [dbo].[Linhas] ([ID_Linhas], [Num_Doc], [Num_Linha], [Cod_Artigo], [Quantidade], [P_Unitario], [Taxa_Iva], [P_Final], [Taxa_Desconto], [FLG_Ativo]) VALUES (355, N'FC0001/2023', 1, N'A0001', 1, CAST(736.10 AS Decimal(10, 2)), 23, CAST(905.40 AS Decimal(10, 2)), N'0%', 1)
SET IDENTITY_INSERT [dbo].[Linhas] OFF
GO
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'AD', N'Andorra', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'AE', N'Emirados Árabes Unidos', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'AF', N'Afeganistão', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'AG', N'Antígua e Barbuda', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'AI', N'Anguilla', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'AL', N'Albânia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'AM', N'Arménia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'AN', N'Antilhas Holandesas', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'AO', N'Angola', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'AR', N'Argentina', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'AS', N'Samoa Americana', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'AT', N'Áustria', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'AU', N'Austrália', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'AW', N'Aruba', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'AX', N'Ilhas Aland', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'AZ', N'Azerbaijão', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'BA', N'Bósnia e Herzegovina', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'BB', N'Barbados', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'BD', N'Bangladesh', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'BE', N'Bélgica', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'BF', N'Burkina Faso', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'BG', N'Bulgária', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'BH', N'Bahrain', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'BI', N'Burundi', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'BJ', N'Benim', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'BM', N'Bermudas', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'BN', N'Brunei*', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'BO', N'Bolívia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'BR', N'Brasil', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'BS', N'Bahamas', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'BT', N'Butão', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'BV', N'Ilha Bouvet', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'BW', N'Botswana', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'BY', N'Bielorrússia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'BZ', N'Belize', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'CA', N'Canadá', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'CC', N'Ilhas Cocos', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'CD', N'República Democrática do Congo', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'CF', N'República Centro-Africana', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'CG', N'República do Congo', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'CH', N'Suiça', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'CI', N'Costa do Marfim', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'CK', N'Ilhas Cook', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'CL', N'Chile', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'CM', N'Camarões', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'CN', N'China', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'CO', N'Colômbia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'CR', N'Costa Rica', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'CU', N'Cuba', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'CV', N'Cabo Verde', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'CX', N'Ilha do Natal', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'CY', N'Chipre', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'CZ', N'República Checa', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'DE', N'Alemanha', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'DJ', N'Djibouti', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'DK', N'Dinamarca', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'DM', N'Dominica', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'DO', N'República Dominicana', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'DZ', N'Argélia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'EC', N'Equador', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'EE', N'Estónia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'EG', N'Egito', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'EH', N'Saara Ocidental', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'ER', N'Eritreia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'ES', N'Espanha', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'ET', N'Etiópia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'ff', N'ftttttg', 0)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'FI', N'Finlândia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'FJ', N'Fiji', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'FK', N'Ilhas Malvinas', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'FM', N'Estados Federados da Micronésia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'FO', N'Ilhas Faroé', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'FR', N'França', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'GA', N'Gabão', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'GB', N'Reino Unido', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'GD', N'Granada', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'GE', N'Geórgia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'GF', N'Guiana Francesa', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'GG', N'Guernesei', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'GH', N'Gana', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'GI', N'Gibraltar', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'GL', N'Gronelândia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'GM', N'Gâmbia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'GN', N'Guiné', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'GP', N'Guadalupe', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'GQ', N'Guiné Equatorial', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'GR', N'Grécia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'GS', N'Ilhas Geórgia do Sul e Sandwich do Sul', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'GT', N'Guatemala', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'GU', N'Guam', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'GW', N'Guiné-Bissau', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'GY', N'Guiana', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'HK', N'Hong Kong', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'HM', N'Ilhas Heard e Ilhas McDonald', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'HN', N'Honduras', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'HR', N'Croácia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'HT', N'Haiti', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'HU', N'Hungria', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'ID', N'Indonésia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'IE', N'Irlanda', 1)
GO
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'IL', N'Israel', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'IM', N'Ilha de Man', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'IN', N'Índia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'IO', N'Território Britânico do Oceano Índico', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'IQ', N'Iraque', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'IR', N'Irão', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'IS', N'Islândia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'IT', N'Itália', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'JE', N'Jersey', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'JM', N'Jamaica', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'JO', N'Jordânia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'JP', N'Japão', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'KE', N'Quénia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'KG', N'Quirguistão', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'KH', N'Cambodja', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'KI', N'Kiribati', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'KM', N'Comores', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'KN', N'São Cristóvão e Nevis', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'KP', N'Coreia do Norte', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'KR', N'Coreia do Sul', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'KW', N'Kuwait', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'KY', N'Ilhas Cayman', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'KZ', N'Cazaquistão', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'LA', N'Laos', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'LB', N'Líbano', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'LC', N'Santa Lúcia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'LI', N'Liechtenstein', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'LK', N'Sri Lanka', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'LR', N'Libéria', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'LS', N'Lesoto', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'LT', N'Lituania', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'LU', N'Luxemburgo', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'LV', N'Letónia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'LY', N'Líbia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'MA', N'Marrocos', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'MC', N'Mónaco', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'MD', N'Moldávia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'ME', N'Montenegro', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'MG', N'Madagáscar', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'MH', N'Ilhas Marshall', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'MK', N'Macedónia(FYROM)', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'ML', N'Mali', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'MM', N'Myanmar', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'MN', N'Mongólia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'MO', N'Macau', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'MP', N'Marianas Setentrionais', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'MQ', N'Martinica', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'MR', N'Mauritânia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'MS', N'Montserrat', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'MT', N'Malta', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'MU', N'Maurícia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'MV', N'Maldivas', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'MW', N'Malawi', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'MX', N'México', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'MY', N'Malásia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'MZ', N'Moçambique', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'NA', N'Namíbia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'NC', N'Nova Caledónia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'NE', N'Níger', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'NF', N'Ilha Norfolk', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'NG', N'Nigéria', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'NI', N'Nicarágua', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'NL', N'Países Baixos', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'NO', N'Noruega', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'NP', N'Nepal', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'NR', N'Nauru', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'NU', N'Niue', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'NZ', N'Nova Zelândia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'OM', N'Omã', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'PA', N'Panamá', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'PE', N'Perú', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'PF', N'Polinésia Francesa', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'PG', N'Papua-Nova Guiné', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'PH', N'Filipinas', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'PK', N'Paquistão', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'PL', N'Polónia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'PM', N'Saint-Pierre e Miquelon', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'PN', N'Pitcairn', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'PR', N'Porto Rico', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'PS', N'Palestina', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'PT', N'Portugal', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'PW', N'Palau', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'PY', N'Paraguai', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'QA', N'Qatar', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'RE', N'Reunião', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'RO', N'Roménia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'RS', N'Sérvia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'RU', N'Rússia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'RW', N'Ruanda', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'SA', N'Arábia Saudita', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'SB', N'Ilhas Salomão', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'SC', N'Seychelles', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'SD', N'Sudão', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'SE', N'Suécia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'SG', N'Singapura', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'SH', N'Santa Helena, Ascensão e Tristão da Cunha', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'SI', N'Eslovénia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'SJ', N'Svalbard e Jan Mayen', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'SK', N'Eslováquia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'SL', N'Serra Leoa', 1)
GO
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'SM', N'San Marino', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'SN', N'Senegal', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'SO', N'Somália', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'SR', N'Suriname', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'ST', N'São Tomé e Príncipe', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'SV', N'El Salvador', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'SY', N'Síria', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'SZ', N'Suazilândia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'TC', N'Turcas e Caicos', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'TD', N'Chade', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'TF', N'Terras Austrais e Antárticas Francesas', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'TG', N'Togo', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'TH', N'Tailândia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'TJ', N'Tajiquistão', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'TK', N'Toquelau', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'TL', N'Timor-Leste', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'TM', N'Turquemenistão', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'TN', N'Tunísia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'TO', N'Tonga', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'TR', N'Turquia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'TT', N'Trinidad e Tobago', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'TV', N'Tuvalu', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'TW', N'Taiwan', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'TZ', N'Tanzânia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'UA', N'Ucrânia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'UG', N'Uganda', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'UM', N'Ilhas Menores Distantes dos Estados Unidos', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'US', N'Estados Unidos da América', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'UY', N'Uruguai', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'UZ', N'Usbequistão', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'VA', N'Vaticano', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'VC', N'São Vicente e Granadinas', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'VE', N'Venezuela', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'VG', N'Ilhas Virgens Britânicas', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'VI', N'Ilhas Virgens Americanas', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'VN', N'Vietname', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'VU', N'Vanuatu', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'WF', N'Wallis e Futuna', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'WQ', N'Trandasc', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'WS', N'Samoa', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'YE', N'Iémen', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'YT', N'Mayotte', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'ZA', N'África do Sul', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'ZM', N'Zâmbia', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'ZW', N'Zimbabwe', 1)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'ZY', N'zimbabead', 0)
INSERT [dbo].[Paises] ([Cod_Pais], [Pais], [FLG_Ativo]) VALUES (N'ZZ', N'Zezukki', 0)
GO
INSERT [dbo].[Series] ([Cod_Serie], [FLG_Tipo_Doc], [Ano_Trabalho], [Contador], [FLG_Ativo]) VALUES (N'2023-FC', N'FC', N'2023', 1, 1)
INSERT [dbo].[Series] ([Cod_Serie], [FLG_Tipo_Doc], [Ano_Trabalho], [Contador], [FLG_Ativo]) VALUES (N'2023-FF', N'FF', N'2023', 0, 1)
INSERT [dbo].[Series] ([Cod_Serie], [FLG_Tipo_Doc], [Ano_Trabalho], [Contador], [FLG_Ativo]) VALUES (N'2023-GC', N'GC', N'2023', 0, 1)
INSERT [dbo].[Series] ([Cod_Serie], [FLG_Tipo_Doc], [Ano_Trabalho], [Contador], [FLG_Ativo]) VALUES (N'2023-GF', N'GF', N'2023', 0, 1)
INSERT [dbo].[Series] ([Cod_Serie], [FLG_Tipo_Doc], [Ano_Trabalho], [Contador], [FLG_Ativo]) VALUES (N'2023-NC', N'NC', N'2023', 0, 1)
INSERT [dbo].[Series] ([Cod_Serie], [FLG_Tipo_Doc], [Ano_Trabalho], [Contador], [FLG_Ativo]) VALUES (N'2023-NF', N'NF', N'2023', 0, 1)
INSERT [dbo].[Series] ([Cod_Serie], [FLG_Tipo_Doc], [Ano_Trabalho], [Contador], [FLG_Ativo]) VALUES (N'2023-PF', N'PF', N'2023', 0, 1)
INSERT [dbo].[Series] ([Cod_Serie], [FLG_Tipo_Doc], [Ano_Trabalho], [Contador], [FLG_Ativo]) VALUES (N'2023-RC', N'RC', N'2023', 0, 1)
INSERT [dbo].[Series] ([Cod_Serie], [FLG_Tipo_Doc], [Ano_Trabalho], [Contador], [FLG_Ativo]) VALUES (N'2023-RF', N'RF', N'2023', 0, 1)
INSERT [dbo].[Series] ([Cod_Serie], [FLG_Tipo_Doc], [Ano_Trabalho], [Contador], [FLG_Ativo]) VALUES (N'2023-RI', N'RI', N'2023', 0, 1)
INSERT [dbo].[Series] ([Cod_Serie], [FLG_Tipo_Doc], [Ano_Trabalho], [Contador], [FLG_Ativo]) VALUES (N'2023-VC', N'VC', N'2023', 0, 1)
INSERT [dbo].[Series] ([Cod_Serie], [FLG_Tipo_Doc], [Ano_Trabalho], [Contador], [FLG_Ativo]) VALUES (N'2023-VF', N'VF', N'2023', 0, 1)
GO
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG01', N'CATG01', N'Desktop', N'SUBCATG01.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG02', N'CATG01', N'Portátil', N'SUBCATG02.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG03', N'CATG01', N'Workstation', N'SUBCATG03.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG04', N'CATG01', N'Servidores', N'SUBCATG04.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG05', N'CATG02', N'Processadores', N'SUBCATG05.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG06', N'CATG02', N'Motherboards', N'SUBCATG06.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG07', N'CATG02', N'Placas Gráficas', N'SUBCATG07.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG08', N'CATG02', N'Memórias RAM', N'SUBCATG08.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG09', N'CATG02', N'Fontes de Alimentação', N'SUBCATG09.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG10', N'CATG02', N'Caixas de Computador', N'SUBCATG10.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG11', N'CATG02', N'Placa de Som', N'SUBCATG11.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG12', N'CATG02', N'Placa de Rede', N'SUBCATG12.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG13', N'CATG02', N'Coolers CPU', N'SUBCATG13.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG14', N'CATG02', N'Compostos Térmicos', N'SUBCATG14.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG15', N'CATG03', N'Ratos', N'SUBCATG15.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG16', N'CATG03', N'Teclados', N'SUBCATG16.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG17', N'CATG03', N'Tapetes', N'SUBCATG17.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG18', N'CATG03', N'Headphones', N'SUBCATG18.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG19', N'CATG03', N'Microfones', N'SUBCATG19.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG20', N'CATG03', N'Webcams', N'SUBCATG20.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG21', N'CATG04', N'Monitores', N'SUBCATG21.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG22', N'CATG04', N'Televisores', N'SUBCATG22.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG23', N'CATG04', N'Projetores', N'SUBCATG23.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG24', N'CATG05', N'Home Audio', N'SUBCATG24.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG25', N'CATG05', N'Aparelhagens', N'SUBCATG25.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG26', N'CATG05', N'Soundbars', N'SUBCATG26.png', 1)
INSERT [dbo].[Sub_Categorias] ([Cod_Sub_Categoria], [Cod_Categoria], [Designacao], [Imagem], [FLG_Ativo]) VALUES (N'SUBCATG27', N'CATG05', N'Colunas Simples', N'SUBCATG27.png', 1)
GO
INSERT [dbo].[Tipos_Doc] ([FLG_Tipo_Doc], [Designacao], [Descritivo_Impressao], [FLG_ESC], [FLG_DC], [FLG_Entidade], [FLG_Venda], [FLG_Compra], [FLG_Stock], [Cod_Serie], [FLG_Ativo]) VALUES (N'FC', N'Fatura a Clientes', N'N/Fatura', N'S', N'D', N'C', 1, 0, 1, N'2023-FC', 1)
INSERT [dbo].[Tipos_Doc] ([FLG_Tipo_Doc], [Designacao], [Descritivo_Impressao], [FLG_ESC], [FLG_DC], [FLG_Entidade], [FLG_Venda], [FLG_Compra], [FLG_Stock], [Cod_Serie], [FLG_Ativo]) VALUES (N'FF', N'Fatura de Fornecedor', N'V/Fatura', N'E', N'C', N'F', 0, 1, 1, N'2023-FF', 1)
INSERT [dbo].[Tipos_Doc] ([FLG_Tipo_Doc], [Designacao], [Descritivo_Impressao], [FLG_ESC], [FLG_DC], [FLG_Entidade], [FLG_Venda], [FLG_Compra], [FLG_Stock], [Cod_Serie], [FLG_Ativo]) VALUES (N'GC', N'Guia de Remessa a Clientes', N'N/Guia de Remessa', N'S', N'N', N'C', 0, 0, 1, N'2023-GC', 1)
INSERT [dbo].[Tipos_Doc] ([FLG_Tipo_Doc], [Designacao], [Descritivo_Impressao], [FLG_ESC], [FLG_DC], [FLG_Entidade], [FLG_Venda], [FLG_Compra], [FLG_Stock], [Cod_Serie], [FLG_Ativo]) VALUES (N'GF', N'Guia de Remessa de Fornecedor', N'V/Guia de Remessa', N'E', N'N', N'F', 0, 0, 1, N'2023-GF', 1)
INSERT [dbo].[Tipos_Doc] ([FLG_Tipo_Doc], [Designacao], [Descritivo_Impressao], [FLG_ESC], [FLG_DC], [FLG_Entidade], [FLG_Venda], [FLG_Compra], [FLG_Stock], [Cod_Serie], [FLG_Ativo]) VALUES (N'NC', N'Nota de Crédito a Cliente', N'N/Nota de Crédito', N'E', N'C', N'C', 0, 0, 1, N'2023-NC', 1)
INSERT [dbo].[Tipos_Doc] ([FLG_Tipo_Doc], [Designacao], [Descritivo_Impressao], [FLG_ESC], [FLG_DC], [FLG_Entidade], [FLG_Venda], [FLG_Compra], [FLG_Stock], [Cod_Serie], [FLG_Ativo]) VALUES (N'NF', N'Nota de Débito a Fornecedor', N'N/Nota de Débito Fornecedor', N'S', N'D', N'F', 0, 0, 1, N'2023-NF', 1)
INSERT [dbo].[Tipos_Doc] ([FLG_Tipo_Doc], [Designacao], [Descritivo_Impressao], [FLG_ESC], [FLG_DC], [FLG_Entidade], [FLG_Venda], [FLG_Compra], [FLG_Stock], [Cod_Serie], [FLG_Ativo]) VALUES (N'PF', N'Fatura Proforma', N'Fatura Proforma', N'S', N'S', N'C', 0, 0, 0, N'2023-PF', 1)
INSERT [dbo].[Tipos_Doc] ([FLG_Tipo_Doc], [Designacao], [Descritivo_Impressao], [FLG_ESC], [FLG_DC], [FLG_Entidade], [FLG_Venda], [FLG_Compra], [FLG_Stock], [Cod_Serie], [FLG_Ativo]) VALUES (N'RC', N'Recibo a Clientes', N'N/Recibo', N'C', N'C', N'C', 0, 0, 0, N'2023-RC', 1)
INSERT [dbo].[Tipos_Doc] ([FLG_Tipo_Doc], [Designacao], [Descritivo_Impressao], [FLG_ESC], [FLG_DC], [FLG_Entidade], [FLG_Venda], [FLG_Compra], [FLG_Stock], [Cod_Serie], [FLG_Ativo]) VALUES (N'RF', N'Recibo de Fornecedores', N'V/Recibo', N'C', N'D', N'F', 0, 0, 0, N'2023-RF', 1)
INSERT [dbo].[Tipos_Doc] ([FLG_Tipo_Doc], [Designacao], [Descritivo_Impressao], [FLG_ESC], [FLG_DC], [FLG_Entidade], [FLG_Venda], [FLG_Compra], [FLG_Stock], [Cod_Serie], [FLG_Ativo]) VALUES (N'RI', N'Requisição', N'N/Requisição Interna', N'S', N'N', N'F', 0, 0, 0, N'2023-RI', 1)
INSERT [dbo].[Tipos_Doc] ([FLG_Tipo_Doc], [Designacao], [Descritivo_Impressao], [FLG_ESC], [FLG_DC], [FLG_Entidade], [FLG_Venda], [FLG_Compra], [FLG_Stock], [Cod_Serie], [FLG_Ativo]) VALUES (N'VC', N'Fatura-Recibo a Clientes', N'N/Fatura-Recibo', N'S', N'DC', N'C', 1, 0, 1, N'2023-VC', 1)
INSERT [dbo].[Tipos_Doc] ([FLG_Tipo_Doc], [Designacao], [Descritivo_Impressao], [FLG_ESC], [FLG_DC], [FLG_Entidade], [FLG_Venda], [FLG_Compra], [FLG_Stock], [Cod_Serie], [FLG_Ativo]) VALUES (N'VF', N'Fatura-Recibo de Fornecedor', N'V/Fatura-Recibo', N'E', N'DC', N'F', 0, 1, 1, N'2023-VF', 1)
GO
INSERT [dbo].[Tipos_Pagamento] ([Cod_Tipo_Pagamento], [Tipo_Pagamento], [Imagem], [FLG_Ativo]) VALUES (N'TP01', N'VISA', N'TP01.jpg', 1)
INSERT [dbo].[Tipos_Pagamento] ([Cod_Tipo_Pagamento], [Tipo_Pagamento], [Imagem], [FLG_Ativo]) VALUES (N'TP02', N'MultiBanco', N'TP02.jpg', 1)
INSERT [dbo].[Tipos_Pagamento] ([Cod_Tipo_Pagamento], [Tipo_Pagamento], [Imagem], [FLG_Ativo]) VALUES (N'TP03', N'MasterCard', N'TP03.jpg', 1)
INSERT [dbo].[Tipos_Pagamento] ([Cod_Tipo_Pagamento], [Tipo_Pagamento], [Imagem], [FLG_Ativo]) VALUES (N'TP04', N'Monetário', N'TP04.jpg', 1)
GO
ALTER TABLE [dbo].[Artigos] ADD  CONSTRAINT [DF_Artigos_FLG_Ativo]  DEFAULT ((1)) FOR [FLG_Ativo]
GO
ALTER TABLE [dbo].[Empresas] ADD  CONSTRAINT [DF_Empresa_Contador_Artigos]  DEFAULT ((0)) FOR [Contador_Artigos]
GO
ALTER TABLE [dbo].[Empresas] ADD  CONSTRAINT [DF_Empresa_Contador_IVA]  DEFAULT ((0)) FOR [Contador_IVA]
GO
ALTER TABLE [dbo].[Empresas] ADD  CONSTRAINT [DF_Empresa_Contador_IVA1_1]  DEFAULT ((0)) FOR [Contador_Categorias]
GO
ALTER TABLE [dbo].[Empresas] ADD  CONSTRAINT [DF_Empresa_Contador_IVA1_2]  DEFAULT ((0)) FOR [Contador_Sub_Categorias]
GO
ALTER TABLE [dbo].[Empresas] ADD  CONSTRAINT [DF_Empresa_Contador_IVA1_3]  DEFAULT ((0)) FOR [Contador_Tipos_Pagamento]
GO
ALTER TABLE [dbo].[Series] ADD  CONSTRAINT [DF_Series_FLG_Tipo_Doc]  DEFAULT (N'FC') FOR [FLG_Tipo_Doc]
GO
ALTER TABLE [dbo].[Series] ADD  CONSTRAINT [DF_Series_Ano_Trabalho]  DEFAULT ((2018)) FOR [Ano_Trabalho]
GO
ALTER TABLE [dbo].[Series] ADD  CONSTRAINT [DF_Series_Contador]  DEFAULT ((0)) FOR [Contador]
GO
ALTER TABLE [dbo].[Series] ADD  CONSTRAINT [DF_Series_FLG_Ativo]  DEFAULT ((1)) FOR [FLG_Ativo]
GO
ALTER TABLE [dbo].[Tipos_Doc] ADD  CONSTRAINT [DF_Tipos_Doc_Contador]  DEFAULT ((0)) FOR [Cod_Serie]
GO
