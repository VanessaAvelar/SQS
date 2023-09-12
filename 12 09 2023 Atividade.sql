create database banco_atividade1;
use banco_atividade1;

CREATE TABLE Clientes(
id int primary KEY auto_increment,
nome varchar(50)
);

create table Pedidos (
id int primary key auto_increment,
Clientes_id int,
Data_pedido date,
foreign key (Clientes_id) references Clientes(id)
);

INSERT INTO Clientes (ID, Nome) VALUES (1, 'Maria Silva'), (2, 'João Santos'), (3, 'Ana Costa'), (4, 'Pedro Lima');

INSERT INTO Pedidos (ID, Clientes_ID, Data_pedido) VALUES (1, 2, '2023-09-10'), (2, 1, '2023-09-11'), (3, 4, '2023-09-12'), (4, 3, '2023-09-13');

SELECT Pedidos.ID, Clientes.Nome, Pedidos.Data_pedido FROM Pedidos INNER JOIN Clientes
ON Pedidos.Clientes_ID = Clientes.ID;


create table Departamento (
id int primary key auto_increment,
nome varchar(100)
);

CREATE TABLE Funcionarios(
id int primary KEY auto_increment,
nome varchar(50),
Departamento_id int,
foreign key (Departamento_id) references Departamento(id)
);

INSERT INTO Departamento (ID, Nome) VALUES (1, "Recursos Humanos"), (2, "Marketing"), (3, "Vendas"), (4, "TI");
INSERT INTO Funcionarios (ID, Nome, Departamento_id) VALUES (1, "Carlos Souza", 1), (2, "Julia Mendes", 2), (3, "Bruno Dias", 3), (4, "Fernanda Oliveira", 4), (5, "Lucas Alves", NULL);


SELECT Funcionarios.Nome, Departamento.Nome AS NomeDepartamento FROM
Funcionarios LEFT JOIN Departamento ON Funcionarios.Departamento_ID =
Departamento.ID;


CREATE TABLE Produtos(
id int primary KEY auto_increment,
nome varchar(50)
);

create table Vendas (
id int primary key auto_increment,
Produtos_id int,
quantidade int,
foreign key (Produtos_id) references produtos(id)
);

INSERT INTO Produtos (ID, Nome) VALUES (1, "Notebook"), (2, "Smartphone"), (3, "Tablet"), (4, "Smartwatch");

INSERT INTO Vendas (ID, Produtos_ID, Quantidade) VALUES (1, 1, 10), (2, 2, 15), (3, 3, 8), (4, 4, 12), (5, NULL, 5);

SELECT Produtos.Nome, Vendas.Quantidade FROM Produtos RIGHT JOIN Vendas ON
Produtos.ID = Vendas.Produtos_ID;