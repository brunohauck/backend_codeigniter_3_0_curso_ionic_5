

CREATE TABLE `cardapio` (
  `id` int(11) NOT NULL,
  `restaurante_id` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ingredientes` tinytext COLLATE utf8_unicode_ci,
  `observacao` text COLLATE utf8_unicode_ci,
  `preco` decimal(10,2) NOT NULL,
  `img_url` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `cardapio`
--

INSERT INTO `cardapio` (`id`, `restaurante_id`, `nome`, `tipo`, `ingredientes`, `observacao`, `preco`, `img_url`) VALUES
(1, 1, 'Prato do dia 2255 senegal', 'Marmitex', 'Arroz, Feijão, Creme de Batata c/cheiro Verde, Batata Palha, Espaguete ao Molho Napolitano. Carne de Boi', 'Caso deseje trocar algum ingrediente.', '68.00', 'https://fortissima.com.br/wp-content/uploads/2015/08/prato_feito_shutterstock-tt-width-500-height-420-bgcolor-FFFFFF.jpg'),
(2, 1, 'Prato do dia 02010 Senegal', 'Marmitex', 'Arroz, Feijão, Creme de Batata c/cheiro Verde, Batata Palha, Espaguete ao Molho Napolitano. Carne a sua escolha boi,porco ou frango', 'Escolha Carne e Informe no Campo Alteração do Prato', '9.00', 'https://fortissima.com.br/wp-content/uploads/2015/08/prato_feito_shutterstock-tt-width-500-height-420-bgcolor-FFFFFF.jpg'),
(3, 1, 'Prato do dia 03', 'Marmitex', 'Batata Palha Temperada e Estrogonofe', 'Escolha Carne e Informe no Campo Alteração do Prato', '12.00', 'https://fortissima.com.br/wp-content/uploads/2015/08/prato_feito_shutterstock-tt-width-500-height-420-bgcolor-FFFFFF.jpg'),
(4, 1, 'Prato do dia 4 - Strogonoff de frango', '', 'Strogonoff de frango arroz e batata palha.', NULL, '10.00', 'https://img.cybercook.uol.com.br/imagens/receitas/209/strogonoff-de-camarao-facil.jpg'),
(5, 1, 'Escondidinho de carne', '', '1k de Picanha - 2 Colheres de arroz - Salada', NULL, '15.00', 'https://img.cybercook.uol.com.br/imagens/receitas/209/strogonoff-de-camarao-facil.jpg'),
(6, 1, 'Galinhada', '', 'Galinha caipira...', NULL, '15.00', 'https://img.cybercook.uol.com.br/imagens/receitas/209/strogonoff-de-camarao-facil.jpg'),
(7, 1, 'teste', '', 'tese', NULL, '20.00', 'https://img.cybercook.uol.com.br/imagens/receitas/209/strogonoff-de-camarao-facil.jpg'),
(8, 1, 'Leite', '', 'leite ', NULL, '20.00', 'https://img.cybercook.uol.com.br/imagens/receitas/209/strogonoff-de-camarao-facil.jpg'),
(9, 1, 'sopa 111', '', 'arroz..111', NULL, '15.00', 'https://img.cybercook.uol.com.br/imagens/receitas/209/strogonoff-de-camarao-facil.jpg'),
(10, 1, 'prato 100', '', '100', NULL, '100.00', 'https://img.cybercook.uol.com.br/imagens/receitas/209/strogonoff-de-camarao-facil.jpg'),
(11, 1, 'prato brasilia', '', '123', NULL, '10.00', 'https://img.cybercook.uol.com.br/imagens/receitas/209/strogonoff-de-camarao-facil.jpg'),
(12, 1, 'LAXU SOOW', '', '	Laxu Soow est une bouillie de mil compacte servie avec du lait caillé.', NULL, '500.00', 'https://img.cybercook.uol.com.br/imagens/receitas/209/strogonoff-de-camarao-facil.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cardapios_pedido`
--

CREATE TABLE `cardapios_pedido` (
  `pedido_id` int(11) NOT NULL,
  `cardapio_id` int(11) NOT NULL,
  `quantidade` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cardapios_pedido`
--

INSERT INTO `cardapios_pedido` (`pedido_id`, `cardapio_id`, `quantidade`) VALUES
(75, 1, 1),
(75, 3, 1),
(76, 1, 1),
(76, 2, 1),
(77, 1, 1),
(77, 2, 1),
(119, 1, 1),
(120, 1, 1),
(144, 4, 1),
(144, 3, 1),
(145, 1, 1),
(145, 3, 1),
(147, 4, 1),
(147, 1, 1),
(158, 1, 1),
(159, 1, 1),
(160, 1, 1),
(160, 2, 1),
(161, 1, 2),
(162, 1, 2),
(162, 2, 3),
(163, 1, 1),
(166, 2, 2),
(167, 1, 4),
(168, 1, 4),
(168, 4, 1),
(169, 2, 2),
(169, 1, 1),
(171, 1, 1),
(172, 3, 1),
(172, 1, 1),
(174, 1, 1),
(176, 4, 2),
(178, 1, 1),
(179, 1, 1),
(180, 1, 1),
(182, 1, 1),
(183, 1, 1),
(184, 4, 1),
(185, 4, 1),
(185, 1, 1),
(186, 2, 1),
(187, 1, 1),
(188, 1, 2),
(189, 1, 1),
(190, 2, 1),
(190, 1, 1),
(191, 1, 1),
(193, 4, 2),
(193, 2, 1),
(193, 3, 3),
(196, 1, 2),
(196, 2, 1),
(197, 1, 1),
(199, 1, 1),
(200, 1, 1),
(201, 1, 2),
(201, 2, 3),
(202, 1, 1),
(203, 1, 1),
(204, 1, 1),
(206, 1, 1),
(207, 1, 1),
(208, 1, 1),
(209, 1, 1),
(210, 1, 1),
(211, 1, 1),
(212, 1, 1),
(213, 1, 1),
(214, 1, 1),
(221, 2, 1),
(222, 2, 1),
(223, 2, 1),
(223, 1, 1),
(224, 2, 1),
(224, 1, 1),
(225, 2, 1),
(225, 1, 1),
(226, 1, 3),
(227, 1, 3),
(227, 4, 1),
(229, 1, 0),
(229, 2, 0),
(230, 1, 1),
(231, 4, 1),
(232, 2, 1),
(233, 2, 1),
(233, 1, 1),
(234, 2, 1),
(234, 1, 1),
(235, 1, 1),
(236, 1, 1),
(237, 1, 1),
(237, 4, 1),
(238, 1, 1),
(243, 1, 1),
(244, 2, 1),
(245, 2, 1),
(247, 2, 1),
(249, 2, 1),
(250, 2, 1),
(250, 1, 1),
(256, 1, 1),
(256, 2, 1),
(257, 1, 1),
(258, 3, 1),
(259, 3, 1),
(259, 2, 1),
(260, 1, 1),
(261, 1, 1),
(262, 1, 1),
(263, 1, 1),
(264, 6, 1),
(265, 1, 3),
(265, 2, 3),
(274, 1, 4),
(274, 2, 2),
(278, 1, 1),
(280, 1, 1),
(298, 4, 1),
(328, 1, 1),
(329, 1, 1),
(330, 1, 1),
(331, 1, 1),
(332, 1, 1),
(334, 1, 1),
(341, 1, 1),
(341, 6, 1),
(341, 8, 1),
(342, 5, 1),
(342, 4, 1),
(343, 3, 1),
(343, 2, 1),
(343, 1, 1),
(346, 4, 1),
(347, 8, 1),
(348, 8, 3),
(348, 1, 2),
(348, 6, 1),
(349, 7, 4),
(349, 5, 1),
(350, 4, 4),
(350, 8, 1),
(353, 2, 4),
(353, 7, 1),
(354, 3, 6),
(363, 3, 1),
(363, 2, 1),
(364, 3, 1),
(364, 2, 1),
(365, 3, 1),
(365, 2, 1),
(366, 4, 1),
(367, 6, 1),
(368, 3, 1),
(369, 3, 1),
(370, 3, 1),
(371, 3, 1),
(372, 2, 5),
(374, 3, 1),
(375, 4, 3),
(376, 1, 8),
(377, 1, 1),
(378, 1, 3),
(379, 2, 1),
(379, 3, 1),
(380, 3, 1),
(381, 2, 1),
(382, 1, 3),
(382, 4, 4),
(383, 1, 3),
(384, 2, 2),
(385, 2, 6),
(385, 1, 5),
(395, 2, 4),
(396, 2, 1),
(403, 1, 1),
(404, 1, 1),
(405, 1, 1),
(421, 1, 1),
(421, 3, 3),
(427, 1, 1),
(451, 1, 1),
(451, 4, 1),
(452, 2, 1),
(453, 2, 4),
(454, 2, 4),
(455, 1, 1),
(455, 2, 1),
(456, 1, 1),
(456, 2, 1),
(457, 1, 1),
(457, 2, 1),
(458, 1, 7),
(458, 3, 1),
(459, 1, 1),
(462, 1, 3),
(462, 4, 1),
(467, 1, 6),
(467, 3, 6),
(468, 1, 6),
(468, 3, 6),
(469, 1, 6),
(469, 3, 6),
(482, 1, 1),
(483, 1, 1),
(484, 1, 1),
(485, 1, 1),
(486, 1, 1),
(570, 1, 1),
(570, 7, 1),
(598, 2, 1),
(598, 4, 1),
(612, 1, 1),
(659, 1, 2),
(669, 1, 1),
(669, 3, 1),
(670, 1, 1),
(670, 3, 1),
(671, 1, 1),
(671, 3, 1),
(672, 1, 1),
(693, 1, 1),
(693, 2, 1),
(694, 1, 1),
(694, 2, 1),
(695, 1, 1),
(695, 2, 1),
(696, 1, 1),
(696, 2, 1),
(697, 1, 1),
(697, 2, 1),
(698, 1, 1),
(698, 3, 1),
(699, 1, 1),
(699, 2, 1),
(700, 1, 1),
(700, 2, 1),
(701, 1, 1),
(701, 2, 1),
(702, 1, 1),
(702, 2, 1),
(713, 1, 1),
(714, 1, 1),
(715, 1, 1),
(716, 6, 1),
(717, 1, 1),
(730, 3, 1),
(730, 1, 1),
(731, 3, 3),
(731, 1, 6),
(732, 1, 1),
(733, 1, 1),
(733, 4, 1),
(734, 1, 1),
(734, 4, 1),
(734, 3, 1),
(735, 1, 1),
(735, 4, 1),
(735, 3, 1),
(736, 1, 1),
(737, 1, 3),
(738, 1, 3),
(739, 1, 3),
(740, 1, 4),
(767, 1, 1),
(767, 12, 1),
(774, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `cardapio_id` int(11) NOT NULL,
  `usurarios_id` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `taxa_entrega` decimal(10,2) NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `observacao` tinytext COLLATE utf8_unicode_ci,
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `cart`
--

INSERT INTO `cart` (`id`, `cardapio_id`, `usurarios_id`, `valor`, `taxa_entrega`, `nome`, `email`, `observacao`, `status`, `created_at`, `update_at`) VALUES
(1, 1, 1, '849.90', '18.00', NULL, 'brunohauck@gmail.com', NULL, 'aberto', '2018-06-27 13:53:01', '2018-06-27 13:53:01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `timestamp` int(10) UNSIGNED DEFAULT '0',
  `data` blob,
  `session_id` varchar(40) DEFAULT NULL,
  `user_agent` text,
  `last_activity` text,
  `user_data` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`, `session_id`, `user_agent`, `last_activity`, `user_data`) VALUES
(NULL, '70.39.147.32', 0, NULL, '482172204130a29146b5badd7dfdbb6b', 'python-requests/2.9.1', '1489555056', 'a:2:{s:9:"user_data";s:0:"";s:4:"lang";s:2:"en";}'),
(NULL, '70.39.147.32', 0, NULL, '554b4055f6b742d45020de78a2f2a25b', 'python-requests/2.9.1', '1489727868', 'a:2:{s:9:"user_data";s:0:"";s:4:"lang";s:2:"en";}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `employees`
--

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `nome_fantasia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `razao_social` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CNPJ` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inscricao_estadual` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CPF` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `celular` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `email` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `tk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`id`, `nome_fantasia`, `razao_social`, `CNPJ`, `inscricao_estadual`, `CPF`, `telefone`, `celular`, `password`, `email`, `tk`) VALUES
(1, 'Restaurante Escondidim', NULL, NULL, NULL, '0000', ' (31) 3634 - 6735', '(31) 99384-8241', '$2y$10$wqvUQW6LB0gtXFTHAhL.3OhhRIgkxtT2t43g2ron8YW5Ojuxiazum', 'brunohauck@gmail.com', '8b7f71d08712cfa2c5a536716f9e9e1e'),


-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `id` int(11) NOT NULL,
  `restaurante_id` int(11) NOT NULL,
  `endereco` text COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `complemento` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cidade` text COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bairro` text COLLATE utf8_unicode_ci,
  `cep` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`id`, `restaurante_id`, `endereco`, `numero`, `complemento`, `cidade`, `estado`, `bairro`, `cep`) VALUES
(1, 1, 'Av. Brasília', '1313', 'Lj 04 - Sob Loja', 'Santa Luzia', 'MG', 'São Benedito', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(40) COLLATE utf8_bin NOT NULL,
  `attempts` int(11) NOT NULL,
  `login` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lastLogin` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `attempts`, `login`, `lastLogin`, `time`) VALUES
(11, '200.198.16.36', 2, NULL, 1409855680, '2014-09-05 01:34:40'),
(12, '200.198.16.39', 2, NULL, 1415985711, '2014-11-15 00:21:51'),
(13, '187.127.121.122', 1, NULL, 1424023348, '2015-02-16 01:02:28'),
(14, '177.27.28.204', 1, NULL, 1436908481, '2015-07-15 04:14:41'),
(19, '191.211.201.205', 2, NULL, 1455135889, '2016-02-11 01:24:49'),
(18, '152.238.142.180', 4, NULL, 1447632160, '2015-11-16 05:02:40'),
(20, '200.198.58.36', 2, NULL, 1460122215, '2016-04-08 17:30:15'),
(21, '187.78.27.249', 1, NULL, 1464550526, '2016-05-29 23:35:26'),
(22, '191.142.187.188', 1, NULL, 1466076456, '2016-06-16 15:27:36'),
(23, '189.12.229.44', 2, NULL, 1466366638, '2016-06-20 00:03:58'),
(24, '201.4.250.199', 1, NULL, 1468445253, '2016-07-14 01:27:33'),
(25, '187.82.236.78', 5, NULL, 1471435694, '2016-08-17 16:08:14'),
(26, '187.127.56.144', 1, NULL, 1471899426, '2016-08-23 00:57:06');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `cardapio_id` int(11) NOT NULL,
  `usurarios_id` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `taxa_entrega` decimal(10,2) NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `observacao` tinytext COLLATE utf8_unicode_ci,
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `cardapio_id`, `usurarios_id`, `valor`, `taxa_entrega`, `nome`, `email`, `observacao`, `status`, `created_at`, `update_at`) VALUES
(1, 0, 0, '0.00', '0.00', 'Bruno hauck', 'brunohauck@gmail.com', NULL, NULL, '2018-01-16 17:12:31', '2018-01-16 17:12:31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `prato`
--

CREATE TABLE `prato` (
  `id` int(11) NOT NULL,
  `restaurante_id` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arroz` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `feijao` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ingredientes` tinytext COLLATE utf8_unicode_ci,
  `observacao` text COLLATE utf8_unicode_ci,
  `img_url` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flag_refeicao_montada` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `prato`
--

INSERT INTO `prato` (`id`, `restaurante_id`, `nome`, `tipo`, `arroz`, `feijao`, `ingredientes`, `observacao`, `img_url`, `flag_refeicao_montada`) VALUES
(1, 1, 'Prato do dia 01', 'Marmitex', 'Arroz', 'Feijão Tropeiro', 'Fritas', NULL, 'http://costelanobafo.loja2.com.br/img/6398fdbba7d52cea6ccf8ad74fb4b8f7.jpg', 'Nao'),
(2, 1, 'Prato do dia 02', 'Marmitex', 'Arroz Branco', 'Feijão ', ' Batata Palha Temperada', NULL, 'http://costelanobafo.loja2.com.br/img/6398fdbba7d52cea6ccf8ad74fb4b8f7.jpg', 'Nao'),
(3, 1, 'Prato do dia 03', 'Marmitex', 'Arroz', 'Feijão', 'Creme de Batata c/cheiro Verde, Batata Palha, Espaguete ao Molho Napolitano', 'Escolha Carne e Informe no Campo Alteração do Prato', 'http://costelanobafo.loja2.com.br/img/6398fdbba7d52cea6ccf8ad74fb4b8f7.jpg', 'Nao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `restaurante`
--

CREATE TABLE `restaurante` (
  `id` int(11) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `celular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_url` tinytext COLLATE utf8_unicode_ci,
  `pedido_url` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `endereco` tinytext COLLATE utf8_unicode_ci,
  `flag_pedido_cadastrado` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_criacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `restaurante`
--

INSERT INTO `restaurante` (`id`, `empresa_id`, `nome`, `tipo`, `telefone`, `celular`, `img_url`, `pedido_url`, `endereco`, `flag_pedido_cadastrado`, `latitude`, `longitude`, `data_criacao`) VALUES
(1, 1, 'Escondidim', 'Restaurante e entregas', '(31) 3634 - 6735', '(31) 99384-8241', 'http://udemy-brunohauck677519.codeanyapp.com:3000/img/restaurant_log.png', NULL, 'Av. Brasília, 1313 Lj 04 - Sob Loja\r\nSão Benedito - Santa Luzia', 'Nao', '-19.7925697', '-43.9346231', '2016-07-24 13:43:19'),
(2, 2, 'Marmitex Online BH', 'Tele Marmitex', '(31) 3459-8862', '', 'http://assets.lwsite.com.br/uploads/widget_image/image/307/967/307967/logo_1759846566.png', NULL, 'R. Consuelo, 3 - Jardim dos Comerciários,Belo Horizonte - MG,31650-100', 'Nao', '-19.7922574 ', '-43.9737068', '2016-07-24 13:43:19'),
(61, 3, 'Temperinho da Eva', 'Marmitex', '(31) 3457-1400 / 2520-2509', '', 'http://www.poenoprato.com.br/system/restaurants/photos/000/000/003/thumb/logomarca_temperinho.jpg', 'http://www.poenoprato.com.br/temperinho-da-eva/pedido_online', 'Rua Joaquim de Pinho, 440 Loja\r\n31510-420\r\nBelo Horizonte / Minas Gerais ', 'url', '-19.8168257', '-43.9675658', '2016-07-24 13:43:19'),
(62, 0, 'Restaurante Requinte', 'Telemarmitex', '(31) 3637-2020', '(31) 99540-7498', NULL, 'http://www.poenoprato.com.br/restaurante-requinte/pedido_online', 'Rua Maria Piedade Leandro, 31 Cristina A - 2º ANDAR\r\n33105-250', 'url', '-19.7834209', '-43.9258064', '2016-07-24 13:43:19'),
(65, 57, 'Candeia Restsurante\'s', 'Tele Marmitex', '3134942256', '333', NULL, NULL, 'Rua Osório Duque Estrada 156 Planalto', 'Nao', '-19.8332699', '-43.9481284', '2016-07-24 13:43:19'),
(69, 63, 'Tele Marmitex Tia Rô', 'Telemarmitex', '(31) 3498-2094', '', NULL, NULL, NULL, 'Nao', '', '', '2016-09-11 19:24:47');

-- --------------------------------------------------------

--
-- Estrutura da tabela `restaurante_foto`
--

CREATE TABLE `restaurante_foto` (
  `id` int(11) NOT NULL,
  `restaurante_id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `img_url` tinytext NOT NULL,
  `flag_capa` varchar(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `restaurante_foto`
--

INSERT INTO `restaurante_foto` (`id`, `restaurante_id`, `nome`, `img_url`, `flag_capa`) VALUES
(1, 1, 'Logo', 'https://udemy-brunohauck677519.codeanyapp.com/img/restaurant_log.png', 'Sim'),
(2, 2, 'teste444', 'http://assets.lwsite.com.br/uploads/widget_image/image/307/967/307967/logo_1759846566.png', 'Sim'),
(6, 62, 'Requinte', 'http://marmitanamao.idsgeo.com/images/requinte.png', 'Sim'),
(5, 61, 'eva', 'http://www.poenoprato.com.br/system/restaurants/photos/000/000/003/thumb/logomarca_temperinho.jpg', 'Sim'),
(7, 65, 'logo', 'http://marmitanamao.idsgeo.com/imagens/candeia_restaurante.png', 'Sim'),
(8, 69, 'Marmitex', 'http://marmitanamao.idsgeo.com/images/marmitex.png', 'Sim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `taxa_entrega`
--

CREATE TABLE `taxa_entrega` (
  `id` int(11) NOT NULL,
  `restaurante_id` int(11) NOT NULL,
  `cidade` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bairro` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `taxa_entrega`
--

INSERT INTO `taxa_entrega` (`id`, `restaurante_id`, `cidade`, `bairro`, `valor`, `status`, `created_at`, `update_at`) VALUES
(164, 1, '', 'Carlos Prates', '10.00', 0, '2017-12-31 02:41:29', '2017-12-31 02:41:29'),
(165, 1, 'Belo Horizonte', 'Santa Lúcia', '15.00', 0, '2018-01-08 00:16:31', '2018-01-08 00:16:31'),
(166, 1, 'Teresina', 'Bela vista', '14.00', 0, '2018-01-23 19:41:29', '2018-01-23 19:41:29'),
(167, 1, 'Teresina', 'Morada do sol', '18.00', 0, '2018-01-26 16:32:47', '2018-01-26 16:32:47'),
(168, 1, 'Teresina', 'São Cristovão', '17.00', 0, '2018-01-30 13:20:56', '2018-01-30 13:20:56'),
(169, 1, 'Teresina', 'Bela vista', '15.00', 0, '2018-01-30 14:27:06', '2018-01-30 14:27:06'),
(170, 1, 'Teresina', 'Vermelha', '30.00', 0, '2018-02-02 18:21:38', '2018-02-02 18:21:38'),
(171, 1, 'teste', 'teste', '5.00', 0, '2018-02-02 23:30:18', '2018-02-02 23:30:18'),
(172, 1, 'brasilia', 'taguatinga', '20.00', 0, '2018-06-01 20:45:59', '2018-06-01 20:45:59'),
(173, 1, 'brasilia capital', 'recanto das emas ', '20.00', 0, '2018-06-02 19:22:05', '2018-06-02 19:22:05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `todo`
--



-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_app`
--

CREATE TABLE `usuarios_app` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios_app`
--

INSERT INTO `usuarios_app` (`id`, `nome`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Bruno hauck', 'brunohauck@gmail.com', '123456', '2017-08-22 16:26:12', NULL),
(2, 'asdf ', 'www@fwe', 'd2d2d2', '2017-09-07 01:21:18', NULL),
(3, 'Udemy', 'teste@teste.com.br', '123456', '2017-09-10 17:41:59', NULL);



CREATE TABLE `usuarios_endereco` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `endereco` text COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `complemento` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cidade` text COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bairro` text COLLATE utf8_unicode_ci,
  `cep` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `usuarios_endereco`
--


--
-- Indexes for dumped tables
--

--
-- Indexes for table `cardapio`
--
ALTER TABLE `cardapio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorias`

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `employees`
--


--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fornecedor`
--


--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prato`
--
ALTER TABLE `prato`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produto`
--



--
-- Indexes for table `restaurante`
--
ALTER TABLE `restaurante`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurante_foto`
--
ALTER TABLE `restaurante_foto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxa_entrega`
--
ALTER TABLE `taxa_entrega`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todo`


--
-- Indexes for table `usuarios_app`
--
ALTER TABLE `usuarios_app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios_endereco`
--
ALTER TABLE `usuarios_endereco`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cardapio`
--
ALTER TABLE `cardapio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `categorias`
--


--
-- AUTO_INCREMENT for table `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `fornecedor`
--
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `prato`
--
ALTER TABLE `prato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--

--
ALTER TABLE `restaurante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `restaurante_foto`
--
ALTER TABLE `restaurante_foto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `taxa_entrega`
--
ALTER TABLE `taxa_entrega`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;
--
-- AUTO_INCREMENT for table `todo`
--

--
-- AUTO_INCREMENT for table `usuarios_app`
--
ALTER TABLE `usuarios_app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `usuarios_endereco`
--
ALTER TABLE `usuarios_endereco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
