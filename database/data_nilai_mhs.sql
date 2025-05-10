-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Mar 2024 pada 11.47
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_nilai_mhs`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_mhs`
--

CREATE TABLE `data_mhs` (
  `nim` int(11) NOT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `j_kelamin` varchar(12) DEFAULT NULL,
  `jurusan` varchar(30) DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `nilai_pemrog2` varchar(10) DEFAULT NULL,
  `grade` varchar(5) DEFAULT NULL,
  `total_biaya` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_mhs`
--

INSERT INTO `data_mhs` (`nim`, `nama`, `j_kelamin`, `jurusan`, `semester`, `nilai_pemrog2`, `grade`, `total_biaya`) VALUES
(1, 'zaky', 'Perempuan', 'Teknik Informatika', '7', '85.1', 'A', 1000000),
(2, 'rafly', 'Laki - Laki', 'MIPA', '5', '84.9', 'A', 925000),
(3, 'zayyan', 'Perempuan', 'Ekonomi', '4', '80.0', 'A', 900000),
(4, 'naim', 'Laki - Laki', 'Teknik Informatika', '6', '83.7', 'A', 1000000),
(5, 'baren', 'Laki - Laki', 'Teknik Informatika', '7', '84.9', 'A', 1000000),
(6, 'hendy', 'Laki - Laki', 'Teknik Informatika', '6', '90.9', 'A', 1000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_nilai`
--

CREATE TABLE `data_nilai` (
  `nim` int(11) NOT NULL,
  `NilaiKehadiran` int(11) DEFAULT NULL,
  `NilaiTugas` int(11) DEFAULT NULL,
  `NilaiUts` int(11) DEFAULT NULL,
  `NilaiUas` int(11) DEFAULT NULL,
  `NilaiPemrog2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_nilai`
--

INSERT INTO `data_nilai` (`nim`, `NilaiKehadiran`, `NilaiTugas`, `NilaiUts`, `NilaiUas`, `NilaiPemrog2`) VALUES
(1, 21, 91, 92, 93, 85),
(2, 19, 97, 96, 87, 85),
(3, 19, 87, 89, 85, 80),
(4, 20, 90, 99, 85, 84),
(5, 20, 90, 99, 88, 85),
(6, 18, 99, 99, 99, 91);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_mhs`
--
ALTER TABLE `data_mhs`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `data_nilai`
--
ALTER TABLE `data_nilai`
  ADD PRIMARY KEY (`nim`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_nilai`
--
ALTER TABLE `data_nilai`
  ADD CONSTRAINT `data_nilai_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `data_mhs` (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
