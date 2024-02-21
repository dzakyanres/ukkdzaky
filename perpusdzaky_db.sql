-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 08:25 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpusdzaky_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `BukuID` varchar(3) NOT NULL,
  `Judul` varchar(50) NOT NULL,
  `Penulis` varchar(50) NOT NULL,
  `Penerbit` varchar(20) NOT NULL,
  `TahunTerbit` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`BukuID`, `Judul`, `Penulis`, `Penerbit`, `TahunTerbit`) VALUES
('551', 'Resign', 'Almira Bastari', 'Gramedia', '2022'),
('552', 'Antologi Rasa', 'Ika Natassa', 'Gramedia', '2021'),
('553', 'Laut Bercerita', 'Leila S.', 'Gramedia', '2023'),
('554', 'Pelabuhan Terakhir', 'Roidah', 'Erlangga', '2022'),
('555', 'Berwisata ke Surga', 'Restu Fitria', 'Erlangga', '2023'),
('556', 'anjay', 'anjay', 'anjay', '2005'),
('557', 'wwwwww', 'wwwwww', 'wwwwww', '2007'),
('558', 'ga', 'rgewqr', 'gfshsd', '2222');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `PeminjamanID` varchar(3) NOT NULL,
  `UserID` varchar(4) NOT NULL,
  `BukuID` varchar(3) NOT NULL,
  `TanggalPeminjaman` date NOT NULL,
  `TanggalPengembalian` date NOT NULL,
  `StatusPeminjaman` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`PeminjamanID`, `UserID`, `BukuID`, `TanggalPeminjaman`, `TanggalPengembalian`, `StatusPeminjaman`) VALUES
('201', '1011', '553', '0000-00-00', '0000-00-00', 'Kembali'),
('202', '1013', '553', '0000-00-00', '0000-00-00', 'Kembali'),
('203', '1011', '551', '0000-00-00', '0000-00-00', 'Kembali'),
('204', '1015', '552', '0000-00-00', '0000-00-00', 'Kembali'),
('205', '1015', '555', '0000-00-00', '0000-00-00', 'Belum Kemba');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `nama` varchar(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `PetugasID` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`nama`, `username`, `password`, `PetugasID`) VALUES
('dzaky', 'dzaky', 'dzaky', 'P01');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` varchar(4) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `NamaLengkap` varchar(50) NOT NULL,
  `Alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `Email`, `NamaLengkap`, `Alamat`) VALUES
('1011', 'titi@gmail.com', 'Titi Padmasari', 'Jl. Mirama Bandung'),
('1012', 'rosi@gmail.com', 'Rosiana ', 'Jl. S. Parman Malang'),
('1013', 'arima@gmail.com', 'Arima Nanda', 'Jl. Bunga Cengkeh Malang'),
('1014', 'davin@gmail.com', 'Davin Nugroho', 'Komplek AU Singosari Malang'),
('1015', 'kemal@gmail.com', 'Kemal Airlangga', 'Jl. Intan Surabaya'),
('1016', 'dzaky@gmail.com', 'Dzaky Ananda', 'Jl. jalan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`BukuID`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`PeminjamanID`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`PetugasID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
