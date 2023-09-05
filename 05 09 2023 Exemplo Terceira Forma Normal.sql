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

##1)Suponha uma tabela "Funcionários" com os atributos: ID do Funcionário (chave primária), Nome do
##Funcionário, Departamento e Localização do Departamento (cidade e estado). Determine se esta tabela
##está em 3FN e explique sua resposta.

	##A tabela “Funcionários” não está em 3FN, pois a localização do departamento (cidade e estado) depende do departamento, que é um atributo não-chave.

##2)Você tem uma tabela "Encomendas" com os seguintes atributos: Número da Encomenda (chave primária), ID do Cliente, 
##Nome do Cliente, e Cidade de Entrega. Avalie se esta tabela está em 3FN ou não e explique seu raciocínio.
    
    ##A tabela “Encomendas” também não está em 3FN, pois o nome do cliente depende do ID do cliente, que é um atributo não-chave. Isso cria uma dependência transitiva entre o número da encomenda, 
    ##o ID do cliente e o nome do cliente.
    
##3)Considere uma tabela "Produtos" com os atributos: ID do Produto (chave primária), Nome do Produto, Categoria do Produto e Nome do Fornecedor. 
##Analise se esta tabela está em 3FN ou não e justifique sua resposta.

	##A tabela “Produtos” está em 3FN, pois nenhum atributo não-chave depende de outro atributo não-chave. 
    
##4)Dada uma tabela "Escolas" com os atributos: ID da Escola (chave primária), Nome da Escola, Nome do Diretor e Endereço do Diretor. 
##Determine se esta tabela está em 3FN ou não, e forneça uma explicação.

	##A tabela “Escolas” não está em 3FN, pois há uma dependência transitiva entre os atributos não-chave.
    ##O endereço do diretor depende do nome do diretor, que depende do nome da escola, que depende do ID da escola
    
##5)Suponha uma tabela "Pedidos" com os atributos: Número do Pedido (chave primária), Produto, ID 
##do Cliente, Nome do Cliente e Estado do Cliente. Avalie se esta tabela está em 3FN ou não e explique por quê.

	##A tabela “Pedidos” também não está em 3FN, pois há uma dependência transitiva entre os atributos não-chave. O nome do cliente e o estado do cliente dependem do ID do cliente, 
    ##que depende do número do pedido, que é a chave primária.
        
##6)Você possui uma tabela "Projetos" com os seguintes atributos: ID do Projeto (chave primária), Nome do Projeto, ID do Gerente do Projeto, 
##Nome do Gerente e Departamento do Gerente. Determine se esta tabela está em 3FN e justifique sua resposta.

	##A tabela “Projetos” não está em 3FN, pois há uma dependência transitiva entre os atributos não-chave. 
    ##O nome do gerente e o departamento do gerente dependem do ID do gerente, que depende do ID do projeto, que é a chave primária
    

