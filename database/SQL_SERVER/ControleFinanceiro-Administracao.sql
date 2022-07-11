USE controleFinanceiro

drop table if exists grupoPermissao;
drop table if exists permissao;
drop table if exists grupoUsuario;
drop table if exists grupo;


CREATE TABLE grupo(
	idGrupo smallint NOT NULL PRIMARY KEY (idGrupo),
	nome varchar(80) NOT NULL,
	descrição varchar(200) NOT NULL,
	dataHoraInclusao datetime NOT NULL, 
	dataHoraAlterecao datetime NULL, 
	usuarioInclusao varchar(80) NOT NULL,
	usuarioAlteracao varchar(80) NULL,
	ativo bit NOT NULL DEFAULT(1)
)

CREATE TABLE grupoUsuario(
	idGrupoUsuario  int IDENTITY(1,1)  NOT NULL PRIMARY KEY (idGrupoUsuario),
	idGrupo smallint NOT NULL FOREIGN KEY (idGrupo) references grupo(idGrupo),
	idUsuario int NOT NULL FOREIGN KEY (idUsuario) references usuario(idUsuario),
	dataHoraInclusao datetime NOT NULL, 
	dataHoraAlterecao datetime NULL, 
	usuarioInclusao varchar(80) NOT NULL,
	usuarioAlteracao varchar(80) NULL,
	ativo bit NOT NULL DEFAULT(1)
)

CREATE TABLE permissao(
	idPermissao smallint NOT NULL PRIMARY KEY (idPermissao),
	nome varchar(80) NOT NULL,
	descrição varchar(200) NOT NULL,
	dataHoraInclusao datetime NOT NULL, 
	dataHoraAlterecao datetime NULL, 
	usuarioInclusao varchar(80) NOT NULL,
	usuarioAlteracao varchar(80) NULL,
	ativo bit NOT NULL DEFAULT(1)
)

CREATE TABLE grupoPermissao(
	idGrupoPermissao  int IDENTITY(1,1) NOT NULL PRIMARY KEY (idGrupoPermissao),
	idGrupo smallint NOT NULL FOREIGN KEY (idGrupo) references grupo(idGrupo),
	idPermissao smallint NOT NULL FOREIGN KEY (idPermissao) references permissao(idPermissao),
	dataHoraInclusao datetime NOT NULL, 
	dataHoraAlterecao datetime NULL, 
	usuarioInclusao varchar(80) NOT NULL,
	usuarioAlteracao varchar(80) NULL,
	ativo bit NOT NULL DEFAULT(1)
)


INSERT INTO permissao VALUES
(1, 'Criar usuario', 'Permite criar novos usuários', getdate(), null, 'vanderleia.n', null, 1),
(2, 'Exibir usuario', 'Permite exibir usuários', getdate(), null, 'vanderleia.n', null, 1),
(3, 'Alterar usuario', 'Permite alterar usuários', getdate(), null, 'vanderleia.n', null, 1),
(4, 'Deletar usuario', 'Permite deletar usuários', getdate(), null, 'vanderleia.n', null, 1)

insert into grupo VALUES
(1,'Administrador', 'Administra o sistema', getdate(), null, 'vanderleia.n', null, 1)

insert into grupo VALUES
(2,'Relatorios', 'Pode apenas visualizar os registros', getdate(), null, 'vanderleia.n', null, 1)

insert into grupoPermissao(idGrupo, idPermissao, dataHoraInclusao, usuarioInclusao, ativo) VALUES
(1, 1, getdate(), 'vanderleia.n', 1),
(1, 2, getdate(), 'vanderleia.n', 1),
(1, 3, getdate(), 'vanderleia.n', 1),
(1, 4, getdate(), 'vanderleia.n', 1)

insert into grupoPermissao(idGrupo, idPermissao, dataHoraInclusao, usuarioInclusao, ativo) VALUES
(2, 2, getdate(), 'vanderleia.n', 1)

insert into grupoUsuario(idGrupo, idUsuario, dataHoraInclusao, usuarioInclusao, ativo) VALUES
(1, 1, getdate(), 'vanderleia.n', 1)


SELECT * FROM grupoPermissao
SELECT * FROM permissao
SELECT * FROM grupoUsuario
SELECT * FROM grupo