INSERT INTO cargo(nomeCargo, valorHora, tipoCargo) VALUES('Consultor 1', 5500.00, DEFAULT);
INSERT INTO cargo(nomeCargo, valorHora, tipoCargo) VALUES('Consultor 2', 7500.00, DEFAULT);
INSERT INTO cargo(nomeCargo, valorHora, tipoCargo) VALUES('Auxiliar Vendas', 2500.00, DEFAULT);
INSERT INTO cargo(nomeCargo, valorHora, tipoCargo) VALUES('Programador Junior', 3000.00, DEFAULT);

SELECT cargo.nomeCargo FROM cargo;

INSERT INTO consultor(nomeConsultor, cpf, tetefone, codCargo) VALUES('João XYZ', '36795792689', '011967589473', 3);
INSERT INTO consultor(nomeConsultor, cpf, tetefone, codCargo) VALUES('Fernando VXC', '36795796589', '011967584565', 2);
INSERT INTO consultor(nomeConsultor, cpf, tetefone, codCargo) VALUES('Paulo XYZ', '34595792689', '011969889473', 2);
INSERT INTO consultor(nomeConsultor, cpf, tetefone, codCargo) VALUES('Luiz XYZ', '36795792329', '011998589473', 4);

SELECT * FROM consultor;

INSERT INTO cliente(razaoSocial, endereco, cnpj) VALUES('Casa dos doces', 'Rua das flores', '85937592047462');
INSERT INTO cliente(razaoSocial, endereco, cnpj) VALUES('As esfirrinhas', 'Av João Melo', '75893045748932');
INSERT INTO cliente(razaoSocial, endereco, cnpj) VALUES('Açaizero Muderno', 'Av Liberdade', '96328509486332');
INSERT INTO cliente(razaoSocial, endereco, cnpj) VALUES('Japa 400', 'Rua das Desilusões', '964686432154');

SELECT * FROM cliente;

INSERT INTO projeto(nomeProjeto, dataProjeto, valorProjeto, codConsultor, codCliente) VALUES('Desolação com o Japa', '2024-10-10', 20001.00, 4, 4);