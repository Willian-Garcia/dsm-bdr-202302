create database bd_sistema_bancario;
\c bd_sistema_bancario;
create table agencia(agencia varchar);
create table codigo(codigo integer);
create table endereco(endereco varchar);
create table nome(nome varchar);
create table telefone(telefone integer);
create table cliente(NOME_CLIENTE varchar(50), CIDADE_CLIENTE varchar(50), ENDERECO_CLIENTE varchar(50));
create table conta(NUMERO_CONTA integer, NOME_AGENCIA varchar(15), SALDO real);
create table emprestimo(NUMERO_EMPRESTIMO integer, NOME_AGENCIA varchar(15), VALOR real);
create table agencia(NOME_AGENCIA varchar(15), CIDADE_AGENCIA varchar(30), DEPOSITOS integer);
drop table agencia;
drop table codigo;
drop table endereco;
drop table nome;
drop table telefone;
ALTER TABLE cliente ADD COLUMN idade integer;
ALTER TABLE cliente RENAME COLUMN idade TO idades;
ALTER TABLE cliente DROP COLUMN idades;
ALTER TABLE cliente rename to tbl_cliente;
ALTER TABLE tbl_cliente ADD COLUMN idade integer;
ALTER TABLE tbl_cliente ADD COLUMN cpf integer;
ALTER TABLE emprestimo rename to tbl_emprestimo;
ALTER TABLE conta rename to tbl_conta;
ALTER TABLE agencia rename to tbl_agencia;
ALTER TABLE tbl_agencia RENAME COLUMN cidade_agencia TO endereco_agencia;




