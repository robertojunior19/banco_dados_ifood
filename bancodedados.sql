create table usuario (
id integer not null auto_increment primary key,
nome varchar(30),
status integer,
date_created datetime,
email varchar(25),
senha varchar(30),
telefone integer (12),
cpf varchar(15));

create table restaurante (
id integer not null auto_increment primary key,
nome varchar(30),
date_created datetime,
status integer,
descriçao varchar(80),
telefone integer,
rate integer,
cnpj varchar (14));

create table categoria_restaurante(
id int not null auto_increment primary key,
nome varchar(30),
data_created datetime,
status integer,
descriçao varchar(80)
);

create table endereço (
id integer not null auto_increment primary key,
date_created datetime,
status integer,
rua varchar(30),
bairro varchar(20),
cidade varchar(15),
cep varchar(9),
numero integer,
complemento varchar(15));

create table produto (
id integer not null auto_increment primary key,
/*fk_restaurant integer,*/
nome varchar(30),
date_created datetime,
status integer,
preço float,
descriçao varchar(80)
/*foreign key (fk_restaurant) references restaurant (id));*/);

create table categoria_produto (
id integer not null auto_increment primary key,
date_created datetime,
status integer,
nome varchar(30),
valor float,
descricao varchar(80));

create table rate (
id integer not null auto_increment primary key,
date_created datetime,
status integer,
restaurante_nota varchar(80),
pedido_nota varchar(80));

create table additional(
id integer not null auto_increment primary key,
date_created datetime,
status integer,
nome varchar(30),
valor integer, 	
descricao varchar(80));

create table status_pedido(
id integer not null auto_increment primary key,
date_created datetime,
status integer,
nome varchar(30),
descricao varchar(80));

create table hist_pedido(
id integer not null auto_increment primary key,
date_created datetime,
status integer);

create table produto_adicional(
id integer not null auto_increment primary key,
date_created datetime,
status integer);

create table cupom(
id integer not null auto_increment primary key,
date_created datetime,
status integer,
codigo integer,
descricao varchar(80),
valor integer,
validade integer);

create table favorito(
id integer not null auto_increment primary key,
date_created datetime,
status integer);

create table pedido(
id integer not null auto_increment primary key,
date_created datetime,
status integer,
taxa_de_entrega float,
valor_total float,
id_retirada integer);

create table pedid_prod (
id integer not null auto_increment primary key,
date_created datetime,
status integer);

create table pagamento (
id integer not null auto_increment primary key,
date_created datetime,
status integer,
valor float,
dataehora integer);

create table funcionamento (
id integer not null auto_increment primary key,
date_created datetime,
status integer,
dia integer,
hora_abrir integer,
hora_fechar integer);

create table add_prod_pedi (
id integer not null auto_increment primary key,
date_created datetime,
status integer,
quantidade integer);

create table metodo_pagamentoo (
id integer not null auto_increment primary key,
date_created datetime,
status integer,
nome varchar(30),
descricao varchar(80));

create table status_pagamento (
id integer not null auto_increment primary key,
date_created datetime,
status integer,
nome varchar(30),
descricao varchar(80));


ALTER TABLE endereço
ADD COLUMN usuario_id INTEGER,
ADD CONSTRAINT fk_usuario_id
FOREIGN KEY (usuario_id) REFERENCES usuario(id);

ALTER TABLE endereço
ADD COLUMN restaurante_id INTEGER,
ADD CONSTRAINT fk_restaurante_id
FOREIGN KEY (restaurante_id) REFERENCES restaurante(id);

ALTER TABLE restaurante
ADD COLUMN categoria_restaurante_id INTEGER,
ADD CONSTRAINT fk_categoria_restaurante_id
FOREIGN KEY (categoria_restaurante_id) REFERENCES categoria_restaurante(id);

ALTER TABLE produto
ADD COLUMN categoria_produto_id INTEGER,
ADD CONSTRAINT fk_categoria_produto_id
FOREIGN KEY (categoria_produto_id) REFERENCES categoria_produto(id);

ALTER TABLE produto
ADD COLUMN restaurante_id INTEGER,
ADD CONSTRAINT fk_restaurante_id
FOREIGN KEY (restaurante_id) REFERENCES restaurante(id);

ALTER TABLE rate
ADD COLUMN pedido_id INTEGER,
ADD CONSTRAINT pedido_id
FOREIGN KEY (pedido_id) REFERENCES pedido_(id);

ALTER TABLE hist_pedido
ADD COLUMN pedido_id INTEGER,
ADD CONSTRAINT fk_pedido_id
FOREIGN KEY (pedido_id) REFERENCES pedido(id);


ALTER TABLE hist_pedido
ADD COLUMN status_pedido_id INTEGER,
ADD CONSTRAINT status_pedido_id
FOREIGN KEY (status_pedido_id) REFERENCES status_pedido(id);













	


























