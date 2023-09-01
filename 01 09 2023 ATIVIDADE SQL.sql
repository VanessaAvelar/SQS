##ATIVIDADE

##1)Defina a Primeira Forma Normal (1FN) em bancos de dados relacionais.
##Explique por que a 1FN é importante para a estruturação de dados.
	##Possuir uma chave primária;
		#Não possuir campos repetitivos;
		#Todos os seus atributos são atômicos, não precisa ser decomposto;
		#Possuir uma chave primária;
        
##2)Considere a seguinte tabela não normalizada chamada "Livros":

create table Livros(
	id  integer primary key auto_increment,
    Titulo varchar(100),
    Autores varchar(255),
    Ano_publicacao varchar(10)
    );
    
    select * from Livros;
    insert into Livros values (
    null, "Aventuras", "Autor1", "2005"),
	(null, "Aventuras", "Autor2", "2005"),
    (null, "Aventuras", "Autor3", "2005"),
	(null, "Romance", "Autor4", "2010"),
    (null, "ficcão Cientifica", "Autor5", "2015"),
    (null, "ficcão Cientifica", "6", "2015");
    
    select * from Livros;
    
    ##3)Suponha que você esteja projetando um banco de dados para uma biblioteca.
	##Crie uma tabela chamada "Livros" que esteja na 1FN. A tabela deve conter
	##informações sobre os livros, incluindo ID do livro, título, autor, ISBN e ano de publicação.
    
    create table Livros3(
	id  integer primary key auto_increment,
    Titulo varchar(100),
    Autores varchar(255),
    Isbn varchar(100),
    Ano_publicacao int(10)
    );
    
    insert into Livros3 values(
    null, "Livro 1", "Autor 1", "ISBN 1111111111", 2000),
  (null, "Livro 2", "Autor 2", "ISBN 2222222222", 2005),
  (null, "Livro 3", "Autor 3", "ISBN 3333333333", 2010),
  (null, "Livro 4", "Autor 4", "ISBN 4444444444", 2015),
  (null, "Livro 5", "Autor 5", "ISBN 5555555555", 2020);
  
  select * from Livros3;
  
##4) Você está projetando um banco de dados para um sistema de gerenciamento
##de vendas de uma loja de eletrônicos. Crie uma tabela chamada "Produtos" na
#Primeira Forma Normal (1FN) para armazenar informações sobre os produtos
#que a loja vende. A tabela deve incluir pelo menos os seguintes campos: ID do
#produto, nome do produto, categoria do produto, quantidade e preço.33

create table Produtos(
id  integer primary key auto_increment,
Nome_produto varchar(100),
Categoria_pdoduto varchar(100),
Quantidade_produto int,
Preco_produto double
);

insert into Produtos values(
   null, "Produto 1", "Categoria 1", 5, 10.50),
  (null, "Produto 2", "Categoria 2", 3, 7.99),
  (null, "Produto 3", "Categoria 1", 8, 15.75),
  (null, "Produto 4", "Categoria 3", 2, 20.00);
  
  select * from Produtos;

