--SQL de inserção de dados nas tabelas: 1. Registro de clientes: 
INSERT INTO clientes (nome, telefone, nome_usuario, email, cpf, data_nasc)
    VALUES 
    ('Kamilly Sophia da Paz', '4435764789', 'kamillypaz', 'kamilly-dapaz74@gmail.com', '536.240.489-02', '1988-05-07'),
    ('Katy Perry', '55998765432', 'katy.perry', 'katy.perry@gmail.com', '265.591.120-20', '1987-01-14'),
    ('Nicolas Cage', '12987654321', 'nicknick', 'nicolas_o_cage@gmail.com', '223.467.651-01', '1965-10-10'),
    ('Lana Del Rey', '13911223344', 'summertime_sadness', 'borntodie@gmail.com', '503.487.990-55', '1960-09-09'),
    ('Tom Cruise', '20922334455', 'tomcruise', 'tom.profissional@gmail.com', '719.158.320-71', '1990-11-05');

--2. Registro de endereços
INSERT INTO enderecos_cliente (cliente_id, rua, cidade, estado, cep)
    VALUES 
    (1, 'Avenida Principal', 'Alto São João', 'PR', '87323-971'),
    (2, 'Rua Condessa Barbosa', 'Petrópolis', 'RJ', '27539-243'),
    (3, 'Rua da Inconfidência', 'Juiz de Fora', 'MG', '42435-324'),
    (4, 'Rua Nova Benfica', 'Juiz de Fora', 'MG', '46723-439'),
    (5, 'Rua Barão do Rio Branco', 'Petrópolis', 'RJ', '80245-213');

--3. Registro de usuários/funcionários
INSERT INTO funcionarios (nome, cpf)
    VALUES 
    ('Anna Apparecida', '234.131.356-11'),
    ('Tunico Cebola', '592.242.213-53'),
    ('Luiz Inácio da Silva', '102.324.456-99'),
    ('Natalie Portman', '213.491.232-66'),
    ('Cora Coraline', '502.232.156-69');
	
-- 4. Registro de categorias
INSERT INTO categorias (nome, descricao)
    VALUES 
    ('Camisetas', 'Camisetas e T-shirts'),
    ('Calças', 'Calças e Jeans'),
    ('Vestidos', 'Vestidos e Saias'),
    ('Sapatos', 'Calçados diversos'),
    ('Acessórios', 'Acessórios de moda');

-- 5. Registro de produtos
INSERT INTO produtos (nome, descricao, quantidade, data_fabricacao, preco, categoria_id)
    VALUES 
    ('Camiseta Branca', 'Camiseta básica branca de algodão', 50, '2024-01-01', 29.90, 1),
    ('Calça Jeans', 'Calça jeans skinny azul', 30, '2024-02-01', 99.90, 2),
    ('Vestido Floral', 'Vestido floral de verão', 20, '2024-03-01', 79.90, 3),
    ('Tênis Esportivo', 'Tênis esportivo confortável', 15, '2024-04-01', 199.90, 4),
    ('Bolsa de Couro', 'Bolsa de couro marrom', 10, '2024-05-01', 249.90, 5);
	
--6. Registro de pedidos
INSERT INTO pedidos (data_pedido, cliente_id, funcionario_id)
    VALUES 
    ('2020-05-01', 1, 1),
    ('2020-05-05', 2, 2),
    ('2020-05-10', 3, 1),
    ('2020-06-01', 4, 3),
    ('2020-06-15', 5, 4);

--7. Registro de itens do pedido
INSERT INTO item_pedido (pedido_id, produto_id, quantidade)
    VALUES 
    (1, 1, 2),  -- Pedido 1, Produto 1
    (1, 2, 1),    -- Pedido 1, Produto 2
    (2, 3, 3),    -- Pedido 2, Produto 3
    (3, 4, 1),   -- Pedido 3, Produto 4
    (4, 5, 1),  -- Pedido 4, Produto 5
    (5, 5, 2);   -- Pedido 5, Produto 5
