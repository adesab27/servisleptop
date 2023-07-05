-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jul 2023 pada 07.18
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `servislaptop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(11) NOT NULL,
  `merek` varchar(45) NOT NULL,
  `jenis_servis` varchar(200) NOT NULL,
  `id_pemilik` int(11) NOT NULL,
  `creates_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL,
  `delete_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `booking`
--

INSERT INTO `booking` (`id_booking`, `merek`, `jenis_servis`, `id_pemilik`, `creates_at`, `update_at`, `delete_at`) VALUES
(1, 'MSI', 'LCD hitam', 11, '2023-07-04 12:30:09', '2023-07-04 19:30:09', '2023-07-04 19:30:09'),
(4, 'Lenovo', 'batery bocor', 13, '2023-07-04 14:56:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role_id`, `created_at`, `update_at`, `deleted_at`) VALUES
(11, 'Adelia', 'adeliasalsabila@gmail.com', '123', 2, '2023-07-04 12:45:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Ahmat Zainul', 'enolbesar@gmail.com', '1212', 0, '2023-07-04 13:28:55', NULL, NULL),
(14, 'ardanu', 'danu12@gmail.com', '123', 0, '2023-07-05 04:55:53', NULL, NULL),
(15, 'ahmat', 'Ahamat@gmail.com', '123', 0, '2023-07-05 05:03:35', NULL, NULL),
(18, 'afi', 'afihaha@gmail.com', '1122', 0, '2023-07-05 05:08:49', NULL, NULL),
(19, 'afi', 'afihaha@gmail.com', '1122', 0, '2023-07-05 05:09:20', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `booking`
--
ALTER TABLE `booking`
  MODIFY `id_booking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
