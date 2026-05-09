create database GYMTECH;
use GYMTECH;

create table usuario(
id int primary key auto_increment,
email varchar(45) unique,
senha varchar(15),
csenha varchar(15),
datacadastro datetime default current_timestamp
);

create table medidas(
fkid int,
altura decimal (4,2),
peso decimal (5,2),
objetivo enum(
'Perder Peso',
'Ganhar Massa Muscular',
'Manter a Condição'
),
foreign key (fkid)
references usuario(id)
);

insert into usuario (id, email, senha, csenha) values ('1', 'adimin@gmail.com','adimin123','adimin123');