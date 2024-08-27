-- E-commerce tradicional: 
--SQL de criação de dados

--Tabela 1: Informações de clientes
CREATE TABLE clientes(
    cliente_id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(100) NOT NULL UNIQUE,
    nome_usuario VARCHAR(100) NOT NULL UNIQUE,
    email VARCHAR(150) NOT NULL UNIQUE,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    data_nasc DATE NOT NULL
);
--Tabela 2: Endereços de clientes
CREATE TABLE enderecos_cliente (
    endereco_id SERIAL PRIMARY KEY,
    cliente_id INT NOT NULL,
    rua VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(100) NOT NULL,
    cep VARCHAR(10) NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

--Tabela 3: Dados do usuário/funcionário
CREATE TABLE funcionarios(
    funcionario_id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE
);

--Tabela 4: Categoria dos produtos 
CREATE TABLE categorias(
    categoria_id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL
);

--Tabela 5: Produtos 
CREATE TABLE produtos(
    produto_id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    quantidade INT NOT NULL,
    data_fabricacao DATE NOT NULL,
    preco DECIMAL (10, 2) NOT NULL,
    categoria_id INT NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES categorias(categoria_id) 
);

--Tabela 6: Pedidos 
CREATE TABLE pedidos(
    pedido_id SERIAL PRIMARY KEY,
    data_pedido DATE NOT NULL DEFAULT CURRENT_DATE,
    cliente_id INT NOT NULL,
    funcionario_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
    FOREIGN KEY (funcionario_id) REFERENCES funcionarios(funcionario_id)
);

--Tabela 7: Itens pedidos 
CREATE TABLE item_pedido(
    item_pedido_id SERIAL PRIMARY KEY,
    pedido_id INT NOT NULL,
    produto_id INT NOT NULL,
    quantidade INT NOT NULL,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(pedido_id),
    FOREIGN KEY (produto_id) REFERENCES produtos(produto_id)
);
