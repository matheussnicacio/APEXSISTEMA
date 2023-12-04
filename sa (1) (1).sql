-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 29-Nov-2023 às 00:58
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `nm_nome` varchar(40) NOT NULL,
  `ds_email` varchar(100) DEFAULT NULL,
  `ds_senha` varchar(10) DEFAULT NULL,
  `ds_idade` int(11) DEFAULT NULL,
  `ds_sexo` varchar(10) NOT NULL,
  `ds_altura` int(11) DEFAULT NULL,
  `ds_peso` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `treinos`
--

CREATE TABLE `treinos` (
  `id_treino` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` text DEFAULT NULL,
  `data` varchar(10) DEFAULT NULL,
  `exercicios` varchar(250) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `treinos`
--

INSERT INTO `treinos` (`id_treino`, `titulo`, `descricao`, `data`, `exercicios`, `iduser`) VALUES
(3, 'ssfsdf', 'dfdsfsf', NULL, NULL, 3),
(4, 'ds', 'sfsdfs', NULL, NULL, NULL),
(5, 'fsdf', 'sfds', NULL, NULL, NULL),
(6, 'fsd', 'fsfsdfdsf', NULL, NULL, NULL),
(7, 'aaaaa', 'aaaaa', NULL, NULL, NULL),
(8, 'fsdfsdfsdfgdfpoi', 'popio', NULL, NULL, NULL),
(9, 'grg', 'dfgdfgdfg', NULL, NULL, NULL),
(10, 'fsdfsdfsdfgdf', 'cdsfdsf', NULL, NULL, NULL),
(11, 'oio', 'oppo´p', NULL, NULL, NULL),
(12, 'DSADSA', 'ASDSADS', NULL, NULL, NULL),
(13, 'DSADSA', 'ASDSADS', NULL, NULL, NULL),
(14, 'DSADSA', 'ASDSADS', NULL, NULL, NULL),
(15, 'marcelo', 'aaaa', NULL, NULL, NULL),
(16, 'andre', 'ssss', NULL, NULL, NULL),
(17, 'bbb', 'bbb', NULL, NULL, NULL),
(18, 'sg', 'dfgf', NULL, NULL, NULL),
(19, 'fgdf', 'fdgfdgdfg', NULL, NULL, NULL),
(20, 'aaa', 'aaa', NULL, NULL, NULL),
(21, 'gg', 'ggg', NULL, NULL, NULL),
(22, 'sss', 'ss', NULL, NULL, NULL),
(23, 'lll', 'lll', NULL, NULL, NULL),
(24, 'aaa', 'aaa', NULL, NULL, NULL),
(25, 'aaa', 'aaa', NULL, NULL, 8),
(26, 'lll', 'lll', NULL, NULL, 8),
(27, 'aaa', 'aaa', NULL, NULL, 3),
(28, 'aa', 'aa', NULL, NULL, 3),
(29, 'aaaaaa', 'hhghghghg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `treinos_exercicios`
--

CREATE TABLE `treinos_exercicios` (
  `id_exercicio` int(11) NOT NULL,
  `rotina_id` int(11) DEFAULT NULL,
  `nome_exercicio` varchar(255) NOT NULL,
  `series` int(11) NOT NULL,
  `repeticoes` int(11) NOT NULL,
  `iduser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `treinos_exercicios`
--

INSERT INTO `treinos_exercicios` (`id_exercicio`, `rotina_id`, `nome_exercicio`, `series`, `repeticoes`, `iduser`) VALUES
(1, 6, 'dasds', 1212, 2121, 2),
(2, 9, 'gdfgfd', 3123, 323, 2),
(3, 10, 'fdsfds', 21, 321, NULL),
(4, 11, 'tfughjklç', 32, 32, NULL),
(5, 14, '1313', 3213, 3213, 2),
(6, 15, 'aaa', 121, 21, 4),
(7, 16, 'sss', 12, 3232, 6),
(8, 17, 'bbb', 22, 33, 7),
(9, 29, 'ghghg', 32, 323, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `treinos_has_user_form`
--

CREATE TABLE `treinos_has_user_form` (
  `idtreinos_has_user` int(11) NOT NULL,
  `id_treino` int(11) NOT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `treinos_has_user_form`
--

INSERT INTO `treinos_has_user_form` (`idtreinos_has_user`, `id_treino`, `iduser`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_form`
--

CREATE TABLE `user_form` (
  `iduser` int(11) NOT NULL,
  `nome_cli` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `user_form`
--

INSERT INTO `user_form` (`iduser`, `nome_cli`, `email`, `password`, `image`) VALUES
(2, '', 'matheus@gmail.com', '5ac828307c4aead9e5af2d3e93566913', ''),
(3, '', 'matheus@gmail.com', '45339359513f09155110f63f7ca91c3e', ''),
(4, '', 'marcelo@gmail.com', '995bf053c4694e1e353cfd42b94e4447', ''),
(5, '', 'aaa@aaa', '47bce5c74f589f4867dbd57e9ca9f808', ''),
(6, 'andre', 'andre@gmail.com', '19984dcaea13176bbb694f62ba6b5b35', ''),
(7, 'bbb', 'bbb@bbb', '08f8e0260c64418510cefb2b06eee5cd', 'Cristiano_Ronaldo_2022-23.jpg'),
(8, 'lll', 'lll@lll', 'bf083d4ab960620b645557217dd59a49', 'logo.png');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices para tabela `treinos`
--
ALTER TABLE `treinos`
  ADD PRIMARY KEY (`id_treino`);

--
-- Índices para tabela `treinos_exercicios`
--
ALTER TABLE `treinos_exercicios`
  ADD PRIMARY KEY (`id_exercicio`),
  ADD KEY `rotina_id` (`rotina_id`);

--
-- Índices para tabela `treinos_has_user_form`
--
ALTER TABLE `treinos_has_user_form`
  ADD PRIMARY KEY (`idtreinos_has_user`),
  ADD KEY `fk_treinos_has_user_form_user_form1_idx` (`iduser`),
  ADD KEY `fk_treinos_has_user_form_treinos1_idx` (`id_treino`);

--
-- Índices para tabela `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `id_usuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `treinos`
--
ALTER TABLE `treinos`
  MODIFY `id_treino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `treinos_exercicios`
--
ALTER TABLE `treinos_exercicios`
  MODIFY `id_exercicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `treinos_has_user_form`
--
ALTER TABLE `treinos_has_user_form`
  MODIFY `idtreinos_has_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `user_form`
--
ALTER TABLE `user_form`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `treinos_exercicios`
--
ALTER TABLE `treinos_exercicios`
  ADD CONSTRAINT `treinos_exercicios_ibfk_1` FOREIGN KEY (`rotina_id`) REFERENCES `treinos` (`id_treino`);

--
-- Limitadores para a tabela `treinos_has_user_form`
--
ALTER TABLE `treinos_has_user_form`
  ADD CONSTRAINT `fk_treinos_has_user_form_treinos1` FOREIGN KEY (`id_treino`) REFERENCES `treinos` (`id_treino`),
  ADD CONSTRAINT `fk_treinos_has_user_form_user_form1` FOREIGN KEY (`iduser`) REFERENCES `user_form` (`iduser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
