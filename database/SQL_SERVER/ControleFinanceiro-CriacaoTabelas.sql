USE [controleFinanceiro]
GO
/****** Object:  Table [dbo].[categoriaLancamento]    Script Date: 6/15/2022 11:22:35 AM ******/
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
/****** Object:  Table [dbo].[cliente]    Script Date: 6/15/2022 11:22:35 AM ******/
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
/****** Object:  Table [dbo].[Lancamento]    Script Date: 6/15/2022 11:22:35 AM ******/
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
/****** Object:  Table [dbo].[tipoCliente]    Script Date: 6/15/2022 11:22:35 AM ******/
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
/****** Object:  Table [dbo].[tipoLancamento]    Script Date: 6/15/2022 11:22:35 AM ******/
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
/****** Object:  Table [dbo].[tipoMeioPagamento]    Script Date: 6/15/2022 11:22:35 AM ******/
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
/****** Object:  Table [dbo].[tipoPlanoCliente]    Script Date: 6/15/2022 11:22:35 AM ******/
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
/****** Object:  Table [dbo].[usuario]    Script Date: 6/15/2022 11:22:35 AM ******/
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
ALTER TABLE [dbo].[tipoCliente]  WITH CHECK ADD FOREIGN KEY([idUsuarioInclusao])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[tipoCliente]  WITH CHECK ADD FOREIGN KEY([idUsuarioAlteracao])
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
ALTER TABLE [dbo].[tipoLancamento]  WITH CHECK ADD FOREIGN KEY([idUsuarioInclusao])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[tipoLancamento]  WITH CHECK ADD FOREIGN KEY([idUsuarioAlteracao])
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
ALTER TABLE [dbo].[tipoMeioPagamento]  WITH CHECK ADD FOREIGN KEY([idUsuarioInclusao])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[tipoMeioPagamento]  WITH CHECK ADD FOREIGN KEY([idUsuarioAlteracao])
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
ALTER TABLE [dbo].[tipoPlanoCliente]  WITH CHECK ADD FOREIGN KEY([idUsuarioInclusao])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[tipoPlanoCliente]  WITH CHECK ADD FOREIGN KEY([idUsuarioAlteracao])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[tipoPlanoCliente]  WITH CHECK ADD FOREIGN KEY([idUsuarioInclusao])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[tipoPlanoCliente]  WITH CHECK ADD FOREIGN KEY([idUsuarioAlteracao])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
