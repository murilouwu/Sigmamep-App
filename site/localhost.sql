-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 17-Nov-2022 às 10:36
-- Versão do servidor: 5.7.23-23
-- versão do PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `leizveoc_Sigmamep`
--
CREATE DATABASE IF NOT EXISTS `leizveoc_Sigmamep` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `leizveoc_Sigmamep`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `anuncio`
--

CREATE TABLE `anuncio` (
  `cd` int(11) NOT NULL,
  `html` longtext COLLATE utf8_unicode_ci,
  `img` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `coment`
--

CREATE TABLE `coment` (
  `cd` int(11) NOT NULL,
  `coment` longtext COLLATE utf8_unicode_ci,
  `avaliacao` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `entrega`
--

CREATE TABLE `entrega` (
  `cd` int(11) NOT NULL,
  `dt_entrega` date DEFAULT NULL,
  `pagamento` decimal(8,2) DEFAULT NULL,
  `endereco` longtext COLLATE utf8_unicode_ci,
  `cep` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `cd` int(11) NOT NULL,
  `nome` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `des` longtext COLLATE utf8_unicode_ci,
  `avaliacao` int(11) DEFAULT NULL,
  `img` longtext COLLATE utf8_unicode_ci,
  `img2` longtext COLLATE utf8_unicode_ci,
  `img3` longtext COLLATE utf8_unicode_ci,
  `id_tipo` int(11) DEFAULT NULL,
  `freat` decimal(8,2) DEFAULT NULL,
  `taxas` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtoTag`
--

CREATE TABLE `produtoTag` (
  `cd` int(11) NOT NULL,
  `id_tag` int(11) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tag`
--

CREATE TABLE `tag` (
  `cd` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `cd` int(11) NOT NULL,
  `nome` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idade` int(3) DEFAULT NULL,
  `telefone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senha` char(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`cd`, `nome`, `email`, `idade`, `telefone`, `senha`, `status`) VALUES
(1, 'Chad', 'Sigma@email', 2022, '95_4002-8922', 'peruibe1', 'adm'),
(2, 'Beta', 'Vejoanimes@email', 13, '11_8008-1340', 'senha', 'user');

-- --------------------------------------------------------

--
-- Estrutura da tabela `userProductList`
--

CREATE TABLE `userProductList` (
  `cd` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL,
  `id_emprestimo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `anuncio`
--
ALTER TABLE `anuncio`
  ADD PRIMARY KEY (`cd`);

--
-- Índices para tabela `coment`
--
ALTER TABLE `coment`
  ADD PRIMARY KEY (`cd`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_produto` (`id_produto`);

--
-- Índices para tabela `entrega`
--
ALTER TABLE `entrega`
  ADD PRIMARY KEY (`cd`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_produto` (`id_produto`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`cd`);

--
-- Índices para tabela `produtoTag`
--
ALTER TABLE `produtoTag`
  ADD PRIMARY KEY (`cd`),
  ADD KEY `id_tag` (`id_tag`),
  ADD KEY `id_produto` (`id_produto`);

--
-- Índices para tabela `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`cd`);

--
-- Índices para tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`cd`);

--
-- Índices para tabela `userProductList`
--
ALTER TABLE `userProductList`
  ADD PRIMARY KEY (`cd`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_produto` (`id_produto`),
  ADD KEY `id_emprestimo` (`id_emprestimo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `anuncio`
--
ALTER TABLE `anuncio`
  MODIFY `cd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `coment`
--
ALTER TABLE `coment`
  MODIFY `cd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `entrega`
--
ALTER TABLE `entrega`
  MODIFY `cd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `cd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtoTag`
--
ALTER TABLE `produtoTag`
  MODIFY `cd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tag`
--
ALTER TABLE `tag`
  MODIFY `cd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `cd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `userProductList`
--
ALTER TABLE `userProductList`
  MODIFY `cd` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `coment`
--
ALTER TABLE `coment`
  ADD CONSTRAINT `coment_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`cd`),
  ADD CONSTRAINT `coment_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`cd`);

--
-- Limitadores para a tabela `entrega`
--
ALTER TABLE `entrega`
  ADD CONSTRAINT `entrega_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`cd`),
  ADD CONSTRAINT `entrega_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`cd`);

--
-- Limitadores para a tabela `produtoTag`
--
ALTER TABLE `produtoTag`
  ADD CONSTRAINT `produtoTag_ibfk_1` FOREIGN KEY (`id_tag`) REFERENCES `tag` (`cd`),
  ADD CONSTRAINT `produtoTag_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`cd`);

--
-- Limitadores para a tabela `userProductList`
--
ALTER TABLE `userProductList`
  ADD CONSTRAINT `userProductList_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`cd`),
  ADD CONSTRAINT `userProductList_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`cd`),
  ADD CONSTRAINT `userProductList_ibfk_3` FOREIGN KEY (`id_emprestimo`) REFERENCES `entrega` (`cd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
