
USE controleFinanceiro
	
--Relatório de lançamento anual agrupado por Tipo de Lançamento
select 
	tl.tipoLancamento,
	YEAR(dataPagamento) AnoPagamento,
	SUM(valorPago) TotalPago,
	SUM(valorOriginal) TotalOriginal,
	COUNT(1) QtdLancamentos
from
	Lancamento la
	inner join tipoLancamento tl
		on la.idTipoLancamento = tl.idTipoLancamento
GROUP BY tl.tipoLancamento, YEAR(dataPagamento)

--Relatório de lançamento agrupado por Ano/Mes e Tipo de Lançamento
select 
	tl.tipoLancamento,
	RIGHT(CONVERT(varchar,dataPagamento,103), 7) MesAnoPagamento,
	SUM(valorPago),
	SUM(valorOriginal) TotalOriginal,
	COUNT(1) QtdLancamentos
from
	Lancamento la
	inner join tipoLancamento tl
		on la.idTipoLancamento = tl.idTipoLancamento
GROUP BY tl.tipoLancamento, RIGHT(CONVERT(varchar,dataPagamento,103), 7)

--Relatório de lançamento agrupado por Ano/Mes e Receita/Despesa
select 
	RIGHT(CONVERT(varchar,dataPagamento,103), 7) MesAnoPagamento,
	SUM(CASE WHEN la.idTipoLancamento = 2 THEN valorPago ELSE 0 END) Receita,
	SUM(CASE WHEN la.idTipoLancamento = 1 THEN valorPago ELSE 0 END) Despesa,
	SUM(CASE WHEN la.idTipoLancamento = 2 THEN valorOriginal ELSE 0 END) ReceitaOriginal,
	SUM(CASE WHEN la.idTipoLancamento = 1 THEN valorOriginal ELSE 0 END) DespesaOriginal,
	COUNT(1) QtdLancamentos
from
	Lancamento la
GROUP BY RIGHT(CONVERT(varchar,dataPagamento,103), 7)

--Relatório de lançamento agrupado por Cliente, Tipo de Lançamento e Ano
select 
	cl.nomeCompleto,
	cl.cpfCnpj,
	tc.tipoCliente,
	YEAR(dataPagamento) AnoPagamento,
	SUM(valorPago),
	SUM(valorOriginal) TotalOriginal,
	COUNT(1) QtdLancamentos
from
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
select 
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
from
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
select 
	pc.tipoPlanoCliente,
	COUNT(1) QtdClientes
from
	cliente cl
	inner join tipoPlanoCliente pc
		on cl.idTipoPlanoCliente = pc.idTipoPlanoCliente
GROUP BY pc.tipoPlanoCliente

--Relatório de clientes por Tipo de Cliente e Plano
select 
	tc.tipoCliente,
	pc.tipoPlanoCliente,
	COUNT(1) QtdClientes
from
	cliente cl
	inner join tipoPlanoCliente pc
		on cl.idTipoPlanoCliente = pc.idTipoPlanoCliente
	inner join tipoCliente tc
		on cl.idTipoCliente = tc.idTipoCliente
GROUP BY tc.tipoCliente,pc.tipoPlanoCliente
ORDER BY tc.tipoCliente, pc.tipoPlanoCliente


