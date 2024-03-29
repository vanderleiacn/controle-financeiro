USE controleFinanceiro

drop table if exists Lancamento;
drop table if exists tipoMeioPagamento;
drop table if exists categoriaLancamento;
drop table if exists tipoLancamento;
drop table if exists cliente;
drop table if exists tipoPlanoCliente;
drop table if exists tipoCliente;
drop table if exists usuario;


CREATE TABLE usuario(
	idUsuario int IDENTITY(1,1) NOT NULL PRIMARY KEY (idUsuario),
	nomeUsuario varchar(80),
	nomeCompletoUsuario varchar(80),
	senha varchar(20),
	dataHoraInclusao datetime NOT NULL,
	dataHoraAlterecao datetime NULL,
	usuarioInclusao varchar(80) NOT NULL,
	usuarioAlteracao varchar(80) NULL,
	ativo bit NOT NULL DEFAULT(1)
)

CREATE TABLE tipoCliente(
	idTipoCliente smallint NOT NULL PRIMARY KEY (idTipoCliente),
	tipoCliente varchar(8) NOT NULL,
	dataHoraInclusao datetime NOT NULL,
	dataHoraAlterecao datetime NULL,
	usuarioInclusao varchar(80) NOT NULL  ,
	usuarioAlteracao varchar(80) NULL  ,
	ativo bit NOT NULL DEFAULT(1)
)


CREATE TABLE tipoPlanoCliente(
	idTipoPlanoCliente smallint NOT NULL PRIMARY KEY (idTipoPlanoCliente),
	tipoPlanoCliente varchar(20) NOT NULL,
	dataHoraInclusao datetime NOT NULL,
	dataHoraAlterecao datetime NULL,
	usuarioInclusao varchar(80)NOT NULL ,
	usuarioAlteracao varchar(80) NULL ,
	ativo bit NOT NULL DEFAULT(1)
)


CREATE TABLE cliente(
	idCliente int IDENTITY(1,1) NOT NULL PRIMARY KEY (idCliente),
	idTipoCliente smallint NOT NULL FOREIGN KEY (idTipoCliente) references tipoCliente(idTipoCliente),
	idTipoPlanoCliente smallint NOT NULL FOREIGN KEY (idTipoPlanoCliente) references tipoPlanoCliente (idTipoPlanoCliente) ,
	nomeCompleto varchar(80) NULL,
	email varchar(50) NULL,
	telefone varchar(20),
	cpfCnpj varchar(14) NULL,
	dataHoraInclusao datetime NOT NULL,
	dataHoraAlterecao datetime NULL,
	usuarioInclusao varchar(80) NOT NULL,
	usuarioAlteracao varchar(80) NULL,
	ativo bit NOT NULL DEFAULT(1)
)

CREATE TABLE tipoLancamento(
	idTipoLancamento smallint NOT NULL PRIMARY KEY (idTipoLancamento),
	tipoLancamento varchar(8) NOT NULL,
	descricao varchar(20) NULL,
	dataHoraInclusao datetime NOT NULL,
	dataHoraAlterecao datetime NULL,
	usuarioInclusao varchar(80) NOT NULL,
	usuarioAlteracao varchar(80) NULL ,
	ativo bit NOT NULL DEFAULT(1)
)

CREATE TABLE categoriaLancamento(
	idCategoriaLancamento smallint NOT NULL PRIMARY KEY (idCategoriaLancamento), 
	categoriaLancamento varchar(30) NOT NULL,
	descricao varchar(200) NULL,
	dataHoraInclusao datetime NOT NULL,
	dataHoraAlterecao datetime NULL,
	usuarioInclusao int NOT NULL,
	usuarioAlteracao int NULL ,
	ativo bit NOT NULL DEFAULT(1)
)

CREATE TABLE tipoMeioPagamento(
	idTipoMeioPagamento smallint IDENTITY(1,1) NOT NULL PRIMARY KEY (idTipoMeioPagamento),
	TipoMeioPagamento varchar(20),
	dataHoraInclusao datetime NOT NULL,
	dataHoraAlterecao datetime NULL,
	usuarioInclusao varchar(80) NOT NULL ,
	usuarioAlteracao varchar(80) NULL ,
	ativo bit NOT NULL DEFAULT(1)
)

CREATE TABLE Lancamento(
	idLancamento int NOT NULL IDENTITY(1,1) PRIMARY KEY (idLancamento),
	idTipoLancamento smallint NOT NULL FOREIGN KEY (idTipoLancamento) references tipoLancamento(idTipoLancamento),
	idCategoriaLancamento smallint NOT NULL FOREIGN KEY (idCategoriaLancamento) references categoriaLancamento(idCategoriaLancamento),
	idTipoMeioPagamento smallint NOT NULL FOREIGN KEY (idTipoMeioPagamento) references tipoMeioPagamento(idTipoMeioPagamento),
	idCliente int NOT NULL FOREIGN KEY (idCliente) references cliente(idCliente),
	descricao varchar(200) NOT NULL,
	valorOriginal decimal(7, 2) NOT NULL,
	valorPago decimal (7,2) NULL,
	dataVencimento date NOT NULL,
	dataPagamento date NULL,
	comprovante varchar(300) NULL,
	dataHoraInclusao datetime NOT NULL,
	dataHoraAlterecao datetime NULL,
	usuarioInclusao varchar(80) NOT NULL,
	usuarioAlteracao varchar(80) NULL ,
	ativo bit NOT NULL DEFAULT(1)
)


INSERT INTO usuario(
	nomeUsuario,
 	nomeCompletoUsuario, 
	senha, 
	dataHoraInclusao, 
	dataHoraAlterecao, 
	usuarioInclusao,
	usuarioAlteracao, 
	ativo 
)
VALUES(
	'Vanderleia.n',
	'vanderleia cavalcante do nascimento',
	null,
	'2022-06-02 14:53',
	null,
	'Vanderleia.n',
	null,
	1
)

