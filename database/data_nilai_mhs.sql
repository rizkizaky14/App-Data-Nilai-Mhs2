-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Bulan Mei 2025 pada 19.46
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

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
  `ID` int(11) NOT NULL,
  `nim` bigint(20) DEFAULT NULL,
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

INSERT INTO `data_mhs` (`ID`, `nim`, `nama`, `j_kelamin`, `jurusan`, `semester`, `nilai_pemrog2`, `grade`, `total_biaya`) VALUES
(1, 211011401515, 'rizki zaky', 'Laki - Laki', 'Teknik Informatika', '8', '83.1', 'A', 1000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_nilai`
--

CREATE TABLE `data_nilai` (
  `ID_mhs` int(11) NOT NULL,
  `nim` bigint(20) DEFAULT NULL,
  `NilaiKehadiran` int(11) DEFAULT NULL,
  `NilaiTugas` int(11) DEFAULT NULL,
  `NilaiUts` int(11) DEFAULT NULL,
  `NilaiUas` int(11) DEFAULT NULL,
  `NilaiPemrog2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_nilai`
--

INSERT INTO `data_nilai` (`ID_mhs`, `nim`, `NilaiKehadiran`, `NilaiTugas`, `NilaiUts`, `NilaiUas`, `NilaiPemrog2`) VALUES
(1, 211011401515, 21, 90, 90, 90, 83);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_mhs`
--
ALTER TABLE `data_mhs`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `nim` (`nim`);

--
-- Indeks untuk tabel `data_nilai`
--
ALTER TABLE `data_nilai`
  ADD PRIMARY KEY (`ID_mhs`),
  ADD KEY `fk_nim` (`nim`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_mhs`
--
ALTER TABLE `data_mhs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `data_nilai`
--
ALTER TABLE `data_nilai`
  MODIFY `ID_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_nilai`
--
ALTER TABLE `data_nilai`
  ADD CONSTRAINT `fk_nim` FOREIGN KEY (`nim`) REFERENCES `data_mhs` (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
