CREATE TABLE pedido(
  id_pedido_pk VARCHAR(10) NOT NULL,
  id_cliente_fk VARCHAR(10) NOT NULL,
  id_produto_fk VARCHAR(10) NOT NULL,
  PRIMARY KEY (id_pedido_pk),
  FOREIGN KEY (id_cliente_fk) REFERENCES cliente (id_cliente_pk),
  FOREIGN KEY (id_produto_fk) REFERENCES produto (id_produto_fk)
  )
  
  CREATE TABLE cliente(
  id_cliente_pk VARCHAR(10) NOT NULL,
  nome VARCHAR(20) NOT NULL,
  PRIMARY KEY (id_cliente_pk),
  )
  
  CREATE TABLE produto(
  nome_produto VARCHAR(20) NOT NULL,
  id_produto_pk VARCHAR(10) NOT NULL,
  PRIMARY KEY (id_produto_pk),
  )
  
  CREATE TABLE categoria(
  nome_pk VARCHAR(10) NOT NULL,
  id_produto_fk VARCHAR(10) NOT NULL,
  PRIMARY KEY (nome_pk),
  foreign KEY (id_produto_fk) REFERENCES produto (id_produto_pk)
  )