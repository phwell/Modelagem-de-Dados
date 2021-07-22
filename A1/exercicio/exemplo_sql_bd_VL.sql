CREATE TABLE rl_emprestimo_dvd (
  tb_DVD_cd_dvd INTEGER UNSIGNED NOT NULL,
  tb_cliente_cpf INTEGER UNSIGNED NOT NULL,
  dt_aluguel DATE NOT NULL,
  PRIMARY KEY(tb_DVD_cd_dvd, tb_cliente_cpf, dt_aluguel),
);

CREATE TABLE tb_cliente (
  cpf INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  cliente CHAR(50) NULL,
  dt_nascimento DATE NULL,
  endereco CHAR(50) NULL,
  telefone CHAR(15) NULL,
  PRIMARY KEY(cpf)
);

CREATE TABLE tb_distribuidora (
  cd_distribuidora INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  distribuidora CHAR(20) NULL,
  PRIMARY KEY(cd_distribuidora)
);

CREATE TABLE tb_dublada (
  cd_dublada INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  dublada CHAR(20) NULL,
  PRIMARY KEY(cd_dublada)
);

CREATE TABLE tb_DVD (
  cd_dvd INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  tb_titulo_cd_titulo INTEGER UNSIGNED NOT NULL,
  tb_dublada_cd_dublada INTEGER UNSIGNED NOT NULL,
  tb_distribuidora_cd_distribuidora INTEGER UNSIGNED NOT NULL,
  tb_genero_cd_genero INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(cd_dvd),
);

CREATE TABLE tb_genero (
  cd_genero INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  genero CHAR(15) NULL,
  PRIMARY KEY(cd_genero)
);

CREATE TABLE tb_titulo (
  cd_titulo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  titulo CHAR(50) NULL,
  PRIMARY KEY(cd_titulo)
);


