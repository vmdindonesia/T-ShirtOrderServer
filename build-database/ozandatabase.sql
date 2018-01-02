-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 20 Des 2017 pada 16.59
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ozandatabase`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `AccessToken`
--

--
-- Struktur dari tabel `OzanLibrary`
--

CREATE TABLE `OzanLibrary` (
  `id` int(11) NOT NULL,
  `idOrder` int(11) NOT NULL,
  `nameFile` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `OzanLibrary`
--

INSERT INTO `OzanLibrary` (`id`, `idOrder`, `nameFile`) VALUES
(10, 8, 'IMG_9c707896-fe9d-d1ce-59dc-7bd1c0fcc176.jpg'),
(11, 8, 'IMG_9a65c7c8-ec87-8c4d-999e-af0216211721.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `OzanMenuList`
--

CREATE TABLE `OzanMenuList` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `component` varchar(30) NOT NULL,
  `icons` varchar(15) NOT NULL,
  `roleUser` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `OzanMenuList`
--

INSERT INTO `OzanMenuList` (`id`, `title`, `component`, `icons`, `roleUser`) VALUES
(1, 'Dashboard', 'HomePage', 'md-home', 'user'),
(2, 'Dashboard', 'HomePage', 'md-home', 'admin'),
(3, 'Dashboard', 'HomePage', 'md-home', 'management'),
(4, 'Order Online', 'OrderPage', 'md-cart', 'user'),
(5, 'History Order', 'OrderdetailPage', 'md-list-box', 'user'),
(6, 'Report Order', 'ReportorderPage', 'md-print', 'management'),
(7, 'Manage Order', 'ManageOrderPage', 'md-clock', 'admin'),
(8, 'Member', 'MemberListPage', 'md-list-box', 'admin'),
(9, 'Status Order', 'StatusOrderPage', 'md-print', 'management');

-- --------------------------------------------------------

--
-- Struktur dari tabel `OzanOrder`
--

CREATE TABLE `OzanOrder` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `orderDate` datetime NOT NULL,
  `buyerName` varchar(50) NOT NULL,
  `companyName` varchar(50) NOT NULL,
  `address` varchar(225) NOT NULL,
  `shippedTo` varchar(50) NOT NULL,
  `invoiceTo` varchar(50) NOT NULL,
  `vendorName` varchar(50) NOT NULL,
  `trackingNo` varchar(20) NOT NULL,
  `deliveryDate` datetime NOT NULL,
  `amount` float NOT NULL,
  `totalAmount` float NOT NULL,
  `confirmTo` varchar(50) NOT NULL,
  `productionStatus` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `OzanOrder`
--

INSERT INTO `OzanOrder` (`id`, `userId`, `orderDate`, `buyerName`, `companyName`, `address`, `shippedTo`, `invoiceTo`, `vendorName`, `trackingNo`, `deliveryDate`, `amount`, `totalAmount`, `confirmTo`, `productionStatus`, `status`) VALUES
(8, 3, '0000-00-00 00:00:00', 'Muhammad Fauzan', 'asd', 'asd', 'asd', '', '', '', '0000-00-00 00:00:00', 0, 0, '-', 1, 1),
(9, 3, '0000-00-00 00:00:00', 'Muhammad Fauzan', 'hbhh', 'hhhh', 'hhh', '', '', '', '0000-00-00 00:00:00', 0, 0, '-', 1, 1),
(10, 0, '0000-00-00 00:00:00', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 0, 0, '', 0, 0),
(11, 3, '0000-00-00 00:00:00', 'Muhammad Fauzan', 'ok', 'oko', 'kok', '', '', '', '0000-00-00 00:00:00', 0, 0, '-', 1, 1),
(12, 3, '0000-00-00 00:00:00', 'Muhammad Fauzan', 'ppp', 'ppp', 'ppp', '', '', '', '0000-00-00 00:00:00', 0, 0, '-', 1, 1),
(13, 3, '0000-00-00 00:00:00', 'Muhammad Fauzan', 'kk', 'kk', 'kkk', '', '', '', '0000-00-00 00:00:00', 0, 0, '-', 1, 1),
(14, 3, '0000-00-00 00:00:00', 'Muhammad Fauzan', 'yyy', 'yy', 'yy', '', '', '', '0000-00-00 00:00:00', 0, 0, '-', 1, 1),
(15, 3, '0000-00-00 00:00:00', 'Muhammad Fauzan', 'iji', 'ji', 'jiji', '', '', '', '0000-00-00 00:00:00', 0, 0, '-', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `OzanOrderProduct`
--

CREATE TABLE `OzanOrderProduct` (
  `id` int(11) NOT NULL,
  `idOrder` int(11) NOT NULL,
  `descriptionOrder` varchar(225) NOT NULL,
  `sizeOrder` varchar(5) NOT NULL,
  `qtyOrder` int(11) NOT NULL,
  `unitPrice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `OzanOrderProduct`
