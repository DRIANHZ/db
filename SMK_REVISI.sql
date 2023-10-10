-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 10, 2023 at 10:40 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SMK_REVISI`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(2) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `jurusan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `kelas`, `jurusan`) VALUES
(1, '10', 'pplg 1'),
(2, '10', 'pplg 2'),
(3, '11', 'rpl 1'),
(4, '11', 'rpl 2'),
(5, '12', 'rpl');

-- --------------------------------------------------------

--
-- Table structure for table `tb_smk_revisi`
--

CREATE TABLE `tb_smk_revisi` (
  `nama` varchar(55) NOT NULL,
  `nis` int(5) NOT NULL,
  `kelamin` varchar(10) NOT NULL,
  `umur` int(2) NOT NULL,
  `id_kelas` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_smk_revisi`
--

INSERT INTO `tb_smk_revisi` (`nama`, `nis`, `kelamin`, `umur`, `id_kelas`) VALUES
('fauzan', 1, 'laki-laki', 15, 1),
('vika', 2, 'perempuan', 14, 1),
('caca', 4, 'perempuan', 15, 1),
('dea', 6, 'perempuan', 14, 2),
('rika', 7, 'perempuan', 15, 2),
('sasa', 12, 'perempuan', 15, 4),
('yaya', 17, 'perempuan', 17, 4),
('sina', 19, 'perempuan', 16, 3),
('sza', 22, 'perempuan', 17, 3),
('fuso', 27, 'laki-laki', 17, 4),
('drian', 33, 'laki-laki', 16, 3),
('ariana', 41, 'perempuan', 15, 1),
('dina', 55, 'perempuan', 16, 2),
('gaga', 72, 'laki-laki', 16, 2),
('dede', 76, 'laki-laki', 17, 3),
('zaza', 83, 'perempuan', 17, 3),
('sxa', 90, 'laki-laki', 100, 1),
('rika', 94, 'perempuan', 15, 2),
('nayla', 99, 'perempuan', 15, 2),
('xaxa', 997, 'laki-laki', 17, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tb_smk_revisi`
--
ALTER TABLE `tb_smk_revisi`
  ADD PRIMARY KEY (`nis`),
  ADD KEY `id_kelas_2` (`id_kelas`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_smk_revisi`
--
ALTER TABLE `tb_smk_revisi`
  ADD CONSTRAINT `tb_smk_revisi_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`id_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
