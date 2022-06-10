USE [controleFinanceiro]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipoPlanoCliente]') AND type in (N'U'))
ALTER TABLE [dbo].[tipoPlanoCliente] DROP CONSTRAINT IF EXISTS [FK__tipoPlano__idUsu__2057CCD0]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipoPlanoCliente]') AND type in (N'U'))
ALTER TABLE [dbo].[tipoPlanoCliente] DROP CONSTRAINT IF EXISTS [FK__tipoPlano__idUsu__1F63A897]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipoMeioPagamento]') AND type in (N'U'))
ALTER TABLE [dbo].[tipoMeioPagamento] DROP CONSTRAINT IF EXISTS [FK__tipoMeioP__idUsu__3552E9B6]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipoMeioPagamento]') AND type in (N'U'))
ALTER TABLE [dbo].[tipoMeioPagamento] DROP CONSTRAINT IF EXISTS [FK__tipoMeioP__idUsu__345EC57D]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipoLancamento]') AND type in (N'U'))
ALTER TABLE [dbo].[tipoLancamento] DROP CONSTRAINT IF EXISTS [FK__tipoLanca__idUsu__2BC97F7C]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipoLancamento]') AND type in (N'U'))
ALTER TABLE [dbo].[tipoLancamento] DROP CONSTRAINT IF EXISTS [FK__tipoLanca__idUsu__2AD55B43]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipoCliente]') AND type in (N'U'))
ALTER TABLE [dbo].[tipoCliente] DROP CONSTRAINT IF EXISTS [FK__tipoClien__idUsu__1B9317B3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipoCliente]') AND type in (N'U'))
ALTER TABLE [dbo].[tipoCliente] DROP CONSTRAINT IF EXISTS [FK__tipoClien__idUsu__1A9EF37A]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lancamento]') AND type in (N'U'))
ALTER TABLE [dbo].[Lancamento] DROP CONSTRAINT IF EXISTS [FK__Lancament__idUsu__7167D3BD]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lancamento]') AND type in (N'U'))
ALTER TABLE [dbo].[Lancamento] DROP CONSTRAINT IF EXISTS [FK__Lancament__idUsu__7073AF84]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lancamento]') AND type in (N'U'))
ALTER TABLE [dbo].[Lancamento] DROP CONSTRAINT IF EXISTS [FK__Lancament__idTip__6E8B6712]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lancamento]') AND type in (N'U'))
ALTER TABLE [dbo].[Lancamento] DROP CONSTRAINT IF EXISTS [FK__Lancament__idTip__6CA31EA0]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lancamento]') AND type in (N'U'))
ALTER TABLE [dbo].[Lancamento] DROP CONSTRAINT IF EXISTS [FK__Lancament__idCli__6F7F8B4B]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lancamento]') AND type in (N'U'))
ALTER TABLE [dbo].[Lancamento] DROP CONSTRAINT IF EXISTS [FK__Lancament__idCat__6D9742D9]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cliente]') AND type in (N'U'))
ALTER TABLE [dbo].[cliente] DROP CONSTRAINT IF EXISTS [FK__cliente__idUsuar__603D47BB]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cliente]') AND type in (N'U'))
ALTER TABLE [dbo].[cliente] DROP CONSTRAINT IF EXISTS [FK__cliente__idUsuar__5F492382]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cliente]') AND type in (N'U'))
ALTER TABLE [dbo].[cliente] DROP CONSTRAINT IF EXISTS [FK__cliente__idTipoP__5E54FF49]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cliente]') AND type in (N'U'))
ALTER TABLE [dbo].[cliente] DROP CONSTRAINT IF EXISTS [FK__cliente__idTipoC__5D60DB10]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[categoriaLancamento]') AND type in (N'U'))
ALTER TABLE [dbo].[categoriaLancamento] DROP CONSTRAINT IF EXISTS [FK__categoria__idUsu__308E3499]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[categoriaLancamento]') AND type in (N'U'))
ALTER TABLE [dbo].[categoriaLancamento] DROP CONSTRAINT IF EXISTS [FK__categoria__idUsu__2F9A1060]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usuario]') AND type in (N'U'))
ALTER TABLE [dbo].[usuario] DROP CONSTRAINT IF EXISTS [DF__usuario__ativo__17C286CF]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipoPlanoCliente]') AND type in (N'U'))
ALTER TABLE [dbo].[tipoPlanoCliente] DROP CONSTRAINT IF EXISTS [DF__tipoPlano__ativo__214BF109]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipoMeioPagamento]') AND type in (N'U'))
ALTER TABLE [dbo].[tipoMeioPagamento] DROP CONSTRAINT IF EXISTS [DF__tipoMeioP__ativo__36470DEF]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipoLancamento]') AND type in (N'U'))
ALTER TABLE [dbo].[tipoLancamento] DROP CONSTRAINT IF EXISTS [DF__tipoLanca__ativo__2CBDA3B5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipoCliente]') AND type in (N'U'))
ALTER TABLE [dbo].[tipoCliente] DROP CONSTRAINT IF EXISTS [DF__tipoClien__ativo__1C873BEC]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lancamento]') AND type in (N'U'))
ALTER TABLE [dbo].[Lancamento] DROP CONSTRAINT IF EXISTS [DF__Lancament__ativo__725BF7F6]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cliente]') AND type in (N'U'))
ALTER TABLE [dbo].[cliente] DROP CONSTRAINT IF EXISTS [DF__cliente__ativo__61316BF4]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[categoriaLancamento]') AND type in (N'U'))
ALTER TABLE [dbo].[categoriaLancamento] DROP CONSTRAINT IF EXISTS [DF__categoria__ativo__318258D2]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 6/10/2022 3:59:36 PM ******/
DROP TABLE IF EXISTS [dbo].[usuario]
GO
/****** Object:  Table [dbo].[tipoPlanoCliente]    Script Date: 6/10/2022 3:59:36 PM ******/
DROP TABLE IF EXISTS [dbo].[tipoPlanoCliente]
GO
/****** Object:  Table [dbo].[tipoMeioPagamento]    Script Date: 6/10/2022 3:59:36 PM ******/
DROP TABLE IF EXISTS [dbo].[tipoMeioPagamento]
GO
/****** Object:  Table [dbo].[tipoLancamento]    Script Date: 6/10/2022 3:59:36 PM ******/
DROP TABLE IF EXISTS [dbo].[tipoLancamento]
GO
/****** Object:  Table [dbo].[tipoCliente]    Script Date: 6/10/2022 3:59:36 PM ******/
DROP TABLE IF EXISTS [dbo].[tipoCliente]
GO
/****** Object:  Table [dbo].[Lancamento]    Script Date: 6/10/2022 3:59:36 PM ******/
DROP TABLE IF EXISTS [dbo].[Lancamento]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 6/10/2022 3:59:36 PM ******/
DROP TABLE IF EXISTS [dbo].[cliente]
GO
/****** Object:  Table [dbo].[categoriaLancamento]    Script Date: 6/10/2022 3:59:36 PM ******/
DROP TABLE IF EXISTS [dbo].[categoriaLancamento]
GO
/****** Object:  Table [dbo].[categoriaLancamento]    Script Date: 6/10/2022 3:59:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoriaLancamento](
	[idCategoriaLancamento] [smallint] NOT NULL,
	[categoriaLancamento] [varchar](30) NOT NULL,
	[descricao] [varchar](200) NULL,
	[dataHoraInclusao] [datetime] NOT NULL,
	[dataHoraAlterecao] [datetime] NULL,
	[idUsuarioInclusao] [int] NOT NULL,
	[idUsuarioAlteracao] [int] NULL,
	[ativo] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCategoriaLancamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 6/10/2022 3:59:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[idTipoCliente] [smallint] NOT NULL,
	[idTipoPlanoCliente] [smallint] NOT NULL,
	[nomeCompleto] [varchar](80) NULL,
	[email] [varchar](50) NULL,
	[telefone] [varchar](20) NULL,
	[cpfCnpj] [varchar](14) NULL,
	[dataHoraInclusao] [datetime] NOT NULL,
	[dataHoraAlterecao] [datetime] NULL,
	[idUsuarioInclusao] [int] NOT NULL,
	[idUsuarioAlteracao] [int] NULL,
	[ativo] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lancamento]    Script Date: 6/10/2022 3:59:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lancamento](
	[idLancamento] [int] IDENTITY(1,1) NOT NULL,
	[idTipoLancamento] [smallint] NOT NULL,
	[idCategoriaLancamento] [smallint] NOT NULL,
	[idTipoMeioPagamento] [smallint] NOT NULL,
	[idCliente] [int] NOT NULL,
	[descricao] [varchar](200) NOT NULL,
	[valorOriginal] [decimal](7, 2) NOT NULL,
	[valorPago] [decimal](7, 2) NULL,
	[dataVencimento] [date] NOT NULL,
	[dataPagamento] [date] NULL,
	[comprovante] [varchar](300) NULL,
	[dataHoraInclusao] [datetime] NOT NULL,
	[dataHoraAlterecao] [datetime] NULL,
	[idUsuarioInclusao] [int] NOT NULL,
	[idUsuarioAlteracao] [int] NULL,
	[ativo] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idLancamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipoCliente]    Script Date: 6/10/2022 3:59:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoCliente](
	[idTipoCliente] [smallint] NOT NULL,
	[tipoCliente] [varchar](8) NOT NULL,
	[descricao] [varchar](20) NULL,
	[dataHoraInclusao] [datetime] NOT NULL,
	[dataHoraAlterecao] [datetime] NULL,
	[idUsuarioInclusao] [int] NOT NULL,
	[idUsuarioAlteracao] [int] NULL,
	[ativo] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idTipoCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipoLancamento]    Script Date: 6/10/2022 3:59:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoLancamento](
	[idTipoLancamento] [smallint] NOT NULL,
	[tipoLancamento] [varchar](8) NOT NULL,
	[descricao] [varchar](20) NULL,
	[dataHoraInclusao] [datetime] NOT NULL,
	[dataHoraAlterecao] [datetime] NULL,
	[idUsuarioInclusao] [int] NOT NULL,
	[idUsuarioAlteracao] [int] NULL,
	[ativo] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idTipoLancamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipoMeioPagamento]    Script Date: 6/10/2022 3:59:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoMeioPagamento](
	[idTipoMeioPagamento] [smallint] IDENTITY(1,1) NOT NULL,
	[TipoMeioPagamento] [varchar](20) NULL,
	[dataHoraInclusao] [datetime] NOT NULL,
	[dataHoraAlterecao] [datetime] NULL,
	[idUsuarioInclusao] [int] NOT NULL,
	[idUsuarioAlteracao] [int] NULL,
	[ativo] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idTipoMeioPagamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipoPlanoCliente]    Script Date: 6/10/2022 3:59:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoPlanoCliente](
	[idTipoPlanoCliente] [smallint] NOT NULL,
	[tipoPlanoCliente] [varchar](20) NOT NULL,
	[dataHoraInclusao] [datetime] NOT NULL,
	[dataHoraAlterecao] [datetime] NULL,
	[idUsuarioInclusao] [int] NOT NULL,
	[idUsuarioAlteracao] [int] NULL,
	[ativo] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idTipoPlanoCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 6/10/2022 3:59:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nomeCompletoUsuario] [varchar](80) NULL,
	[senha] [varchar](20) NULL,
	[dataHoraInclusao] [datetime] NOT NULL,
	[dataHoraAlterecao] [datetime] NULL,
	[idUsuarioInclusao] [int] NOT NULL,
	[idUsuarioAlteracao] [int] NULL,
	[ativo] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[categoriaLancamento] ADD  DEFAULT ((1)) FOR [ativo]
GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT ((1)) FOR [ativo]
GO
ALTER TABLE [dbo].[Lancamento] ADD  DEFAULT ((1)) FOR [ativo]
GO
ALTER TABLE [dbo].[tipoCliente] ADD  DEFAULT ((1)) FOR [ativo]
GO
ALTER TABLE [dbo].[tipoLancamento] ADD  DEFAULT ((1)) FOR [ativo]
GO
ALTER TABLE [dbo].[tipoMeioPagamento] ADD  DEFAULT ((1)) FOR [ativo]
GO
ALTER TABLE [dbo].[tipoPlanoCliente] ADD  DEFAULT ((1)) FOR [ativo]
GO
ALTER TABLE [dbo].[usuario] ADD  DEFAULT ((1)) FOR [ativo]
GO
ALTER TABLE [dbo].[categoriaLancamento]  WITH CHECK ADD FOREIGN KEY([idUsuarioInclusao])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[categoriaLancamento]  WITH CHECK ADD FOREIGN KEY([idUsuarioAlteracao])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[cliente]  WITH CHECK ADD FOREIGN KEY([idTipoCliente])
REFERENCES [dbo].[tipoCliente] ([idTipoCliente])
GO
ALTER TABLE [dbo].[cliente]  WITH CHECK ADD FOREIGN KEY([idTipoPlanoCliente])
REFERENCES [dbo].[tipoPlanoCliente] ([idTipoPlanoCliente])
GO
ALTER TABLE [dbo].[cliente]  WITH CHECK ADD FOREIGN KEY([idUsuarioInclusao])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[cliente]  WITH CHECK ADD FOREIGN KEY([idUsuarioAlteracao])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Lancamento]  WITH CHECK ADD FOREIGN KEY([idCategoriaLancamento])
REFERENCES [dbo].[categoriaLancamento] ([idCategoriaLancamento])
GO
ALTER TABLE [dbo].[Lancamento]  WITH CHECK ADD FOREIGN KEY([idCliente])
REFERENCES [dbo].[cliente] ([idCliente])
GO
ALTER TABLE [dbo].[Lancamento]  WITH CHECK ADD FOREIGN KEY([idTipoLancamento])
REFERENCES [dbo].[tipoLancamento] ([idTipoLancamento])
GO
ALTER TABLE [dbo].[Lancamento]  WITH CHECK ADD FOREIGN KEY([idTipoMeioPagamento])
REFERENCES [dbo].[tipoMeioPagamento] ([idTipoMeioPagamento])
GO
ALTER TABLE [dbo].[Lancamento]  WITH CHECK ADD FOREIGN KEY([idUsuarioInclusao])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Lancamento]  WITH CHECK ADD FOREIGN KEY([idUsuarioAlteracao])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[tipoCliente]  WITH CHECK ADD FOREIGN KEY([idUsuarioInclusao])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[tipoCliente]  WITH CHECK ADD FOREIGN KEY([idUsuarioAlteracao])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[tipoLancamento]  WITH CHECK ADD FOREIGN KEY([idUsuarioInclusao])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[tipoLancamento]  WITH CHECK ADD FOREIGN KEY([idUsuarioAlteracao])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[tipoMeioPagamento]  WITH CHECK ADD FOREIGN KEY([idUsuarioInclusao])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[tipoMeioPagamento]  WITH CHECK ADD FOREIGN KEY([idUsuarioAlteracao])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[tipoPlanoCliente]  WITH CHECK ADD FOREIGN KEY([idUsuarioInclusao])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[tipoPlanoCliente]  WITH CHECK ADD FOREIGN KEY([idUsuarioAlteracao])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
