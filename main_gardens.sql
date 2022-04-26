-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Abr-2022 às 01:04
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `main_gardens`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(11) NOT NULL,
  `id_service` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date` varchar(40) NOT NULL,
  `address` varchar(120) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `booking`
--

INSERT INTO `booking` (`id_booking`, `id_service`, `id_user`, `date`, `address`, `status`) VALUES
(7, 2, 21, '2022-04-12', 'rua das flores', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `services`
--

CREATE TABLE `services` (
  `id_service` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `photo` varchar(250) NOT NULL,
  `description` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `services`
--

INSERT INTO `services` (`id_service`, `title`, `cost`, `photo`, `description`) VALUES
(1, 'Garden Maintenance', '20.00', '1.png', 'Gardeners with experience like our team are able to  cope with all the tasks needed to keep a garden under control – including weeding, grass cutting'),
(2, 'Lawn Care', '45.00', 'service1.jpg', 'Is the proper maintenance of yards and other green spaces where grass, trees and living plants grow. Total lawn care incorporates such treatments as weed control, lawn fertilizing, and core aeration for complete yard care. '),
(3, 'Tree and Pressure Washing ', '75.99', 'service2.jpg', 'The use of high-pressure water to remove loose paint, mold, algae, grime, dust, muck, chewing gum, and dirt off surfaces and objects such as buildings, fences, masonry, some automobiles, and concrete or asphalt surfaces such as driveways or patios is known as pressure washing or power washing'),
(4, 'Landscaping ', '200.00', 'service2.jpg', 'Landscaping refers to any activity that modifies the visible features of an area of land, including the following: Living elements, such as flora or fauna; or what is commonly called gardening, the art and craft of growing plants with a goal of creating a beauty within the landscape.'),
(5, 'Bush', '35.00', 'service3.jpg', 'Topiary is the horticultural practice of training perennial plants by clipping the foliage and twigs of trees, shrubs and subshrubs to develop and maintain clearly defined shapes, whether geometric or fanciful. We use scissors designed for use in the garden, which you can use when cutting flowers or dead heading plants with thinner stems.'),
(11, 'All Package', '250.00', '11.png', 'Everything of the above is included with a nice little butget for biggers companies and individuals.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `genre` varchar(3) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(120) NOT NULL,
  `postal_code` varchar(40) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `birth_day` varchar(40) NOT NULL,
  `image` varchar(250) NOT NULL,
  `password` varchar(30) NOT NULL,
  `permission` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id_user`, `first_name`, `last_name`, `genre`, `email`, `address`, `postal_code`, `phone_number`, `birth_day`, `image`, `password`, `permission`) VALUES
(16, 'Rodrigo', 'Marques', 'M', 'rodrigomarques@gmail.com', 'Uxbridge roud 67', '2560-576', '+447444092286', '2022-04-26', '16.png', '12345', 'Admin'),
(18, 'Rodrigo', 'Marques', 'M', 'rodrigomarques@gmail.com', 'Uxbridge roud 30', '2560-555', '+447444092286', '2022-04-26', '18.png', '12345', 'Admin'),
(21, 'Rafaela', 'Marques', 'M', 'manarafaela@gmail.com', 'Rua António Franco nº 6', '2560-008', '+351914786819', '2022-04-26', '21.png', '12345', 'Admin');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Índices para tabela `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id_service`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `booking`
--
ALTER TABLE `booking`
  MODIFY `id_booking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `services`
--
ALTER TABLE `services`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