--

INSERT INTO `OzanOrderProduct` (`id`, `idOrder`, `descriptionOrder`, `sizeOrder`, `qtyOrder`, `unitPrice`) VALUES
(12, 8, 'asd', '', 123, 123),
(13, 8, 'asd', '', 123, 123),
(14, 0, 'yyy', '', 88, 88),
(15, 0, 'ii', '', 999, 99);

-- --------------------------------------------------------

--
-- Struktur dari tabel `OzanUserCredential`
--

CREATE TABLE `OzanUserCredential` (
  `id` int(11) NOT NULL,
  `realm` varchar(100) NOT NULL,
  `address` varchar(225) NOT NULL,
  `phoneNumber` int(20) NOT NULL,
  `jobPosition` varchar(50) NOT NULL,
  `corporateName` varchar(50) NOT NULL,
  `corporatePhoneNumber` int(20) NOT NULL,
  `emailCorporate` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(512) NOT NULL,
  `email` varchar(100) NOT NULL,
  `emailVerified` varchar(10) NOT NULL,
  `roleUser` varchar(20) NOT NULL,
  `verificationToken` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `OzanUserCredential`
--

INSERT INTO `OzanUserCredential` (`id`, `realm`, `address`, `phoneNumber`, `jobPosition`, `corporateName`, `corporatePhoneNumber`, `emailCorporate`, `username`, `password`, `email`, `emailVerified`, `roleUser`, `verificationToken`) VALUES
(3, 'Muhammad Fauzan', 'Jakarta', 2147483647, 'Mahasiswa', 'PT. Putra Sukses Gemilang', 2147483647, 'psg@gmail.com', 'ozan', '$2a$10$aglhrAU1f9p3nVWGwIirHuVAUf1GsmWwCgzGFsBH5sW4rgSCjWShe', 'ozan@gmail.com', 'true', 'user', ''),
(4, 'Management', 'Jakarta', 2147483647, 'Manager', 'PT. Putra Sukses Gemilang', 2147483647, 'psg@gmail.com', 'management', '$2a$10$8ldqPrK0EprTzglt8lpkCeqPXyiEwaplKwlrlv5T5npRZPlbvOv36', 'management@gmail.com', 'true', 'management', ''),
(5, 'Admin', 'Jakarta', 2147483647, 'Admin', 'PT. Putera Sukses Gemilang', 2147483647, 'admin@gmail.com', 'admin', '$2a$10$PYEU1RqCwUQgcCkIMUzMk.Mt30IMyAfaZX1MoNUr7sCVlxeTBZWJi', 'admin@gmail.com', 'true', 'admin', '');

-- --------------------------------------------------------

--
-- Indexes for table `OzanLibrary`
--
ALTER TABLE `OzanLibrary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `OzanMenuList`
--
ALTER TABLE `OzanMenuList`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `OzanOrder`
--
ALTER TABLE `OzanOrder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `OzanOrderProduct`
--
ALTER TABLE `OzanOrderProduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `OzanUserCredential`
--
ALTER TABLE `OzanUserCredential`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `OzanLibrary`
--
ALTER TABLE `OzanLibrary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `OzanMenuList`
--
ALTER TABLE `OzanMenuList`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `OzanOrder`
--
ALTER TABLE `OzanOrder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `OzanOrderProduct`
--
ALTER TABLE `OzanOrderProduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `OzanUserCredential`
--
ALTER TABLE `OzanUserCredential`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
