-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jul 2022 pada 05.22
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kopfee`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`, `username`) VALUES
(1, 'Haikal Afifsyah', 'hai123', 'haikal afif'),
(2, 'Farrel', 'ale123', 'aleale'),
(3, 'Daffa Putra', '151515', 'daffa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservation`
--

CREATE TABLE `reservation` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `number` varchar(30) NOT NULL,
  `guests` varchar(30) NOT NULL,
  `date` datetime NOT NULL,
  `messagetextarea` varchar(500) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `reservation`
--

INSERT INTO `reservation` (`id`, `name`, `number`, `guests`, `date`, `messagetextarea`, `status`) VALUES
(1, 'Ujang', '1122334455', '10', '2022-07-17 10:00:00', 'Ibadah', 'pending'),
(2, 'Panjul', '6677889900', '20', '2022-07-20 19:00:00', 'Birthday Party', 'pending'),
(3, 'Wati', '5544332211', '50', '2022-07-02 18:00:00', 'Arisan', 'done');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `number` varchar(20) NOT NULL,
  `ordername1` varchar(100) NOT NULL,
  `orderamount1` varchar(100) NOT NULL,
  `ordername2` varchar(100) DEFAULT NULL,
  `orderamount2` varchar(100) DEFAULT NULL,
  `ordername3` varchar(100) DEFAULT NULL,
  `orderamount3` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL,
  `ordermessage` varchar(1000) DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `total` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaction`
--

INSERT INTO `transaction` (`id`, `name`, `number`, `ordername1`, `orderamount1`, `ordername2`, `orderamount2`, `ordername3`, `orderamount3`, `date`, `ordermessage`, `status`, `total`) VALUES
(2, 'Michael', '99887766', 'Espresso', '2', NULL, NULL, NULL, NULL, '2022-07-14 11:00:00', 'Double shot', 'pending', '34000'),
(3, 'Alex', '1234567890', 'Moccachino', '1', 'Waffle Berry', '1', NULL, NULL, '2022-07-16 16:00:00', 'Extra siroup', 'pending', '45000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
