-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Mar-2023 às 20:11
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `livraria_tera`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `id_autor` int(10) NOT NULL,
  `nome_autor` varchar(30) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`id_autor`, `nome_autor`, `sexo`) VALUES
(1, 'Ana Claudia', 'F'),
(2, 'João Nunes', 'M'),
(3, 'Celia Tavares', 'F'),
(4, 'Eduardo Santos', 'M'),
(5, 'Eduardo Santos', 'M'),
(6, 'Hermes Macedo', 'M'),
(7, 'Geraldo Francisco', 'M'),
(8, 'Leda Silva', 'F'),
(9, 'Marco Alcantara', 'M'),
(10, 'Clara Mafra', 'F');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `id_Cadastro` decimal(10,0) NOT NULL,
  `dataCadastro` date DEFAULT NULL,
  `fk_cadastro` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`id_Cadastro`, `dataCadastro`, `fk_cadastro`) VALUES
('1', '2000-01-20', 1),
('2', '2001-05-23', 2),
('3', '1999-01-03', 3),
('4', '2011-05-01', 4),
('5', '1999-05-06', 5),
('6', '1999-02-03', 6),
('7', '1999-05-06', 7),
('8', '2000-05-23', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinho`
--

CREATE TABLE `carrinho` (
  `idcarrinho` int(10) NOT NULL,
  `quantidade` int(10) DEFAULT NULL,
  `fk_livro` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(10) NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `email` int(40) DEFAULT NULL,
  `cpf` char(11) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `nascimento`, `email`, `cpf`, `sexo`) VALUES
(1, 'João Ferreira', '1986-06-26', 0, '13606636930', 'M'),
(2, 'Bruna Almeida', '1997-02-16', 0, '14512236530', 'F'),
(3, 'Maria Carvalho Pinto', '1999-06-23', 0, '14526636790', 'F'),
(4, 'Francisca Souza Ferreira', '1989-07-28', 0, '69866253690', 'F'),
(5, 'Andre Campos', '2001-03-14', 0, '25798536940', 'M'),
(6, 'Ricardo Souza Rodrigues', '1969-05-17', 0, '12325869543', 'M'),
(7, 'Angelo Fernandes', '2002-09-15', 0, '14815236830', 'M'),
(8, 'Margarida Favero', '1999-05-13', 0, '12575843019', 'F');

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

CREATE TABLE `editora` (
  `id_editora` int(10) NOT NULL,
  `nome_editora` int(4) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `editora`
--

INSERT INTO `editora` (`id_editora`, `nome_editora`, `uf`) VALUES
(1, 0, 'RJ'),
(2, 0, 'SP'),
(3, 0, 'RJ'),
(4, 0, 'RJ'),
(5, 0, 'RJ'),
(6, 0, 'MG'),
(7, 0, 'ES'),
(8, 0, 'ES'),
(9, 0, 'RS'),
(10, 0, 'RS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `idestoque` int(10) NOT NULL,
  `unidades` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`idestoque`, `unidades`) VALUES
(1, 5),
(2, 200),
(3, 130),
(4, 300),
(5, 63),
(6, 9),
(7, 132),
(8, 126),
(9, 115),
(10, 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `id_livro` int(10) NOT NULL,
  `nome_livro` varchar(30) DEFAULT NULL,
  `paginas` int(10) DEFAULT NULL,
  `valor` decimal(10,0) DEFAULT NULL,
  `publicacao` year(4) DEFAULT NULL,
  `fk_autor` int(10) DEFAULT NULL,
  `fk_editora` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`id_livro`, `nome_livro`, `paginas`, `valor`, `publicacao`, `fk_autor`, `fk_editora`) VALUES
(1, 'Cavaleiro Real', 465, '50', 2009, 1, 1),
(2, 'SQL para leigos', 450, '98', 2018, 2, 2),
(3, 'Receitas Caseiras', 210, '45', 2008, 3, 3),
(4, 'Pessoas Efetivas', 390, '79', 2018, 4, 4),
(5, 'Habitos Saudáveis', 630, '151', 2019, 5, 5),
(6, 'A Casa Marrom', 250, '60', 2016, 6, 6),
(7, 'Estacio Querido', 310, '100', 2015, 7, 7),
(8, 'Pra sempre amigas', 510, '79', 2011, 8, 8),
(9, 'Copas Inesqueciveis', 200, '131', 2018, 9, 9),
(10, 'O poder da Mente', 120, '57', 2017, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `idpedido` int(10) NOT NULL,
  `data_pedido` date DEFAULT NULL,
  `status_pedido` varchar(30) DEFAULT NULL,
  `valor_total` decimal(10,0) DEFAULT NULL,
  `itens` int(10) DEFAULT NULL,
  `fk_pagamento` int(10) DEFAULT NULL,
  `fk_estoque` int(10) DEFAULT NULL,
  `fk_carrinho` int(10) DEFAULT NULL,
  `fk_cliente` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_pagamento`
--

CREATE TABLE `tipo_pagamento` (
  `idpagamento` int(10) NOT NULL,
  `data_pagamento` date DEFAULT NULL,
  `valor_pagamento` decimal(10,0) DEFAULT NULL,
  `forma_pagamento` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autor`);

--
-- Índices para tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`id_Cadastro`),
  ADD KEY `fk_cadastro` (`fk_cadastro`);

--
-- Índices para tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`idcarrinho`),
  ADD KEY `fk_livro` (`fk_livro`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`id_editora`);

--
-- Índices para tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`idestoque`);

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`id_livro`),
  ADD KEY `fk_autor` (`fk_autor`),
  ADD KEY `fk_editora` (`fk_editora`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedido`),
  ADD KEY `fk_pagamento` (`fk_pagamento`),
  ADD KEY `fk_estoque` (`fk_estoque`),
  ADD KEY `fk_carrinho` (`fk_carrinho`),
  ADD KEY `fk_cliente` (`fk_cliente`);

--
-- Índices para tabela `tipo_pagamento`
--
ALTER TABLE `tipo_pagamento`
  ADD PRIMARY KEY (`idpagamento`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD CONSTRAINT `cadastro_ibfk_1` FOREIGN KEY (`fk_cadastro`) REFERENCES `cliente` (`id`);

--
-- Limitadores para a tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD CONSTRAINT `carrinho_ibfk_1` FOREIGN KEY (`fk_livro`) REFERENCES `livro` (`id_livro`);

--
-- Limitadores para a tabela `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `livro_ibfk_1` FOREIGN KEY (`fk_autor`) REFERENCES `autor` (`id_autor`),
  ADD CONSTRAINT `livro_ibfk_2` FOREIGN KEY (`fk_editora`) REFERENCES `editora` (`id_editora`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`fk_pagamento`) REFERENCES `tipo_pagamento` (`idpagamento`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`fk_estoque`) REFERENCES `estoque` (`idestoque`),
  ADD CONSTRAINT `pedido_ibfk_3` FOREIGN KEY (`fk_carrinho`) REFERENCES `carrinho` (`idcarrinho`),
  ADD CONSTRAINT `pedido_ibfk_4` FOREIGN KEY (`fk_cliente`) REFERENCES `cliente` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