INSERT INTO tipoCliente(
	idTipoCliente,
	tipoCliente, 
	dataHoraInclusao,
	dataHoraAlterecao, 
	usuarioInclusao,
	usuarioAlteracao,
	ativo 
) 
VALUES(
	1,
	'PF',
	'2022-06-02 14:53',
	null,
	'Vanderleia.n',
	null,
	1
)

INSERT INTO  tipoPlanoCliente(
	idTipoPlanoCliente,
	tipoPlanoCliente,
	dataHoraInclusao,
	dataHoraAlterecao,
	usuarioInclusao,
	usuarioAlteracao,
	ativo
)
VALUES
(1,'Gratuito','2022-06-10 12:48',null,'Vanderleia.n',null,1),
(2,'Basico','2022-06-10 12:48',null,'Vanderleia.n',null,1),
(3,'Premium','2022-06-10 12:48',null,'Vanderleia.n',null,1)


INSERT INTO cliente(
	idTipoCliente,
	nomeCompleto,
	idTipoPlanoCliente,
	email,
	telefone,
	cpfCnpj,
	dataHoraInclusao,
	dataHoraAlterecao,
	usuarioInclusao,
	usuarioAlteracao,
	ativo 
)
VALUES (
	2,
	'joao dos santos',
	2,
	'joao.s@',
	'13981151010',
	'23888123000175',
	'2022-06-06 15:00',
	null,
	'Vanderleia.n',
	null,
	1
)

INSERT INTO tipoLancamento(
	idTipoLancamento,
	tipoLancamento,
	descricao,
	dataHoraInclusao,
	dataHoraAlterecao,
	usuarioInclusao,
	usuarioAlteracao,
	ativo

)
VALUES 
(1,'despesa','valores pagos','2022-06-06 15:05',null,'Vanderleia.n',null,1),
(2,'receita','valores recebidos','2022-06-06 15:05',null,'Vanderleia.n',null,1)

INSERT INTO categoriaLancamento(
	idCategoriaLancamento, 
	categoriaLancamento,
	descricao,
	dataHoraInclusao,
	dataHoraAlterecao,
	usuarioInclusao,
	usuarioAlteracao,
	ativo
)
VALUES
(1,'conta de consumo',null,'2022-06-10 12:40',null,'Vanderleia.n',null,1),
(2,'imposto',null,'2022-06-10 12:40',null,'Vanderleia.n',null,1),
(3,'estudos',null,'2022-06-10 12:40',null,'Vanderleia.n',null,1),
(4,'alimenta��o',null,'2022-06-10 12:40',null,'Vanderleia.n',null,1),
(5,'gastos pessoais',null,'2022-06-10 12:40',null,'Vanderleia.n',null,1),
(6,'Salario',null,'2022-06-10 12:40',null,'Vanderleia.n',null,1)

INSERT INTO tipoMeioPagamento(
	TipoMeioPagamento,
	dataHoraInclusao,
	dataHoraAlterecao,
	usuarioInclusao,
	usuarioAlteracao,
	ativo 
)
VALUES 
('dinheiro','2022-06-10 12:30',null,'Vanderleia.n',null,1),
('cart�o','2022-06-10 12:30',null,'Vanderleia.n',null,1),
('trasnferencia','2022-06-10 12:30',null,'Vanderleia.n',null,1)

INSERT INTO Lancamento(
   	idTipoLancamento,
	idCategoriaLancamento,
	idTipoMeioPagamento,
	idCliente,
	descricao,
	valorOriginal,
	valorPago,
	dataVencimento,
	dataPagamento,
	comprovante,
	dataHoraInclusao,
	dataHoraAlterecao,
	usuarioInclusao,
	usuarioAlteracao,
	ativo
)
VALUES(
	1,
	2,
	2,
	2,
	'referente ao mes de junho',
	350.00,
	350.00,
	'2022-06-15',
	'2022-06-06',
	null,
	'2022-06-06 15:05',
	null,
	'Vanderleia.n',
	null,
	1
)

delete from tipoLancamento where idTipoLancamento = '3';
delete from tipoMeioPagamento where idtipoMeioPagamento = '4';




SELECT nomeCompleto FROM cliente
LEFT JOIN tipoCliente
ON cliente.nomeCompleto = tipoCliente.idTipoCliente
SELECT tipoPlanoCliente FROM tipoPlanoCliente
LEFT JOIN cliente
ON tipoPlanoCliente.idtipoPlanoCliente  = cliente.idtipoPlanoCliente 

SELECT * FROM  Lancamento
SELECT * FROM  tipoMeioPagamento
SELECT * FROM  categoriaLancamento
SELECT * FROM  tipoLancamento
SELECT * FROM  cliente
SELECT * FROM  tipoPlanoCliente
SELECT * FROM  tipoCliente
SELECT * FROM  usuario
 





 


 






--SELECT 
--	l.*,
--	tl.tipoLancamento,
--	cl.categoriaLancamento,
--	tmp.tipoMeioPagamento,
--	c.nomeCompleto

--FROM
--	Lancamento l
--	LEFT JOIN tipoLancamento tl
--		ON l.idTipoLancamento = tl.idTipoLancamento
--	LEFT JOIN categoriaLancamento cl
--		ON l.idCategoriaLancamento = cl.idCategoriaLancamento
--	LEFT JOIN tipoMeioPagamento tmp
--		ON l.idTipoMeioPagamento = tmp.idTipoMeioPagamento
--	LEFT JOIN cliente c
--		ON l.idCliente = c.idCliente

 