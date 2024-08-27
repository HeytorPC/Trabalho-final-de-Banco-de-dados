--SQL de atualização: 
UPDATE clientes
    SET nome = 'Kamilly da Paz'
WHERE cliente_id = 1; 

--SQL de exclusão: 
DELETE FROM item_pedido
    WHERE pedido_id = 5;

DELETE FROM pedidos
    WHERE pedido_id = 5;

DELETE FROM enderecos_cliente
    WHERE cliente_id = 5;

DELETE FROM clientes
    WHERE cliente_id = 5;

--SQLs de consulta: 1. Junção de dados: Dados clientes + endereço
SELECT
    c.nome AS cliente_nome,
    ec.rua, ec.cidade, ec.estado, ec.cep
FROM
    clientes c
INNER JOIN enderecos_cliente ec ON ec.cliente_id = c.cliente_id;

-- 2. Junção de dados: Cliente + informações do pedido/compra
SELECT
    c.nome AS cliente_nome,
    p.nome AS produto_nome,
    p.preco,
    ac.nome AS categoria_nome,
    ip.quantidade
FROM
    clientes c
INNER JOIN pedidos pd ON pd.cliente_id = c.cliente_id
INNER JOIN item_pedido ip ON ip.pedido_id = pd.pedido_id
INNER JOIN produtos p ON p.produto_id = ip.produto_id
INNER JOIN categorias ac ON ac.categoria_id = p.categoria_id;

-- 3. GROUP BY e COUNT
SELECT
	c.nome,COUNT(p.produto_id) AS produtos_por_categoria
FROM
	categorias c
	INNER JOIN produtos p ON c.categoria_id = p.categoria_id
	GROUP BY c.nome;

--4. Consulta da nota fiscal
SELECT 
    clientes.nome AS Nome_Cliente,
    clientes.cpf AS CPF_Cliente,
    enderecos_cliente.rua AS Rua,
    enderecos_cliente.cidade AS Cidade,
    enderecos_cliente.estado AS Estado,
    enderecos_cliente.cep AS CEP,
    pedidos.data_pedido AS Data_Pedido,
    produtos.nome AS Nome_Produto,
    item_pedido.quantidade AS Quantidade,
    produtos.preco AS Preco_Unitario,
    (item_pedido.quantidade * produtos.preco) AS Total_Produto
FROM 
    pedidos
INNER JOIN 
    clientes ON pedidos.cliente_id = clientes.cliente_id
INNER JOIN 
    enderecos_cliente ON clientes.cliente_id = enderecos_cliente.cliente_id
INNER JOIN 
    item_pedido ON pedidos.pedido_id = item_pedido.pedido_id
INNER JOIN 
    produtos ON item_pedido.produto_id = produtos.produto_id
WHERE 
    pedidos.pedido_id = 2;


-- 5. Consulta geral de tabelas
SELECT * FROM clientes;
SELECT * FROM funcionarios; 
SELECT * FROM categorias;
SELECT * FROM produtos;
SELECT * FROM pedidos;
SELECT * FROM item_pedido;