-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jul 2025 pada 14.45
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventori_syifa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` double NOT NULL,
  `image_url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `stock`, `price`, `image_url`) VALUES
(34, 'Gamis Syar\'i Warna Navy', 25, 185000, 'https://media.karousell.com/media/photos/products/2024/6/24/nwt_syaza_simply_syari_warna_n_1719226207_dded2dfb_progressive.jpg'),
(35, 'Hijab Instan Ceruty', 50, 45000, 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/catalog-image/99/MTA-180516617/no_brand_pussat_shaima_pashmina_instan_tali_-_inner_ceruty_babydoll_75_-_180_cm_pashmina_instan_kekinian_jilbab_pastan_hijab_instan_malay_anti_ribet_full01_8d364930.jpg'),
(36, 'Setelan Tunik dan Celana', 20, 160000, 'https://www.feylaube.com/wp-content/uploads/2022/03/Setelan-Tunik-Celana-Panjang-Ayeesa.jpg'),
(37, 'Abaya Dubai Hitam Premium', 10, 350000, 'https://down-id.img.susercontent.com/file/86af209543d3f5fb151b2ac50d0082eb'),
(38, 'Pashmina Plisket Warna Coklat', 60, 30000, 'https://cf.shopee.co.id/file/32f52e2ee2e4b213fbf1815a0582ae1f'),
(39, 'Dress Muslimah Motif Bunga', 15, 175000, 'https://images.tokopedia.net/img/cache/700/VqbcmM/2024/5/20/fe70c2a5-da07-4dbc-b7aa-39e272937b5e.jpg'),
(40, 'Jilbab Segi Empat Polos', 100, 25000, 'https://ethica-collection.com/wp-content/uploads/2023/12/kelebihan-model-hijab-segi-empat.jpg'),
(41, 'Kaftan Satin Kombinasi', 8, 220000, 'https://img.id.my-best.com/product_images/a8502b74be600d314a5c074447cb6f2d.png?ixlib=rails-4.3.1&q=70&lossless=0&w=800&h=800&fit=clip&s=73715615b01fc9c2286b70955ee24606');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$CzZdBxuJDYWk6Mzn4HoNi.ZDt4nx49a8HY9fb2.avNDgrUsdHBhSG'),
(2, '', '', '$2y$10$dhEIksSwItBZiunQqTTVQ.uNwfYBnqaNoJ4oPkQvdYZ4oiTEyZF0m'),
(20, 'renal', 'admin2@gmail.com', '$2y$10$Y7dbbCw5LjG4CcefafeSn.PfuTwLS1v0Oj1WQHZCd1J0sBRm85cgW'),
(21, 'friska', 'admin3@gmail.com', '$2y$10$/Kim7A0kyEZNT2jgURldxu8guPKinK.yXLAAmLvWgD8EvXwIbtaFG'),
(22, 'syifa', 'admin5@gmail.com', '$2y$10$n0WjMumqxwB2zPX21swGfOMqmMY3YsQxta.niQ5WPeueYB3fK7xDK');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
