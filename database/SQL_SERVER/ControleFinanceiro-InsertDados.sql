USE [controleFinanceiro]
GO
DELETE FROM [dbo].[Lancamento]
GO
DELETE FROM [dbo].[cliente]
GO
DELETE FROM [dbo].[tipoMeioPagamento]
GO
DELETE FROM [dbo].[categoriaLancamento]
GO
DELETE FROM [dbo].[tipoLancamento]
GO
DELETE FROM [dbo].[tipoPlanoCliente]
GO
DELETE FROM [dbo].[tipoCliente]
GO
DELETE FROM [dbo].[usuario]
GO
SET IDENTITY_INSERT [dbo].[usuario] ON 
GO
INSERT [dbo].[usuario] ([idUsuario], [nomeCompletoUsuario], [senha], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (1, N'vanderleia cavalcante do nascimento', NULL, CAST(N'2022-06-02T14:53:00.000' AS DateTime), NULL, 1, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[usuario] OFF
GO
INSERT [dbo].[tipoCliente] ([idTipoCliente], [tipoCliente], [descricao], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (1, N'CPF', NULL, CAST(N'2022-06-02T14:53:00.000' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[tipoCliente] ([idTipoCliente], [tipoCliente], [descricao], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (2, N'cnpj', NULL, CAST(N'2022-06-02T14:53:00.000' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[tipoPlanoCliente] ([idTipoPlanoCliente], [tipoPlanoCliente], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (1, N'gratuito', CAST(N'2022-06-06T14:00:00.000' AS DateTime), CAST(N'2022-06-06T14:10:00.000' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[tipoPlanoCliente] ([idTipoPlanoCliente], [tipoPlanoCliente], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (2, N'basico', CAST(N'2022-06-06T15:00:00.000' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[tipoPlanoCliente] ([idTipoPlanoCliente], [tipoPlanoCliente], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (3, N'Premium', CAST(N'2022-06-10T12:48:00.000' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[tipoLancamento] ([idTipoLancamento], [tipoLancamento], [descricao], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (1, N'despesa', N'valores pagos', CAST(N'2022-06-06T16:00:00.000' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[tipoLancamento] ([idTipoLancamento], [tipoLancamento], [descricao], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (2, N'receita', N'valores recebidos', CAST(N'2022-06-02T15:05:00.000' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[categoriaLancamento] ([idCategoriaLancamento], [categoriaLancamento], [descricao], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (1, N'Conta de Consumo', NULL, CAST(N'2022-06-02T15:10:00.000' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[categoriaLancamento] ([idCategoriaLancamento], [categoriaLancamento], [descricao], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (2, N'imposto', N'iptu', CAST(N'2022-06-06T16:10:00.000' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[categoriaLancamento] ([idCategoriaLancamento], [categoriaLancamento], [descricao], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (3, N'Estudos', N'Faculdade', CAST(N'2022-06-10T12:36:00.000' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[categoriaLancamento] ([idCategoriaLancamento], [categoriaLancamento], [descricao], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (4, N'Alimentação', N'Mercado', CAST(N'2022-06-10T12:40:00.000' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[categoriaLancamento] ([idCategoriaLancamento], [categoriaLancamento], [descricao], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (5, N'Gastos Pessoais', NULL, CAST(N'2022-06-10T12:40:00.000' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[categoriaLancamento] ([idCategoriaLancamento], [categoriaLancamento], [descricao], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (6, N'Salario', NULL, CAST(N'2022-06-10T12:40:00.000' AS DateTime), NULL, 1, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[tipoMeioPagamento] ON 
GO
INSERT [dbo].[tipoMeioPagamento] ([idTipoMeioPagamento], [TipoMeioPagamento], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (1, N'dinheiro', CAST(N'2022-06-02T15:20:00.000' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[tipoMeioPagamento] ([idTipoMeioPagamento], [TipoMeioPagamento], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (2, N'cartao credito', CAST(N'2022-06-06T16:10:00.000' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[tipoMeioPagamento] ([idTipoMeioPagamento], [TipoMeioPagamento], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (5, N'trasnferencia', CAST(N'2022-06-10T12:30:00.000' AS DateTime), NULL, 1, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[tipoMeioPagamento] OFF
GO
SET IDENTITY_INSERT [dbo].[cliente] ON 
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (1, 1, 1, N'Maria ', N'teste01@teste.com', N'13988323348', N'32796647852', CAST(N'2022-06-10T15:45:54.067' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (2, 2, 3, N'Joao', N'teste01@teste.com', N'11965419624', N'43279664000145', CAST(N'2022-06-10T15:45:54.130' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (3, 1, 1, N'Jose', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.130' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (4, 2, 2, N'Antonio', N'teste01@teste.com', N'13988454031', N'43279554000142', CAST(N'2022-06-10T15:45:54.130' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (5, 1, 3, N'Cliente01', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.133' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (6, 2, 3, N'Cliente02', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.133' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (7, 1, 2, N'Cliente03', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.133' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (8, 1, 1, N'Cliente04', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.133' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (9, 1, 1, N'Cliente05', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.133' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (10, 2, 3, N'Cliente06', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.133' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (11, 2, 2, N'Cliente07', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.137' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (12, 2, 2, N'Cliente08', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.137' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (13, 2, 2, N'Cliente09', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.137' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (14, 2, 3, N'Cliente10', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.137' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (15, 2, 3, N'Cliente11', N'teste01@teste.com', N'11965419624', N'34579664000175', CAST(N'2022-06-10T15:45:54.137' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (16, 2, 3, N'Cliente12', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.137' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (17, 2, 3, N'Cliente13', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.140' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (18, 2, 2, N'Cliente14', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.143' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (19, 1, 1, N'Cliente15', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.143' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (20, 1, 2, N'Cliente16', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.143' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (21, 1, 3, N'Cliente17', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.143' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (22, 1, 2, N'Cliente18', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.147' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (23, 1, 3, N'Cliente19', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.147' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (24, 1, 2, N'Cliente20', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.147' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (25, 1, 2, N'Cliente21', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.150' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (26, 1, 1, N'Cliente22', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.150' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (27, 2, 2, N'Cliente23', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.150' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (28, 2, 3, N'Cliente24', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.150' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (29, 2, 3, N'Cliente25', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.150' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (30, 1, 1, N'Cliente26', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.150' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (31, 1, 1, N'Cliente27', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.153' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (32, 1, 1, N'Cliente28', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.153' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (33, 1, 1, N'Cliente29', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.153' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (34, 2, 3, N'Cliente30', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.153' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (35, 2, 3, N'Cliente31', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.153' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (36, 2, 2, N'Cliente32', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.153' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (37, 2, 2, N'Cliente33', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.153' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (38, 2, 2, N'Cliente34', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.157' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (39, 1, 1, N'Cliente35', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.157' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (40, 1, 1, N'Cliente36', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.157' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (41, 1, 1, N'Cliente37', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.157' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (42, 1, 1, N'Cliente38', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.157' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (43, 1, 1, N'Cliente39', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.157' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (44, 1, 1, N'Cliente40', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.157' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (45, 1, 1, N'Cliente41', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.160' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (46, 1, 1, N'Cliente42', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.160' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (47, 1, 1, N'Cliente43', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.160' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (48, 1, 1, N'Cliente44', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.160' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (49, 1, 1, N'Cliente45', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.160' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (50, 2, 2, N'Cliente46', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.160' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (51, 2, 2, N'Cliente47', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.160' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (52, 2, 2, N'Cliente48', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.160' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (53, 2, 2, N'Cliente49', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.160' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (54, 2, 2, N'Cliente50', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.160' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (55, 2, 2, N'Cliente51', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.160' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (56, 2, 2, N'Cliente52', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.160' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (57, 2, 2, N'Cliente53', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.160' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (58, 2, 2, N'Cliente54', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.163' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (59, 2, 2, N'Cliente55', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.163' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (60, 2, 3, N'Cliente56', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.163' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (61, 2, 3, N'Cliente57', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.163' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (62, 2, 3, N'Cliente58', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.163' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (63, 2, 3, N'Cliente59', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.163' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (64, 2, 3, N'Cliente60', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.163' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (65, 1, 1, N'Cliente61', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.163' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (66, 1, 2, N'Cliente62', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.163' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (67, 1, 1, N'Cliente63', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.163' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (68, 1, 2, N'Cliente64', N'teste01@teste.com', N'13974058920', N'32796647852', CAST(N'2022-06-10T15:45:54.163' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[cliente] ([idCliente], [idTipoCliente], [idTipoPlanoCliente], [nomeCompleto], [email], [telefone], [cpfCnpj], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (69, 2, 3, N'Cliente65', N'teste01@teste.com', N'13974058920', N'34579664000175', CAST(N'2022-06-10T15:45:54.163' AS DateTime), NULL, 1, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Lancamento] ON 
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (1, 1, 1, 1, 1, N'Energia', CAST(100.00 AS Decimal(7, 2)), CAST(100.00 AS Decimal(7, 2)), CAST(N'2022-06-10' AS Date), CAST(N'2022-06-15' AS Date), NULL, CAST(N'2022-06-10T15:55:01.837' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (2, 1, 2, 2, 2, N'IPTU', CAST(155.00 AS Decimal(7, 2)), CAST(155.00 AS Decimal(7, 2)), CAST(N'2022-06-15' AS Date), CAST(N'2022-06-15' AS Date), NULL, CAST(N'2022-06-10T15:55:01.837' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (3, 1, 3, 1, 3, N'Faculdade', CAST(200.00 AS Decimal(7, 2)), CAST(150.00 AS Decimal(7, 2)), CAST(N'2022-06-20' AS Date), CAST(N'2022-06-16' AS Date), NULL, CAST(N'2022-06-10T15:55:01.837' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (4, 1, 4, 1, 4, N'Mercado', CAST(100.00 AS Decimal(7, 2)), CAST(100.00 AS Decimal(7, 2)), CAST(N'2022-06-18' AS Date), CAST(N'2022-06-17' AS Date), NULL, CAST(N'2022-06-10T15:55:01.837' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (5, 1, 1, 1, 5, N'Agua', CAST(100.00 AS Decimal(7, 2)), CAST(100.00 AS Decimal(7, 2)), CAST(N'2022-06-18' AS Date), CAST(N'2022-06-18' AS Date), NULL, CAST(N'2022-06-10T15:55:01.837' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (6, 1, 1, 1, 6, N'Agua', CAST(100.00 AS Decimal(7, 2)), CAST(100.00 AS Decimal(7, 2)), CAST(N'2022-06-19' AS Date), CAST(N'2022-06-19' AS Date), NULL, CAST(N'2022-06-10T15:55:01.840' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (7, 1, 1, 1, 7, N'Agua', CAST(100.00 AS Decimal(7, 2)), CAST(100.00 AS Decimal(7, 2)), CAST(N'2022-06-20' AS Date), CAST(N'2022-06-20' AS Date), NULL, CAST(N'2022-06-10T15:55:01.840' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (8, 1, 1, 1, 8, N'Agua', CAST(100.00 AS Decimal(7, 2)), CAST(100.00 AS Decimal(7, 2)), CAST(N'2022-06-25' AS Date), CAST(N'2022-06-21' AS Date), NULL, CAST(N'2022-06-10T15:55:01.840' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (9, 1, 1, 1, 9, N'Agua', CAST(100.00 AS Decimal(7, 2)), CAST(100.00 AS Decimal(7, 2)), CAST(N'2022-06-25' AS Date), CAST(N'2022-06-22' AS Date), NULL, CAST(N'2022-06-10T15:55:01.840' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (10, 1, 1, 1, 10, N'Agua', CAST(100.00 AS Decimal(7, 2)), CAST(100.00 AS Decimal(7, 2)), CAST(N'2022-06-20' AS Date), CAST(N'2022-06-23' AS Date), NULL, CAST(N'2022-06-10T15:55:01.840' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (11, 1, 1, 1, 11, N'Agua', CAST(100.00 AS Decimal(7, 2)), CAST(100.00 AS Decimal(7, 2)), CAST(N'2022-06-25' AS Date), CAST(N'2022-06-24' AS Date), NULL, CAST(N'2022-06-10T15:55:01.840' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (12, 1, 5, 2, 12, N'Vestuario', CAST(200.00 AS Decimal(7, 2)), CAST(200.00 AS Decimal(7, 2)), CAST(N'2022-06-26' AS Date), CAST(N'2022-06-25' AS Date), NULL, CAST(N'2022-06-10T15:55:01.840' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (13, 1, 5, 2, 13, N'Vestuario', CAST(200.00 AS Decimal(7, 2)), CAST(200.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-26' AS Date), NULL, CAST(N'2022-06-10T15:55:01.840' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (14, 1, 5, 2, 14, N'Vestuario', CAST(200.00 AS Decimal(7, 2)), CAST(200.00 AS Decimal(7, 2)), CAST(N'2022-06-23' AS Date), CAST(N'2022-06-27' AS Date), NULL, CAST(N'2022-06-10T15:55:01.840' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (15, 1, 5, 2, 15, N'Vestuario', CAST(200.00 AS Decimal(7, 2)), CAST(200.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-28' AS Date), NULL, CAST(N'2022-06-10T15:55:01.840' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (16, 1, 5, 2, 16, N'Lazer', CAST(200.00 AS Decimal(7, 2)), CAST(200.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-29' AS Date), NULL, CAST(N'2022-06-10T15:55:01.840' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (17, 1, 5, 2, 17, N'Lazer', CAST(200.00 AS Decimal(7, 2)), CAST(200.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-30' AS Date), NULL, CAST(N'2022-06-10T15:55:01.840' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (18, 1, 5, 2, 18, N'Lazer', CAST(200.00 AS Decimal(7, 2)), CAST(200.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-30' AS Date), NULL, CAST(N'2022-06-10T15:55:01.840' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (19, 1, 5, 2, 19, N'Lazer', CAST(200.00 AS Decimal(7, 2)), CAST(200.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-20' AS Date), NULL, CAST(N'2022-06-10T15:55:01.843' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (20, 1, 1, 1, 20, N'Telefone', CAST(100.00 AS Decimal(7, 2)), CAST(100.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-20' AS Date), NULL, CAST(N'2022-06-10T15:55:01.843' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (21, 1, 1, 1, 21, N'Telefone', CAST(100.00 AS Decimal(7, 2)), CAST(100.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-20' AS Date), NULL, CAST(N'2022-06-10T15:55:01.843' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (22, 1, 1, 1, 22, N'Telefone', CAST(100.00 AS Decimal(7, 2)), CAST(100.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-20' AS Date), NULL, CAST(N'2022-06-10T15:55:01.843' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (23, 1, 1, 1, 23, N'Telefone', CAST(100.00 AS Decimal(7, 2)), CAST(100.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-20' AS Date), NULL, CAST(N'2022-06-10T15:55:01.843' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (24, 1, 1, 1, 24, N'Telefone', CAST(100.00 AS Decimal(7, 2)), CAST(100.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-20' AS Date), NULL, CAST(N'2022-06-10T15:55:01.843' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (25, 1, 1, 1, 25, N'Telefone', CAST(100.00 AS Decimal(7, 2)), CAST(100.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-20' AS Date), NULL, CAST(N'2022-06-10T15:55:01.843' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (26, 1, 1, 1, 26, N'Telefone', CAST(100.00 AS Decimal(7, 2)), CAST(100.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-20' AS Date), NULL, CAST(N'2022-06-10T15:55:01.843' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (27, 1, 1, 1, 27, N'Telefone', CAST(100.00 AS Decimal(7, 2)), CAST(100.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-20' AS Date), NULL, CAST(N'2022-06-10T15:55:01.843' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (28, 1, 1, 1, 28, N'Agua', CAST(100.00 AS Decimal(7, 2)), CAST(100.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-20' AS Date), NULL, CAST(N'2022-06-10T15:55:01.843' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (29, 1, 1, 1, 29, N'Energia', CAST(100.00 AS Decimal(7, 2)), CAST(100.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-20' AS Date), NULL, CAST(N'2022-06-10T15:55:01.843' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (30, 1, 1, 1, 30, N'Energia', CAST(100.00 AS Decimal(7, 2)), CAST(100.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-20' AS Date), NULL, CAST(N'2022-06-10T15:55:01.843' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (31, 1, 2, 1, 31, N'IPTU', CAST(230.00 AS Decimal(7, 2)), CAST(230.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-30' AS Date), NULL, CAST(N'2022-06-10T15:55:01.843' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (32, 1, 2, 1, 32, N'IPTU', CAST(230.00 AS Decimal(7, 2)), CAST(230.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-15' AS Date), NULL, CAST(N'2022-06-10T15:55:01.843' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (33, 1, 2, 1, 33, N'IPTU', CAST(230.00 AS Decimal(7, 2)), CAST(230.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-15' AS Date), NULL, CAST(N'2022-06-10T15:55:01.843' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (34, 1, 2, 1, 34, N'IPTU', CAST(230.00 AS Decimal(7, 2)), CAST(230.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-15' AS Date), NULL, CAST(N'2022-06-10T15:55:01.847' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (35, 1, 2, 1, 35, N'IPTU', CAST(230.04 AS Decimal(7, 2)), CAST(230.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-15' AS Date), NULL, CAST(N'2022-06-10T15:55:01.847' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (36, 1, 2, 1, 36, N'IPTU', CAST(230.00 AS Decimal(7, 2)), CAST(230.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-15' AS Date), NULL, CAST(N'2022-06-10T15:55:01.847' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (37, 1, 2, 1, 37, N'IPTU', CAST(230.00 AS Decimal(7, 2)), CAST(230.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-15' AS Date), NULL, CAST(N'2022-06-10T15:55:01.847' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (38, 1, 2, 1, 38, N'IPTU', CAST(230.00 AS Decimal(7, 2)), CAST(230.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-15' AS Date), NULL, CAST(N'2022-06-10T15:55:01.847' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (39, 1, 2, 1, 39, N'IPTU', CAST(230.00 AS Decimal(7, 2)), CAST(230.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-15' AS Date), NULL, CAST(N'2022-06-10T15:55:01.847' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (40, 1, 2, 1, 40, N'IPTU', CAST(230.00 AS Decimal(7, 2)), CAST(230.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-15' AS Date), NULL, CAST(N'2022-06-10T15:55:01.847' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (41, 1, 2, 1, 41, N'IPTU', CAST(230.00 AS Decimal(7, 2)), CAST(230.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-20' AS Date), NULL, CAST(N'2022-06-10T15:55:01.847' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (42, 1, 2, 1, 42, N'IPTU', CAST(230.00 AS Decimal(7, 2)), CAST(230.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-20' AS Date), NULL, CAST(N'2022-06-10T15:55:01.847' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (43, 1, 2, 1, 43, N'IPTU', CAST(230.00 AS Decimal(7, 2)), CAST(230.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-20' AS Date), NULL, CAST(N'2022-06-10T15:55:01.847' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (44, 1, 2, 1, 44, N'IPTU', CAST(230.00 AS Decimal(7, 2)), CAST(230.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-20' AS Date), NULL, CAST(N'2022-06-10T15:55:01.850' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (45, 1, 2, 1, 45, N'IPTU', CAST(230.00 AS Decimal(7, 2)), CAST(230.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-20' AS Date), NULL, CAST(N'2022-06-10T15:55:01.850' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (46, 1, 2, 1, 46, N'IPTU', CAST(230.00 AS Decimal(7, 2)), CAST(230.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-20' AS Date), NULL, CAST(N'2022-06-10T15:55:01.850' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (47, 1, 2, 1, 47, N'IPTU', CAST(230.00 AS Decimal(7, 2)), CAST(230.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-20' AS Date), NULL, CAST(N'2022-06-10T15:55:01.850' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (48, 1, 2, 1, 48, N'IPTU', CAST(230.00 AS Decimal(7, 2)), CAST(230.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-20' AS Date), NULL, CAST(N'2022-06-10T15:55:01.850' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (49, 1, 2, 1, 49, N'IPTU', CAST(230.00 AS Decimal(7, 2)), CAST(230.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-20' AS Date), NULL, CAST(N'2022-06-10T15:55:01.850' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (50, 1, 2, 1, 50, N'IPTU', CAST(230.00 AS Decimal(7, 2)), CAST(230.00 AS Decimal(7, 2)), CAST(N'2022-06-15' AS Date), CAST(N'2022-06-15' AS Date), NULL, CAST(N'2022-06-10T15:55:01.850' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (51, 2, 6, 5, 51, N'Salario de Junho', CAST(1200.00 AS Decimal(7, 2)), CAST(1200.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-30' AS Date), NULL, CAST(N'2022-06-10T15:55:01.853' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (52, 2, 6, 5, 52, N'Salario de Junho', CAST(1200.00 AS Decimal(7, 2)), CAST(1200.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-30' AS Date), NULL, CAST(N'2022-06-10T15:55:01.853' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (53, 2, 6, 5, 53, N'Salario de Junho', CAST(1200.00 AS Decimal(7, 2)), CAST(1200.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-30' AS Date), NULL, CAST(N'2022-06-10T15:55:01.853' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (54, 2, 6, 5, 1, N'Salario de Junho', CAST(1200.00 AS Decimal(7, 2)), CAST(1200.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-30' AS Date), NULL, CAST(N'2022-06-10T15:55:01.853' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (55, 2, 6, 5, 2, N'Salario de Junho', CAST(1200.00 AS Decimal(7, 2)), CAST(1200.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-30' AS Date), NULL, CAST(N'2022-06-10T15:55:01.853' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (56, 2, 6, 5, 3, N'Salario de Junho', CAST(1200.00 AS Decimal(7, 2)), CAST(1200.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-30' AS Date), NULL, CAST(N'2022-06-10T15:55:01.853' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (57, 2, 6, 5, 4, N'Salario de Junho', CAST(1200.00 AS Decimal(7, 2)), CAST(1200.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-30' AS Date), NULL, CAST(N'2022-06-10T15:55:01.853' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (58, 2, 6, 5, 5, N'Salario de Junho', CAST(1200.00 AS Decimal(7, 2)), CAST(1200.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-30' AS Date), NULL, CAST(N'2022-06-10T15:55:01.853' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (59, 2, 6, 5, 6, N'Salario de Junho', CAST(1200.00 AS Decimal(7, 2)), CAST(1200.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-30' AS Date), NULL, CAST(N'2022-06-10T15:55:01.853' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (60, 1, 1, 1, 54, N'Energia', CAST(180.00 AS Decimal(7, 2)), CAST(180.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-30' AS Date), NULL, CAST(N'2022-06-10T15:55:01.857' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (61, 1, 1, 1, 55, N'Energia', CAST(180.00 AS Decimal(7, 2)), CAST(180.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-30' AS Date), NULL, CAST(N'2022-06-10T15:55:01.857' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (62, 1, 1, 1, 56, N'Energia', CAST(180.00 AS Decimal(7, 2)), CAST(180.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-30' AS Date), NULL, CAST(N'2022-06-10T15:55:01.857' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (63, 1, 1, 1, 57, N'Energia', CAST(180.00 AS Decimal(7, 2)), CAST(180.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-30' AS Date), NULL, CAST(N'2022-06-10T15:55:01.857' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (64, 1, 1, 1, 58, N'Energia', CAST(180.00 AS Decimal(7, 2)), CAST(180.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-30' AS Date), NULL, CAST(N'2022-06-10T15:55:01.857' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (65, 1, 1, 1, 59, N'Energia', CAST(180.00 AS Decimal(7, 2)), CAST(180.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-30' AS Date), NULL, CAST(N'2022-06-10T15:55:01.857' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (66, 1, 1, 1, 60, N'Energia', CAST(180.00 AS Decimal(7, 2)), CAST(180.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-30' AS Date), NULL, CAST(N'2022-06-10T15:55:01.857' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (67, 1, 1, 1, 61, N'Energia', CAST(180.00 AS Decimal(7, 2)), CAST(180.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-30' AS Date), NULL, CAST(N'2022-06-10T15:55:01.857' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (68, 1, 1, 1, 62, N'Energia', CAST(180.00 AS Decimal(7, 2)), CAST(180.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-30' AS Date), NULL, CAST(N'2022-06-10T15:55:01.857' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (69, 1, 1, 1, 63, N'Energia', CAST(180.00 AS Decimal(7, 2)), CAST(180.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-30' AS Date), NULL, CAST(N'2022-06-10T15:55:01.857' AS DateTime), NULL, 1, NULL, 1)
GO
INSERT [dbo].[Lancamento] ([idLancamento], [idTipoLancamento], [idCategoriaLancamento], [idTipoMeioPagamento], [idCliente], [descricao], [valorOriginal], [valorPago], [dataVencimento], [dataPagamento], [comprovante], [dataHoraInclusao], [dataHoraAlterecao], [idUsuarioInclusao], [idUsuarioAlteracao], [ativo]) VALUES (70, 1, 1, 1, 64, N'Energia', CAST(195.00 AS Decimal(7, 2)), CAST(195.00 AS Decimal(7, 2)), CAST(N'2022-06-30' AS Date), CAST(N'2022-06-30' AS Date), NULL, CAST(N'2022-06-10T15:55:01.857' AS DateTime), NULL, 1, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[Lancamento] OFF
GO
