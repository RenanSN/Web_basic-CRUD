#drop database compras;

# Criação do banco de dados, denominados compras
create database compras;

# Habilitamos a utilização do memso
use compras;

# Estruturas da tabela usuarios
create table usuarios(
	id_usuario integer not null auto_increment primary key,
    usuario varchar(15) not null,
    senha varchar(10) not null,
    dtcria datetime default now(),
    estatus varchar(1) default ''
);

#Vamos inserir um usuário padrão do sistema
insert into usuarios(usuario, senha)
values ('admin','admin123');

#Ao final fazemos uma select para verificar o registro inserido
select * from usuarios;

alter table usuarios add tipo varchar(13) default 'COMUM' after senha;

# CONSULTA
select usuario, senha, tipo, case estatus
when 'D' then
	'Desativo'
else
	'Ativo'
end estatus
from usuarios;

# TESTE
select * from usuarios;
select * from usuarios where 'Comum' = tipo;
