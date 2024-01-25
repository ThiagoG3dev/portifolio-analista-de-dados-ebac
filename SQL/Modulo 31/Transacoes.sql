-- criando tabela
CREATE TABLE transacoes (
  -- coluna id - inteiro
  id_cliente INT,   
  -- coluna transacoes - inteiro - chave primaira
  id_transacao INT PRIMARY KEY,
  -- coluna data - tipo data - valor unico 
  data_compra DATE UNIQUE,
  -- coluna valor - tipo float - sem valor nulo 
  valor FLOAT NOT NULL, 
  -- coluna loja - tipo caractere 
  id_loja varchar(25),
  -- coluna estrangeira - id cliente - referenciar coluna id cliente da tabela cliente  
  FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
  -- condicao coluna valor ser maior que 0 
  CHECK (valor > 0) 
);