CREATE TABLE rl_tb_funcionario_x_tb_curso (
  tb_funcionario_cpf INTEGER UNSIGNED NOT NULL,
  tb_curso_cd_curso INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(tb_funcionario_cpf, tb_curso_cd_curso),
);

CREATE TABLE tb_cargo (
  cd_cargo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  cargo CHAR(20) NULL,
  PRIMARY KEY(cd_cargo)
);

CREATE TABLE tb_curso (
  cd_curso INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  curso CHAR(30) NULL,
  PRIMARY KEY(cd_curso)
);

CREATE TABLE tb_estado_civil (
  cd_estado_civil INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  estado_civil CHAR(20) NULL,
  PRIMARY KEY(cd_estado_civil)
);

CREATE TABLE tb_funcionario (
  cpf INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  tb_lotacao_cd_lotacao INTEGER UNSIGNED NOT NULL,
  tb_sexo_cd_sexo CHAR(1) NOT NULL,
  tb_cargo_cd_cargo INTEGER UNSIGNED NOT NULL,
  tb_estado_civil_cd_estado_civil INTEGER UNSIGNED NOT NULL,
  funcionario CHAR(50) NULL,
  dt_nascimento DATE NULL,
  PRIMARY KEY(cpf),
);

CREATE TABLE tb_lotacao (
  cd_lotacao INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  lotacao CHAR(20) NULL,
  PRIMARY KEY(cd_lotacao)
);

CREATE TABLE tb_sexo (
  cd_sexo CHAR(1) NOT NULL AUTO_INCREMENT,
  sexo CHAR(20) NULL,
  PRIMARY KEY(cd_sexo)
);


