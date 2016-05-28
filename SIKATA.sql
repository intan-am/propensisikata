-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 19, 2016 at 09:50 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SIKATA`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `kelasID` char(4) NOT NULL,
  `tanggal` date NOT NULL,
  `NP` int(11) NOT NULL,
  `presensi` tinyint(1) NOT NULL,
  `keteranan` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`kelasID`, `tanggal`, `NP`, `presensi`, `keteranan`) VALUES
('A01', '2016-02-01', 3, 1, 'yhh'),
('A01', '2016-02-01', 4, 0, 'SAKIT'),
('A01', '2016-02-01', 5, 1, ''),
('A01', '2016-02-01', 6, 0, 'sakit'),
('A01', '2016-02-01', 7, 0, ''),
('A01', '2016-02-01', 8, 1, ''),
('A01', '2016-02-01', 9, 1, ''),
('A01', '2016-02-01', 10, 1, ''),
('A01', '2016-02-02', 11, 1, ''),
('A01', '2016-02-03', 3, 1, ''),
('A01', '2016-02-03', 4, 1, ''),
('A01', '2016-02-03', 5, 1, ''),
('A01', '2016-02-03', 6, 0, 'SAKIT'),
('A01', '2016-02-03', 7, 0, 'IZIN'),
('A01', '2016-02-03', 8, 0, ''),
('A01', '2016-02-03', 9, 1, ''),
('A01', '2016-02-03', 10, 1, ''),
('A01', '2016-02-04', 11, 1, ''),
('A02', '2016-02-02', 12, 1, ''),
('A02', '2016-02-02', 13, 0, ''),
('A02', '2016-02-02', 14, 0, 'SAKIT'),
('A02', '2016-02-02', 15, 0, ''),
('A02', '2016-02-02', 16, 1, ''),
('A02', '2016-02-02', 17, 1, ''),
('A02', '2016-02-04', 12, 1, ''),
('A02', '2016-02-04', 13, 1, ''),
('A02', '2016-02-04', 14, 1, ''),
('A02', '2016-02-04', 15, 1, ''),
('A02', '2016-02-04', 16, 1, ''),
('A02', '2016-02-04', 17, 0, 'IZIN');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` char(5) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `nama`, `jam_mulai`, `jam_selesai`) VALUES
('IN001', 'Senin Pagi', '00:00:06', '00:00:10'),
('IN002', 'Senin Siang', '00:00:10', '00:00:13'),
('IN003', 'Senin Sore', '00:00:14', '00:00:17'),
('IN004', 'Selasa Pagi', '00:00:06', '00:00:10'),
('IN005', 'Selasa Siang', '00:00:10', '00:00:13'),
('IN006', 'Selasa Sore', '00:00:14', '00:00:17'),
('IN007', 'Rabu Pagi', '00:00:06', '00:00:10'),
('IN008', 'Rabu Siang', '00:00:10', '00:00:13'),
('IN009', 'Rabu Sore', '00:00:14', '00:00:17'),
('IN010', 'Kamis Pagi', '00:00:06', '00:00:10'),
('IN011', 'Kamis Siang', '00:00:10', '00:00:13'),
('IN012', 'Kamis Sore', '00:00:14', '00:00:17'),
('IN013', 'Jumat Pagi', '00:00:06', '00:00:11'),
('IN014', 'Jumat Siang', '00:00:13', '00:00:17'),
('IN015', 'Sabtu Pagi', '00:00:06', '00:00:10'),
('IN016', 'Sabtu Siang', '00:00:10', '00:00:13'),
('IN017', 'Sabtu Sore', '00:00:14', '00:00:17'),
('IN018', 'Minggu Pagi', '00:00:06', '00:00:11'),
('IN019', 'Minggu Siang', '00:00:13', '00:00:17'),
('WD001', 'Senin Rabu', '00:00:16', '00:00:20'),
('WD002', 'Selasa Kamis', '00:00:16', '00:00:20'),
('WD003', 'Sabtu Pagi', '00:00:06', '00:00:12'),
('WD004', 'Minggu Pagi', '00:00:06', '00:00:12'),
('WD005', 'Minggu Siang', '00:00:12', '00:00:17');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_intance`
--

CREATE TABLE `jadwal_intance` (
  `jadwalID` char(5) NOT NULL,
  `kelasID` char(5) NOT NULL,
  `mapelID` char(3) NOT NULL,
  `noBab` varchar(2) NOT NULL,
  `tanggal` date NOT NULL,
  `noSesi` varchar(3) NOT NULL,
  `sesiAwal` time NOT NULL,
  `sesiAkhir` time NOT NULL,
  `pengajar` varchar(25) NOT NULL,
  `pengganti` varchar(25) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jadwal_intance`
--

INSERT INTO `jadwal_intance` (`jadwalID`, `kelasID`, `mapelID`, `noBab`, `tanggal`, `noSesi`, `sesiAwal`, `sesiAkhir`, `pengajar`, `pengganti`, `keterangan`) VALUES
('WD001', 'A01', 'BIO', '2', '2016-04-04', '2', '00:00:18', '00:00:20', 'thya', 'jjjjjj', 'jijil'),
('WD001', 'A01', 'FIS', '2', '2016-04-06', '1', '00:00:16', '00:00:18', 'razak', 'thalia', 'bagian a - b'),
('WD001', 'A01', 'ING', '1', '2016-04-06', '2', '00:00:18', '00:00:20', 'septi', 'naja', ''),
('WD001', 'A01', 'MAT', '1', '2016-04-04', '1', '00:00:16', '00:00:18', 'fadel', '', ''),
('WD002', 'B02', 'BIO', '1', '2016-04-07', '1', '00:00:16', '00:00:18', 'fadil', '', ''),
('WD002', 'B02', 'IND', '1', '2016-04-05', '1', '00:00:16', '00:00:18', 'thalia', '', ''),
('WD002', 'B02', 'KIM', '2', '2016-04-07', '2', '00:00:18', '00:00:20', 'inem', 'rini', ''),
('WD002', 'B02', 'MAT', '3', '2016-04-05', '2', '00:00:18', '00:00:20', 'danu', '', ''),
('WD002', 'C02', 'FIS', '3', '2016-04-05', '1', '00:00:16', '00:00:18', 'ayu', '', ''),
('WD002', 'C02', 'IND', '1', '2016-04-05', '2', '00:00:18', '00:00:20', 'made', '', ''),
('WD002', 'C02', 'ING', '1', '2016-04-07', '1', '00:00:16', '00:00:18', 'putu', '', ''),
('WD002', 'C02', 'MAT', '2', '2016-04-07', '2', '00:00:18', '00:00:20', 'wisnu', '', ''),
('WD003', 'B03', 'FIS', '1', '2016-04-09', '1', '00:00:07', '00:00:08', 'razak', '', ''),
('WD003', 'B03', 'ING', '2', '2016-04-09', '2', '00:00:08', '00:00:10', 'putu', '', ''),
('WD003', 'B03', 'MAT', '2', '2016-04-09', '3', '00:00:10', '00:00:12', 'fadel', '', ''),
('WD004', 'A04', 'BIO', '3', '2016-04-10', '1', '00:00:07', '00:00:08', 'intan', '', ''),
('WD004', 'A04', 'IND', '1', '2016-04-10', '3', '00:00:10', '00:00:12', 'made', '', ''),
('WD004', 'A04', 'KIM', '2', '2016-04-10', '2', '00:00:08', '00:00:10', 'inem', '', ''),
('WD005', 'C05', 'FIS', '3', '2016-04-10', '3', '00:00:16', '00:00:17', 'ayu', '', ''),
('WD005', 'C05', 'KIM', '2', '2016-04-10', '2', '00:00:14', '00:00:15', 'risa', '', ''),
('WD005', 'C05', 'MAT', '4', '2016-04-10', '1', '00:00:12', '00:00:14', 'danu', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `tesID` char(6) NOT NULL,
  `mapelID` char(3) NOT NULL,
  `id` char(6) NOT NULL,
  `NP` int(11) NOT NULL,
  `benar` int(11) NOT NULL,
  `salah` int(11) NOT NULL,
  `kosong` int(11) NOT NULL,
  `nilaiMP` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`tesID`, `mapelID`, `id`, `NP`, `benar`, `salah`, `kosong`, `nilaiMP`) VALUES
