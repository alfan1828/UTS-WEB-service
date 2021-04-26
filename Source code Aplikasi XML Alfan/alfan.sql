-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2021 at 11:54 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alfan`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `author` varchar(30) NOT NULL,
  `title` varchar(50) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `price` double NOT NULL,
  `publish_date` date NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`author`, `title`, `genre`, `price`, `publish_date`, `description`) VALUES
('Kartini', 'Habis Gelap Terbitlah Terang', 'Perjuangan', 95, '1911-10-01', 'Habis Gelap Terbitlah Terang adalah buku kumpulan surat yang ditulis oleh Kartini. Kumpulan surat tersebut dibukukan oleh J.H. Abendanon dengan judul Door Duisternis Tot Licht. Setelah Kartini wafat, J.H. Abendanon mengumpulkan dan membukukan surat-surat yang pernah dikirimkan R.A Kartini pada teman-temannya di Eropa.'),
('Pidi Baiq', 'Dilan: Dia adalah Dilanku tahun 1990', 'Fiksi', 60, '2014-04-16', 'Dilan: Dia adalah Dilanku tahun 1990 adalah sebuah novel karya Pidi Baiq yang diterbitkan oleh Penerbit Pastel Books. Novel tersebut menjadi buku dengan penjualan terbaik di Gramedia, serta diadaptasi ke dalam sebuah film yang berjudul Dilan 1990..');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
