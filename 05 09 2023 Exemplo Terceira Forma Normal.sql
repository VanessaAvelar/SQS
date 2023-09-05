create database terceira_forma_normal;
use terceira_forma_normal;

create table cliente(
    idcliente int primary key auto_increment,
    nome_cliente varchar(255)
    );
    
    create table cidade(
    idcidade int primary key auto_increment,
    cidade varchar(150),
    estado varchar(2)
    );
    
    alter table  cidade add id_cliente int;
    alter table cidade add constraint fk_id_cliente_cidade foreign Key (id_cliente) references cliente(idcliente);
    
    create table produto(
    idproduto int primary key auto_increment,
    nome_produto varchar(100),
    quantidade int,
    valor double
    );
    
    create table pedido(
    idpedido int primary key auto_increment,
    id_cliente int,
    id_produto int,
    constraint Fk_id_cliente 
    foreign key(id_cliente) references cliente(idcliente),
    constraint Fk_id_produto 
    foreign key(id_produto) references produto(idproduto)
    );
    

INSERT INTO cliente (nome_cliente) VALUES
('Maria Silva'),
('João Santos'),
('Ana Costa'),
('Pedro Oliveira'),
('Lucas Souza'),
('Julia Alves'),
('Bruno Lima'),
('Fernanda Rocha'),
('Carlos Dias'),
('Luana Martins');

INSERT INTO produto (nome_produto, quantidade, valor) VALUES
('Notebook', 10, 2999.99),
('Smartphone', 20, 1499.90),
('Tablet', 15, 999.99),
('Fone de ouvido', 30, 199.90),
('Mouse', 25, 49.90),
('Teclado', 20, 99.90),
('Monitor', 10, 799.99),
('Impressora', 5, 499.90),
('Webcam', 15, 149.90),
('Caixa de som', 25, 79.90);

INSERT INTO cidade (cidade, estado, id_cliente) VALUES
('Brasília', 'DF', 1),
('São Paulo', 'SP', 2),
('Rio de Janeiro', 'RJ', 3),
('Belo Horizonte', 'MG', 4),
('Curitiba', 'PR', 5),
('Porto Alegre', 'RS', 6),
('Salvador', 'BA', 7),
('Recife', 'PE', 8),
('Fortaleza', 'CE', 9),
('Manaus', 'AM', 10);

insert into pedido values(null, 1, 1);

select * from  pedido;


    
    
    
    
    

