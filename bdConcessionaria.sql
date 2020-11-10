---CREATE DATA BASE bdConcessionaria
CREATE TABLE tbVenda(
    codVenda INT PRIMARY KEY 
    ,dataVenda DATETIME 
    ,valorVenda VARCHAR (20)
);
CREATE TABLE tbSubVenda(
    codSubVenda VARCHAR (30)
    ,codVenda INT FOREIGN KEY REFERENCES tbVenda(codVenda)
    ,subTotal VARCHAR (30)
);
CREATE TABLE tbFabricante(
    codFabricante INT PRIMARY KEY
    ,nomeFabri VARCHAR (30)
    ,lograFabri VARCHAR (30)
    ,numFabri VARCHAR (30)
    ,cidadeFabri VARCHAR (30)
    ,ufFabricante VARCHAR (10)
);
CREATE TABLE tbTelFabri(
     codTelFabri INT PRIMARY KEY
     ,numTelFabri VARCHAR (30)
     ,contatoFabri VARCHAR (20)
     ,codFabri INT FOREIGN KEY REFERENCES tbFabricante(codFabricante)
);
CREATE TABLE tbModelo(
    codModelo INT PRIMARY KEY
    ,nomeModelo VARCHAR (30)
    ,valorFabri VARCHAR (30)
    ,anoFabricacao VARCHAR (20)
    ,codFabricante INT FOREIGN KEY REFERENCES tbFabricante(codFabricante)
);
CREATE TABLE tbVeiculo(
    codVeiculo INT PRIMARY KEY 
    ,descVeiculo VARCHAR (30)
    ,valorVeiculo VARCHAR (15)
    ,anoFabricacao VARCHAR (15)
    ,codModelo  INT FOREIGN KEY REFERENCES tbModelo(codModelo)
);