-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 26 Jan 2018 pada 05.11
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

CREATE TABLE `AccessToken` (
  `id` varchar(255) NOT NULL,
  `ttl` int(11) DEFAULT NULL,
  `scopes` text,
  `created` datetime DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `AccessToken`
--

INSERT INTO `AccessToken` (`id`, `ttl`, `scopes`, `created`, `userId`) VALUES
('PK06MOMjkayDBYP50nw7SzSX40s1OpCDwcA3ftWnejZc1lYXOy6yHLlPtJojEXXh', 1209600, NULL, '2018-01-25 15:19:09', 5),
('PwpjYhyK4eAIAHL519Jx9AwQ1hZaeSt5S8lnQMTmfhbLpz9xZlik08h0NnMWcSSX', 1209600, NULL, '2017-12-21 07:32:31', 3),
('rUI2jQtRDRFq6EBZwthOwWWckualOgNU9XjLBe30twNmWaFgi821TzzpFcUQAefH', 1209600, NULL, '2018-01-25 16:50:21', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ACL`
--

CREATE TABLE `ACL` (
  `id` int(11) NOT NULL,
  `model` varchar(512) DEFAULT NULL,
  `property` varchar(512) DEFAULT NULL,
  `accessType` varchar(512) DEFAULT NULL,
  `permission` varchar(512) DEFAULT NULL,
  `principalType` varchar(512) DEFAULT NULL,
  `principalId` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `OzanLibrary`
--

CREATE TABLE `OzanLibrary` (
  `id` int(11) NOT NULL,
  `idOrder` int(11) NOT NULL,
  `nameFile` varchar(50) NOT NULL,
  `flag` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `OzanLibrary`
--

INSERT INTO `OzanLibrary` (`id`, `idOrder`, `nameFile`, `flag`) VALUES
(34, 48, 'IMG_b1c323ca-8a5f-ce4e-1d4b-e126adc192a6.jpg', 'foto-product'),
(35, 48, 'IMG_b2134db9-c127-808a-5113-bd88fc3e5cf7.jpg', 'foto-product');

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
(8, 'Member', 'MemberListPage', 'md-list-box', 'admin');

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
  `confirmTo` varchar(50) NOT NULL,
  `productionStatus` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `OzanOrder`
--

INSERT INTO `OzanOrder` (`id`, `userId`, `orderDate`, `buyerName`, `companyName`, `address`, `shippedTo`, `invoiceTo`, `vendorName`, `trackingNo`, `deliveryDate`, `confirmTo`, `productionStatus`, `status`) VALUES
(48, 3, '0000-00-00 00:00:00', 'Muhammad Fauzan', 'PT. Putra Sukses Gemilang', 'Jakarta', 'Jakarta', '-', '-', '-', '0000-00-00 00:00:00', '-', 1, 1);

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
  `amount` float NOT NULL,
  `totalAmount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `OzanOrderProduct`
--

INSERT INTO `OzanOrderProduct` (`id`, `idOrder`, `descriptionOrder`, `sizeOrder`, `qtyOrder`, `amount`, `totalAmount`) VALUES
(38, 48, 'Seragam Pria', 'S', 123, 15000, 1845000),
(39, 48, 'Celana Pria', 'XL', 123, 10000, 1230000);

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
-- Struktur dari tabel `Role`
--

CREATE TABLE `Role` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `RoleMapping`
--

CREATE TABLE `RoleMapping` (
  `id` int(11) NOT NULL,
  `principalType` varchar(512) DEFAULT NULL,
  `principalId` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `realm` varchar(512) DEFAULT NULL,
  `username` varchar(512) DEFAULT NULL,
  `password` varchar(512) NOT NULL,
  `email` varchar(512) NOT NULL,
  `emailVerified` tinyint(1) DEFAULT NULL,
  `verificationToken` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AccessToken`
--
ALTER TABLE `AccessToken`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ACL`
--
ALTER TABLE `ACL`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `RoleMapping`
--
ALTER TABLE `RoleMapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `principalId` (`principalId`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ACL`
--
ALTER TABLE `ACL`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `OzanLibrary`
--
ALTER TABLE `OzanLibrary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `OzanMenuList`
--
ALTER TABLE `OzanMenuList`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `OzanOrder`
--
ALTER TABLE `OzanOrder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `OzanOrderProduct`
--
ALTER TABLE `OzanOrderProduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `OzanUserCredential`
--
ALTER TABLE `OzanUserCredential`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Role`
--
ALTER TABLE `Role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `RoleMapping`
--
ALTER TABLE `RoleMapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
