--1. Quantas vezes Natalie Portman foi indicada ao Oscar?
select nome_do_indicado, ano_cerimonia from filmes where nome_do_indicado LIKE "%Natalie Portman%" ORDER BY nome_filme Desc;

--2. Quantos Oscars Natalie Portman ganhou?
select nome_do_indicado, ano_cerimonia,vencedor from filmes where nome_do_indicado LIKE "%Natalie Portman%" and vencedor = "SIM" ORDER BY nome_filme Desc;

--3. Amy Adams já ganhou algum Oscar?
select nome_do_indicado,vencedor from filmes where nome_do_indicado LIKE "%Amy Adams%" ORDER BY nome_filme Desc;
--4.4- A série de filmes Toy Story ganhou um Oscar em quais anos?
select nome_filme,vencedor,ano_cerimonia from filmes where nome_filme LIKE "%Toy Story%" and vencedor = "SIM" ORDER BY nome_filme Desc;

-- 5- A partir de que ano que a categoria "Actress" deixa de existir? 
select categoria, ano_cerimonia from filmes where categoria = "ACTRESS" order by ano_cerimonia DESC;

-- 6- O primeiro Oscar para melhor Atriz foi para quem? Em que ano?
select nome_do_indicado,ano_cerimonia,edicao_cerimonia,categoria,vencedor from filmes where categoria like "%ACTRESS%" and edicao_cerimonia = 1 and vencedor = "SIM";

-- 7- Na coluna/campo "Vencedor", altere todos os valores com "Sim" para 1 e todos os valores "Não" para 0.

UPDATE filmes
    set Vencedor = 1 where vencedor = "Sim"
    limit 1000;

UPDATE filmes
    set Vencedor = 0 where vencedor = "Não"
    limit 1000;

-- 8- Em qual edição do Oscar "Crash" ganhou o prêmio principal?
select nome_filme, edicao_cerimonia,vencedor from filmes where nome_filme = "Crash" and vencedor = "1" ;

-- 9- Bom... dê um Oscar para um filme que merece muito, mas não ganhou.
update filmes
	set vencedor = 1 where vencedor = "Central Station"
    limit 1000;

-- 10- O filme Central do Brasil aparece no Oscar?
 select nome_filme, categoria,vencedor from filmes where nome_filme like "%central Station%";

 --11- Inclua no banco 3 filmes que nunca foram nem nomeados ao Oscar, mas que merecem ser. 
INSERT INTO filmes (ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_do_indicado, filme, vencedor) VALUES ('2014', '2016', ' 88', 'ACTRESS', 'Regina Casé', 'Que horas ela voltar?', 'SIM');
INSERT INTO filmes (ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_do_indicado, filme, vencedor) VALUES ('2006', '2007', '79', 'ACTRESS', 'Hilary Swank', 'Escritores da liberdade', 'SIM');
INSERT INTO filmes (ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_do_indicado, filme, vencedor) VALUES ('2015', '2016', '88', 'Ator', 'James McAvoy', 'Fragmentado', 'SIM');

-- 14 - Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?
select nome_do_indicado,ano_cerimonia,categoria,vencedor from filmes where ano_cerimonia = 2001 and vencedor = "1";

-- 15- Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  Vamos cadastrá-los no nosso banco com o prêmio que você quiser. 
INSERT INTO filmes (ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_do_indicado, filme, vencedor)
VALUES
  ('2006', '79', 'Edição da Cerimônia 1', 'Actress', 'Gong Li', 'O banquete', 'sim'),
  ('2005', '78', 'Edição da Cerimônia 2', 'Actress', 'Zhang Ziyi', 'Memórias de uma Gueixa', 'sim'),
  ('2016', '89', 'Edição da Cerimônia 3', 'Actress', 'Isabelle Huppert', 'Elle', 'sim'),
  ('2008', '81', 'Edição da Cerimônia 4', 'Actress', 'Penélope Cruz', 'Vicky Cristina Barcelona', 'sim'),
  ('2007', '80', 'Edição da Cerimônia 5', 'Actress', 'Marion Cotillard', 'Piaf - Um Hino ao Amor', 'sim'),
  ('2011', '84', 'Edição da Cerimônia 6', 'Actress', 'Leila Hatami', 'A Separação', 'sim'),
  ('2011', '80', 'Edição da Cerimônia 7', 'Actress', 'Jeon Do-yeon', 'Secret Sunshine', 'sim');

--16- Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. 
-- Agora me diz: Quê prêmio essa pessoa merece? 

-- Thalita, me incentivou a correr atrás dos meus objetivos - Best Sister