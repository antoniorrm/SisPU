-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de geração: 09/10/2016 às 11:07
-- Versão do servidor: 5.7.15-0ubuntu0.16.04.1
-- Versão do PHP: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `gerenciador`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `banner`
--

CREATE TABLE `banner` (
  `codigo` int(10) UNSIGNED NOT NULL,
  `codigoUsuario` int(10) UNSIGNED NOT NULL,
  `imagem` varchar(130) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `contato`
--

CREATE TABLE `contato` (
  `codigo` int(10) UNSIGNED NOT NULL,
  `codigoUsuario` int(10) UNSIGNED NOT NULL,
  `nome` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `sobrenome` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `texto` text CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `email`
--

CREATE TABLE `email` (
  `codigo` int(10) UNSIGNED NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `emails_enviados`
--

CREATE TABLE `emails_enviados` (
  `codigo` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `mensagem` text CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `noticia`
--

CREATE TABLE `noticia` (
  `codigo` int(10) UNSIGNED NOT NULL,
  `codigoUsuario` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `descricao` text CHARACTER SET latin1,
  `imagem` varchar(130) CHARACTER SET latin1 DEFAULT NULL,
  `tags` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `slide`
--

CREATE TABLE `slide` (
  `codigo` int(10) UNSIGNED NOT NULL,
  `codigoUsuario` int(10) UNSIGNED NOT NULL,
  `texto` text CHARACTER SET latin1,
  `imagem` varchar(130) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tema`
--

CREATE TABLE `tema` (
  `codigo` int(10) UNSIGNED NOT NULL,
  `codigoUsuario` int(10) UNSIGNED NOT NULL,
  `nome` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `cor1` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `cor2` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `cor3` varchar(10) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `codigo` int(10) UNSIGNED NOT NULL,
  `nome` varchar(120) CHARACTER SET latin1 NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `senha` varchar(130) CHARACTER SET latin1 NOT NULL,
  `foto` varchar(130) CHARACTER SET latin1 DEFAULT NULL,
  `user_permissions` longtext COLLATE utf8_bin NOT NULL,
  `session_id` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Fazendo dump de dados para tabela `usuario`
--

INSERT INTO `usuario` (`codigo`, `nome`, `email`, `senha`, `foto`, `user_permissions`, `session_id`) VALUES
(1, 'Jordão', 'jordao05@hotmail.com', '$2a$08$yifE/ZQyuR8Z7LgZar0TUuBhKBQXwcq6LBS8sbO9Rr66yO9LvpEBm', 'imagem.jpg', 'a:2:{i:0;s:10:"crud-slide";i:1;s:12:"crud-usuario";}', 'kl8ah6pnpl6v65rjr3c92j54c6'),
(2, 'ghsdghj', 'gjhgjkhg', '$2a$08$4e2aeIASfKDKtj9c.BUlqepq2DfIrMw8HB8MeJRuOP8NPEJyyDFoK', 'kjhgkhg', 'a:1:{i:0;s:7:"kjhgkjh";}', '91b4304724cf84f1fd184797c79ad983'),
(3, 'jhfdskjdhh', 'r', '$2a$08$fWrEUa/cZDeZmyLWkFUMS.PgKv.mU/3fQdUm9Iqycf4MLGWn0R19a', 'kjhk', 'a:1:{i:0;s:4:"jhkj";}', 'aaa3199ebfe60fd5765b49a9321ea7d0'),
(4, 'jhfdskjdhh', 'df', '$2a$08$p5GiF7dwfUVytZMaNm3/Y.BXZH0WXCO/424QkM5lsCwM/QmuGUMlK', 'kjhk', 'a:1:{i:0;s:4:"jhkj";}', '16c00eab842a5b09c472bac8bfaaf241'),
(5, 'jhfdskjdhh', 'ssa', '$2a$08$40cR1hAV5XCNHcs1venkjeJf7ZfqMIKrqUFqNiIWfX4L05zfv2gum', 'kjhk', 'a:1:{i:0;s:4:"jhkj";}', '83e453bc76ee13fb861ffacbee7eb883'),
(6, 'jhfdskjdhh', 'ff', '$2a$08$u7NO13SF51QauZLQCbsgHe1vypklgWMLloi9bXgixa5E0o27JSfp2', 'kjhk', 'a:1:{i:0;s:4:"jhkj";}', '6418e7f0e4be4139325f3d7d8acbad37'),
(7, 'jhfdskjdhh', 'kjhkj', '$2a$08$kzAVJK64VHgp4uBPaenMCOU0ZCwpc3GZGzbTj9DlpvVOU/uIb/zGO', 'kjhk', 'a:1:{i:0;s:4:"jhkj";}', '3d8d0c8c61915288e512b12ab83c6292'),
(8, 'nnnkjn', 'gg', '$2a$08$v34nj4JA.6qN8q3qFUVaGOJn2Nr2gOKBpwqCRLckX2W.fUYy8Qbk.', 'sdbjspp', 'a:1:{i:0;s:5:"ooooo";}', 'bc65249a111d48ad83c79c0c61c8c53c'),
(9, 'pppppppp', 'jnkjnjkn', '$2a$08$tn9Im8ojQfaumtLObltu9.XNtoDN.yodV3X/knZXS7LgprvPTFi8.', 'pppppppp', 'a:1:{i:0;s:9:"ppppppppp";}', '06dd50453c79ebf294b7d26596d9a7ef');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `Banner_FKIndex1` (`codigoUsuario`);

--
-- Índices de tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `Contato_FKIndex1` (`codigoUsuario`);

--
-- Índices de tabela `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices de tabela `emails_enviados`
--
ALTER TABLE `emails_enviados`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices de tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `Noticia_FKIndex1` (`codigoUsuario`);

--
-- Índices de tabela `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `Slide_FKIndex1` (`codigoUsuario`);

--
-- Índices de tabela `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `Tema_FKIndex1` (`codigoUsuario`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `banner`
--
ALTER TABLE `banner`
  MODIFY `codigo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `codigo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `email`
--
ALTER TABLE `email`
  MODIFY `codigo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `emails_enviados`
--
ALTER TABLE `emails_enviados`
  MODIFY `codigo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codigo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `slide`
--
ALTER TABLE `slide`
  MODIFY `codigo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `tema`
--
ALTER TABLE `tema`
  MODIFY `codigo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `codigo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `banner`
--
ALTER TABLE `banner`
  ADD CONSTRAINT `banner_ibfk_1` FOREIGN KEY (`codigoUsuario`) REFERENCES `usuario` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `contato`
--
ALTER TABLE `contato`
  ADD CONSTRAINT `contato_ibfk_1` FOREIGN KEY (`codigoUsuario`) REFERENCES `usuario` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codigoUsuario`) REFERENCES `usuario` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `slide`
--
ALTER TABLE `slide`
  ADD CONSTRAINT `slide_ibfk_1` FOREIGN KEY (`codigoUsuario`) REFERENCES `usuario` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `tema`
--
ALTER TABLE `tema`
  ADD CONSTRAINT `tema_ibfk_1` FOREIGN KEY (`codigoUsuario`) REFERENCES `usuario` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
