-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 12, 2024 at 11:02 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int NOT NULL,
  `nama` varchar(40) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `password`) VALUES
(1, 'Ilham Munawar', 'ilham', 'ilham'),
(3, 'Munawar', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id_checkout` int NOT NULL,
  `id_pasien` int NOT NULL,
  `nama_pasien` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jenis_kelamin` char(10) NOT NULL,
  `umur` varchar(10) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `kontak` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `keluhan` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `nama_dokter` varchar(40) NOT NULL,
  `no_ruangan` int NOT NULL,
  `nama_ruangan` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tipe_ruangan` varchar(30) NOT NULL,
  `harga_ruangan` text NOT NULL,
  `biaya_pengobatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `total` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id_checkout`, `id_pasien`, `nama_pasien`, `jenis_kelamin`, `umur`, `tanggal_lahir`, `kontak`, `alamat`, `keluhan`, `tanggal_masuk`, `tanggal_keluar`, `nama_dokter`, `no_ruangan`, `nama_ruangan`, `tipe_ruangan`, `harga_ruangan`, `biaya_pengobatan`, `total`) VALUES
(1, 1, 'Ilhamm', 'Perempuan', '18', '2024-01-25', '1321', 'ada', 'Demam', '2024-05-12', '2024-05-12', 'Ilham Munawar', 1, 'Cempaka', 'Kelas 1', '300000', '2', '300002'),
(2, 2, 'Munawar Ilham', 'Laki-laki', '123', '2024-05-11', '132', 'asdsa', 'TBC', '2024-05-12', '2024-05-12', 'Ilham Munawar', 1, 'Cempaka', 'Kelas 1', '300000', '211', '300211'),
(3, 1, 'Ilhamm', 'Perempuan', '18', '2024-01-25', '1321', 'ada', 'Demam', '2024-05-12', '2024-05-12', 'Ilham Munawar', 1, 'Cempaka', 'Kelas 1', '300000', '2100', '302100');

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int NOT NULL,
  `nama_dokter` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jenis_kelamin` char(10) NOT NULL,
  `spesialis` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gaji` text NOT NULL,
  `kontak` varchar(30) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama_dokter`, `jenis_kelamin`, `spesialis`, `gaji`, `kontak`, `alamat`) VALUES
(1, 'Ilham Munawar', 'Laki-laki', 'Psikolog Klinis', '200000', '081312535358', 'Pameungpeuk, Kab. Garut');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int NOT NULL,
  `nama_pasien` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jenis_kelamin` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `umur` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `kontak` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `keluhan` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `no_ruangan` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `jenis_kelamin`, `umur`, `tanggal_lahir`, `kontak`, `alamat`, `keluhan`, `no_ruangan`) VALUES
(1, 'Ilhamm', 'Perempuan', '18', '2024-01-25', '1321', 'ada', 'Demam', 1),
(2, 'Munawar Ilham', 'Laki-laki', '123', '2024-05-11', '132', 'asdsaaaaa', 'TBC', 3),
(3, 'lham Madasada', 'Laki-laki', '21', '2024-05-12', '22', 'asdas', 'asd', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `no_ruangan` int NOT NULL,
  `nama_ruangan` varchar(40) NOT NULL,
  `tipe_ruangan` varchar(40) NOT NULL,
  `harga_ruangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`no_ruangan`, `nama_ruangan`, `tipe_ruangan`, `harga_ruangan`) VALUES
(1, 'Cempaka', 'Kelas 1', '300000'),
(2, 'Flamboyan', 'Kelas 2', '500000'),
(3, 'Rajawali', 'Kelas 3', '800000'),
(4, 'Mawar', 'VIP', '1000000'),
(5, 'Anggrek', 'VVIP', '2000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id_checkout`),
  ADD KEY `FK_id_pasien` (`id_pasien`),
  ADD KEY `FK_noruangan` (`no_ruangan`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`),
  ADD KEY `Fk_no_ruangan` (`no_ruangan`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`no_ruangan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id_checkout` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id_dokter` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `no_ruangan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `checkout`
--
ALTER TABLE `checkout`
  ADD CONSTRAINT `FK_id_pasien` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_noruangan` FOREIGN KEY (`no_ruangan`) REFERENCES `ruangan` (`no_ruangan`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `pasien`
--
ALTER TABLE `pasien`
  ADD CONSTRAINT `Fk_no_ruangan` FOREIGN KEY (`no_ruangan`) REFERENCES `ruangan` (`no_ruangan`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
