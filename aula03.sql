create database bd_aula03;
\c bd_aula03;
create table tbl_cliente(codigo_cliente integer PRIMARY KEY, Nome text NOT NULL, Cidade text, Endereco text);
create domain chk_categoria text check (value='drama' or value='comedia');
create table tbl_titulo(codigo_titulo integer PRIMARY KEY, titulo text NOT NULL, descricao text, categoria chk_categoria);
create table tbl_emprestimo(numero_emprestimo integer PRIMARY KEY, codigo_cliente integer, codigo_livro integer);
create domain chk_status text check (value='disponivel' or value='alugado');
create table tbl_livros(codigo_livro integer PRIMARY KEY,codigo_titulo integer, status chk_status);
\dD
tipo text default'disponivel'
codigo_cliente integer references tbl_cliente(codigo_cliente);
codigo_titulo integer references tbl_titulo(codigo_titulo);
codigo_livro integer references tbl_livros(codigo_livro);

alter table tbl_livros add constraint codigo_titulo foreign key (codigo_titulo) references tbl_titulo(codigo_titulo);
alter table tbl_emprestimo add constraint codigo_cliente foreign key (codigo_cliente) references tbl_cliente(codigo_cliente);
alter table tbl_emprestimo add constraint codigo_livro foreign key (codigo_livro) references tbl_livros(codigo_livro);