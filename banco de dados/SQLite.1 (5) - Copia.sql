CREATE TABLE empregado(
nome VARCHAR(20) not NULL,
ID_empregado_PK INT NOT NULL,
horas_semanais INT NOT NULL,
PRIMARY KEY (ID_empregado_PK)
)

CREATE TABLE empresa(
  rua VARCHAR(20) NOT NULL,
  bairro VARCHAR(10) NOT NULL,
  cidade VARCHAR(10) NOT NULL,
  estado VARCHAR(10) NOT NULL,
  ID_empresa_PK INT NOT NULL,
  PRIMARY KEY (ID_empresa_PK)
  )
  
CREATE TABLE empregado_empresa(
	ID_empregado_FK,
 	ID_empresa_FK,
    FOREIGN KEY (ID_empregado_FK) REFERENCES empregado (ID_empregado_PK),
    FOREIGN KEY (ID_empresa_FK) REFERENCES empresa (ID_empresa_PK)
    )
    
    INSERT INTO empregado(id_empregado_pk, nome, horas_semanais) VALUES (3114, "NingNing", 40)
    INSERT INTO empresa(id_empresa_pk, rua, bairro, cidade, estado) VALUES (78623945, "Felipe Schmidt", "centro", "florianopolis" , "santa catarina")
    INSERT INTO empregado_empresa(id_empregado_fk, id_empresa_fk) VALUES (3114, 78623945)