('TOSBA1', 'MDS', '100001', 3, 10, 5, 0, 0),
('TOSBA1', 'BIO', '100010', 3, 10, 5, 0, 0),
('TOSBA1', 'FIS', '100010', 3, 12, 3, 0, 0),
('TOSBA1', 'IND', '100010', 3, 10, 1, 4, 0),
('TOSBA1', 'ING', '100010', 3, 13, 2, 0, 0),
('TOSBA1', 'KIM', '100010', 3, 5, 7, 3, 0),
('TOSBA1', 'MIA', '100010', 3, 9, 6, 0, 0),
('TOSBA1', 'TPA', '100010', 3, 30, 10, 5, 0),
('TOSBA1', 'BIO', '100011', 11, 1, 3, 11, 0),
('TOSBA1', 'FIS', '100011', 11, 13, 2, 0, 0),
('TOSBA1', 'IND', '100011', 11, 8, 0, 7, 0),
('TOSBA1', 'ING', '100011', 11, 13, 1, 1, 0),
('TOSBA1', 'KIM', '100011', 11, 2, 4, 9, 0),
('TOSBA1', 'MDS', '100011', 11, 11, 4, 0, 0),
('TOSBA1', 'MIA', '100011', 11, 11, 4, 0, 0),
('TOSBA1', 'TPA', '100011', 11, 37, 5, 3, 0),
('TOSBA2', 'BIO', '110110', 3, 5, 6, 4, 0),
('TOSBA2', 'FIS', '110110', 3, 8, 1, 6, 0),
('TOSBA2', 'IND', '110110', 3, 8, 3, 4, 0),
('TOSBA2', 'ING', '110110', 3, 9, 1, 5, 0),
('TOSBA2', 'KIM', '110110', 3, 6, 6, 3, 0),
('TOSBA2', 'MDS', '110110', 3, 13, 1, 1, 0),
('TOSBA2', 'MIA', '110110', 3, 13, 1, 1, 0),
('TOSBA2', 'TPA', '110110', 3, 40, 5, 0, 0),
('TOSBA2', 'BIO', '110111', 11, 7, 0, 8, 0),
('TOSBA2', 'FIS', '110111', 11, 12, 0, 3, 0),
('TOSBA2', 'IND', '110111', 11, 7, 0, 8, 0),
('TOSBA2', 'ING', '110111', 11, 10, 2, 3, 0),
('TOSBA2', 'KIM', '110111', 11, 4, 0, 11, 0),
('TOSBA2', 'MDS', '110111', 11, 10, 2, 3, 0),
('TOSBA2', 'MIA', '110111', 11, 9, 2, 4, 0),
('TOSBA2', 'TPA', '110111', 11, 38, 3, 4, 0),
('TOSBA3', 'BIO', '120210', 4, 6, 2, 7, 0),
('TOSBA3', 'FIS', '120210', 4, 7, 4, 4, 0),
('TOSBA3', 'IND', '120210', 4, 9, 0, 6, 0),
('TOSBA3', 'ING', '120210', 4, 7, 0, 8, 0),
('TOSBA3', 'KIM', '120210', 4, 7, 3, 5, 0),
('TOSBA3', 'MDS', '120210', 4, 11, 1, 3, 0),
('TOSBA3', 'MIA', '120210', 4, 9, 1, 5, 0),
('TOSBA3', 'TPA', '120210', 4, 29, 6, 10, 0),
('TOSBA3', 'BIO', '120211', 5, 5, 6, 4, 0),
('TOSBA3', 'FIS', '120211', 5, 4, 1, 10, 0),
('TOSBA3', 'IND', '120211', 5, 8, 0, 7, 0),
('TOSBA3', 'ING', '120211', 5, 6, 2, 7, 0),
('TOSBA3', 'KIM', '120211', 5, 3, 3, 9, 0),
('TOSBA3', 'MDS', '120211', 5, 10, 3, 2, 0),
('TOSBA3', 'MIA', '120211', 5, 5, 4, 6, 0),
('TOSBA3', 'TPA', '120211', 5, 37, 2, 6, 0),
('TOSBS1', 'EKO', '200020', 14, 7, 6, 2, 0),
('TOSBS1', 'GEO', '200020', 14, 8, 6, 1, 0),
('TOSBS1', 'IND', '200020', 14, 7, 5, 3, 0),
('TOSBS1', 'ING', '200020', 14, 6, 6, 3, 0),
('TOSBS1', 'MDS', '200020', 14, 9, 4, 2, 0),
('TOSBS1', 'SEJ', '200020', 14, 7, 4, 4, 0),
('TOSBS1', 'SOS', '200020', 14, 4, 4, 7, 0),
('TOSBS1', 'TPA', '200020', 14, 29, 10, 6, 0),
('TOSBS1', 'EKO', '200021', 22, 5, 0, 10, 0),
('TOSBS1', 'GEO', '200021', 22, 9, 3, 3, 0),
('TOSBS1', 'IND', '200021', 22, 10, 1, 4, 0),
('TOSBS1', 'ING', '200021', 22, 5, 3, 7, 0),
('TOSBS1', 'MDS', '200021', 22, 8, 6, 1, 0),
('TOSBS1', 'SEJ', '200021', 22, 5, 6, 4, 0),
('TOSBS1', 'SOS', '200021', 22, 9, 5, 1, 0),
('TOSBS1', 'TPA', '200021', 22, 42, 2, 1, 0),
('TOSBS2', 'EKO', '210020', 14, 7, 2, 6, 0),
('TOSBS2', 'GEO', '210020', 14, 10, 3, 2, 0),
('TOSBS2', 'IND', '210020', 14, 11, 1, 3, 0),
('TOSBS2', 'ING', '210020', 14, 8, 0, 7, 0),
('TOSBS2', 'MDS', '210020', 14, 13, 0, 2, 0),
('TOSBS2', 'SEJ', '210020', 14, 12, 1, 2, 0),
('TOSBS2', 'SOS', '210020', 14, 6, 6, 3, 0),
('TOSBS2', 'TPA', '210020', 14, 42, 3, 0, 0),
('TOSBS2', 'EKO', '210021', 22, 6, 0, 9, 0),
('TOSBS2', 'GEO', '210021', 22, 9, 1, 5, 0),
('TOSBS2', 'IND', '210021', 22, 9, 2, 4, 0),
('TOSBS2', 'ING', '210021', 22, 7, 1, 7, 0),
('TOSBS2', 'MDS', '210021', 22, 11, 0, 4, 0),
('TOSBS2', 'SEJ', '210021', 22, 9, 1, 5, 0),
('TOSBS2', 'SOS', '210021', 22, 9, 3, 3, 0),
('TOSBS2', 'TPA', '210021', 22, 39, 0, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `ID` char(4) NOT NULL,
  `nama` varchar(3) NOT NULL,
  `kapasitas` int(11) NOT NULL,
  `periode` varchar(20) NOT NULL,
  `PID` int(11) NOT NULL,
  `tingkat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`ID`, `nama`, `kapasitas`, `periode`, `PID`, `tingkat`) VALUES
('A01', 'ASR', 30, 'Semester 1', 27, 'SMA IPA'),
('A02', 'ASK', 30, 'Semester 1', 28, 'SMA IPA'),
('A03', 'ASP', 30, 'Semester 1', 29, 'SMA IPA'),
('A04', 'AMP', 30, 'Semester 1', 30, 'SMA IPA'),
('A05', 'AMS', 30, 'Semester 1', 31, 'SMA IPA'),
('B01', 'BSR', 30, 'Semester 1', 32, 'SMA IPS'),
('B02', 'BSK', 30, 'Semester 1', 33, 'SMA IPS'),
('B03', 'BSP', 30, 'Semester 1', 34, 'SMA IPS'),
('B04', 'BMP', 35, 'Semester 2', 35, 'SMA IPS'),
('B05', 'BMS', 35, 'Semester 2', 36, 'SMA IPS'),
('C01', 'CSR', 35, 'Semester 2', 37, 'SMA IPA'),
('C02', 'CSK', 35, 'Semester 2', 38, 'SMA IPA'),
('C03', 'CSP', 35, 'Semester 2', 39, 'SMA IPA'),
('C04', 'CMP', 35, 'Semester 2', 40, 'SMA IPA'),
('C05', 'CMS', 35, 'Semester 2', 41, 'SMA IPA'),
('D01', 'DSR', 20, 'Semester 1', 42, 'SMP'),
('D02', 'DSK', 20, 'Semester 1', 27, 'SMP'),
('IA1', 'A', 15, 'Intensif IPA', 28, 'SMA IPA'),
('IA2', 'B', 15, 'Intensif IPA', 29, 'SMA IPA'),
('IA3', 'C', 15, 'Intensif IPA', 30, 'SMA IPA'),
('IA4', 'D', 15, 'Intensif IPA', 31, 'SMA IPA'),
('IC1', 'I', 15, 'Intensif IPC', 36, 'SMA IPC'),
('IC2', 'J', 15, 'Intensif IPC', 37, 'SMA IPC'),
('IC3', 'K', 15, 'Intensif IPC', 38, 'SMA IPC'),
('IC4', 'L', 15, 'Intensif IPC', 39, 'SMA IPC'),
('IS1', 'E', 15, 'Intensif IPS', 32, 'SMA IPS'),
('IS2', 'F', 15, 'Intensif IPS', 33, 'SMA IPS'),
('IS3', 'G', 15, 'Intensif IPS', 34, 'SMA IPS'),
('IS4', 'H', 15, 'Intensif IPS', 35, 'SMA IPS'),
('J09', 'JMS', 30, 'Semester 1', 27, ''),
('z01', 's', 2, '1', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `keluhan`
--

CREATE TABLE `keluhan` (
  `noKeluhan` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `pesan` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keluhan`
--

INSERT INTO `keluhan` (`noKeluhan`, `sender`, `receiver`, `subject`, `pesan`, `created_at`) VALUES
(1, 3, 1, 'pindah kelas', 'kak, mau sekelas ama christian dong bisa ga?', '2016-05-02 07:00:09'),
(2, 4, 1, 'TO susulan', 'boleh ga sih ikut TO susulan?', '2016-05-02 07:00:09'),
(3, 5, 1, 'pindah kelas', 'kak, mau sekelas ama christian dong bisa ga?', '2016-05-02 07:00:09'),
(4, 6, 1, 'pindah kelas', 'kak, mau sekelas ama christian dong bisa ga?', '2016-05-02 07:00:09'),
(5, 7, 1, 'pindah kelas', 'kak, mau sekelas ama isni dong bisa ga?', '2016-05-02 07:00:09'),
(6, 8, 1, 'pindah kelas', 'kak, mau sekelas ama christian dong bisa ga?', '2016-05-02 07:00:09'),
(7, 9, 1, 'pindah kelas', 'kak, mau sekelas ama arnan dong bisa ga?', '2016-05-02 07:00:09'),
(8, 10, 1, 'pindah kelas', 'kak, mau sekelas ama christian dong bisa ga?', '2016-05-02 07:00:09'),
(9, 6, 1, 'barang ketinggalan', 'kak, kacamata ku ketinggalan di lantai 3', '2016-05-02 07:00:09'),
(10, 10, 1, 'pindah kelas', 'kak, mau pindah kelas ke BMP bisa ga?', '2016-05-02 07:00:09'),
(11, 11, 1, 'pindah kelas', 'kak, mau pindah kelas ke BMP bisa ga?', '2016-05-02 07:00:09'),
(12, 12, 1, 'TO susulan', 'boleh ga sih ikut TO susulan?', '2016-05-02 07:00:09'),
(13, 5, 1, 'TO susulan', 'boleh ga sih ikut TO susulan?', '2016-05-02 07:00:09'),
(14, 13, 1, 'barang ketinggalan', 'kak, kacamataku ketinggalan di lantai 4', '2016-05-02 07:00:09'),
(15, 14, 1, 'pindah kelas', 'hahaha lucu deh gurunya', '2016-05-02 07:00:09'),
(16, 1, 3, 'hmm', 'tuh udahan gue ganti kelasnya', '2016-05-09 09:42:20'),
(17, 1, 6, 'udahan yak', 'Nilai TO nya udah gue benerin', '2016-05-09 09:42:20'),
(18, 6, 1, 'kak mau pindah kelas dong', 'mager nih sekelas sama orang orang dewa, berasa bego', '2016-05-09 10:23:08'),
(19, 1, 6, 'udahan', 'udah ya pindah kelasnya.', '2016-05-09 10:32:17'),
(20, 6, 1, 'pengen masuk pacil', 'kak masukin ke pacil dong', '2016-05-11 05:57:37'),
(21, 1, 6, 'bersyukurlah', 'nikmat mana lagi yang mau kamu dustakan?\r\n\r\nistiqarah gih', '2016-05-11 06:01:35'),
(22, 6, 1, 'kapan', 'kapanliburnya', '2016-05-11 07:43:16'),
(23, 1, 6, 'besok', 'besok libur', '2016-05-11 07:45:05'),
(24, 4, 1, 'lelah', 'kak, aku mau lulus 4 tahun', '2016-05-19 17:52:27'),
(25, 1, 4, 'RE:lelah', 'skripsi ya?', '2016-05-19 17:59:41'),
(26, 1, 4, 'halo', 'kamu gamau riset dulu?', '2016-05-19 18:00:40'),
(27, 4, 1, 'halo', 'mau kak tapii', '2016-05-19 18:05:45'),
(28, 4, 1, 'kak', 'kak aku mau masuk fasilkom', '2016-05-19 18:07:03'),
(29, 4, 1, 'RE:lelah', 'sippo kaak', '2016-05-19 18:10:04'),
(30, 4, 1, 'RE:lelah', 'sippo kaak', '2016-05-19 18:11:29'),
(31, 4, 1, 'RE:lelah', 'baelaaa', '2016-05-19 18:11:42'),
(32, 4, 1, 'hai', 'lalal', '2016-05-19 18:11:54'),
(33, 4, 1, 'd', 'sgabsh', '2016-05-19 18:12:10'),
(34, 4, 1, 'RE:lelah', 'pooo', '2016-05-19 18:12:22');

-- --------------------------------------------------------

--
-- Table structure for table `mapel_tes`
--

CREATE TABLE `mapel_tes` (
  `tesID` char(6) NOT NULL,
  `mapelID` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mapel_tes`
--

INSERT INTO `mapel_tes` (`tesID`, `mapelID`) VALUES
('TOSBA1', 'BIO'),
('TOSBA1', 'FIS'),
('TOSBA1', 'IND'),
('TOSBA1', 'ING'),
('TOSBA1', 'KIM'),
('TOSBA1', 'MDS'),
('TOSBA1', 'MIA'),
('TOSBA1', 'TPA'),
('TOSBA2', 'BIO'),
('TOSBA2', 'FIS'),
('TOSBA2', 'IND'),
('TOSBA2', 'ING'),
('TOSBA2', 'KIM'),
('TOSBA2', 'MDS'),
('TOSBA2', 'MIA'),
('TOSBA2', 'TPA'),
('TOSBA3', 'BIO'),
('TOSBA3', 'FIS'),
('TOSBA3', 'IND'),
('TOSBA3', 'ING'),
('TOSBA3', 'KIM'),
('TOSBA3', 'MDS'),
('TOSBA3', 'MIA'),
('TOSBA3', 'TPA'),
('TOSBA5', 'BIO'),
('TOSBA5', 'FIS'),
('TOSBA5', 'IND'),
('TOSBA5', 'ING'),
('TOSBA5', 'KIM'),
('TOSBA5', 'MDS'),
('TOSBA5', 'MIA'),
('TOSBA5', 'TPA'),
('TOSBA6', 'BIO'),
('TOSBA6', 'FIS'),
('TOSBA6', 'IND'),
('TOSBA6', 'ING'),
('TOSBA6', 'KIM'),
('TOSBA6', 'MDS'),
('TOSBA6', 'MIA'),
('TOSBA6', 'TPA'),
('TOSBA7', 'BIO'),
('TOSBA7', 'FIS'),
('TOSBA7', 'IND'),
('TOSBA7', 'ING'),
('TOSBA7', 'KIM'),
('TOSBA7', 'MDS'),
('TOSBA7', 'MIA'),
('TOSBA7', 'TPA'),
('TOSBS1', 'EKO'),
('TOSBS1', 'GEO'),
('TOSBS1', 'IND'),
('TOSBS1', 'ING'),
('TOSBS1', 'MDS'),
('TOSBS1', 'SEJ'),
('TOSBS1', 'SOS'),
('TOSBS1', 'TPA'),
('TOSBS2', 'EKO'),
('TOSBS2', 'GEO'),
('TOSBS2', 'IND'),
('TOSBS2', 'ING'),
('TOSBS2', 'MDS'),
('TOSBS2', 'SEJ'),
('TOSBS2', 'SOS'),
('TOSBS2', 'TPA'),
('TOSBS3', 'EKO'),
('TOSBS3', 'GEO'),
('TOSBS3', 'IND'),
('TOSBS3', 'ING'),
('TOSBS3', 'MDS'),
('TOSBS3', 'SEJ'),
('TOSBS3', 'SOS'),
('TOSBS3', 'TPA'),
('TOSUA1', 'BIO'),
('TOSUA1', 'FIS'),
('TOSUA1', 'IND'),
('TOSUA1', 'ING'),
('TOSUA1', 'IPA'),
('TOSUA1', 'KIM'),
('TOSUA1', 'MDS'),
('TOSUA1', 'MIA'),
('TOSUA2', 'BIO'),
('TOSUA2', 'FIS'),
('TOSUA2', 'IND'),
('TOSUA2', 'ING'),
('TOSUA2', 'IPA'),
('TOSUA2', 'KIM'),
('TOSUA2', 'MDS'),
('TOSUA2', 'MIA'),
('TOSUA3', 'BIO'),
('TOSUA3', 'FIS'),
('TOSUA3', 'IND'),
('TOSUA3', 'ING'),
('TOSUA3', 'IPA'),
('TOSUA3', 'KIM'),
('TOSUA3', 'MDS'),
('TOSUA3', 'MIA'),
('TOSUA4', 'BIO'),
('TOSUA4', 'FIS'),
('TOSUA4', 'IND'),
('TOSUA4', 'ING'),
('TOSUA4', 'IPA'),
('TOSUA4', 'KIM'),
('TOSUA4', 'MDS'),
('TOSUA4', 'MIA'),
('TOSUA5', 'BIO'),
('TOSUA5', 'FIS'),
('TOSUA5', 'IND'),
('TOSUA5', 'ING'),
('TOSUA5', 'IPA'),
('TOSUA5', 'KIM'),
('TOSUA5', 'MDS'),
('TOSUA5', 'MIA'),
('TOSUS1', 'EKO'),
('TOSUS1', 'GEO'),
('TOSUS1', 'IND'),
('TOSUS1', 'ING'),
('TOSUS1', 'IPS'),
('TOSUS1', 'MDS'),
('TOSUS1', 'SEJ'),
('TOSUS1', 'SOS'),
('TOSUS2', 'EKO'),
('TOSUS2', 'GEO'),
('TOSUS2', 'IND'),
('TOSUS2', 'ING'),
('TOSUS2', 'IPS'),
('TOSUS2', 'MDS'),
('TOSUS2', 'SEJ'),
('TOSUS2', 'SOS'),
('TOSUS3', 'EKO'),
('TOSUS3', 'GEO'),
('TOSUS3', 'IND'),
('TOSUS3', 'ING'),
('TOSUS3', 'IPS'),
('TOSUS3', 'MDS'),
('TOSUS3', 'SEJ'),
('TOSUS3', 'SOS'),
('TOSUS4', 'EKO'),
('TOSUS4', 'GEO'),
('TOSUS4', 'IND'),
('TOSUS4', 'ING'),
('TOSUS4', 'IPS'),
('TOSUS4', 'MDS'),
('TOSUS4', 'SEJ'),
('TOSUS4', 'SOS'),
('TOSUS5', 'EKO'),
('TOSUS5', 'GEO'),
('TOSUS5', 'IND'),
('TOSUS5', 'ING'),
('TOSUS5', 'IPS'),
('TOSUS5', 'MDS'),
('TOSUS5', 'SEJ'),
('TOSUS5', 'SOS'),
('TOUNA1', 'BIO'),
('TOUNA1', 'FIS'),
('TOUNA1', 'IND'),
('TOUNA1', 'ING'),
('TOUNA1', 'KIM'),
('TOUNA1', 'MAT'),
('TOUNA2', 'BIO'),
('TOUNA2', 'FIS'),
('TOUNA2', 'IND'),
('TOUNA2', 'ING'),
('TOUNA2', 'KIM'),
('TOUNA2', 'MAT'),
('TOUNA3', 'BIO'),
('TOUNA3', 'FIS'),
('TOUNA3', 'IND'),
('TOUNA3', 'ING'),
('TOUNA3', 'KIM'),
('TOUNA3', 'MAT'),
('TOUNP1', 'IGP'),
('TOUNP1', 'INP'),
('TOUNP1', 'MTP'),
('TOUNP1', 'SNS'),
('TOUNP2', 'IGP'),
('TOUNP2', 'INP'),
('TOUNP2', 'MTP'),
('TOUNP2', 'SNS'),
('TOUNP3', 'IGP'),
('TOUNP3', 'INP'),
('TOUNP3', 'MTP'),
('TOUNP3', 'SNS'),
('TOUNP4', 'IGP'),
('TOUNP4', 'INP'),
('TOUNP4', 'MTP'),
('TOUNP4', 'SNS'),
('TOUNP5', 'IGP'),
('TOUNP5', 'INP'),
('TOUNP5', 'MTP'),
('TOUNP5', 'SNS'),
('TOUNP6', 'IGP'),
('TOUNP6', 'INP'),
('TOUNP6', 'MTP'),
('TOUNP6', 'SNS'),
('TOUNS1', 'EKO'),
('TOUNS1', 'GEO'),
('TOUNS1', 'IND'),
('TOUNS1', 'ING'),
('TOUNS1', 'MAT'),
('TOUNS1', 'SOS'),
('TOUNS2', 'EKO'),
('TOUNS2', 'GEO'),
('TOUNS2', 'IND'),
('TOUNS2', 'ING'),
('TOUNS2', 'MAT'),
('TOUNS2', 'SOS'),
('TOUNS3', 'EKO'),
('TOUNS3', 'GEO'),
('TOUNS3', 'IND'),
('TOUNS3', 'ING'),
('TOUNS3', 'MAT'),
('TOUNS3', 'SOS');

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `id` char(3) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`id`, `nama`) VALUES
('BIO', 'Biologi'),
('BIP', 'Biologi SMP'),
('EKO', 'Ekonomi'),
('EKP', 'Ekonomi SMP'),
('FIP', 'Fisika SMP'),
('FIS', 'Fisika'),
('GEO', 'Geografi'),
('GEP', 'Geografi SMP'),
('IGP', 'Bahasa Inggris SMP'),
('IND', 'Bahasa Indonesia'),
('ING', 'Bahasa Inggris'),
('INP', 'Bahasa Indonesia SMP'),
('IPA', 'IPA Terpadu'),
('IPS', 'IPS Terpadu'),
('KIM', 'Kimia'),
('MAT', 'Matematika SMA'),
('MDS', 'Matematika Dasar'),
('MIA', 'Matematika IPA'),
('MIS', 'Matematika IPS'),
('MTP', 'Matematika SMP'),
('SEJ', 'Sejarah'),
('SJP', 'Sejarah SMP'),
('SNS', 'SAINS SMP'),
('SOS', 'Sosiologi'),
('TPA', 'Tes Potensi Akademik');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `mapelID` char(3) NOT NULL,
  `noBab` varchar(2) NOT NULL,
  `judul` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`mapelID`, `noBab`, `judul`) VALUES
('BIO', '1', ' Reproduksi 1'),
('BIO', '2', ' Reproduksi 2'),
('BIO', '3', ' Reproduksi 3'),
('BIO', '4', ' Reproduksi 4'),
('BIO', '5', ' Reproduksi 5'),
('BIO', '6', ' Reproduksi tumbuhan'),
('BIO', '7', ' Metabolisme'),
('BIO', '8', ' Genetika'),
('BIO', '9', ' Tulang'),
('EKO', '1', ' Makroekonomi 1'),
('EKO', '2', ' Makroekonomi 2'),
('EKO', '3', ' Koperasi'),
('EKO', '4', ' Supply Demand'),
('EKO', '5', ' Ekonomi Syariah'),
('EKO', '6', ' Pengantar Manajemen'),
('FIS', '1', ' Mekanika 1'),
('FIS', '2', ' Mekanika 2'),
('FIS', '3', ' Mekanika 3'),
('FIS', '4', ' Mekanika 4'),
('FIS', '5', ' Listrik 1'),
('FIS', '6', ' Listrik 2'),
('FIS', '7', ' Listrik 3'),
('FIS', '8', ' Listrik 4'),
('FIS', '9', ' Tekanan'),
('GEO', '1', ' Pengantar Geografi'),
('GEO', '2', ' Geografi dan Demografi'),
('GEO', '3', ' Bumi dan Tanah'),
('GEO', '4', ' Geografi 1'),
('GEO', '5', ' Geografi 2'),
('GEO', '6', ' Geografi 3'),
('IND', '1', ' Tulisan Ilmiah'),
('IND', '2', ' EYD'),
('IND', '3', ' Puisi'),
('IND', '4', ' Paragraf'),
('IND', '5', ' Cerpen'),
('ING', '1', ' Paragraph'),
('ING', '2', ' Essay'),
('ING', '3', ' Grammar 1'),
('ING', '4', ' Short Story'),
('ING', '5', ' Grammar 2'),
('ING', '6', ' Scientific Writing'),
('KIM', '1', ' Kimia Organik'),
('KIM', '2', ' Asam Basa'),
('KIM', '3', ' Kimia Fisik'),
('KIM', '4', ' Stoikiometri 1'),
('KIM', '5', ' Stoikiometri 2'),
('KIM', '6', ' Larutan'),
('KIM', '7', ' Kesetimbangan 1'),
('KIM', '8', ' Kesetimbangan 2'),
('KIM', '9', ' Kesetimbangan 3'),
('MAT', '1', ' Aljabar Linear'),
('MAT', '2', ' Trigonometri'),
('MAT', '3', ' Diferensial'),
('MAT', '4', ' Limit'),
('MAT', '5', ' Statprob'),
('MAT', '6', ' Analisis Numerik'),
('MAT', '7', ' Integral lipat tiga'),
('MAT', '8', ' Integral'),
('MAT', '9', ' Persamaan garis'),
('MDS', '1', ' Aljabar Linear'),
('MDS', '2', ' Trigonometri'),
('MDS', '3', ' Diferensial'),
('MDS', '4', ' Limit'),
('MDS', '5', ' Statprob'),
('MDS', '6', ' Analisis Numerik'),
('MDS', '7', ' Integral lipat tiga'),
('MDS', '8', ' Integral'),
('MDS', '9', ' Persamaan garis'),
('MIA', '1', ' Aljabar Linear'),
('MIA', '2', ' Trigonometri'),
('MIA', '3', ' Diferensial'),
('MIA', '4', ' Limit'),
('MIA', '5', ' Statprob'),
('MIA', '6', ' Analisis Numerik'),
('MIA', '7', ' Integral lipat tiga'),
('MIA', '8', ' Integral'),
('MIA', '9', ' Persamaan garis'),
('MIS', '1', ' Aljabar Linear'),
('MIS', '2', ' Trigonometri'),
('MIS', '3', ' Diferensial'),
('MIS', '4', ' Limit'),
('MIS', '5', ' Statprob'),
('MIS', '6', ' Analisis Numerik'),
('MIS', '7', ' Integral lipat tiga'),
('MIS', '8', ' Integral'),
('MIS', '9', ' Persamaan garis'),
('SEJ', '1', ' Pengantar Sejarah'),
('SEJ', '2', ' Sejarah Indonesia Kontemporer'),
('SEJ', '3', ' Distorsi Sejarah'),
('SEJ', '4', ' Sejarah Islam Kontemporer'),
('SEJ', '5', ' Era Kebangkitan Eropa'),
('SEJ', '6', ' Asia masa lalu'),
('SEJ', '7', ' Sejarah dan aplikasinya'),
('SOS', '1', ' Masyarakat 1'),
('SOS', '2', ' Masyarakat 2'),
('SOS', '3', ' Interpersonal 1'),
('SOS', '4', ' Interpersonal 2');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1460119311),
('m130524_201442_init', 1460119313);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `NP` int(11) NOT NULL,
  `tesID` char(6) NOT NULL,
  `presentase` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`NP`, `tesID`, `presentase`) VALUES
(3, 'TOSBA1', 0),
(3, 'TOSBA2', 0),
(4, 'TOSBA1', 20),
(4, 'TOSBA2', 80),
(4, 'TOSBA3', 60),
(5, 'TOSBA3', 0),
(11, 'TOSBA1', 0),
(11, 'TOSBA2', 0),
(14, 'TOSBS1', 0),
(22, 'TOSBS1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orang_tua`
--

CREATE TABLE `orang_tua` (
  `NP` int(11) NOT NULL,
  `nama_ayah` varchar(20) NOT NULL,
  `email_ayah` varchar(35) DEFAULT NULL,
  `hp_ayah` varchar(13) NOT NULL,
  `nama_ibu` varchar(20) DEFAULT NULL,
  `email_ibu` varchar(35) DEFAULT NULL,
  `hp_ibu` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang_tua`
--

INSERT INTO `orang_tua` (`NP`, `nama_ayah`, `email_ayah`, `hp_ayah`, `nama_ibu`, `email_ibu`, `hp_ibu`) VALUES
(4, ' ADE ILYAS MUKMIN', 'richeson@hotmail.com', '85236748891', 'BELADENTA AMALIA', 'overkamp@hotmail.com', '85236748861'),
(16, 'AAN MIDAD ARRIZZA', 'rocchi@hotmail.com', '85236748903', 'MELLISYA RAMADHANY', 'hardester@hotmail.com', '85236748873'),
(19, 'AHMAD SYAHRON', 'neef@hotmail.com', '85236748906', 'RISKA WAHYUNINGTYAS', 'shortes@hotmail.com', '85236748876'),
(17, 'ALFIAN RIZQY TANJUNG', 'izquierdo@hotmail.com', '85236748904', 'OVILIANI WIJAYANTI', 'tille@hotmail.com', '85236748874'),
(25, 'ALFREDO FERNANDO', 'verfaillie@hotmail.com', '85236748912', 'FARADILLA MAULIDDINI', 'macreno@hotmail.com', '85236748882'),
(5, 'ARISENO', 'lakeland@hotmail.com', '85236748892', 'CHARISTA CITRADEWI S', 'kedley@hotmail.com', '85236748862'),
(22, 'ASEP ALAMSYAH RAMADA', 'bodin@hotmail.com', '85236748909', 'DESY RHOBIATUL A', 'tennon@hotmail.com', '85236748879'),
(18, 'BHARATA KALBUAJI', 'stred@hotmail.com', '85236748905', 'RATOE SURAYA', 'wiltshire@hotmail.com', '85236748875'),
(6, 'DANANG SETYO NUGROHO', 'myerson@hotmail.com', '85236748893', 'DESSY PRAMITA SARI', 'blad@hotmail.com', '85236748863'),
(23, 'DEDY MAHARDIKA', 'earline@hotmail.com', '85236748910', 'MUNAWWARAH', 'bormet@hotmail.com', '85236748880'),
(7, 'DEKTA FILANTROPI ESA', 'forero@hotmail.com', '85236748894', 'FITRIA CHANDRA N', 'monclova@hotmail.com', '85236748864'),
(20, 'DONNY ISA M S P', 'newens@hotmail.com', '85236748907', 'RISKIE WULANCAHYA', 'jannette@hotmail.com', '85236748877'),
(55, 'dwi', 'dwi@i.c', '2319', 'nana', 'nana@m.c', '728391'),
(8, 'DWI WICAKSONO', 'conrick@hotmail.com', '85236748895', 'FITRIANA NUR R', 'malette@hotmail.com', '85236748865'),
(9, 'ERVAN ZUHRI', 'nazzaro@hotmail.com', '85236748896', 'FRIDYAN RATNASARI', 'guerinot@hotmail.com', '85236748866'),
(44, 'fadel', 'fadel@fadel.fadel', '08', 'aa', 'a@a.a', '08'),
(46, 'fadel', 'fadel@fadel.com', '08', 'kucing', 'kucing@a.yam', '08'),
(50, 'fadel', 'fadel@fadel``', '08', 'fadel', 'fadel@fadel', '89'),
(26, 'FADHLY HAKIM MAHMUDI', 'matter@hotmail.com', '85236748913', 'FRANSISKA L NUGROHO', 'scherich@hotmail.com', '85236748883'),
(24, 'GRANDPRIX T M KADJA', 'vanoli@hotmail.com', '85236748911', 'ANISA PURWO LESTARI', 'lashawnda@hotmail.com', '85236748881'),
(3, 'ISNANDAR SYUKRI', 'cotnoir@hotmail.com', '85236748890', 'HERLINA', 'scheulen@hotmail.com', '85236748860'),
(10, 'LUTFIE', 'bouley@hotmail.com', '85236748897', 'HANIFAH RAHMANI N', 'magsamen@hotmail.com', '85236748867'),
(11, 'MOCHAMAD FAISAL ADAM', 'calverley@hotmail.com', '85236748898', 'HERLIANI DWI PUTRI H', 'magliocca@hotmail.com', '85236748868'),
(49, 'propensi', 'a@a.com', '08', 'pp', 'pp@pp.com', '08'),
(12, 'RANDY S N RUSDY', 'tasch@hotmail.com', '85236748899', 'IRSALINA RAHMAWATI', 'nemes@hotmail.com', '85236748869'),
(13, 'RIAN SEPTIAN', 'sifontes@hotmail.com', '85236748900', 'JEANE ANDINI', 'cianciotta@hotmail.com', '85236748870'),
(57, 'rpl', 'rpl@ui.cs', '08921302381', 'erp', 'erp@fm.co', '12389201310'),
(58, 'rpl', 'rpl@ui.cs', '23819231009', 'erp', 'erp@fm.co', '2183901823'),
(45, 'sma', 'a@b.a', '08', 'ab', 'ab@ab.ab', '08'),
(14, 'SWASTYA DWI PUTRA', 'gaters@hotmail.com', '85236748901', 'JUNAIDA AFIFA', 'lacerda@hotmail.com', '85236748871'),
(47, 'ucok', 'ucok@i.c', '08', 'nur', 'nur@d.c', '123'),
(48, 'ucok', 'ucok@n.cm', '78', 'nur', 'nur@g.c', '789'),
(15, 'WENDY DAMAR APRILANO', 'acheson@hotmail.com', '85236748902', 'KARINA MAHARANI P', 'dingeldein@hotmail.com', '85236748872'),
(21, 'YASIR ARAFAT', 'brodribb@hotmail.com', '85236748908', 'TIKA AYU PRATIWI', 'snider@hotmail.com', '85236748878');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `PID` int(11) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`PID`, `role`) VALUES
(1, 'korset 1'),
(2, 'korset 2'),
(27, 'binglas'),
(28, 'binglas'),
(29, 'binglas'),
(30, 'binglas'),
(31, 'binglas'),
(32, 'binglas'),
(33, 'binglas'),
(34, 'binglas'),
(35, 'binglas'),
(36, 'binglas'),
(37, 'binglas'),
(38, 'binglas'),
(39, 'binglas'),
(40, 'binglas'),
(41, 'binglas'),
(42, 'binglas'),
(43, 'binglas'),
(51, 'binglas'),
(54, 'binglas adlan'),
(56, 'Binglas');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `ID` int(11) NOT NULL,
  `Subject` varchar(45) NOT NULL,
  `Pesan` text NOT NULL,
  `PID` int(11) NOT NULL DEFAULT '1',
  `Tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`ID`, `Subject`, `Pesan`, `PID`, `Tanggal`) VALUES
(1, 'libur panjang', 'bisa dong liburan', 1, '2016-05-09 07:23:32'),
(2, 'wawaw', 'hahaha', 1, '2016-05-09 07:24:35'),
(3, 'Libur panjang', 'Tanggal 20 Mei libur', 1, '2016-05-11 07:35:37');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` char(6) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `universitas` varchar(30) NOT NULL,
  `PG` float NOT NULL,
  `Keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `nama`, `universitas`, `PG`, `Keterangan`) VALUES
('111', 'dt', 'dggjh', 3, 'd'),
('271293', 'TEKNOLOGI HASIL PERIKANAN', 'UGM', 43.4, ''),
('301016', 'PENDIDIKAN MATEMATIKA ', 'UNJ', 30.5, ''),
('301024', 'PENDIDIKAN FISIKA ', 'UNJ', 27.4, ''),
('301032', 'PENDIDIKAN KIMIA ', 'UNJ', 27.4, ''),
('301046', 'PENDIDIKAN BIOLOGI ', 'UNJ', 28.4, ''),
('301054', 'MATEMATIKA ', 'UNJ', 30.4, ''),
('301062', 'FISIKA ', 'UNJ', 29.4, ''),
('301076', 'KIMIA ', 'UNJ', 30, ''),
('301084', 'BIOLOGI ', 'UNJ', 28.9, ''),
('301092', 'PENDIDIKAN TEKNIK ELEKTRO ', 'UNJ', 28.4, ''),
('301105', 'PENDIDIKAN TEKNIK MESIN ', 'UNJ', 28.4, ''),
('301113', 'PENDIDIKAN TEKNIK BANGUNAN ', 'UNJ', 27.4, ''),
('301121', 'ILMU KEOLAHRAGAAN ', 'UNJ', 25.4, ''),
('301133', 'PENDIDIKAN TEKNIK INFORMATIKA & KOMPUTER ', 'UNJ', 35, ''),
('301143', 'PENDIDIKAN TEKNIK ELEKTRONIKA ', 'UNJ', 33, ''),
('301151', 'SISTEM KOMPUTER ', 'UNJ', 40.4, ''),
('302012', 'TEKNOLOGI PENDIDIKAN ', 'UNJ', 26.6, ''),
('302026', 'PENDIDIKAN LUAR BIASA ', 'UNJ', 25.6, ''),
('302034', 'MANAJEMEN PENDIDIKAN ', 'UNJ', 25.6, ''),
('302042', 'PENDIDIKAN LUAR SEKOLAH ', 'UNJ', 25.1, ''),
('302056', 'PEND. GURU PAUD ', 'UNJ', 25.1, ''),
('302064', 'BIMBINGAN & KONSELING ', 'UNJ', 25.6, ''),
('302072', 'PENDIDIKAN GURU SEKOLAH DASAR ', 'UNJ', 32.5, ''),
('302086', 'PSIKOLOGI ', 'UNJ', 28.6, ''),
('302094', 'PENDIDIKAN BAHASA INDONESIA ', 'UNJ', 25.1, ''),
('302101', 'SASTRA INDONESIA ', 'UNJ', 26.9, ''),
('302115', 'PENDIDIKAN BAHASA INGGRIS ', 'UNJ', 31.4, ''),
('302123', 'SASTRA INGGRIS ', 'UNJ', 32.2, ''),
('302131', 'PENDIDIKAN BAHASA PRANCIS ', 'UNJ', 27.1, ''),
('302145', 'PENDIDIKAN BAHASA JERMAN ', 'UNJ', 27.6, ''),
('302153', 'PENDIDIKAN BAHASA ARAB ', 'UNJ', 25.1, ''),
('302161', 'PENDIDIKAN BAHASA JEPANG ', 'UNJ', 30.3, ''),
('302175', 'PENDIDIKAN SENI TARI ', 'UNJ', 24.6, ''),
('302183', 'PENDIDIKAN SENI MUSIK ', 'UNJ', 24.9, ''),
('302191', 'PENDIDIKAN SENI RUPA ', 'UNJ', 25.1, ''),
('302204', 'PENDIDIKAN PANCASILA & KEWARGANEGARAAN ', 'UNJ', 26.7, ''),
('302212', 'PENDIDIKAN GEOGRAFI ', 'UNJ', 25.1, ''),
('302226', 'PENDIDIKAN SEJARAH ', 'UNJ', 25.6, ''),
('302234', 'ILMU AGAMA ISLAM ', 'UNJ', 25.5, ''),
('302242', 'SOSIOLOGI ', 'UNJ', 25.4, ''),
('302256', 'PENDIDIKAN SOSIOLOGI ', 'UNJ', 25.1, ''),
('302264', 'PENDIDIKAN KESEJAHTERAAN KELUARGA ', 'UNJ', 25.7, ''),
('302272', 'PENDIDIKAN JASMANI, KESEHATAN & REKREASI ', 'UNJ', 26.1, ''),
('302286', 'PENDIDIKAN KEPELATIHAN OLAHRAGA ', 'UNJ', 26.5, ''),
('302294', 'PENDIDIKAN EKONOMI ', 'UNJ', 26.1, ''),
('302301', 'MANAJEMEN ', 'UNJ', 39.5, ''),
('302315', 'AKUNTANSI ', 'UNJ', 40.3, ''),
('302323', 'PENDIDIKAN ILMU PENGETAHUAN SOSIAL ', 'UNJ', 26.9, ''),
('302331', 'PENDIDIKAN TATA BOGA ', 'UNJ', 25.5, ''),
('302345', 'PENDIDIKAN TATA BUSANA ', 'UNJ', 25.1, ''),
('302353', 'PENDIDIKAN TATA RIAS ', 'UNJ', 25.1, ''),
('302361', 'PENDIDIKAN TATA NIAGA ', 'UNJ', 25.1, ''),
('302375', 'PENDIDIKAN BAHASA MANDARIN ', 'UNJ', 29.4, ''),
('311011', 'PENDIDIKAN DOKTER', 'UI', 61.8, ''),
('311025', 'PENDIDIKAN DOKTER GIGI', 'UI', 52, ''),
('311033', 'MATEMATIKA', 'UI', 47.5, ''),
('311041', 'FISIKA', 'UI', 42.5, ''),
('311055', 'KIMIA', 'UI', 43, ''),
('311063', 'BIOLOGI', 'UI', 41.8, ''),
('311071', 'FARMASI', 'UI', 49, ''),
('311085', 'GEOGRAFI', 'UI', 38.2, ''),
('311093', 'TEKNIK SIPIL', 'UI', 46.7, ''),
('311106', 'TEKNIK MESIN', 'UI', 48.5, ''),
('311114', 'TEKNIK ELEKTRO', 'UI', 52.8, ''),
('311122', 'TEKNIK METALURGI & MATERIAL', 'UI', 46.3, ''),
('311136', 'ARSITEKTUR', 'UI', 46.9, ''),
('311144', 'TEKNIK KIMIA', 'UI', 51.9, ''),
('311152', 'ILMU KEPERAWATAN', 'UI', 41.6, ''),
('311166', 'ILMU KOMPUTER', 'UI', 53, ''),
('311174', 'ILMU KESEHATAN MASYARAKAT', 'UI', 42.8, ''),
('311182', 'TEKNIK INDUSTRI', 'UI', 53.6, ''),
('311196', 'TEKNIK PERKAPALAN', 'UI', 43.2, ''),
('311203', 'TEKNIK LINGKUNGAN', 'UI', 47.4, ''),
('311211', 'TEKNIK KOMPUTER', 'UI', 46.1, ''),
('311225', 'SISTEM INFORMASI', 'UI', 44.3, ''),
('311233', 'ARSITEKTUR INTERIOR', 'UI', 46.3, ''),
('311241', 'TEKNOLOGI BIOPROSES', 'UI', 50.2, ''),
('311255', 'GIZI', 'UI', 42.1, ''),
('311261', 'KESELAMATAN & KESEHATAN KERJA (K3)', 'UI', 0, ''),
('311263', 'KESEHATAN LINGKUNGAN', 'UI', 44.4, ''),
('311285', 'GEOFISIKA', 'UI', 0, ''),
('311293', 'GEOLOGI', 'UI', 0, ''),
('312013', 'ILMU HUKUM', 'UI', 43.2, ''),
('312021', 'ARKEOLOGI INDONESIA', 'UI', 34.6, ''),
('312035', 'ILMU SEJARAH', 'UI', 35.2, ''),
('312043', 'ILMU PSIKOLOGI', 'UI', 48.9, ''),
('312051', 'ILMU KOMUNIKASI', 'UI', 50.4, ''),
('312065', 'ILMU POLITIK', 'UI', 44.2, ''),
('312073', 'ILMU ADMINISTRASI NEGARA', 'UI', 46.2, ''),
('312081', 'KRIMINOLOGI', 'UI', 42.2, ''),
('312095', 'SOSIOLOGI', 'UI', 38.2, ''),
('312102', 'ILMU KESEJAHTERAAN SOSIAL', 'UI', 35.3, ''),
('312116', 'ANTROPOLOGI SOSIAL', 'UI', 34.7, ''),
('312124', 'ILMU EKONOMI', 'UI', 54.6, ''),
('312132', 'ILMU ADMINISTRASI NIAGA', 'UI', 47, ''),
('312143', 'SASTRA ARAB', 'UI', 39.1, ''),
('312146', 'ILMU ADMINISTRASI FISKAL', 'UI', 47.1, ''),
('312154', 'MANAJEMEN', 'UI', 55.9, ''),
('312162', 'AKUNTANSI', 'UI', 56.9, ''),
('312176', 'ILMU HUBUNGAN INTERNASIONAL', 'UI', 54.1, ''),
('312184', 'ILMU PERPUSTAKAAN', 'UI', 36.6, ''),
('312192', 'ILMU FILSAFAT', 'UI', 35.1, ''),
('312205', 'SASTRA INDONESIA', 'UI', 36.1, ''),
('312213', 'SASTRA DAERAH UNTUK SASTRA JAWA', 'UI', 34.1, ''),
('312221', 'SASTRA JEPANG', 'UI', 44.6, ''),
('312235', 'SASTRA CINA', 'UI', 43.3, ''),
('312251', 'SASTRA PERANCIS', 'UI', 40.1, ''),
('312265', 'SASTRA INGGRIS', 'UI', 47.2, ''),
('312273', 'SASTRA JERMAN', 'UI', 40.9, ''),
('312281', 'SASTRA BELANDA', 'UI', 36.9, ''),
('312295', 'SASTRA RUSIA', 'UI', 34.4, ''),
('312302', 'BAHASA DAN KEBUDAYAAN KOREA', 'UI', 43.4, ''),
('312316', 'ILMU EKONOMI ISLAM', 'UI', 40.4, ''),
('312324', 'BISNIS ISLAM', 'UI', 41.2, ''),
('330212', 'teknik geologi', 'ui', 50, ''),
('331013', 'AGRIBISNIS ', 'IPB', 38.7, ''),
('331021', 'AGRONOMI DAN HORTIKULTURA ', 'IPB', 38.2, ''),
('331035', 'ARSITEKTUR LANSEKAP ', 'IPB', 39.5, ''),
('331043', 'BIOKIMIA ', 'IPB', 36.3, ''),
('331051', 'BIOLOGI ', 'IPB', 38, ''),
('331065', 'EKONOMI SUMBERDAYA DAN LINGKUNGAN ', 'IPB', 39.5, ''),
('331081', 'ILMU DAN TEKNOLOGI KELAUTAN ', 'IPB', 37, ''),
('331102', 'ILMU KOMPUTER ', 'IPB', 42, ''),
('331116', 'KEDOKTERAN HEWAN ', 'IPB', 37, ''),
('331124', 'KIMIA ', 'IPB', 40, ''),
('331132', 'KOMUNIKASI DAN PENGEMBANGAN MASYARAKAT ', 'IPB', 37.5, ''),
('331146', 'KONSERVASI SUMBERDAYAHUTAN& EKOWISATA ', 'IPB', 38.4, ''),
('331154', 'MANAJEMEN HUTAN ', 'IPB', 39.5, ''),
('331221', 'STATISTIKA ', 'IPB', 39.8, ''),
('331235', 'TEKNIK MESIN DAN BIOSISTEM ', 'IPB', 37, ''),
('331243', 'TEKNOLOGI HASIL HUTAN ', 'IPB', 37.5, ''),
('331265', 'TEKNOLOGI INDUSTRI PERTANIAN ', 'IPB', 39.4, ''),
('331273', 'TEKNOLOGI PANGAN ', 'IPB', 40.5, ''),
('331281', 'NUTRISI DAN TEKNOLOGI PAKAN ', 'IPB', 34.2, ''),
('331295', 'TEKNOLOGI PRODUKSI TERNAK ', 'IPB', 37.5, ''),
('331316', 'TEKNIK SIPIL DAN LINGKUNGAN ', 'IPB', 42, ''),
('331324', 'TEKNOLOGI & MANAJEMEN PERIKANAN BUDIDAYA ', 'IPB', 37.6, ''),
('331332', 'EKONOMI DAN STUDI PEMBANGUNAN ', 'IPB', 40.5, ''),
('331346', 'MANAJEMEN ', 'IPB', 37.2, ''),
('331354', 'ILMU GIZI ', 'IPB', 40.2, ''),
('331362', 'EKONOMI SYARIAH ', 'IPB', 41, ''),
('331376', 'MANAJEMEN SUMBERDAYA LAHAN ', 'IPB', 38.6, ''),
('331384', 'PROTEKSI TANAMAN ', 'IPB', 33.1, ''),
('331392', 'MANAJEMEN SUMBERDAYA PERAIRAN ', 'IPB', 37.5, ''),
('331405', 'TEKNOLOGI HASIL PERAIRAN ', 'IPB', 35.6, ''),
('331413', 'TEKNOLOGI & MANAJEMEN PERIKANAN TANGKAP ', 'IPB', 36.8, ''),
('331435', 'METEOROLOGI TERAPAN ', 'IPB', 33.3, ''),
('331436', 'SILVIKULTUR ', 'IPB', 35.9, ''),
('331443', 'MATEMATIKA ', 'IPB', 40.4, ''),
('331451', 'FISIKA ', 'IPB', 36.9, ''),
('331465', 'ILMU KELUARGA DAN KONSUMEN ', 'IPB', 39.7, ''),
('331473', 'BISNIS ', 'IPB', 0, ''),
('351015', 'FAK. ILMU DAN TEKNOLOGI KEBUMIAN (FITB)', 'ITB', 48.5, ''),
('351023', 'FAK. TEKNIK PERTAMB. & PERMINYAKAN (FTTM)', 'ITB', 52, ''),
('351031', 'FAK. MATEMATIKA & ILMU PENGET. ALAM (FMIPA)', 'ITB', 46, ''),
('351045', 'FAKULTAS TEKNIK SIPIL & LINGKUNGAN (FTSL) - GANESH', 'ITB', 52.3, ''),
('351053', 'SEKOLAH FARMASI (SF)', 'ITB', 48, ''),
('351061', 'SEKOLAH ILMU & TEKNO. HAYATI - PROG. SAINS', 'ITB', 45, ''),
('351075', 'SEKOLAH TEK. ELEKTRO &INFORMATIKA (STEI)', 'ITB', 63, ''),
('351083', 'FAKULTAS TEKNOLOGI INDUSTRI (FTI) - GANESHA', 'ITB', 60, ''),
('351091', 'FAKULTAS TEKNIK MESIN & DIRGANTARA (FTMD)', 'ITB', 56.6, ''),
('351104', 'SEK. ARSITEKTUR, PERENC & PENGEMB KEBIJAKAN (SAPPK', 'ITB', 50.5, ''),
('351126', 'SEKOLAH ILMU & TEKNO HAYATI - PROG REKAYASA', 'ITB', 51, ''),
('351134', 'FAKULTAS TEKNIK SIPIL & LINGKUNGAN (FTSL) - JATINA', 'ITB', 0, ''),
('351142', 'FAKULTAS TEKNOLOGI INDUSTRI (FTI) - JATINANGOR', 'ITB', 0, ''),
('352011', 'FAKULTAS SENIRUPA DAN DESAIN (FSRD)', 'ITB', 47, ''),
('352025', 'SEKOLAH BISNIS DAN MANAJEMEN (SBM)', 'ITB', 45, ''),
('361016', 'PENDIDIKAN DOKTER', 'UNPAD', 57.1, ''),
('361024', 'MATEMATIKA', 'UNPAD', 38.1, ''),
('361032', 'KIMIA', 'UNPAD', 36.8, ''),
('361046', 'FISIKA', 'UNPAD', 39.2, ''),
('361054', 'BIOLOGI', 'UNPAD', 37.7, ''),
('361062', 'STATISTIKA', 'UNPAD', 41.3, ''),
('361076', 'AGROTEKNOLOGI', 'UNPAD', 39.9, ''),
('361084', 'AGRIBISNIS', 'UNPAD', 43.2, ''),
('361092', 'PENDIDIKAN DOKTER GIGI', 'UNPAD', 46.4, ''),
('361105', 'ILMU PETERNAKAN', 'UNPAD', 36.2, ''),
('361113', 'PERIKANAN', 'UNPAD', 38.2, ''),
('361121', 'ILMU KEPERAWATAN', 'UNPAD', 38.2, ''),
('361135', 'ILMU KELAUTAN', 'UNPAD', 37.9, ''),
('361143', 'TEKNOLOGI PANGAN', 'UNPAD', 41.1, ''),
('361151', 'TEKNIK PERTANIAN', 'UNPAD', 39.1, ''),
('361165', 'FARMASI', 'UNPAD', 44.1, ''),
('361173', 'TEKNIK GEOLOGI', 'UNPAD', 41, ''),
('361181', 'PSIKOLOGI', 'UNPAD', 47.1, ''),
('361195', 'GEOFISIKA', 'UNPAD', 39.1, ''),
('361202', 'TEKNIK INFORMATIKA', 'UNPAD', 40.9, ''),
('361216', 'TEKNOLOGI INDUSTRI PERTANIAN', 'UNPAD', 36.3, ''),
('361224', 'TEKNIK ELEKTRO', 'UNPAD', 0, ''),
('362012', 'ILMU HUKUM', 'UNPAD', 41.9, ''),
('362026', 'AKUNTANSI', 'UNPAD', 52.6, ''),
('362034', 'EKONOMI PEMBANGUNAN', 'UNPAD', 49.1, ''),
('362042', 'MANAJEMEN', 'UNPAD', 51.3, ''),
('362056', 'ILMU ADMINISTRASI NEGARA', 'UNPAD', 41.7, ''),
('362064', 'ILMU HUBUNGAN INTERNASIONAL', 'UNPAD', 48.4, ''),
('362072', 'ILMU KESEJAHTERAAN SOSIAL', 'UNPAD', 36, ''),
('362086', 'ILMU PEMERINTAHAN', 'UNPAD', 41.1, ''),
('362094', 'ANTROPOLOGI', 'UNPAD', 32, ''),
('362101', 'ILMU ADMINISTRASI BISNIS', 'UNPAD', 42.1, ''),
('362115', 'SASTRA INDONESIA', 'UNPAD', 35.6, ''),
('362123', 'SASTRA SUNDA', 'UNPAD', 30.9, ''),
('362131', 'ILMU SEJARAH', 'UNPAD', 35.1, ''),
('362145', 'SASTRA INGGRIS', 'UNPAD', 43.5, ''),
('362153', 'SASTRA PERANCIS', 'UNPAD', 39.6, ''),
('362161', 'SASTRA JEPANG', 'UNPAD', 42, ''),
('362175', 'SASTRA RUSIA', 'UNPAD', 32.1, ''),
('362183', 'SASTRA JERMAN', 'UNPAD', 38.6, ''),
('362191', 'SASTRA ARAB', 'UNPAD', 33.9, ''),
('362204', 'ILMU KOMUNIKASI', 'UNPAD', 46.6, ''),
('362212', 'ILMU PERPUSTAKAAN', 'UNPAD', 34.6, ''),
('362226', 'SOSIOLOGI', 'UNPAD', 34.5, ''),
('362234', 'ILMU POLITIK', 'UNPAD', 38.6, ''),
('362242', 'HUBUNGAN MASYARAKAT', 'UNPAD', 43.8, ''),
('362256', 'EKONOMI ISLAM', 'UNPAD', 0, ''),
('362264', 'MANAJEMEN KOMUNIKASI', 'UNPAD', 0, ''),
('362272', 'JURNALISTIK', 'UNPAD', 0, ''),
('362286', 'TELEVISI DAN FILM', 'UNPAD', 0, ''),
('411011', 'BIOLOGI ', 'UNSOED', 38.3, ''),
('411025', 'KIMIA ', 'UNSOED', 37.1, ''),
('411033', 'MATEMATIKA ', 'UNSOED', 37.2, ''),
('411041', 'FISIKA ', 'UNSOED', 36, ''),
('411042', 'KARTOGRAFI DAN PENGINDRAAN JAUH', 'UGM', 37.7, ''),
('411055', 'MANAJEMEN SUMBERDAYA PERAIRAN ', 'UNSOED', 36.6, ''),
('411056', 'PEMBANGUNAN WILAYAH', 'UGM', 34, ''),
('411063', 'BUDIDAYA PERAIRAN ', 'UNSOED', 36.6, ''),
('411071', 'TEKNIK PERTANIAN ', 'UNSOED', 38.6, ''),
('411085', 'TEKNIK ELEKTRO ', 'UNSOED', 41, ''),
('411093', 'TEKNIK SIPIL ', 'UNSOED', 40, ''),
('411106', 'PENDIDIKAN DOKTER ', 'UNSOED', 49.9, ''),
('411114', 'KESEHATAN MASYARAKAT ', 'UNSOED', 37, ''),
('411122', 'KEPERAWATAN ', 'UNSOED', 34, ''),
('411136', 'FARMASI ', 'UNSOED', 38.2, ''),
('411144', 'TEKNIK GEOLOGI ', 'UNSOED', 38, ''),
('411152', 'ILMU KELAUTAN ', 'UNSOED', 32, ''),
('411166', 'AGROTEKNOLOGI ', 'UNSOED', 35.2, ''),
('411174', 'AGRIBISNIS ', 'UNSOED', 38.7, ''),
('411182', 'ILMU DAN TEKNOLOGI PANGAN ', 'UNSOED', 34.9, ''),
('411196', 'PETERNAKAN ', 'UNSOED', 37.7, ''),
('411203', 'TEKNIK INFORMATIKA ', 'UNSOED', 41.4, ''),
('411211', 'PENDIDIKAN DOKTER GIGI ', 'UNSOED', 40, ''),
('411225', 'ILMU GIZI ', 'UNSOED', 37.5, ''),
('411233', 'PENDIDIKAN JASMANI KESEHATAN DAN REKREASI ', 'UNSOED', 27.4, ''),
('411241', 'TEKNIK INDUSTRI ', 'UNSOED', 0, ''),
('411455', 'TEKNOLOGI PANGAN & HASIL PERTANIAN', 'UGM', 38.9, ''),
('412013', 'ILMU HUKUM ', 'UNSOED', 35, ''),
('412021', 'SOSIOLOGI ', 'UNSOED', 28.6, ''),
('412035', 'ADMINISTRASI NEGARA ', 'UNSOED', 37.1, ''),
('412043', 'MANAJEMEN ', 'UNSOED', 37.8, ''),
('412051', 'EKONOMI PEMBANGUNAN ', 'UNSOED', 35.6, ''),
('412065', 'AKUNTANSI ', 'UNSOED', 37.3, ''),
('412073', 'ILMU KOMUNIKASI ', 'UNSOED', 35.6, ''),
('412081', 'ILMU POLITIK ', 'UNSOED', 32.1, ''),
('412095', 'BAHASA DAN SASTRA INDONESIA ', 'UNSOED', 29.3, ''),
('412102', 'BAHASA DAN SASTRA INGGRIS ', 'UNSOED', 32.5, ''),
('412116', 'HUBUNGAN INTERNASIONAL ', 'UNSOED', 40.9, ''),
('412124', 'BAHASA JEPANG ', 'UNSOED', 33.5, ''),
('412132', 'PENDIDIKAN EKONOMI ', 'UNSOED', 28.2, ''),
('412146', 'PENDIDIKAN BAHASA DAN SASTRA INDONESIA ', 'UNSOED', 27, ''),
('412154', 'PENDIDIKAN BAHASA INGGRIS ', 'UNSOED', 30.3, ''),
('431013', 'KESEHATAN MASYARAKAT', 'UNDIP', 39.9, ''),
('431021', 'PENDIDIKAN DOKTER', 'UNDIP', 53.5, ''),
('431035', 'ILMU KEPERAWATAN', 'UNDIP', 38.3, ''),
('431043', 'ILMU GIZI', 'UNDIP', 38.4, ''),
('431051', 'MATEMATIKA', 'UNDIP', 38.4, ''),
('431065', 'BIOLOGI', 'UNDIP', 37.8, ''),
('431073', 'KIMIA', 'UNDIP', 37.4, ''),
('431081', 'FISIKA', 'UNDIP', 37.4, ''),
('431095', 'STATISTIKA', 'UNDIP', 40.4, ''),
('431102', 'TEKNIK INFORMATIKA', 'UNDIP', 43.8, ''),
('431116', 'MANAJEMEN SD PERAIRAN', 'UNDIP', 38.9, ''),
('431124', 'BUDIDAYA PERAIRAN', 'UNDIP', 37.8, ''),
('431132', 'PEMANFAATAN SD PERIKANAN', 'UNDIP', 37.9, ''),
('431146', 'ILMU KELAUTAN', 'UNDIP', 38.8, ''),
('431154', 'OCEANOGRAFI', 'UNDIP', 37.4, ''),
('431162', 'TEKNOLOGI HASIL PERIKANAN', 'UNDIP', 39.9, ''),
('431176', 'TEKNIK SIPIL', 'UNDIP', 42, ''),
('431184', 'TEKNIK ARSITEKTUR', 'UNDIP', 41.5, ''),
('431192', 'TEKNIK MESIN', 'UNDIP', 40.4, ''),
('431205', 'TEKNIK KIMIA', 'UNDIP', 41.1, ''),
('431213', 'TEKNIK ELEKTRO', 'UNDIP', 43.3, ''),
('431221', 'TEKNIK P W K', 'UNDIP', 38.9, ''),
('431235', 'TEKNIK INDUSTRI', 'UNDIP', 47.4, ''),
('431243', 'TEKNIK LINGKUNGAN', 'UNDIP', 40.4, ''),
('431251', 'TEKNIK PERKAPALAN', 'UNDIP', 40.7, ''),
('431264', 'ANTROPOLOGI SOSIAL', 'UNDIP', 0, ''),
('431265', 'TEKNIK GEOLOGI', 'UNDIP', 41.2, ''),
('431273', 'TEKNIK GEODESI', 'UNDIP', 40.4, ''),
('431281', 'SISTEM KOMPUTER', 'UNDIP', 43.4, ''),
('431295', 'PETERNAKAN', 'UNDIP', 37.9, ''),
('431302', 'TEKNOLOGI PANGAN', 'UNDIP', 41.6, ''),
('431316', 'AGROEKOTEKNOLOGI', 'UNDIP', 38.5, ''),
('431324', 'AGRIBISNIS', 'UNDIP', 40.4, ''),
('432015', 'BAHASA & SASTRA INDONESIA', 'UNDIP', 35.1, ''),
('432023', 'BAHASA & SASTRA INGGRIS', 'UNDIP', 36.7, ''),
('432031', 'SEJARAH INDONESIA', 'UNDIP', 34.7, ''),
('432045', 'ILMU PERPUSTAKAAN', 'UNDIP', 33.5, ''),
('432053', 'ILMU HUKUM', 'UNDIP', 41, ''),
('432061', 'MANAJEMEN', 'UNDIP', 47.6, ''),
('432075', 'ILMU EKONOMI & STUDI PEMB.', 'UNDIP', 42.8, ''),
('432083', 'AKUNTANSI', 'UNDIP', 47.1, ''),
('432091', 'ILMU ADM. PUBLIK', 'UNDIP', 37.1, ''),
('432104', 'ILMU ADM. BISNIS', 'UNDIP', 38.1, ''),
('432112', 'PEMERINTAHAN', 'UNDIP', 42.5, ''),
('432126', 'KOMUNIKASI', 'UNDIP', 42.1, ''),
('432134', 'PSIKOLOGI', 'UNDIP', 40, ''),
('432142', 'BAHASA JEPANG', 'UNDIP', 37.8, ''),
('432156', 'HUBUNGAN INTERNASIONAL', 'UNDIP', 40.1, ''),
('432172', 'EKONOMI ISLAM', 'UNDIP', 0, ''),
('441014', 'PENDIDIKAN DOKTER', 'UNS', 49.5, ''),
('441022', 'PSIKOLOGI', 'UNS', 43, ''),
('441036', 'AGROTEKNOLOGI / AGROEKOTEKNOLOGI', 'UNS', 37.7, ''),
('441044', 'AGRIBISNIS', 'UNS', 38.7, ''),
('441052', 'PETERNAKAN', 'UNS', 36.2, ''),
('441066', 'ILMU DAN TEKNOLOGI PANGAN', 'UNS', 36, ''),
('441074', 'TEKNIK SIPIL', 'UNS', 39.2, ''),
('441082', 'ARSITEKTUR', 'UNS', 38.3, ''),
('441096', 'TEKNIK INDUSTRI', 'UNS', 44.2, ''),
('441103', 'TEKNIK MESIN', 'UNS', 40.2, ''),
('441111', 'TEKNIK KIMIA', 'UNS', 40.2, ''),
('441125', 'MATEMATIKA', 'UNS', 38.2, ''),
('441133', 'FISIKA', 'UNS', 37.7, ''),
('441141', 'KIMIA', 'UNS', 37.9, ''),
('441155', 'BIOLOGI', 'UNS', 37.2, ''),
('441163', 'PERENCANAAN WILAYAH DAN KOTA (PWK)', 'UNS', 35, ''),
('441171', 'INFORMATIKA', 'UNS', 41.3, ''),
('441185', 'PENDIDIKAN FISIKA', 'UNS', 28.2, ''),
('441193', 'PENDIDIKAN KIMIA', 'UNS', 28.2, ''),
('441206', 'PENDIDIKAN BIOLOGI', 'UNS', 28.2, ''),
('441214', 'PENDIDIKAN MATEMATIKA', 'UNS', 38.7, ''),
('441222', 'PENDIDIKAN TEKNIK MESIN', 'UNS', 25.2, ''),
('441236', 'PENDIDIKAN TEKNIK BANGUNAN', 'UNS', 27.8, ''),
('441244', 'PENDIDIKAN TEKNIK INFORMATIKA & KOMPUTER', 'UNS', 29.8, ''),
('441252', 'ILMU TANAH', 'UNS', 32.4, ''),
('441266', 'PENYULUHAN DAN KOMUNIKASI PERTANIAN', 'UNS', 26.8, ''),
('441274', 'FARMASI', 'UNS', 39.9, ''),
('441282', 'TEKNIK ELEKTRO', 'UNS', 0, ''),
('441296', 'STATISTIKA', 'UNS', 0, ''),
('442016', 'ILMU ADMINISTRASI NEGARA', 'UNS', 39.1, ''),
('442024', 'ILMU KOMUNIKASI', 'UNS', 39.6, ''),
('442032', 'SOSIOLOGI', 'UNS', 38.1, ''),
('442046', 'ILMU HUKUM', 'UNS', 37.3, ''),
('442054', 'EKONOMI PEMBANGUNAN', 'UNS', 41.7, ''),
('442062', 'MANAJEMEN', 'UNS', 42.1, ''),
('442076', 'AKUNTANSI', 'UNS', 43.4, ''),
('442084', 'ILMU SEJARAH', 'UNS', 27.6, ''),
('442092', 'SASTRA INDONESIA', 'UNS', 35.1, ''),
('442105', 'SASTRA INGGRIS', 'UNS', 40.6, ''),
('442113', 'SASTRA DAERAH UNTUK SASTRA JAWA', 'UNS', 27.1, ''),
('442121', 'KRIYA SENI (DESAIN TEKSTIL)', 'UNS', 27.1, ''),
('442135', 'SENI RUPA MURNI (LUKIS, GRFS, PTNG, KRMIK)', 'UNS', 27.1, ''),
('442143', 'DESAIN INTERIOR', 'UNS', 37.6, ''),
('442151', 'DESAIN KOMUNIKASI VISUAL', 'UNS', 35.8, ''),
('442165', 'PENDIDIKAN SEJARAH', 'UNS', 26.6, ''),
('442173', 'PENDIDIKAN GEOGRAFI', 'UNS', 30.2, ''),
('442181', 'PEND. PANCASILA & KEWARGANEGARAAN (PPKN)', 'UNS', 27.1, ''),
('442195', 'PENDIDIKAN LUAR BIASA (PENDIDIKAN KHUSUS)', 'UNS', 25.6, ''),
('442202', 'PENDIDIKAN JASMANI, KESEHATAN & REKREASI', 'UNS', 27.6, ''),
('442216', 'PENDIDIKAN KEPELATIHAN OLAHRAGA', 'UNS', 35.5, ''),
('442232', 'PEND. BAHASA, SASTRA INDONESIA & DAERAH', 'UNS', 36.9, ''),
('442246', 'PENDIDIKAN BAHASA INGGRIS', 'UNS', 28.1, ''),
('442254', 'PENDIDIKAN SENI RUPA', 'UNS', 26.7, ''),
('442262', 'PENDIDIKAN SOSIOLOGI ANTROPOLOGI', 'UNS', 26.6, ''),
('442276', 'PEND. GURU SEKOLAH DASAR (PGSD) SURAKARTA', 'UNS', 26.8, ''),
('442284', 'BIMBINGAN DAN KONSELING', 'UNS', 24.8, ''),
('442292', 'PEND. GURU PEND ANAK USIA DINI (PG-PAUD)', 'UNS', 24.8, ''),
('442305', 'SASTRA ARAB', 'UNS', 32.5, ''),
('442313', 'PENDIDIKAN BAHASA JAWA', 'UNS', 22.3, ''),
('442321', 'PEND. GURU SEKOLAH DASAR (PGSD) KEBUMEN', 'UNS', 26.8, ''),
('442335', 'HUBUNGAN INTERNASIONAL', 'UNS', 41.4, ''),
('442343', 'PENDIDIKAN AKUTANSI', 'UNS', 27.4, ''),
('442351', 'PENDIDIKAN ADM PERKANTORAN', 'UNS', 26.9, ''),
('442365', 'PENDIDIKAN EKONOMI', 'UNS', 30.3, ''),
('471011', 'BIOLOGI', 'UGM', 38.9, ''),
('471025', 'FARMASI', 'UGM', 45.4, ''),
('471033', 'GEOGRAFI DAN ILMU LINGKUNGAN', 'UGM', 37.9, ''),
('471063', 'PENDIDIKAN DOKTER', 'UGM', 57.3, ''),
('471071', 'ILMU KEPERAWATAN', 'UGM', 39.2, ''),
('471085', 'GIZI KESEHATAN', 'UGM', 42.3, ''),
('471093', 'PENDIDIKAN DOKTER GIGI', 'UGM', 45.8, ''),
('471106', 'KEDOKTERAN HEWAN', 'UGM', 38.9, ''),
('471152', 'FISIKA', 'UGM', 37.9, ''),
('471166', 'KIMIA', 'UGM', 38.1, ''),
('471174', 'MATEMATIKA', 'UGM', 40.9, ''),
('471182', 'ILMU KOMPUTER', 'UGM', 51.2, ''),
('471196', 'STATISTIKA', 'UGM', 43.4, ''),
('471203', 'GEOFISIKA', 'UGM', 39.4, ''),
('471211', 'ELEKTRONIKA DAN INSTRUMENTASI', 'UGM', 41.9, ''),
('471225', 'AGRONOMI', 'UGM', 39.6, ''),
('471255', 'SOSIO EK. PERTANIAN (AGROBISNIS)', 'UGM', 37.9, ''),
('471263', 'ILMU HAMA & PENYAKIT TUMBUHAN', 'UGM', 37.9, ''),
('471271', 'PENYULUHAN & KOMUNIKASI PERTANIAN', 'UGM', 37.9, ''),
('471285', 'BUDIDAYA PERIKANAN', 'UGM', 37.9, ''),
('471306', 'MANAJ. SUMBER DAYA PERIKANAN', 'UGM', 39.4, ''),
('471314', 'MIKROBIOLOGI PERTANIAN', 'UGM', 38.4, ''),
('471322', 'ILMU DAN INDUSTRI PETERNAKAN', 'UGM', 40.3, ''),
('471336', 'ARSITEKTUR', 'UGM', 43.4, ''),
('471344', 'PERENCANAAN WILAYAH DAN KOTA', 'UGM', 40.7, ''),
('471352', 'TEKNIK GEODESI', 'UGM', 38.9, ''),
('471363', 'TEKNOLOGI INDUSTRI PERTANIAN', 'UGM', 41.4, ''),
('471366', 'TEKNIK GEOLOGI', 'UGM', 43.4, ''),
('471374', 'TEKNIK KIMIA', 'UGM', 47.2, ''),
('471382', 'TEKNIK ELEKTRO', 'UGM', 39.9, ''),
('471396', 'TEKNIK MESIN', 'UGM', 44.9, ''),
('471403', 'TEKNIK SIPIL', 'UGM', 45.9, ''),
('471411', 'TEKNIK NUKLIR', 'UGM', 46.4, ''),
('471425', 'TEKNIK FISIKA', 'UGM', 51.7, ''),
('471433', 'TEKNIK INDUSTRI', 'UGM', 49.4, ''),
('471441', 'TEKNIK PERTANIAN', 'UGM', 39.8, ''),
('471485', 'KEHUTANAN', 'UGM', 39.9, ''),
('471493', 'TEKNOLOGI INFORMASI', 'UGM', 53, ''),
('472013', 'ILMU EKONOMI', 'UGM', 47.6, ''),
('472021', 'MANAJEMEN', 'UGM', 53.6, ''),
('472035', 'AKUNTANSI', 'UGM', 54.1, ''),
('472043', 'ILMU FILSAFAT', 'UGM', 43.1, ''),
('472051', 'ILMU HUKUM', 'UGM', 43.1, ''),
('472065', 'ANTROPOLOGI BUDAYA', 'UGM', 36.6, ''),
('472073', 'ARKEOLOGI', 'UGM', 37.1, ''),
('472081', 'ILMU SEJARAH', 'UGM', 36.1, ''),
('472095', 'SASTRA ARAB', 'UGM', 36.8, ''),
('472102', 'SASTRA INDONESIA', 'UGM', 36.7, ''),
('472116', 'SASTRA INGGRIS', 'UGM', 47.4, ''),
('472124', 'SASTRA NUSANTARA', 'UGM', 29.6, ''),
('472132', 'SASTRA PERANCIS', 'UGM', 39.5, ''),
('472146', 'SASTRA JEPANG', 'UGM', 46.4, ''),
('472154', 'BAHASA KOREA', 'UGM', 41.8, ''),
('472162', 'MANAJEMEN DAN KEBIJAKAN PUBLIK (AN)', 'UGM', 46.7, ''),
('472176', 'ILMU HUBUNGAN INTERNASIONAL', 'UGM', 49.6, ''),
('472184', 'ILMU PEMERINTAHAN (POLITIK & PEMERINTAHAN)', 'UGM', 40.6, ''),
('472192', 'ILMU SOSIATRI/PEMB. SOSIAL & KESEJAHTERAAN', 'UGM', 40.1, ''),
('472205', 'ILMU KOMUNIKASI', 'UGM', 49.6, ''),
('472213', 'SOSIOLOGI', 'UGM', 38.6, ''),
('472221', 'PSIKOLOGI', 'UGM', 47.1, ''),
('472235', 'PARIWISATA', 'UGM', 40.4, ''),
('481241', 'ILMU TANAH', 'UGM', 37.8, ''),
('511011', 'FISIKA ', 'ITS', 40.2, ''),
('511025', 'MATEMATIKA ', 'ITS', 45.2, ''),
('511033', 'STATISTIKA ', 'ITS', 40.2, ''),
('511041', 'KIMIA ', 'ITS', 41.2, ''),
('511055', 'BIOLOGI ', 'ITS', 36.7, ''),
('511063', 'TEKNIK MESIN ', 'ITS', 48.2, ''),
('511071', 'TEKNIK ELEKTRO ', 'ITS', 49, ''),
('511085', 'TEKNIK KIMIA ', 'ITS', 47.1, ''),
('511093', 'TEKNIK FISIKA ', 'ITS', 45.2, ''),
('511106', 'TEKNIK INDUSTRI ', 'ITS', 49.8, ''),
('511114', 'TEKNIK MATERIAL DAN METALURGI ', 'ITS', 43.2, ''),
('511122', 'TEKNIK SIPIL ', 'ITS', 44.7, ''),
('511136', 'ARSITEKTUR ', 'ITS', 43.2, ''),
('511144', 'TEKNIK LINGKUNGAN ', 'ITS', 44.7, ''),
('511152', 'TEKNIK GEOMATIKA ', 'ITS', 39.2, ''),
('511166', 'PERENCANAAN WILAYAH DAN KOTA ', 'ITS', 36, ''),
('511174', 'TEKNIK PERKAPALAN ', 'ITS', 45.1, ''),
('511182', 'TEKNIK KELAUTAN ', 'ITS', 42.8, ''),
('511196', 'TEKNIK SISTEM PERKAPALAN ', 'ITS', 40.8, ''),
('511203', 'TEKNIK INFORMATIKA ', 'ITS', 49.7, ''),
('511211', 'SISTEM INFORMASI ', 'ITS', 42.3, ''),
('511225', 'DESAIN PRODUK INDUSTRI (DKV, DESPRO) ', 'ITS', 0, ''),
('511233', 'TRANSPORTASI LAUT ', 'ITS', 0, ''),
('511241', 'TEK. SIST PERKAPALAN (GLR GANDA ITS-JERMAN) ', 'ITS', 51.2, ''),
('511255', 'TEKNIK MULTIMEDIA DAN JARINGAN ', 'ITS', 45.9, ''),
('511263', 'MANAJEMEN BISNIS ', 'ITS', 39.3, ''),
('511271', 'TEKNIK GEOFISIKA ', 'ITS', 40.1, ''),
('511285', 'DESAIN INTERIOR ', 'ITS', 43.4, ''),
('521012', 'PENDIDIKAN DOKTER', 'UNAIR', 52.9, ''),
('521026', 'PENDIDIKAN DOKTER GIGI', 'UNAIR', 42.7, ''),
('521034', 'PENDIDIKAN APOTEKER', 'UNAIR', 39.7, ''),
('521042', 'KEDOKTERAN HEWAN', 'UNAIR', 35, ''),
('521056', 'MATEMATIKA', 'UNAIR', 38.2, ''),
('521064', 'BIOLOGI', 'UNAIR', 37.6, ''),
('521072', 'FISIKA', 'UNAIR', 37.1, ''),
('521086', 'KIMIA', 'UNAIR', 38.7, ''),
('521094', 'KESEHATAN MASYARAKAT', 'UNAIR', 39.2, ''),
('521101', 'PENDIDIKAN NERS', 'UNAIR', 36, ''),
('521115', 'BUDIDAYA PERAIRAN', 'UNAIR', 35.6, ''),
('521123', 'PENDIDIKAN BIDAN', 'UNAIR', 41.2, ''),
('521131', 'TEKNOBIOMEDIK', 'UNAIR', 0, ''),
('521145', 'ILMU DAN TEKNOLOGI LINGKUNGAN', 'UNAIR', 36.8, ''),
('521153', 'SISTEM INFORMASI', 'UNAIR', 40.4, ''),
('521161', 'STATISTIKA', 'UNAIR', 43, ''),
('521175', 'ILMU GIZI', 'UNAIR', 40.7, ''),
('521183', 'PENDIDIKAN DOKTER HEWAN (PDD BANYUWANGI)', 'UNAIR', 33.5, ''),
('521191', 'KESEHATAN MASYARAKAT (PDD BANYUWANGI)', 'UNAIR', 37.5, ''),
('521204', 'BUDIDAYA PERAIRAN (PDD BANYUWANGI)', 'UNAIR', 33.3, ''),
('521212', 'TEKNOLOGI INDUSTRI HASIL PERIKANAN', 'UNAIR', 0, ''),
('522014', 'ILMU HUKUM', 'UNAIR', 40.1, ''),
('522022', 'ILMU ADMINISTRASI NEGARA', 'UNAIR', 38.1, ''),
('522036', 'PSIKOLOGI', 'UNAIR', 45.1, ''),
('522044', 'SOSIOLOGI', 'UNAIR', 36.1, ''),
('522052', 'ILMU POLITIK', 'UNAIR', 37.6, ''),
('522066', 'ILMU HUBUNGAN INTERNASIONAL', 'UNAIR', 47.1, ''),
('522074', 'ANTROPOLOGI SOSIAL', 'UNAIR', 26.7, ''),
('522082', 'EKONOMI PEMBANGUNAN', 'UNAIR', 40.2, ''),
('522096', 'MANAJEMEN', 'UNAIR', 47.6, ''),
('522103', 'AKUNTANSI', 'UNAIR', 47.9, ''),
('522111', 'ILMU KOMUNIKASI', 'UNAIR', 44.1, ''),
('522125', 'ILMU SEJARAH', 'UNAIR', 33.1, ''),
('522133', 'ILMU INFORMASI DAN PERPUSTAKAAN', 'UNAIR', 35.7, ''),
('522141', 'SASTRA INGGRIS', 'UNAIR', 37.1, ''),
('522155', 'SASTRA INDONESIA', 'UNAIR', 32.1, ''),
('522163', 'SASTRA JEPANG', 'UNAIR', 39.3, ''),
('522171', 'EKONOMI ISLAM', 'UNAIR', 39, ''),
('522185', 'AKUNTANSI (PDD BANYUWANGI)', 'UNAIR', 44.8, ''),
('561016', 'MANAJEMEN SUMBERDAYA PERAIRAN ', 'UB', 38.6, ''),
('561024', 'BUDIDAYA PERAIRAN ', 'UB', 38.7, ''),
('561032', 'TEKNIK SIPIL ', 'UB', 40.7, ''),
('561046', 'TEKNIK MESIN ', 'UB', 39.7, ''),
('561054', 'TEKNIK ELEKTRO ', 'UB', 43.1, ''),
('561062', 'ARSITEKTUR ', 'UB', 41.6, ''),
('561076', 'TEKNIK PENGAIRAN ', 'UB', 39.2, ''),
('561084', 'PENDIDIKAN DOKTER ', 'UB', 50.1, ''),
('561092', 'ILMU DAN TEKNOLOGI PANGAN ', 'UB', 38.5, ''),
('561105', 'BIOLOGI ', 'UB', 38.5, ''),
('561113', 'FISIKA ', 'UB', 37.9, ''),
('561121', 'KIMIA ', 'UB', 39.2, ''),
('561135', 'MATEMATIKA ', 'UB', 39.7, ''),
('561143', 'PEMANFAATAN SUMBERDAYA PERIKANAN ', 'UB', 38, ''),
('561151', 'TEKNOLOGI HASIL PERIKANAN ', 'UB', 38.7, ''),
('561165', 'AGROBISNIS PERIKANAN ', 'UB', 37.8, ''),
('561173', 'KETEKNIKAN PERTANIAN ', 'UB', 37.8, ''),
('561181', 'STATISTIKA ', 'UB', 39.7, ''),
('561195', 'PERENCANAAN WILAYAH & KOTA ', 'UB', 38.7, ''),
('561202', 'TEKNOLOGI INDUSTRI PERTANIAN ', 'UB', 40.7, ''),
('561216', 'ILMU KEPERAWATAN ', 'UB', 40.9, ''),
('561232', 'GIZI KESEHATAN / ILMU GIZI ', 'UB', 38.2, ''),
('561246', 'TEKNIK INDUSTRI ', 'UB', 41.4, ''),
('561254', 'TEKNIK INFORMATIKA ', 'UB', 39.7, ''),
('561262', 'AGROEKOTEKNOLOGI ', 'UB', 38.7, ''),
('561276', 'AGRIBISNIS ', 'UB', 40, ''),
('561284', 'PETERNAKAN ', 'UB', 36.2, ''),
('561292', 'PENDIDIKAN DOKTER HEWAN ', 'UB', 36, ''),
('561305', 'PENDIDIKAN DOKTER GIGI ', 'UB', 41, ''),
('561313', 'ILMU KELAUTAN ', 'UB', 30, ''),
('561321', 'KEBIDANAN ', 'UB', 39, ''),
('561335', 'FARMASI ', 'UB', 42.2, ''),
('561365', 'SISTEM INFORMASI ', 'UB', 38.2, ''),
('561373', 'TEKNIK KIMIA ', 'UB', 40.5, ''),
('561395', 'TEKNIK GEOFISIKA ', 'UB', 38.2, ''),
('561416', 'BIOTEKNOLOGI ', 'UB', 0, ''),
('561446', 'TEKNIK LINGKUNGAN ', 'UB', 39.6, ''),
('561476', 'PENDIDIKAN TEKNOLOGI INFORMASI ', 'UB', 0, ''),
('562012', 'ILMU HUKUM ', 'UB', 41.8, ''),
('562026', 'EKONOMI PEMBANGUNAN ', 'UB', 45, ''),
('562034', 'ILMU ADMINISTRASI PUBLIK ', 'UB', 42.8, ''),
('562042', 'ILMU ADMINISTRASI BISNIS ', 'UB', 44.6, ''),
('562056', 'MANAJEMEN ', 'UB', 47.1, ''),
('562064', 'AKUNTANSI ', 'UB', 47, ''),
('562072', 'SOSIOLOGI ', 'UB', 34.8, ''),
('562086', 'ILMU KOMUNIKASI ', 'UB', 46.4, ''),
('562094', 'PSIKOLOGI ', 'UB', 40, ''),
('562101', 'HUBUNGAN INTERNASIONAL ', 'UB', 46, ''),
('562115', 'SASTRA INGGRIS ', 'UB', 40, ''),
('562123', 'SASTRA JEPANG ', 'UB', 41, ''),
('562131', 'BAHASA DAN SASTRA PERANCIS ', 'UB', 40.1, ''),
('562145', 'ILMU POLITIK ', 'UB', 35.3, ''),
('562175', 'ILMU PEMERINTAHAN ', 'UB', 42.5, ''),
('562191', 'ADMINISTRASI PERPAJAKAN ', 'UB', 42, ''),
('562226', 'EKONOMI ISLAM ', 'UB', 38.4, ''),
('562242', 'ILMU PERPUSTAKAAN ', 'UB', 33.4, ''),
('562256', 'PARIWISATA ', 'UB', 38, ''),
('562272', 'PENDIDIKAN BHS & SASTRA INGGRIS ', 'UB', 31.4, ''),
('562286', 'PENDIDIKAN BHS & SASTRA JEPANG ', 'UB', 30.3, ''),
('562294', 'PENDIDIKAN BHS & SASTRA INDONESIA ', 'UB', 25.1, ''),
('562323', 'ADMINISTRASI PENDIDIKAN', 'UB', 0, ''),
('562324', 'SENI RUPA MURNI ', 'UB', 0, ''),
('562345', 'ANTROPOLOGI SOSIAL ', 'UB', 0, ''),
('562346', 'SASTRA CINA ', 'UB', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `prodi_siswa`
--

CREATE TABLE `prodi_siswa` (
  `prodiID` char(6) NOT NULL,
  `NP` int(11) NOT NULL,
  `universitas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prodi_siswa`
--

INSERT INTO `prodi_siswa` (`prodiID`, `NP`, `universitas`) VALUES
('311011', 6, 'UI'),
('311011', 7, 'UI'),
('311011', 9, 'UI'),
('311114', 5, 'UI'),
('311136', 3, 'UI'),
('312013', 12, 'UI'),
('312013', 16, 'UI'),
('312051', 17, 'UI'),
('312051', 18, 'UI'),
('352011', 13, 'ITB'),
('352025', 14, 'ITB'),
('362042', 19, 'UNPAD'),
('362042', 20, 'UNPAD'),
('362042', 21, 'UNPAD'),
('411144', 10, 'UNSOED'),
('411241', 11, 'UNSOED'),
('432083', 22, 'UNDIP'),
('432126', 15, 'UNDIP'),
('471344', 4, 'UGM'),
('471433', 8, 'UGM');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `NP` int(11) NOT NULL,
  `status` varchar(15) NOT NULL,
  `sekolah` varchar(50) NOT NULL,
  `tingkat` varchar(3) NOT NULL,
  `program` char(3) NOT NULL,
  `kelasID` char(4) DEFAULT NULL,
  `jadwalID` char(5) DEFAULT NULL,
  `tglRegis` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`NP`, `status`, `sekolah`, `tingkat`, `program`, `kelasID`, `jadwalID`, `tglRegis`) VALUES
(3, 'aktif', 'sma 8 jakarta', 'sma', 'ipa', 'J09', 'WD001', '2016-05-15 06:42:18'),
(4, 'aktif', 'sma 68 jakarta', 'sma', 'ipa', 'A01', 'WD002', '2016-05-19 18:21:00'),
(5, 'aktif', 'sma 78 jakarta', 'sma', 'ipa', 'A03', 'WD003', '0000-00-00 00:00:00'),
(6, 'aktif', 'sma 58 jakarta', 'sma', 'ipa', 'A01', 'WD004', '2016-04-20 09:25:40'),
(7, 'aktif', 'sma 70 jakarta', 'sma', 'ipa', 'A05', 'WD005', '0000-00-00 00:00:00'),
(8, 'aktif', 'sma 88 jakarta', 'sma', 'ipa', 'C01', 'WD001', '0000-00-00 00:00:00'),
(9, 'aktif', 'sma 90 jakarta', 'sma', 'ipa', 'C02', 'WD002', '0000-00-00 00:00:00'),
(10, 'aktif', 'sma 105 jakarta', 'sma', 'ipa', 'C03', 'WD003', '0000-00-00 00:00:00'),
(11, 'aktif', 'sma 13 jakarta', 'sma', 'ipa', 'C04', 'WD004', '0000-00-00 00:00:00'),
(12, 'aktif', 'sma 39 jakarta', 'sma', 'ips', 'B01', 'WD001', '0000-00-00 00:00:00'),
(13, 'aktif', 'sma labschool jakarta', 'sma', 'ips', 'B02', 'WD002', '0000-00-00 00:00:00'),
(14, 'aktif', 'sma 63 jakarta', 'sma', 'ips', 'B03', 'WD003', '0000-00-00 00:00:00'),
(15, 'aktif', 'sma 43 jakarta', 'sma', 'ips', 'B04', 'WD004', '0000-00-00 00:00:00'),
(16, 'aktif', 'sma 35 jakarta', 'sma', 'ips', 'B05', 'WD005', '0000-00-00 00:00:00'),
(17, 'aktif', 'sma 12 jakarta', 'sma', 'ips', 'B01', 'WD001', '0000-00-00 00:00:00'),
(18, 'aktif', 'sma 6 jakarta', 'sma', 'ips', 'B02', 'WD002', '0000-00-00 00:00:00'),
(19, 'aktif', 'sma 4 jakarta', 'sma', 'ips', 'B03', 'WD003', '0000-00-00 00:00:00'),
(20, 'aktif', 'sma 25 jakarta', 'sma', 'ips', 'B04', 'WD004', '0000-00-00 00:00:00'),
(21, 'aktif', 'sma 37 jakarta', 'sma', 'ipc', 'IC1', 'IN001', '0000-00-00 00:00:00'),
(22, 'aktif', 'sma 95 jakarta', 'sma', 'ipc', 'IC2', 'IN001', '0000-00-00 00:00:00'),
(23, 'aktif', 'sma 37 jakarta', 'sma', 'ipc', 'IC3', 'IN001', '0000-00-00 00:00:00'),
(24, 'aktif', 'smp 115 jakarta', 'smp', 'smp', 'D01', 'WD001', '0000-00-00 00:00:00'),
(25, 'aktif', 'smp 8 jakarta', 'smp', 'smp', 'D02', 'WD002', '0000-00-00 00:00:00'),
(26, 'aktif', 'smp 76 jakarta', 'smp', 'smp', 'D01', 'WD001', '0000-00-00 00:00:00'),
(44, 'nonaktif', 'sma', 'sma', 'ips', NULL, NULL, '2016-04-20 06:19:54'),
(45, 'nonaktif', 'sma', 'sma', 'ips', NULL, NULL, '2016-04-20 06:22:20'),
(46, 'nonaktif', '08', 'sma', 'ips', NULL, NULL, '2016-04-20 06:26:54'),
(47, 'nonaktif', 'pacil', 'smp', 'smp', NULL, NULL, '2016-04-20 06:31:46'),
(48, 'nonaktif', 'ini', 'sma', 'ips', NULL, NULL, '2016-04-20 06:35:02'),
(49, 'nonaktif', 'SMA Negeri 8 Jakarta', 'sma', 'ips', NULL, NULL, '2016-04-20 07:20:32'),
(50, '', 'sma 8', 'sma', 'ips', NULL, NULL, '2016-04-20 07:59:06'),
(55, 'nonaktif', 'sma', 'sma', 'ipa', NULL, NULL, '2016-04-21 11:05:00'),
(57, 'nonaktif', 'pacil', 'sma', 'ipa', NULL, NULL, '2016-05-18 14:44:16'),
(58, 'nonaktif', 'pacil', 'sma', 'ipa', NULL, NULL, '2016-05-18 14:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `tes`
--

CREATE TABLE `tes` (
  `id` char(6) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tes`
--

INSERT INTO `tes` (`id`, `nama`, `tanggal`) VALUES
('TOSBA', 'TO SBMPTN ', '2016-05-19'),
('TOSBA1', 'TO SBMPTN 1 IPA', '2015-11-05'),
('TOSBA2', 'TO SBMPTN 2 IPA', '2015-11-07'),
('TOSBA3', 'TO SBMPTN 3 IPA', '2015-11-09'),
('TOSBA5', 'TO SBMPTN 53 IPA', '2016-05-18'),
('TOSBA6', 'TO SBMPTN 677 IPA', '2016-05-19'),
('TOSBA7', 'TO SBMPTN 700 IPA', '2016-05-20'),
('TOSBS1', 'TO SBMPTN 1 IPS', '2015-11-06'),
('TOSBS2', 'TO SBMPTN 2 IPS', '2015-11-08'),
('TOSBS3', 'TO SBMPTN 3 IPS', '2015-11-10'),
('TOSUA1', 'TO SIMAK UI IPA 1', '2015-11-23'),
('TOSUA2', 'TO SIMAK UI IPA 2', '2015-11-24'),
('TOSUA3', 'TO SIMAK UI IPA 3', '2015-11-25'),
('TOSUA4', 'TO SIMAK UI IPA 4', '2015-11-26'),
('TOSUA5', 'TO SIMAK UI IPA 5', '2015-11-27'),
('TOSUS1', 'TO SIMAK UI IPS 1', '2015-11-28'),
('TOSUS2', 'TO SIMAK UI IPS 2', '2015-11-29'),
('TOSUS3', 'TO SIMAK UI IPS 3', '2015-11-30'),
('TOSUS4', 'TO SIMAK UI IPS 4', '2015-12-01'),
('TOSUS5', 'TO SIMAK UI IPS 5', '2015-12-02'),
('TOUNA1', 'TO UN IPA 1', '2015-11-11'),
('TOUNA2', 'TO UN IPA 2', '2015-11-13'),
('TOUNA3', 'TO UN IPA 3', '2015-11-15'),
('TOUNP1', 'TO UN SMP 1', '2015-11-17'),
('TOUNP2', 'TO UN SMP 2', '2015-11-18'),
('TOUNP3', 'TO UN SMP 3', '2015-11-19'),
('TOUNP4', 'TO UN SMP 4', '2015-11-20'),
('TOUNP5', 'TO UN SMP 5', '2015-11-21'),
('TOUNP6', 'TO UN SMP 6', '2015-11-22'),
('TOUNS1', 'TO UN IPS 1', '2015-11-12'),
('TOUNS2', 'TO UN IPS 2', '2015-11-14'),
('TOUNS3', 'TO UN IPS 3', '2015-11-16');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `namaDpn` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `namaBlkg` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `tlpRumah` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `tpt_lahir` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `noHP` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `ROLE` int(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `namaDpn`, `namaBlkg`, `gender`, `tlpRumah`, `alamat`, `tpt_lahir`, `tgl_lahir`, `noHP`, `auth_key`, `password_hash`, `email`, `status`, `created_at`, `updated_at`, `ROLE`) VALUES
(1, '7770800001', 'DWI DORA', 'SAKTI', 'L', '7112345', 'TEBET TIMUR', 'Jakarta', '2016-05-09', '8567891363', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'dwidorasakti@gmail.com', 10, 1460107381, 1463685402, 20),
(2, '7800800001', 'SEPTIAN', 'NUGRAHA', 'L', '08', 'CAWANG', 'Jakarta', '0000-00-00', '81212121212', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'ianseptian@gmail.com', 10, 1460107381, 1461137589, 30),
(3, 'fad', 'FA', 'DEL', 'L', '098', 'fade', 'jakart', '0000-00-00', '09', 'tn7h9GI0zHb2cNqX3DwGBj0g2VBCPHPv', '$2y$13$FVbKkk8OXsAnAGEfrYPTiOJKGc2QAtevc8GJESea2miMPRWLjsDve', 'fadel@lalala.id', 10, 1460137289, 1461131043, 40),
(4, '1153080002', 'AGUS', 'WIRAATMADJA', 'L', '5811451', 'JL ANGGUR 3 NO 20 RT 10 RW 08 RAWA BUAYA CENGKARENG', 'Jakarta', '1997-06-18', '85311206891', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'agustinus.wiraatmadja@live.com', 10, 1460107381, 1463681897, 40),
(5, '1153080003', 'ALFRED HARTOYO', 'ALPHANTO', 'L', '55798899', 'JL BETA 111 NO 132 RT 02 RW 08 CIMONE PERMAI KARAWACI TANGERANG', 'Jakarta', '1997-12-31', '85888519913', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'alfred_hartoyo@yahoo.co.id', 10, 1460107381, 1460107381, 40),
(6, '1153080004', 'ANGELINE', 'HARTADHI', 'P', '4521970', 'JL KELAPA LILIN IX BLOK N 16 NO 20 RT 30 RT 12', 'Jakarta', '0000-00-00', '87884731995', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'angeline.hartadhi@gmail.com', 10, 1460107381, 1463626828, 40),
(7, '1153080005', 'ARDIAN PINATRA', 'LIANTO', 'L', '6404110', 'JL GRIYA INTI SENTOSA BLOK M/21 RT 02 RW 20', 'Jakarta', '1997-01-03', '81286578989', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'ardianpinatram@gmail.com', 10, 1460107381, 1460107381, 40),
(8, '1153080006', 'AREFO', 'ESTRADA', 'L', '8619775', 'JL MALAKA HIJAU IV NO 7 MALAKA COUNTRY RT 13 RW 10', 'Jakarta', '1998-06-30', '81316572244', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'arefoestrada30@gmail.com', 10, 1460107381, 1460107381, 40),
(9, '1153080007', 'ARNAN', 'KUNCORO', 'L', '5473906', 'JL KELAPA SAWIT 13 BF10/08 GADING SERPONG RT 04 RW 13', 'Jakarta', '1997-06-07', '81299328310', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'arnan_kuncoro@yahoo.co,id', 10, 1460107381, 1460107381, 40),
(10, '1153080008', 'BATARA', 'TRIARGI', 'L', '6314540', 'TANAH SEREAL RAYA RT 10 RW 07 NO 15 JAK BAR', 'Jakarta', '1997-11-03', '87882761566', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'batara.triargi@gmail.com', 10, 1460107381, 1460107381, 40),
(11, '1153080009', 'CHRIS ALVIN', 'AROEF', 'L', '8469221', 'RAYA HOUSING BLOK I NO 12 PONDOK GEDE RT 05 RW 01 ', 'Jakarta', '1997-12-24', '81219370707', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'chalvin_aroef97@yahoo.com', 10, 1460107381, 1460107381, 40),
(12, '2153082010', 'CHRISTIAN GERALD', 'REZA', 'L', '7413230', 'JL CEMPEDAK 4 BLOK G9 NO 30 PAMULANG ESTATE RT 06 RW 13', 'Jakarta', '1997-10-17', '87883130582', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'christian_gerald_reza@yahoo.com', 10, 1460107381, 1460107381, 40),
(13, '2153082011', 'EZRA SIEKTA', 'WIBOWO', 'L', '5383481', 'BSD SEKTOR 1.1 JL HANJUANG RAYA I3/11 SERPONG TANGSEL RT 01 RW 10', 'Jakarta', '1997-10-03', '81219190822', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'ezraoye@yahoo.com', 10, 1460107381, 1460107381, 40),
(14, '2153082012', 'FRANCISCA', 'BELLA', 'P', '43934053', 'JL SEMANGKA NO 44 TANJUNG PRIOK RT 01 RW 10', 'Jakarta', '1997-01-19', '81210022946', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'ciscabella@gmail.com', 10, 1460107381, 1460107381, 40),
(15, '2153082013', 'GABRIELLA', 'ANINDYAH', 'P', '93258607', 'GRIYA BNI UNIT 215 JL SIMPRUG GARDEN VII RT 02 RW 02', 'Jakarta', '1997-08-07', '87888128143', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'gabyanindyah@yahoo.com', 10, 1460107381, 1460107381, 40),
(16, '2153082014', 'INDRA', 'WIJAYA', 'L', '54360821', 'PERUMAHAN DAAN MOGOT BLOK JA NO 9 RT 06 RW 17 NO JA/9', 'Jakarta', '1997-04-09', '81511084420', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'maglon 94@yahoo.co.id', 10, 1460107381, 1460107381, 40),
(17, '2153082015', 'ISNI NUR', 'SADRINA', 'P', '93696988', 'TAMAN LAGUNA BLOK J NO 10 JALAN TRANSYOGI KM 2 CIBUBUR JATIKARYA RT 02 RW 02 ', 'Jakarta', '1997-04-11', '81288575138', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'isni.shishi@hotmail.com', 10, 1460107381, 1460107381, 40),
(18, '2153082016', 'JAMES WILLIAM', 'RINALDI', 'L', '6496858', 'JL KARANG ANYAR UTARA RT 8/9 NO.10', 'Jakarta', '1997-03-06', '81510099379', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'jrinaldi97@gmail.com', 10, 1460107381, 1460107381, 40),
(19, '2153082017', 'JESSICA', 'JOVIA', 'P', '68715063', 'PERUMAHAN PALEM GANDA ASRI II BLOK B/14 CLUSTER BB JL RAYA RADEN SALEH, KARANG TENGAH, CILEDUG', 'Jakarta', '1996-07-12', '83806106888', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'jessicajovia@ymail.com', 10, 1460107381, 1460107381, 40),
(20, '2153082018', 'JOSHUA', 'PHARTOGI', 'L', '5381079', 'VILLA MELATI MAS L4 NO 19 RT 41 RW 09 ', 'Jakarta', '1997-04-06', '85719713087', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'jphartogi@yahoo.com', 10, 1460107381, 1460107381, 40),
(21, '3153084019', 'JOVITA', 'ANGELINA', 'P', '6501059', 'JL DANAU INDAH XI BLOK B1 SUNTER NO 20', 'Jakarta', '1997-01-31', '89639338650', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'jovitaangelina@gmail.com', 10, 1460107381, 1460107381, 40),
(22, '3153084020', 'KRESZEN LIVIANUS', 'GATALIE', 'L', '5867667', 'JALAN BUKIT DURI TANJAKAN NO.44 RT 02 RW 09', 'Jakarta', '1997-06-30', '87886396738', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'krz008@yahoo.com', 10, 1460107381, 1460107381, 40),
(23, '3153084021', 'MARCELLA FELICIA', 'WENANG', 'P', '64713054', 'JL PADEMANGAN II GANG I APADEMANGAN TIMUR RT 06 RW 06 NO 16', 'Jakarta', '1997-02-24', '87883950701', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'sparkle_candle20@yahoo.com', 10, 1460107381, 1460107381, 40),
(24, '4183086022', 'MARGARETHA', 'HERYANTO', 'P', '8502420', 'JL RAYA BEKASI BARAT RT 04 RW 02 NO 18', 'Jakarta', '1997-02-12', '89696256786', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'botolkecap@hotmail.com', 10, 1460107381, 1460107381, 40),
(25, '4183086023', 'MARIA PATRICIA', 'INGGRIANI', 'P', '7426564', 'PAMULANG PERMAI AX3 NO 8', 'Jakarta', '1997-06-28', '87886014983', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'mariapatricia.mariapatricia@gmail.com', 10, 1460107381, 1460107381, 40),
(26, '4183086024', 'MARIO AGNUS', 'DEI', 'L', '5375424', 'VILLA MELATI MAS L5-70 RT 42 RW 09 SERPONG TANGERANG', 'Jakarta', '1997-01-08', '87886696800', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'marioagnusdei@yahoo.com', 10, 1460107381, 1460107381, 40),
(27, '8800800001', 'ADIKA', 'PUTERA', 'L', '218578606', 'Jl. H. Sulaiman No.51 RT 8/2 Cipinang Melayu', 'Jakarta', '1996-02-19', '81932796742', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'dikoes19@gmail.com', 10, 1460107381, 1460107381, 50),
(28, '8800800002', 'ADLAN', 'DWIJAKA', 'L', '2318392', 'Jl. Pancoran Barat VII No.5, Jakarta Selatan', 'Jakarta', '1994-02-12', '8569000807', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'adlan.dwijaka94@gmail.com', 10, 1460107381, 1460107381, 50),
(29, '8800800003', 'ALIA', 'PRAWITASARI', 'P', '213921779', 'Jl. Matraman Dalam 3 No.11 RT 09/9 Jakarta Pusat, 10320', 'Jakarta', '1990-05-13', '8158121500', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'aliahaveanemail@yahoo.com', 10, 1460107381, 1460107381, 50),
(30, '8800800004', 'ANDIKA', 'RIZKIYANTO', 'L', '218484092', 'Perum. Bukit Kencana Blok AH-1, Jatirahayu, Pondok Melati, Bekasi 17414', 'Jakarta', '1993-05-05', '85695069876', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'andikariz@yahoo.com', 10, 1460107381, 1460107381, 50),
(31, '8800800005', 'DANANG SATRIA', 'DARMALAKSANA', 'L', '2177829661', 'Perumahan Sukmajaya Permata Blok H/11 RT 5/9 Sukmajaya, Depok', 'Jakarta', '1995-08-05', '85697382159', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'satria_darmalaksana@ymail.com', 10, 1460107381, 1460107381, 50),
(32, '8800800006', 'FADEL', 'MUHAMMAD', 'L', '2131323', 'Jl Tebet Timur Dalam VIII C No.2', 'Jakarta', '1995-10-20', '83897906599', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'fadelislamdx@gmail.com', 10, 1460107381, 1460107381, 50),
(33, '8800800007', 'FITRI RIZKI', 'TRIANA', 'P', '8781922', 'Jl Cempaka Putih Tengah II B No.4A, Jakarta-10520', 'Jakarta', '1995-07-03', '85959211349', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'fitrizki7@gmail.com', 10, 1460107381, 1460107381, 50),
(34, '8800800008', 'GHASSANI', 'AMALIA', 'P', '5647383', 'Taman Laguna blok J no.10 Jl. Alternatif Cibubur', 'Jakarta', '1997-05-01', '85210708868', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'ghassani.amalia0501@gmail.com', 10, 1460107381, 1460107381, 50),
(35, '8800800009', 'M RIZQI', 'RIFIANTO', 'L', '218298136', 'Jalan Tebet Timur dalam 10 D no. 26, Jakarta Selatan', 'Jakarta', '1995-06-27', '8568048524', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'rizqi.rifianto@hotmail.com', 10, 1460107381, 1460107381, 50),
(36, '8800800010', 'M TSANYI', 'ASSAD', 'L', '217975544', 'Komplek Bangdes Nomor 2, Jalan Raya Pasar Minggu, \rJakarta Selatan, 12510\r', 'Jakarta', '1998-07-31', '81286520502', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'm_tsay@yahoo.com', 10, 1460107381, 1460107381, 50),
(37, '8800800011', 'MAHARANI', 'KARLINA', 'P', '1231567', 'Jalan Tebet Timur 1H No.33, Tebet, Jakarta Selatan', 'Jakarta', '1994-11-01', '81315264118', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'maharanikarlinach@gmail.com', 10, 1460107381, 1460107381, 50),
(38, '8800800012', 'NISA', 'AZIZA', 'L', '2183787490', 'Jalan Tebet Barat Dalam IV no. 23 Tebet, Jakarta Selatan 12810', 'Jakarta', '1994-01-03', '81286993239', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'nisa_ti2011@yahoo.com', 10, 1460107381, 1460107381, 50),
(39, '8800800013', 'PRADITHASARI DEWI', 'SAUMI', 'P', '218303183', 'Jl Tebet Utara III B No.2 RT 2/8, Tebet, Jaksel', 'Jakarta', '1996-02-16', '83898597581', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'dithasaumi@gmail.com', 10, 1460107381, 1460107381, 50),
(40, '8800800014', 'YAUMIL', 'FAUZIYYAH', 'P', '218000334', 'Jl Inerbang No.44 RT 10/3 Batu Ampar, Jakarta', 'Jakarta', '1996-04-18', '83873377895', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'yaumilfauziyyah@ymail.com', 10, 1460107381, 1460107381, 50),
(41, '8800800015', 'ZIYAN MUHAMMAD', 'FARHAN', 'L', '8440514', 'Jl Rajawali VI No.7 Kranggan Permai, Cibubur, Jatisampurna, Bekasi', 'Jakarta', '1996-02-03', '87882818780', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'ziyanmf@gmail.com', 10, 1460107381, 1460107381, 50),
(42, '8800800016', 'TIZA', 'ANISA', 'P', '218731354', 'Perum. Permata Puri I Jl. Delima III Blok E6 no. 4 Cimanggis-Depok 16953\r', 'Jakarta', '1992-01-19', '85691750510', 'g1QQAQwMcvKEzOojQ4y1YGZWf-Jmg8tB', '$2y$13$H0Sto4QZQ67XDSv.MKtGjueGlYVHh5r0Yw8.S0HLOZ79rKYM7Y/lG', 'kitnacazit@yahoo.com', 10, 1460107381, 1460107381, 50),
(43, '8800800043', 'ini', 'kapan', 'L', '08', 'buset', 'fasilkom', '1995-12-20', '08', '', '', 'kelar@propensi.nya', 10, 1460988548, 1460988548, 0),
(44, '2153085044', 'propensi', 'propensi', 'L', '08', 'jakarta', 'jakarta', '0000-00-00', '08', 'lEwTdEOBExffhTItDaPBd7SvllddrNOw', '$2y$13$8LYsK85gGI4o/bErahkiN.7IMV16HhTYzt0kPtN0jvKZ3RuJtS842', 'b@b.b', 10, 1461133194, 1461133194, 0),
(45, '2153085045', 'propensi', 'propensi', 'L', '08', 'jakarta', 'jak', '0000-00-00', '08', 'RRHr8jh3asAwUlq_KZXw3j2jtyFqbD6b', '$2y$13$ufAyYeZ7WBOhPjozsez8CuKRLbzs4mXHb2ZEnXRytqfwjg6I2hwhy', 'a@a.a', 10, 1461133340, 1461133340, 0),
(46, '2153085046', 'propens', 'bahagia', 'L', '08', 'jakarta', 'jakarta', '0000-00-00', '08', '6n8oYalkiY8BCp7dkTgan0l3PItjR8SS', '$2y$13$.YP48o/6F3YqnGYg178oDutrd63PQQOtz1Yco0OBHCNy.hf74nO3W', 'kapan@kelarnya.com', 10, 1461133614, 1461133614, 0),
(47, '4153085047', 'cinta', 'propensi', 'P', '09', 'pacil', 'pacil', '0000-00-00', '1823', '7xpK74fyhA2bFB0J6zwE3dQHRMg9I9T0', '$2y$13$0KRHWbyM6RvmOGIqMWGlm.Yl8jhbvjdzWIPq8yxVa5Aa8STt478SG', 'muak@ai.com', 10, 1461133906, 1461133906, 0),
(48, '2153085048', 'lelah', 'hayati', 'L', '89', 'asli', 'bta', '0000-00-00', '89', 'f7bnIY2hDfaCEi9NiZdM3gQMlLO9X5hB', '$2y$13$IrdwGYUTbpAUK7lAMi7/peASuwvTsmOwWx0VhyVh6Ud3HbiViw8wK', 'propens@j.co', 10, 1461134102, 1461134102, 0),
(49, '2153085049', 'propensi', 'ppl', 'L', '083245678', 'jakarta', 'jakarta', '0000-00-00', '08324', 'Zn_2Owf_En-L6SaLiTHAhNxjwwZ4rmiy', '$2y$13$Xiq333BT.VulE6YryItJie0BTu63DlwFs.h.35y5npicNNTZtSePG', 'ppl@ppl.com', 10, 1461136832, 1461136832, 0),
(50, '3085050', 'kucing', 'propensi', 'L', '08', 'jakarta', 'jakarta', '0000-00-00', '08', '', '', 'fadel@fadel.fadel', 10, 1461139146, 1461139146, 0),
(51, '8800800051', 'fadeo', 'fadel', 'L', '08', 'jakarta', 'jak', '0000-00-00', '08', '', '', 'fadel@fadel.co', 10, 1461139218, 1461139218, 0),
(53, '8800800052', 'fadeo', 'fadel', 'L', '08', 'jakarta', 'jak', '0000-00-00', '08', '', '', 'fadel@fadel.com', 10, 1461139252, 1461139252, 0),
(54, '8800800054', 'fadeol', 'fadelk', 'L', '08', 'jakarta', 'jak', '0000-00-00', '08', '', '', 'fadel@fadel.comm', 10, 1461139288, 1461139288, 0),
(55, '1153085055', 'Tari', 'is', 'P', '890', 'tebet', 'jakarta', '0000-00-00', '789321', 'opaayAhTH2_QmIiGjDv_PJgkcq3Bg1Nd', '$2y$13$wycZvPKTZSU9jvboqvEor.MW1M4zrnAcOW91CchE0icF5RsKWPOAC', 'tari@m.c', 10, 1461236700, 1461236700, 0),
(56, '8800800056', 'bite', 'bite', 'L', '123', 'tebet', 'jakarta', '0000-00-00', '231', '', '', 'bite@sd.co', 10, 1461236886, 1461236886, 0),
(57, '1153085057', 'pro', 'pensi', 'L', '122345123', 'pacil', 'Jakarta', '0000-00-00', '123284311', 'un4jguH8ZrPbXzHLeJ7OXo7nH8wqV2e9', '$2y$13$dstxVbM4Q7.ROmZNyL0vQeUkuBNJdXavHMxm42hwxtcH6OpRQ7avS', 'propensi@abc.com', 10, 1463582656, 1463582656, 0),
(58, '1153085058', 'pro', 'pensi', 'L', '823910381', 'pacil', 'jakarta', '0000-00-00', '12381903', 'TzQfrSupOz0TaQW36Shynuc3T4-D8nxu', '$2y$13$EWuJsv/kHjgaUptOPB94gO5QeDqR50kRyTyk1KR7qsP56l9PqvFE2', 'proi@abc.com', 10, 1463582921, 1463582921, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`kelasID`,`tanggal`,`NP`),
  ADD KEY `fk_ABSENSI_SISWA1_idx` (`NP`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal_intance`
--
ALTER TABLE `jadwal_intance`
  ADD PRIMARY KEY (`jadwalID`,`kelasID`,`mapelID`,`noBab`,`tanggal`),
  ADD KEY `fk_JADWAL_INTANCE_MATERI1_idx` (`mapelID`,`noBab`),
  ADD KEY `fk_JADWAL_INTANCE_KELAS1_idx` (`kelasID`);

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id`,`tesID`,`mapelID`,`NP`),
  ADD KEY `fk_JAWABAN_SISWA1_idx` (`NP`),
  ADD KEY `fk_JAWABAN_MATA_PELAJARAN_has_TES1_idx` (`mapelID`,`tesID`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_KELAS_PEGAWAI1_idx` (`PID`);

--
-- Indexes for table `keluhan`
--
ALTER TABLE `keluhan`
  ADD PRIMARY KEY (`noKeluhan`,`sender`,`receiver`) USING BTREE,
  ADD KEY `fk_KELUHAN_SISWA1_idx` (`sender`),
  ADD KEY `fk_KELUHAN_Receiver` (`receiver`);

--
-- Indexes for table `mapel_tes`
--
ALTER TABLE `mapel_tes`
  ADD PRIMARY KEY (`tesID`,`mapelID`),
  ADD KEY `fk_MATA_PELAJARAN_has_TES_TES1_idx` (`tesID`),
  ADD KEY `fk_MATA_PELAJARAN_has_TES_MATA_PELAJARAN1_idx` (`mapelID`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`mapelID`,`noBab`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`NP`,`tesID`),
  ADD KEY `fk_NILAI_SISWA1_idx` (`NP`),
  ADD KEY `fk_NILAI_TES1_idx` (`tesID`);

--
-- Indexes for table `orang_tua`
--
ALTER TABLE `orang_tua`
  ADD PRIMARY KEY (`nama_ayah`,`NP`),
  ADD KEY `NP_idx` (`NP`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`,`universitas`);

--
-- Indexes for table `prodi_siswa`
--
ALTER TABLE `prodi_siswa`
  ADD PRIMARY KEY (`prodiID`,`NP`,`universitas`),
  ADD KEY `fk_SISWA_has_PRODI_PRODI1_idx` (`prodiID`,`universitas`),
  ADD KEY `fk_SISWA_has_PRODI_SISWA1_idx` (`NP`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`NP`),
  ADD KEY `fk_SISWA_KELAS1_idx` (`kelasID`),
  ADD KEY `fk_SISWA_JADWAL1_idx` (`jadwalID`);

--
-- Indexes for table `tes`
--
ALTER TABLE `tes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keluhan`
--
ALTER TABLE `keluhan`
  MODIFY `noKeluhan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensi`
--
ALTER TABLE `absensi`
  ADD CONSTRAINT `fk_ABSENSI_KELAS1` FOREIGN KEY (`kelasID`) REFERENCES `kelas` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ABSENSI_SISWA1` FOREIGN KEY (`NP`) REFERENCES `siswa` (`NP`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `jadwal_intance`
--
ALTER TABLE `jadwal_intance`
  ADD CONSTRAINT `fk_JADWAL_INTANCE_JADWAL1` FOREIGN KEY (`jadwalID`) REFERENCES `jadwal` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_JADWAL_INTANCE_KELAS1` FOREIGN KEY (`kelasID`) REFERENCES `kelas` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_JADWAL_INTANCE_MATERI1` FOREIGN KEY (`mapelID`,`noBab`) REFERENCES `materi` (`mapelID`, `noBab`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD CONSTRAINT `fk_JAWABAN_MATA_PELAJARAN_has_TES1` FOREIGN KEY (`mapelID`,`tesID`) REFERENCES `mapel_tes` (`mapelID`, `tesID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_JAWABAN_SISWA1` FOREIGN KEY (`NP`) REFERENCES `siswa` (`NP`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `fk_KELAS_PEGAWAI1` FOREIGN KEY (`PID`) REFERENCES `pegawai` (`PID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `keluhan`
--
ALTER TABLE `keluhan`
  ADD CONSTRAINT `fk_KELUHAN_Receiver` FOREIGN KEY (`Receiver`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_KELUHAN_USER` FOREIGN KEY (`Sender`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mapel_tes`
--
ALTER TABLE `mapel_tes`
  ADD CONSTRAINT `fk_MATA_PELAJARAN_has_TES_MATA_PELAJARAN1` FOREIGN KEY (`mapelID`) REFERENCES `mata_pelajaran` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_MATA_PELAJARAN_has_TES_TES1` FOREIGN KEY (`tesID`) REFERENCES `tes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `materi`
--
ALTER TABLE `materi`
  ADD CONSTRAINT `fk_MATERI_MATA_PELAJARAN1` FOREIGN KEY (`mapelID`) REFERENCES `mata_pelajaran` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `fk_NILAI_SISWA1` FOREIGN KEY (`NP`) REFERENCES `siswa` (`NP`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_NILAI_TES1` FOREIGN KEY (`tesID`) REFERENCES `tes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `orang_tua`
--
ALTER TABLE `orang_tua`
  ADD CONSTRAINT `NP` FOREIGN KEY (`NP`) REFERENCES `siswa` (`NP`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `User` FOREIGN KEY (`PID`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `prodi_siswa`
--
ALTER TABLE `prodi_siswa`
  ADD CONSTRAINT `fk_SISWA_has_PRODI_PRODI1` FOREIGN KEY (`prodiID`,`universitas`) REFERENCES `prodi` (`id`, `universitas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_SISWA_has_PRODI_SISWA1` FOREIGN KEY (`NP`) REFERENCES `siswa` (`NP`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `fk_SISWA_JADWAL1` FOREIGN KEY (`jadwalID`) REFERENCES `jadwal` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_SISWA_KELAS1` FOREIGN KEY (`kelasID`) REFERENCES `kelas` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_SISWA_USER1` FOREIGN KEY (`NP`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
