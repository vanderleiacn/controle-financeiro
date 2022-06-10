create database controle_financeiro;
use controle_financeiro;

drop table if exists registro_cliente;
drop table if exists tipo_lancamento;
drop table if exists tipo_lancamento;



create table tipo_lancamento
(
	id_tipo_lancamento int not null,
    tipo varchar(20),
	constraint pk_tipo_lancamento primary key (id_tipo_lancamento)
);

create table registro_cliente
(
	id_registro_cliente int not null auto_increment,
	id_tipo_lancamento is not null,
	descricao varchar(50),
	valor float,
	valor_desconto float,
	data_vencimento date,
	data_liquidacao date,
	nome varchar(50),
	cpf varchar(11),
	constraint pk_registro_cliente primary key (id_registro_cliente),
    constraint fk_tipo_lancamento_registro_cliente foreign key (id_tipo_lancamento) references tipo_lancamento(id_tipo_lancamento)
);


insert into tipo_lancamento
(
id_tipo_lancamento,
tipo
)
values
(
1,
'despesa'
);

insert into registro_cliente
(
id_tipo_lancamento,
descricao,
valor,
valor_desconto,
data_vencimento,
data_liquidacao,
nome,
cpf
)
values
(
1,
'agua',
50.00,
null ,
'2022-05-10',
null,
'vanderleia',
30855098120
);


insert into tipo_lancamento
(
id_tipo_lancamento,
tipo
)
values
(
2,
'receita'
);



insert into tipo_lancamento
(
id_tipo_lancamento,
tipo
)
values
(
3,
'outros'
);

insert into registro_cliente
(
id_tipo_lancamento,
descricao,
valor,
valor_desconto,
data_vencimento,
data_liquidacao,
nome,
cpf
)
values
(
1,
'telefone',
100.00,
null ,
'2022-05-20',
null,
'vanderleia',
30855098120
);



select*from registro_cliente;
select*from tipo_lancamento;