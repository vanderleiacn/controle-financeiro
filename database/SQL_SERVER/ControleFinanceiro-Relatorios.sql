
USE controleFinanceiro
	
--Relat�rio de lan�amento anual agrupado por Tipo de Lan�amento
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

--Relat�rio de lan�amento agrupado por Ano/Mes e Tipo de Lan�amento
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

--Relat�rio de lan�amento agrupado por Ano/Mes e Receita/Despesa
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

--Relat�rio de lan�amento agrupado por Cliente, Tipo de Lan�amento e Ano
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

--Relat�rio de lan�amento agrupado por Cliente, Ano/Mes e Receita/Despesa
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


--Relat�rio de clientes por Tipo de Plano
select 
	pc.tipoPlanoCliente,
	COUNT(1) QtdClientes
from
	cliente cl
	inner join tipoPlanoCliente pc
		on cl.idTipoPlanoCliente = pc.idTipoPlanoCliente
GROUP BY pc.tipoPlanoCliente

--Relat�rio de clientes por Tipo de Cliente e Plano
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


