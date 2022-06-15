USE [controleFinanceiro]
GO
ALTER TABLE [dbo].[tipoPlanoCliente] DROP CONSTRAINT [FK__tipoPlano__idUsu__23BE4960]
GO
ALTER TABLE [dbo].[tipoPlanoCliente] DROP CONSTRAINT [FK__tipoPlano__idUsu__22CA2527]
GO
ALTER TABLE [dbo].[tipoPlanoCliente] DROP CONSTRAINT [FK__tipoPlano__idUsu__21D600EE]
GO
ALTER TABLE [dbo].[tipoPlanoCliente] DROP CONSTRAINT [FK__tipoPlano__idUsu__20E1DCB5]
GO
ALTER TABLE [dbo].[tipoPlanoCliente] DROP CONSTRAINT [FK__tipoPlano__idUsu__1FEDB87C]
GO
ALTER TABLE [dbo].[tipoPlanoCliente] DROP CONSTRAINT [FK__tipoPlano__idUsu__1EF99443]
GO
ALTER TABLE [dbo].[tipoMeioPagamento] DROP CONSTRAINT [FK__tipoMeioP__idUsu__1E05700A]
GO
ALTER TABLE [dbo].[tipoMeioPagamento] DROP CONSTRAINT [FK__tipoMeioP__idUsu__1D114BD1]
GO
ALTER TABLE [dbo].[tipoMeioPagamento] DROP CONSTRAINT [FK__tipoMeioP__idUsu__1C1D2798]
GO
ALTER TABLE [dbo].[tipoMeioPagamento] DROP CONSTRAINT [FK__tipoMeioP__idUsu__1B29035F]
GO
ALTER TABLE [dbo].[tipoMeioPagamento] DROP CONSTRAINT [FK__tipoMeioP__idUsu__1A34DF26]
GO
ALTER TABLE [dbo].[tipoMeioPagamento] DROP CONSTRAINT [FK__tipoMeioP__idUsu__1940BAED]
GO
ALTER TABLE [dbo].[tipoLancamento] DROP CONSTRAINT [FK__tipoLanca__idUsu__184C96B4]
GO
ALTER TABLE [dbo].[tipoLancamento] DROP CONSTRAINT [FK__tipoLanca__idUsu__1758727B]
GO
ALTER TABLE [dbo].[tipoLancamento] DROP CONSTRAINT [FK__tipoLanca__idUsu__16644E42]
GO
ALTER TABLE [dbo].[tipoLancamento] DROP CONSTRAINT [FK__tipoLanca__idUsu__15702A09]
GO
ALTER TABLE [dbo].[tipoLancamento] DROP CONSTRAINT [FK__tipoLanca__idUsu__147C05D0]
GO
ALTER TABLE [dbo].[tipoLancamento] DROP CONSTRAINT [FK__tipoLanca__idUsu__1387E197]
GO
ALTER TABLE [dbo].[tipoCliente] DROP CONSTRAINT [FK__tipoClien__idUsu__1293BD5E]
GO
ALTER TABLE [dbo].[tipoCliente] DROP CONSTRAINT [FK__tipoClien__idUsu__119F9925]
GO
ALTER TABLE [dbo].[tipoCliente] DROP CONSTRAINT [FK__tipoClien__idUsu__10AB74EC]
GO
ALTER TABLE [dbo].[tipoCliente] DROP CONSTRAINT [FK__tipoClien__idUsu__0FB750B3]
GO
ALTER TABLE [dbo].[tipoCliente] DROP CONSTRAINT [FK__tipoClien__idUsu__0EC32C7A]
GO
ALTER TABLE [dbo].[tipoCliente] DROP CONSTRAINT [FK__tipoClien__idUsu__0DCF0841]
GO
ALTER TABLE [dbo].[Lancamento] DROP CONSTRAINT [FK__Lancament__idUsu__0CDAE408]
GO
ALTER TABLE [dbo].[Lancamento] DROP CONSTRAINT [FK__Lancament__idUsu__0BE6BFCF]
GO
ALTER TABLE [dbo].[Lancamento] DROP CONSTRAINT [FK__Lancament__idTip__0AF29B96]
GO
ALTER TABLE [dbo].[Lancamento] DROP CONSTRAINT [FK__Lancament__idTip__09FE775D]
GO
ALTER TABLE [dbo].[Lancamento] DROP CONSTRAINT [FK__Lancament__idCli__090A5324]
GO
ALTER TABLE [dbo].[Lancamento] DROP CONSTRAINT [FK__Lancament__idCat__08162EEB]
GO
ALTER TABLE [dbo].[cliente] DROP CONSTRAINT [FK__cliente__idUsuar__07220AB2]
GO
ALTER TABLE [dbo].[cliente] DROP CONSTRAINT [FK__cliente__idUsuar__062DE679]
GO
ALTER TABLE [dbo].[cliente] DROP CONSTRAINT [FK__cliente__idTipoP__0539C240]
GO
ALTER TABLE [dbo].[cliente] DROP CONSTRAINT [FK__cliente__idTipoC__04459E07]
GO
ALTER TABLE [dbo].[categoriaLancamento] DROP CONSTRAINT [FK__categoria__idUsu__035179CE]
GO
ALTER TABLE [dbo].[categoriaLancamento] DROP CONSTRAINT [FK__categoria__idUsu__025D5595]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 6/15/2022 11:27:54 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usuario]') AND type in (N'U'))
DROP TABLE [dbo].[usuario]
GO
/****** Object:  Table [dbo].[tipoPlanoCliente]    Script Date: 6/15/2022 11:27:54 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipoPlanoCliente]') AND type in (N'U'))
DROP TABLE [dbo].[tipoPlanoCliente]
GO
/****** Object:  Table [dbo].[tipoMeioPagamento]    Script Date: 6/15/2022 11:27:54 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipoMeioPagamento]') AND type in (N'U'))
DROP TABLE [dbo].[tipoMeioPagamento]
GO
/****** Object:  Table [dbo].[tipoLancamento]    Script Date: 6/15/2022 11:27:54 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipoLancamento]') AND type in (N'U'))
DROP TABLE [dbo].[tipoLancamento]
GO
/****** Object:  Table [dbo].[tipoCliente]    Script Date: 6/15/2022 11:27:54 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipoCliente]') AND type in (N'U'))
DROP TABLE [dbo].[tipoCliente]
GO
/****** Object:  Table [dbo].[Lancamento]    Script Date: 6/15/2022 11:27:54 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lancamento]') AND type in (N'U'))
DROP TABLE [dbo].[Lancamento]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 6/15/2022 11:27:54 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cliente]') AND type in (N'U'))
DROP TABLE [dbo].[cliente]
GO
/****** Object:  Table [dbo].[categoriaLancamento]    Script Date: 6/15/2022 11:27:54 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[categoriaLancamento]') AND type in (N'U'))
DROP TABLE [dbo].[categoriaLancamento]
GO
