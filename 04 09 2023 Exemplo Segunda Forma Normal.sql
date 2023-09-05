create database exemplo_segunda_forma_normal;
use exemplo_segunda_forma_normal;

create table pedidos(
	idpedido int primary key auto_increment,
    nome_produto varchar(255),
    preco double,
    quantidade int,
    id_cliente int,
    Constraint FK_id_cliente
    foreign key(id_cliente) references cliente(idcliente)
    );
    
    create table cliente(
    idcliente int primary key auto_increment,
    nome varchar(150),
    data_nascimento varchar(200),
    cpf varchar(14) unique,
    genero varchar(10)
    );
    
    insert into cliente values(null, "Luan", "16/05/1990", "123.456.789-10", "Masculino");
    insert into pedidos values(null, "camisa polo", 150.99, 2, 1);
    
    select * from pedidos;
    
# 1.Considere uma tabela de banco de dados chamada "Pedidos" com os seguintes atributos: 
#ID do Pedido (chave primária), Nome do Cliente, Endereço do Cliente e Produto do Pedido. Explique
#se esta tabela está em 2FN ou não, e justifique sua resposta.
   

			## Essa tabela não está na segunda forma normal porque ela contém atributos que não dependem do seu id primario (produto_pedido)
     
#2.Você possui uma tabela "Livros" com os seguintes atributos: ISBN (chave primária), Título do Livro, Autor e Editora. 
#Analise se esta tabela está em 2FN ou não, e explique seu raciocinio.

			## Está na segunda forma normal por que não depende de nenhuma outra tabela.
            
#3.Dada uma tabela "Funcionários" com os atributos: ID do Funcionário (chaveprimária), Nome do Funcionário, Departamento 
#e Endereço do Departamento, determine se a tabela está em 2FN ou não, e forneça uma explicação
			
            ##Não está na segunda forma normal. Pq Endereço do departamento não coincide na tabela funcionários.
   
#4.Suponha uma tabela "Cursos" com os seguintes atributos: Código do Curso (chave primária), Nome do Curso, Professor e Departamento do Professor. 
#Avalie se esta tabela está em 2FN ou não e explique sua conclusão.

			## Sim, está na 2FN pq os dados não dependem de nenhuma tabela.
            
#5.Considere uma tabela "Pedidos" com os atributos: Número do Pedido (chave primária), Produto, Nome do Cliente e Cidade do Cliente. 
#Determine se esta tabela está em 2FN ou não, e dê razões para sua resposta.

			##Não, pq s atributos do cliente devem estar em uma tabela separada.
            
#6.Você tem uma tabela "Vendas" com os seguintes atributos: Número da Venda (chave primária), Produto Vendido, Nome do Vendedor, 
#Departamento do Vendedor e Cidade do Cliente. Avalie se esta tabela está em 2FN ou não e explique por quê.

			##Não pq 

            

    
    
    