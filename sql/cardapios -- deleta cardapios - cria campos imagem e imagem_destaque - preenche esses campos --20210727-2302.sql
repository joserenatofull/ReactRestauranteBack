-- --------------------------------------------------------

--
-- Table structure for table `mesa_cardapios`
--

DROP TABLE IF EXISTS `mesa_cardapios`;
CREATE TABLE IF NOT EXISTS `mesa_cardapios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_mesa` int NOT NULL,
  `id_cardapio` int NOT NULL,
  `date_time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id_mesa` (`id_mesa`),
  KEY `id_cardapio` (`id_cardapio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cardapios`
--

DROP TABLE IF EXISTS `cardapios`;
CREATE TABLE IF NOT EXISTS `cardapios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `produto` text NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `descricao` text,
  `categoria` text NOT NULL,
  `imagem` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `imagem_destaque` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cardapios`
--

INSERT INTO `cardapios` (`id`, `produto`, `preco`, `descricao`, `categoria`, `imagem`, `imagem_destaque`) VALUES
(1, 'Camarões Empanados', '68.50', 'Deliciosos camarões empanados e temperados com nosso molho especial.', '1 - Aperitivos', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.7xbevx6lvJeiFRr1zx6edwHaEK%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.y2RjAE8DUaVFApSC5naC_AHaFj%26pid%3DApi&f=1'),
(2, 'Asas de Frango Empanados', '59.50', '10 sobreasas de frango empanadas com um blend de temperos à sua escolha.', '1 - Aperitivos', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.Zw9KyLkUm5RuR_c64Zc0ggHaE7%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.1L2I9yRiHhgRmrOR2ZWqvwHaE8%26pid%3DApi&f=1'),
(3, 'Batatas Fritas com Queijo', '58.50', 'Nossas fritas com uma cobertura irresistível com mix de queijos e bacon.', '1 - Aperitivos', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.j6zJ0UsAfSDIcEd29NVWVwHaEK%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.SGnyGBiHOsZ3d_YoGlgGHgHaEh%26pid%3DApi&f=1'),
(4, 'T-Bone', '99.90', 'Cerca de 500g de um corte nobre e macio em formato de T: o encontro delicioso de contra-filet e filet mignon.', '2 - Steaks', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.L4zQPtJaBSJnHmNbW64DdwHaHa%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.R0y6tP6LWKRLFtWcWf6_CwHaE8%26pid%3DApi&f=1'),
(5, 'Strip Steak', '89.90', '375g do corte nobre do contra-filet, perfeitamente temperado e preparado na chapa.', '2 - Steaks', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.XLrS686LTdD7cUx36DVs_QHaHa%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.A9zLhP-2BWiph3pk_NnviAHaE7%26pid%3DApi&f=1'),
(6, 'Costela de Boi', '89.90', '325g da parte mais gostosa da costela bovina, com o bold flavour inconfundível da nossa mistura secreta de temperos.', '2 - Steaks', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.w2ir24dtgGci0W1SKAlPXAHaE6%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.mLPOxffO8SKd7YkEsTb64QHaEK%26pid%3DApi&f=1'),
(7, 'Filet Mignon', '109.90', 'São três cortes de filet mignon temperados com ervas finas, servidos com molho Merlot.', '2 - Steaks', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.JA-ubGwAivgCb8QxatIKJgHaEW%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.iNWvV9rBma8CoDxk7uO7xgHaE8%26pid%3DApi&f=1'),
(8, 'Fettuccine Al Chef', '57.50', 'Fettuccine com champignons, tomates frescos e cortes de filet mignon. Refogado com um toque de vinho Chardonnay e black pepper.', '3 - Massas', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.9k3KnneMkFar1uZ6ypP4LgHaE7%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.b7KoOxfpQGUUGGmZ-hi1OAHaDi%26pid%3DApi&f=1'),
(9, 'Fettuccine Primavera', '68.50', 'Fettuccine tradicional com legumes e tiras de frango grelhado, refogado com um cremoso molho Alfredo e coberto com queijo parmesão (Grana Padano)', '3 - Massas', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.TJWBxgTzv2tUCMDUnprUyQHaEK%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.pjFGi_G4LX7rnAss-v7pVgHaE6%26pid%3DApi&f=1'),
(10, 'Arroz Maluco', '24.90', 'Arroz com lâminas de amêndoas crocantes, champignons, cebolinha, pimentão vermelho, um toque de limão e salsinha.', '4 - Acompanhamentos', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.KUHBGqJvVNvJzefS6hqNqgHaE8%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.uYbXWQBYpzbFJQ8u2dkbdQHaE8%26pid%3DApi&f=1'),
(11, 'Caesar Salad', '24.90', 'Combinação de alface, queijo Grana Padano, croutons e molho Caesar.', '4 - Acompanhamentos', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.Tg82RYNlOQNxRoOJPoEfjwHaLH%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.6uWnX_GDm4Xhv-F6zeqFhAHaE5%26pid%3DApi&f=1'),
(12, 'Batata Recheada', '24.90', 'Batata assada recheada com requeijão, manteiga, mix de queijos, bacon e cebolinha.', '4 - Acompanhamentos', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.gOVy1vp3rb591nflT6U2VAHaGL%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.ahFZWOAgnUrvq6baDIXWvwHaEN%26pid%3DApi&f=1'),
(13, 'Legumes ao Vapor', '24.90', 'Brócolis, couve-flor, cenoura e ervilha torta preparados com manteiga ao vapor.', '4 - Acompanhamentos', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.bXb16EJ9WM30uQinoHPzHQHaEc%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.VSO0PCHc4NDFZtLrtKZkUQHaEc%26pid%3DApi&f=1'),
(14, 'Petit Gateau', '30.90', 'Nosso brownie exclusivo e quentinho com sorvete de baunilha e deliciosa calda de chocolate.', '5 - Sobremesas', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.kLggnEx88oyunov_lj6O0gHaE8%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.8LTA0uCDCzhRu-B-WxNYLAHaE8%26pid%3DApi&f=1'),
(15, 'Milkshake', '20.90', 'O delicioso milkshake, no sabor chocolate ou morango, servido na caneca congelada de 340 ml.', '5 - Sobremesas', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.tAQnob5cMO7iBqesvAp1JQHaHa%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.m_FCrbsAvzz4_yVZ7ReqpAHaFI%26pid%3DApi&f=1'),
(16, 'Queijo com Goiabada', '15.40', 'Delicioso queijo mineiro com lascas da nossa maravilhosa goiabada cascão.', '5 - Sobremesas', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.TrnD6r2uu0Fib6bOe0g7LQHaES%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.XWwPW_ED5x3IqUMWJK96owHaE7%26pid%3DApi&f=1'),
(17, 'Sorvete', '12.90', 'Sorvete nos sabores creme, chocolate, morango e doce de leite.', '5 - Sobremesas', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.9CI2ufQvFEujaid89mL5DgHaEc%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.bXj7Hqb7ccbjxYCvEGqKSAHaE8%26pid%3DApi&f=1'),
(18, 'Chopp Brahma 340 ml', '12.90', '', '6 - Bebidas', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.Ji39ql4BKA_fkpf1JuVJZAHaHa%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.Lv6mgsb6kPzkjkBn1KvwxwAAAA%26pid%3DApi&f=1'),
(19, 'Chopp Brahma 600 ml', '19.90', '', '6 - Bebidas', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.bw5074DNQ75eVSEw6XEb2QHaHa%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.brA0FKf3puBLJJLos_R8XwHaHa%26pid%3DApi&f=1'),
(20, 'Refrigerante 500 ml', '8.50', 'Coca-Cola, Coca-Cola Zero, Sprite, Fanta Laranja, Guaraná Antarctica e Guaraná Antarctica Zero', '6 - Bebidas', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.vN3rjuWOHFmCcWlvg-seMgHaGA%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.OYAjKUatpBSYeZ-sjBzmQQAAAA%26pid%3DApi&f=1'),
(21, 'Água 500 ml', '6.50', '', '6 - Bebidas', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.Ui1Ba-9xC6FX5-wOdUdhpgHaFk%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.sZ50cV-jONqXXsnyKzhwiAHaGw%26pid%3DApi&f=1'),
(22, 'Água com Gás 500 ml', '6.50', '', '6 - Bebidas', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.Xsjtk8-ln2EuQUBrSVjHygHaHa%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.kJAJ0u-pQdetSnmfnEyw1gHaHa%26pid%3DApi&f=1'),
(23, 'Sucos Naturais', '11.50', 'Laranja, Morango, Graviola e Açaí.', '6 - Bebidas', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.rH1tMMvBVYu9nssJCu2unQHaFj%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.xsZM48GxbVgSwvPMCIwxywHaEp%26pid%3DApi&f=1'),
(24, 'Gin Tônica', '26.90', '', '6 - Bebidas', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.BIek9TscdbWHgQysdHxVGAHaE8%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.k6XxzzgIhpMpqmWLXxkg1AHaE8%26pid%3DApi&f=1'),
(25, 'Aperol Spritz', '24.50', '', '6 - Bebidas', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.ImYwn0HqiPxWAo9D51j8OAHaE7%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.8Wgsb-ysxrcZQyBUqHZwlwHaHa%26pid%3DApi&f=1'),
(26, 'Caipirinha', '16.50', '', '6 - Bebidas', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.xRa1gX6htfzNuJNBZm3e5AHaHa%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.5HrO_fW4cOP7ozaM8PJvogHaFj%26pid%3DApi&f=1'),
(27, 'Café Espresso', '6.50', '', '6 - Bebidas', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.5f_t_q_d-wfgteyteDp2dgHaGE%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.Vru0VpiZLFcveSn4tLSuvwHaDn%26pid%3DApi&f=1'),
(30, 'Kids', '15.50', 'Para a alegria da criançada!!!', 'Infantil', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.IK_IOwKBEonnfeiLXZXvrwHaEK%26pid%3DApi&f=1', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.gP9zSxHaCiW0ildMn8Ov1wHaEJ%26pid%3DApi&f=1');
COMMIT;

--
-- Constraints for table `mesa_cardapios`
--
ALTER TABLE `mesa_cardapios`
  ADD CONSTRAINT `mesa_cardapios_ibfk_1` FOREIGN KEY (`id_mesa`) REFERENCES `mesas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mesa_cardapios_ibfk_2` FOREIGN KEY (`id_cardapio`) REFERENCES `cardapios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
