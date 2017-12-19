-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19 Des 2017 pada 17.19
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 7.1.7

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
-- Struktur dari tabel `accesstoken`
--

CREATE TABLE `accesstoken` (
  `id` varchar(255) NOT NULL,
  `ttl` int(11) DEFAULT NULL,
  `scopes` text,
  `created` datetime DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `accesstoken`
--

INSERT INTO `accesstoken` (`id`, `ttl`, `scopes`, `created`, `userId`) VALUES
('84aPjOaLhQt3oOjOowikThbKJoEcVSiNYMk2xEhYT7KVDkdChU40BxDYbYjDTUBg', 1209600, NULL, '2017-12-19 14:09:41', 3),
('Kny7NETz1m9KbE1IFBDqn5fsOWg3DMJgkEAjBsCVWNItbVxgyqjqtWaABfOFb2za', 1209600, NULL, '2017-12-19 13:28:05', 1),
('zaW5yaiWuwM8ekFmLJAH9sGxVf2YM25N76YCvLKMfxtZsna0oeNxnL5Oizqwcmjf', 1209600, NULL, '2017-12-19 13:59:55', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `acl`
--

CREATE TABLE `acl` (
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
-- Struktur dari tabel `ozanmenucredential`
--

CREATE TABLE `ozanmenucredential` (
  `id` int(11) NOT NULL,
  `title` varchar(512) DEFAULT NULL,
  `component` varchar(512) DEFAULT NULL,
  `icons` varchar(512) DEFAULT NULL,
  `roleUser` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ozanmenucredential`
--

INSERT INTO `ozanmenucredential` (`id`, `title`, `component`, `icons`, `roleUser`) VALUES
(1, 'Dashboard', 'HomePage', 'md-home', 'user'),
(2, 'Order Online', 'OrderPage', 'md-cart', 'user'),
(3, 'History Order', 'OrderdetailPage', 'md-list-box', 'user'),
(4, 'Report Order', 'ReportorderPage', 'md-paper', 'management'),
(5, 'Manage Order', 'ManageOrderPage', 'md-clock', 'admin'),
(6, 'Member', 'MemberListPage', 'md-list-box', 'admin'),
(7, 'Status Order', 'StatusOrderPage', 'md-print', 'management'),
(8, 'Dashboard', 'HomePage', 'md-home', 'admin'),
(9, 'Dashboard', 'HomaPage', 'md-home', 'management');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ozanorder`
--

CREATE TABLE `ozanorder` (
  `id` int(11) NOT NULL,
  `userId` varchar(512) DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL,
  `buyerName` varchar(512) DEFAULT NULL,
  `companyName` varchar(512) DEFAULT NULL,
  `address` varchar(512) DEFAULT NULL,
  `shippedTo` varchar(512) DEFAULT NULL,
  `invoiceTo` varchar(512) DEFAULT NULL,
  `vendorName` varchar(512) DEFAULT NULL,
  `trackingNo` varchar(512) DEFAULT NULL,
  `deliveryDate` datetime DEFAULT NULL,
  `amount` varchar(512) DEFAULT NULL,
  `totalAmount` varchar(512) DEFAULT NULL,
  `confirmTo` varchar(512) DEFAULT NULL,
  `productionStatus` varchar(512) DEFAULT NULL,
  `status` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ozanorderproduct`
--

CREATE TABLE `ozanorderproduct` (
  `id` int(11) NOT NULL,
  `idOrder` varchar(512) DEFAULT NULL,
  `descriptionOrder` varchar(512) DEFAULT NULL,
  `sizeOrder` varchar(512) DEFAULT NULL,
  `QtyOrder` varchar(512) DEFAULT NULL,
  `UnitPrice` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ozanusercredential`
--

CREATE TABLE `ozanusercredential` (
  `id` int(11) NOT NULL,
  `realm` varchar(512) DEFAULT NULL,
  `alamat` varchar(512) DEFAULT NULL,
  `phoneNumber` varchar(512) DEFAULT NULL,
  `jobPosition` varchar(512) DEFAULT NULL,
  `corporateName` varchar(512) DEFAULT NULL,
  `corporatePhoneNumber` varchar(512) DEFAULT NULL,
  `emailCorporate` varchar(512) DEFAULT NULL,
  `username` varchar(512) DEFAULT NULL,
  `password` varchar(512) DEFAULT NULL,
  `email` varchar(512) DEFAULT NULL,
  `emailVerified` varchar(512) DEFAULT NULL,
  `roleUser` varchar(512) DEFAULT NULL,
  `verificationToken` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ozanusercredential`
--

INSERT INTO `ozanusercredential` (`id`, `realm`, `alamat`, `phoneNumber`, `jobPosition`, `corporateName`, `corporatePhoneNumber`, `emailCorporate`, `username`, `password`, `email`, `emailVerified`, `roleUser`, `verificationToken`) VALUES
(1, 'Muhammad Fauzan', 'Srengseng', '08123456789', 'Owner', 'PT Alfa Indonesia', '02123456789', 'alfaind@gmail.com', 'ozan', '$2a$10$xu32QF5foePSNzgCoyAZKOCYGwQCS/XslOQmOGhjUmhotizuKrYgG', 'ozan@gmail.com', 'false', 'user', NULL),
(2, 'Admin', 'Binus', '0898765432', 'admin', 'PT Putra Sukses Gemilang', '099999827', 'PSG@gmail.com', 'admin', '$2a$10$K0sF1EzCx/tWhACxxiPU8efHjkAHphx5kB0ixIUB62tD/AO6aPrV.', 'admin@gmail.com', 'false', 'admin', NULL),
(3, 'Manager', 'Jakarta', '0728379273', 'Manager', 'PT Putra Sukses Gemilang', '0812356748', 'PSG@gmail.com', 'manager', '$2a$10$GUd0m63lor0ZwOqGdSyIAum1E6KMOkkDiya9rZPDnmOr6Dcct13X2', 'Manager@gmail.com', 'false', 'management', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rolemapping`
--

CREATE TABLE `rolemapping` (
  `id` int(11) NOT NULL,
  `principalType` varchar(512) DEFAULT NULL,
  `principalId` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
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
-- Indexes for table `accesstoken`
--
ALTER TABLE `accesstoken`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acl`
--
ALTER TABLE `acl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ozanmenucredential`
--
ALTER TABLE `ozanmenucredential`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ozanorder`
--
ALTER TABLE `ozanorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ozanorderproduct`
--
ALTER TABLE `ozanorderproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ozanusercredential`
--
ALTER TABLE `ozanusercredential`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rolemapping`
--
ALTER TABLE `rolemapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `principalId` (`principalId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acl`
--
ALTER TABLE `acl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ozanmenucredential`
--
ALTER TABLE `ozanmenucredential`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ozanorder`
--
ALTER TABLE `ozanorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ozanorderproduct`
--
ALTER TABLE `ozanorderproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ozanusercredential`
--
ALTER TABLE `ozanusercredential`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rolemapping`
--
ALTER TABLE `rolemapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
