-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 08, 2023 at 12:21 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jrm_praise`
--

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `id` int(11) NOT NULL,
  `file` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `artist` enum('JRM Praise','Youth For Jesus','Deacon Mugore','Emmanuel Ncube','Wiseman Ncube') NOT NULL DEFAULT 'JRM Praise',
  `download` enum('yes','no') NOT NULL DEFAULT 'yes',
  `date_uploaded` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`id`, `file`, `title`, `artist`, `download`, `date_uploaded`, `date_modified`) VALUES
(1, 'http://localhost/praise/upload/6th-Anniversary-Song.mp3', '6th-Anniversary-Song.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(2, 'http://localhost/praise/upload/7th-Anniversary-Song-Medley.mp3', '7th-Anniversary-Song-Medley.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(3, 'http://localhost/praise/upload/Apostolos.mp3', 'Apostolos.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(4, 'http://localhost/praise/upload/Baba-Vedu-Vakarurama.mp3', 'Baba-Vedu-Vakarurama.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(5, 'http://localhost/praise/upload/Blow-The-Trumpet.mp3', 'Blow-The-Trumpet.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(6, 'http://localhost/praise/upload/Chineke-(You-Are-Good-To-Me).mp3', 'Chineke-(You-Are-Good-To-Me).mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(7, 'http://localhost/praise/upload/Excellent.mp3', 'Excellent.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(8, 'http://localhost/praise/upload/Faithful.mp3', 'Faithful.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(9, 'http://localhost/praise/upload/Gwayana.mp3', 'Gwayana.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(10, 'http://localhost/praise/upload/Hakuna-Mumwe.mp3', 'Hakuna-Mumwe.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(11, 'http://localhost/praise/upload/Honai-Kubata-Kwake.mp3', 'Honai-Kubata-Kwake.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(12, 'http://localhost/praise/upload/Ineropa.mp3', 'Ineropa.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(13, 'http://localhost/praise/upload/Inyaya-yeMuridzi.mp3', 'Inyaya-yeMuridzi.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(14, 'http://localhost/praise/upload/Inzwai-Kupupura-Kwangu.mp3', 'Inzwai-Kupupura-Kwangu.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(15, 'http://localhost/praise/upload/Jesu-Anotida-(JRM-Gogos).mp3', 'Jesu-Anotida-(JRM-Gogos).mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(16, 'http://localhost/praise/upload/Kristu-Ishe-Wedu.mp3', 'Kristu-Ishe-Wedu.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(17, 'http://localhost/praise/upload/Kristu-Tinokutenda.mp3', 'Kristu-Tinokutenda.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(18, 'http://localhost/praise/upload/Kunaka-Kwerudo-Rwenyu.mp3', 'Kunaka-Kwerudo-Rwenyu.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(19, 'http://localhost/praise/upload/Kuponeswa-Kwangu.mp3', 'Kuponeswa-Kwangu.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(20, 'http://localhost/praise/upload/Lord-We-Love-You.mp3', 'Lord-We-Love-You.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(21, 'http://localhost/praise/upload/Makanaka-Kristu.mp3', 'Makanaka-Kristu.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(22, 'http://localhost/praise/upload/Makanaka.mp3', 'Makanaka.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(23, 'http://localhost/praise/upload/Makarurama.mp3', 'Makarurama.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(24, 'http://localhost/praise/upload/Makore-Mapfumbamwe.mp3', 'Makore-Mapfumbamwe.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(25, 'http://localhost/praise/upload/Makore-Mapfumbanwe-Tinotenda.mp3', 'Makore-Mapfumbanwe-Tinotenda.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(26, 'http://localhost/praise/upload/Makore-Masere.mp3', 'Makore-Masere.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(27, 'http://localhost/praise/upload/Makorokoto-(9th-anniversary).mp3', 'Makorokoto-(9th-anniversary).mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(28, 'http://localhost/praise/upload/Matinzwira-Nyasha.mp3', 'Matinzwira-Nyasha.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(29, 'http://localhost/praise/upload/Matipa-Rugare.mp3', 'Matipa-Rugare.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(30, 'http://localhost/praise/upload/Matipa-Shoko.mp3', 'Matipa-Shoko.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(31, 'http://localhost/praise/upload/Mbiri-Yose.mp3', 'Mbiri-Yose.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(32, 'http://localhost/praise/upload/Messiah-Ndovimba-Nemi.mp3', 'Messiah-Ndovimba-Nemi.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(33, 'http://localhost/praise/upload/My-Lord-Jesus.mp3', 'My-Lord-Jesus.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(34, 'http://localhost/praise/upload/Ndakagamuchira.mp3', 'Ndakagamuchira.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(35, 'http://localhost/praise/upload/NdirikuLodebar-Hapana-Ayizondiona-(10th-Anniversary).mp3', 'NdirikuLodebar-Hapana-Ayizondiona-(10th-Anniversary).mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(36, 'http://localhost/praise/upload/Ngaarumbidzwe.mp3', 'Ngaarumbidzwe.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(37, 'http://localhost/praise/upload/Ngarivongwe.mp3', 'Ngarivongwe.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(38, 'http://localhost/praise/upload/Nhasi.mp3', 'Nhasi.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(39, 'http://localhost/praise/upload/Ombera-Kristu.mp3', 'Ombera-Kristu.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(40, 'http://localhost/praise/upload/Rudo-Rwenyu.mp3', 'Rudo-Rwenyu.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(41, 'http://localhost/praise/upload/Shoko-Renyu-Hupenyu.mp3', 'Shoko-Renyu-Hupenyu.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(42, 'http://localhost/praise/upload/Shoko-Renyu-Randipa.mp3', 'Shoko-Renyu-Randipa.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(43, 'http://localhost/praise/upload/Takadiwa.mp3', 'Takadiwa.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(44, 'http://localhost/praise/upload/Tine-Mhembero.mp3', 'Tine-Mhembero.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(45, 'http://localhost/praise/upload/Tinonamata.mp3', 'Tinonamata.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(46, 'http://localhost/praise/upload/Tinorumbidza-Messiah.mp3', 'Tinorumbidza-Messiah.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(47, 'http://localhost/praise/upload/Tinorumbidza-Tinokutendai.mp3', 'Tinorumbidza-Tinokutendai.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(48, 'http://localhost/praise/upload/Tomurumbidza-Baba.mp3', 'Tomurumbidza-Baba.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(49, 'http://localhost/praise/upload/Vana-vaMweya.mp3', 'Vana-vaMweya.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(50, 'http://localhost/praise/upload/Vhangeri-Ye-Mwanakomana.mp3', 'Vhangeri-Ye-Mwanakomana.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(51, 'http://localhost/praise/upload/We-Sing-Hosanna-(7th-Anniversary).mp3', 'We-Sing-Hosanna-(7th-Anniversary).mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(52, 'http://localhost/praise/upload/We-Sing-Hossana.mp3', 'We-Sing-Hossana.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(53, 'http://localhost/praise/upload/We-Worship-You.mp3', 'We-Worship-You.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00'),
(54, 'http://localhost/praise/upload/Ziklag-nderaDavid.mp3', 'Ziklag-nderaDavid.mp3', 'JRM Praise', 'yes', '2023-11-05 10:02:00', '2023-11-05 10:02:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `song`
--
ALTER TABLE `song`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
