
# E-commerce Tradicional - README

#       Visão Geral
Este projeto é um sistema de E-commerce desenvolvido para uma empresa de comércio varejista que deseja vender seus produtos pela internet. O sistema é capaz de realizar o controle de estoque, cadastro de clientes, processamento de pedidos, e emissão de notas fiscais. O sistema não registra detalhes sobre a produção dos produtos, pois a empresa é responsável pela produção interna dos mesmos.

#       Estrutura de Dados
Abaixo estão as principais entidades do sistema e suas respectivas descrições:

#       1. Cliente (Cliente)
Armazena informações sobre os clientes da empresa.

#       Atributos:
**cliente_id**: Identificador único do cliente.
**nome**: Nome completo do cliente.
**nome_usuario**: Nome de usuário do cliente.
**email**: Endereço de e-mail do cliente.
**cpf**: CPF do cliente.
**data_nasc**: Data de nascimento do cliente.
**endereco**: Endereço do cliente (associado à tabela de endereços).
**2. Pedido** (Pedido)
#       Registra os pedidos feitos pelos clientes.

**Atributos**:
**pedido_id**: Identificador único do pedido.
**data_pedido**: Data em que o pedido foi realizado.
**cliente_id**: Identificador do cliente que fez o pedido (associado à tabela de clientes).
**funcionario_id**: Identificador do funcionário responsável pelo pedido.
**3. Item do Pedido** (PedidoItem)
#       Armazena os itens incluídos em um pedido.

**Atributos:**
**item_pedido_id:** Identificador único do item do pedido.
**pedido_id:** Identificador do pedido (associado à tabela de pedidos).
**produto_id:** Identificador do produto (associado à tabela de produtos).
**quantidade:** Quantidade do produto no pedido.
**valor_unitario:** Valor unitário do produto.
**4. Produto** (Produto)
#       Armazena informações sobre os produtos da empresa.

**Atributos:**
**produto_id:** Identificador único do produto.
**nome:** Nome do produto.
**descricao:** Descrição do produto.
**quantidade:** Quantidade em estoque do produto.
**data_fabricacao:** Data de fabricação do produto.
**preco:** Valor unitário do produto.
**categoria_id:** Identificador da categoria a que o produto pertence (associado à tabela de categorias).
**5. Categoria** (Categoria)
#       Define as categorias às quais os produtos podem pertencer.

**Atributos:**
**categoria_id:** Identificador único da categoria.
**nome:** Nome da categoria.
**descricao:** Descrição da categoria.
**6. Nota Fiscal** (NotaFiscal)
#       Emite e armazena as notas fiscais para cada pedido.

**Atributos:**
**nota_fiscal_id:** Identificador único da nota fiscal.
**pedido_id:** Identificador do pedido correspondente (associado à tabela de pedidos).
**data_emissao:** Data de emissão da nota fiscal.
**valor_total:** Valor total da nota fiscal.
**7. Usuário** (Usuario)
#       Armazena informações sobre os funcionários da empresa.

**Atributos:**
**funcionario_id:** Identificador único do funcionário.
**nome:** Nome do funcionário.
**cpf:** CPF do funcionário.

#   Requisitos do Sistema
#   Gerenciamento de Produtos:

O sistema deve permitir o cadastro de produtos com informações detalhadas, incluindo código, nome, descrição, quantidade em estoque, data de fabricação e valor unitário.
Os produtos devem ser associados a uma categoria específica.
Atualização de Estoque:

Se um produto já estiver cadastrado no sistema, o sistema deve permitir a atualização da quantidade de itens em estoque.
Gerenciamento de Categorias:

O sistema deve permitir o cadastro de categorias de produtos, com informações como código, nome e descrição.
Gerenciamento de Clientes:

O sistema deve armazenar informações detalhadas dos clientes, incluindo nome completo, nome de usuário, e-mail, CPF, data de nascimento e endereço.
Processamento de Pedidos:

Os clientes devem poder realizar pedidos através do sistema.
Cada pedido pode conter um ou mais produtos e deve registrar a data em que foi realizado e o cliente que o realizou.
Um pedido pode incluir múltiplos itens do mesmo produto, desde que a quantidade esteja disponível em estoque.
Gerenciamento de Usuários:

O sistema deve armazenar informações básicas dos funcionários, incluindo código, nome e CPF.
Emissão de Nota Fiscal:

Para cada pedido realizado, o sistema deve emitir uma nota fiscal contendo o valor total e a data de emissão.