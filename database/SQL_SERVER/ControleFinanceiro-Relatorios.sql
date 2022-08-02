
USE controleFinanceiro
	
--Relatório de lançamento anual agrupado por Tipo de Lançamento
SELECT 
	tl.tipoLancamento,
	YEAR(dataPagamento) AnoPagamento,
	SUM(valorPago) TotalPago,
	SUM(valorOriginal) TotalOriginal,
	COUNT(1) QtdLancamentos
FROM
	Lancamento la
	inner join tipoLancamento tl
		on la.idTipoLancamento = tl.idTipoLancamento
GROUP BY tl.tipoLancamento, YEAR(dataPagamento)


--Relatório de lançamento agrupado por Ano/Mes e Tipo de Lançamento
SELECT
	tl.tipoLancamento,
	RIGHT(CONVERT(varchar,dataPagamento,103), 7) MesAnoPagamento,
	SUM(valorPago) ValorPago,
	SUM(valorOriginal) TotalOriginal,
	COUNT(1) QtdLancamentos
FROM
	Lancamento la
	inner join tipoLancamento tl
		on la.idTipoLancamento = tl.idTipoLancamento
GROUP BY tl.tipoLancamento, RIGHT(CONVERT(varchar,dataPagamento,103), 7)

--Relatório de lançamento agrupado por Ano/Mes e Receita/Despesa
SELECT 
	RIGHT(CONVERT(varchar,dataPagamento,103), 7) MesAnoPagamento,
	SUM(CASE WHEN la.idTipoLancamento = 2 THEN valorPago ELSE 0 END) Receita,
	SUM(CASE WHEN la.idTipoLancamento = 1 THEN valorPago ELSE 0 END) Despesa,
	SUM(CASE WHEN la.idTipoLancamento = 2 THEN valorOriginal ELSE 0 END) ReceitaOriginal,
	SUM(CASE WHEN la.idTipoLancamento = 1 THEN valorOriginal ELSE 0 END) DespesaOriginal,
	COUNT(1) QtdLancamentos
FROM
	Lancamento la
GROUP BY RIGHT(CONVERT(varchar,dataPagamento,103), 7)


--Relatório de lançamento agrupado por Cliente, Tipo de Lançamento e Ano
SELECT
	cl.nomeCompleto,
	cl.cpfCnpj,
	tc.tipoCliente,
	YEAR(dataPagamento) AnoPagamento,
	SUM(valorPago),
	SUM(valorOriginal) TotalOriginal,
	COUNT(1) QtdLancamentos
FROM
	Lancamento la
	inner join cliente cl
		on la.idCliente = cl.idCliente
	inner join tipoCliente tc
		on cl.idTipoCliente = tc.idTipoCliente
GROUP BY 
	cl.nomeCompleto,
	cl.cpfCnpj,
	tc.tipoCliente, 
	YEAR(dataPagamento)


--Relatório de lançamento agrupado por Cliente, Ano/Mes e Receita/Despesa
SELECT
	cl.nomeCompleto,
	cl.cpfCnpj,
	tc.tipoCliente,	
	RIGHT(CONVERT(varchar,dataPagamento,103), 7) MesAnoPagamento,
	SUM(CASE WHEN la.idTipoLancamento = 2 THEN valorPago ELSE 0 END) Receita,
	SUM(CASE WHEN la.idTipoLancamento = 1 THEN valorPago ELSE 0 END) Despesa,
	(SUM(CASE WHEN la.idTipoLancamento = 2 THEN valorPago ELSE 0 END) - 
	SUM(CASE WHEN la.idTipoLancamento = 1 THEN valorPago ELSE 0 END)) Saldo,
	SUM(CASE WHEN la.idTipoLancamento = 2 THEN valorOriginal ELSE 0 END) ReceitaOriginal,
	SUM(CASE WHEN la.idTipoLancamento = 1 THEN valorOriginal ELSE 0 END) DespesaOriginal,
	(SUM(CASE WHEN la.idTipoLancamento = 2 THEN valorOriginal ELSE 0 END) -
	SUM(CASE WHEN la.idTipoLancamento = 1 THEN valorOriginal ELSE 0 END)) SaldoOriginal,
	COUNT(1) QtdLancamentos
FROM
	Lancamento la
	inner join cliente cl
		on la.idCliente = cl.idCliente
	inner join tipoCliente tc
		on cl.idTipoCliente = tc.idTipoCliente
GROUP BY 
	cl.nomeCompleto,
	cl.cpfCnpj,
	tc.tipoCliente,
	RIGHT(CONVERT(varchar,dataPagamento,103), 7)



--Relatório de clientes por Tipo de Plano
SELECT 
	pc.tipoPlanoCliente,
	COUNT(1) QtdClientes
FROM
	cliente cl
	inner join tipoPlanoCliente pc
		on cl.idTipoPlanoCliente = pc.idTipoPlanoCliente
GROUP BY pc.tipoPlanoCliente

--Relatório de clientes por Tipo de Cliente e Plano
SELECT 
	tc.tipoCliente,
	pc.tipoPlanoCliente,
	COUNT(1) QtdClientes
FROM
	cliente cl
	inner join tipoPlanoCliente pc
		on cl.idTipoPlanoCliente = pc.idTipoPlanoCliente
	inner join tipoCliente tc
		on cl.idTipoCliente = tc.idTipoCliente
GROUP BY tc.tipoCliente,pc.tipoPlanoCliente
ORDER BY tc.tipoCliente, pc.tipoPlanoCliente


-- Relatório com Rollup 

SELECT
	CASE 
		WHEN tl.tipoLancamento is null
			then 'Total'
		ELSE
			tl.tipoLancamento
	END as Lancamento,
	CASE 
		WHEN tl.tipoLancamento is null and pc.tipoPlanoCliente is null
			then ' - '
		WHEN pc.tipoPlanoCliente is null
			then 'Subtotal'
		ELSE
			pc.tipoPlanoCliente
	END as PlanoCliente,
	COUNT(l.idCliente)AS qtd,
	SUM(l.valorPago)AS ValorPago
FROM 
	[dbo].[Lancamento] as l
	INNER JOIN cliente as cli
		ON l.idCliente = cli.idCliente
	INNER JOIN tipoPlanoCliente as pc
		ON pc.idTipoPlanoCliente = cli.idTipoPlanoCliente		
	INNER JOIN [dbo].[tipoLancamento] as tl
		ON l.idTipoLancamento = tl.idTipoLancamento
GROUP BY ROLLUP (tl.tipoLancamento,pc.tipoPlanoCliente)
ORDER BY tl.TipoLancamento,pc.TipoPlanoCliente




SELECT
	ISNULL([tipoLancamento], 'Total') as Tipo,
	SUM([valorPago]) ValorTotal,
	COUNT(l.idLancamento) AS qtd,
	COUNT(l.valorPago) AS ValorPago
FROM 
	[dbo].[Lancamento] l
	INNER JOIN [dbo].[tipoLancamento] tl
		ON l.idTipoLancamento = tl.idTipoLancamento
GROUP BY ROLLUP (tipoLancamento)
ORDER BY qtd desc



