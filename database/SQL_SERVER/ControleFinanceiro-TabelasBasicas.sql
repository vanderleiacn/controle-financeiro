USE [controleFinanceiro]
GO
/****** Object:  Table [dbo].[tipoPlanoCliente]    Script Date: 6/15/2022 11:32:34 AM ******/
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
/****** Object:  Table [dbo].[usuario]    Script Date: 6/15/2022 11:32:34 AM ******/
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
ALTER TABLE [dbo].[tipoPlanoCliente] ADD  DEFAULT ((1)) FOR [ativo]
GO
ALTER TABLE [dbo].[usuario] ADD  DEFAULT ((1)) FOR [ativo]
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
