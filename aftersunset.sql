-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 25, 2024 at 06:36 PM
-- Server version: 5.7.39
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aftersunset`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pesanan_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`id`, `pesanan_id`, `menu_id`, `jumlah`, `harga_total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '10000.00', '2024-11-24 04:39:20', '2024-11-24 04:39:20'),
(2, 2, 3, 1, '10000.00', '2024-11-24 06:23:46', '2024-11-24 06:23:46'),
(3, 2, 2, 1, '10000.00', '2024-11-24 06:23:46', '2024-11-24 06:23:46'),
(4, 3, 1, 1, '10000.00', '2024-11-24 06:46:19', '2024-11-24 06:46:19'),
(5, 3, 3, 1, '10000.00', '2024-11-24 06:46:19', '2024-11-24 06:46:19'),
(6, 4, 3, 1, '10000.00', '2024-11-24 06:46:36', '2024-11-24 06:46:36'),
(7, 5, 5, 1, '10000.00', '2024-11-24 06:49:26', '2024-11-24 06:49:26'),
(8, 6, 3, 1, '10000.00', '2024-11-24 06:49:39', '2024-11-24 06:49:39'),
(9, 7, 2, 1, '10000.00', '2024-11-24 06:49:59', '2024-11-24 06:49:59'),
(10, 7, 5, 1, '10000.00', '2024-11-24 06:49:59', '2024-11-24 06:49:59'),
(11, 8, 4, 1, '10000.00', '2024-11-24 06:50:11', '2024-11-24 06:50:11'),
(12, 8, 5, 1, '10000.00', '2024-11-24 06:50:11', '2024-11-24 06:50:11'),
(13, 9, 5, 1, '10000.00', '2024-11-24 06:50:37', '2024-11-24 06:50:37'),
(14, 10, 4, 1, '10000.00', '2024-11-24 06:50:54', '2024-11-24 06:50:54'),
(15, 10, 2, 1, '10000.00', '2024-11-24 06:50:54', '2024-11-24 06:50:54'),
(16, 11, 5, 1, '10000.00', '2024-11-24 06:51:15', '2024-11-24 06:51:15'),
(17, 12, 3, 1, '10000.00', '2024-11-24 06:51:26', '2024-11-24 06:51:26'),
(18, 13, 1, 1, '10000.00', '2024-11-24 06:51:40', '2024-11-24 06:51:40'),
(19, 14, 3, 1, '10000.00', '2024-11-24 07:17:48', '2024-11-24 07:17:48'),
(20, 15, 4, 1, '10000.00', '2024-11-24 07:17:58', '2024-11-24 07:17:58'),
(21, 16, 2, 1, '10000.00', '2024-11-24 07:18:13', '2024-11-24 07:18:13'),
(22, 17, 1, 4, '40000.00', '2024-11-24 07:18:39', '2024-11-24 07:18:39'),
(23, 17, 5, 2, '20000.00', '2024-11-24 07:18:39', '2024-11-24 07:18:39'),
(24, 18, 5, 2, '20000.00', '2024-11-24 07:22:03', '2024-11-24 07:22:03'),
(25, 19, 4, 2, '20000.00', '2024-11-24 07:22:25', '2024-11-24 07:22:25'),
(26, 20, 3, 1, '10000.00', '2024-11-24 07:22:40', '2024-11-24 07:22:40'),
(27, 21, 5, 1, '10000.00', '2024-11-24 07:23:07', '2024-11-24 07:23:07'),
(28, 22, 2, 1, '10000.00', '2024-11-24 12:08:38', '2024-11-24 12:08:38'),
(29, 23, 1, 1, '10000.00', '2024-11-24 12:20:07', '2024-11-24 12:20:07'),
(30, 24, 1, 1, '10000.00', '2024-11-24 13:17:54', '2024-11-24 13:17:54'),
(31, 25, 2, 1, '10000.00', '2024-11-24 13:41:03', '2024-11-24 13:41:03'),
(32, 26, 1, 1, '10000.00', '2024-11-24 16:05:51', '2024-11-24 16:05:51'),
(33, 27, 1, 1, '10000.00', '2024-11-27 11:58:36', '2024-11-27 11:58:36'),
(34, 28, 1, 1, '10000.00', '2024-11-27 12:00:59', '2024-11-27 12:00:59'),
(35, 28, 2, 1, '10000.00', '2024-11-27 12:00:59', '2024-11-27 12:00:59'),
(36, 29, 1, 1, '10000.00', '2024-11-28 01:00:52', '2024-11-28 01:00:52'),
(37, 29, 2, 1, '10000.00', '2024-11-28 01:00:52', '2024-11-28 01:00:52'),
(38, 30, 1, 1, '10000.00', '2024-11-28 01:01:14', '2024-11-28 01:01:14'),
(39, 30, 2, 1, '10000.00', '2024-11-28 01:01:14', '2024-11-28 01:01:14'),
(40, 31, 4, 1, '10000.00', '2024-11-28 01:01:56', '2024-11-28 01:01:56'),
(41, 31, 3, 1, '10000.00', '2024-11-28 01:01:56', '2024-11-28 01:01:56'),
(42, 32, 1, 1, '10000.00', '2024-11-30 10:18:44', '2024-11-30 10:18:44'),
(43, 32, 2, 1, '10000.00', '2024-11-30 10:18:44', '2024-11-30 10:18:44'),
(44, 33, 1, 1, '10000.00', '2024-12-01 08:16:50', '2024-12-01 08:16:50'),
(45, 33, 2, 1, '10000.00', '2024-12-01 08:16:50', '2024-12-01 08:16:50'),
(46, 34, 3, 1, '10000.00', '2024-12-01 08:17:02', '2024-12-01 08:17:02'),
(47, 35, 4, 1, '10000.00', '2024-12-01 08:17:18', '2024-12-01 08:17:18'),
(48, 36, 1, 1, '10000.00', '2024-12-02 20:01:41', '2024-12-02 20:01:41'),
(49, 37, 4, 1, '10000.00', '2024-12-02 20:01:59', '2024-12-02 20:01:59'),
(50, 37, 3, 1, '10000.00', '2024-12-02 20:01:59', '2024-12-02 20:01:59'),
(51, 38, 6, 1, '10000.00', '2024-12-05 09:02:03', '2024-12-05 09:02:03'),
(52, 39, 4, 1, '10000.00', '2024-12-05 09:02:39', '2024-12-05 09:02:39'),
(53, 40, 4, 1, '10000.00', '2024-12-05 09:03:05', '2024-12-05 09:03:05'),
(54, 40, 3, 1, '10000.00', '2024-12-05 09:03:05', '2024-12-05 09:03:05'),
(55, 41, 1, 1, '10000.00', '2024-12-05 09:03:18', '2024-12-05 09:03:18'),
(56, 41, 2, 1, '10000.00', '2024-12-05 09:03:18', '2024-12-05 09:03:18'),
(57, 42, 1, 1, '10000.00', '2024-12-05 18:32:37', '2024-12-05 18:32:37'),
(58, 42, 2, 1, '10000.00', '2024-12-05 18:32:37', '2024-12-05 18:32:37'),
(59, 43, 2, 1, '10000.00', '2024-12-05 18:32:53', '2024-12-05 18:32:53'),
(60, 43, 3, 1, '10000.00', '2024-12-05 18:32:53', '2024-12-05 18:32:53'),
(61, 44, 2, 1, '10000.00', '2024-12-08 12:38:12', '2024-12-08 12:38:12'),
(62, 44, 1, 1, '10000.00', '2024-12-08 12:38:12', '2024-12-08 12:38:12'),
(63, 45, 3, 1, '10000.00', '2024-12-08 12:38:23', '2024-12-08 12:38:23'),
(64, 45, 4, 1, '10000.00', '2024-12-08 12:38:23', '2024-12-08 12:38:23'),
(65, 46, 2, 1, '10000.00', '2024-12-08 12:38:42', '2024-12-08 12:38:42'),
(66, 46, 3, 1, '10000.00', '2024-12-08 12:38:42', '2024-12-08 12:38:42'),
(67, 47, 3, 1, '10000.00', '2024-12-08 12:39:03', '2024-12-08 12:39:03'),
(68, 48, 4, 1, '10000.00', '2024-12-08 12:39:26', '2024-12-08 12:39:26'),
(69, 49, 1, 1, '10000.00', '2024-12-08 16:53:39', '2024-12-08 16:53:39'),
(70, 50, 1, 1, '10000.00', '2024-12-14 04:47:13', '2024-12-14 04:47:13'),
(71, 50, 7, 1, '5000.00', '2024-12-14 04:47:13', '2024-12-14 04:47:13'),
(72, 51, 4, 1, '10000.00', '2024-12-14 04:47:24', '2024-12-14 04:47:24'),
(73, 51, 3, 1, '10000.00', '2024-12-14 04:47:24', '2024-12-14 04:47:24'),
(74, 52, 7, 1, '5000.00', '2024-12-14 04:47:49', '2024-12-14 04:47:49'),
(75, 53, 1, 1, '10000.00', '2024-12-14 05:26:45', '2024-12-14 05:26:45'),
(76, 53, 3, 1, '10000.00', '2024-12-14 05:26:45', '2024-12-14 05:26:45'),
(77, 54, 7, 1, '5000.00', '2024-12-14 05:27:14', '2024-12-14 05:27:14'),
(78, 55, 2, 1, '10000.00', '2024-12-17 12:15:28', '2024-12-17 12:15:28'),
(79, 55, 3, 1, '10000.00', '2024-12-17 12:15:28', '2024-12-17 12:15:28'),
(80, 55, 4, 1, '10000.00', '2024-12-17 12:15:28', '2024-12-17 12:15:28'),
(81, 55, 7, 1, '5000.00', '2024-12-17 12:15:28', '2024-12-17 12:15:28'),
(82, 56, 4, 1, '10000.00', '2024-12-17 12:21:22', '2024-12-17 12:21:22'),
(83, 56, 3, 1, '10000.00', '2024-12-17 12:21:22', '2024-12-17 12:21:22'),
(84, 57, 3, 1, '10000.00', '2024-12-17 12:21:35', '2024-12-17 12:21:35'),
(85, 58, 2, 2, '20000.00', '2024-12-17 12:21:50', '2024-12-17 12:21:50'),
(86, 59, 1, 2, '20000.00', '2024-12-17 13:09:25', '2024-12-17 13:09:25'),
(87, 59, 2, 1, '10000.00', '2024-12-17 13:09:25', '2024-12-17 13:09:25'),
(88, 60, 3, 1, '10000.00', '2024-12-23 06:50:00', '2024-12-23 06:50:00'),
(89, 61, 7, 1, '5000.00', '2024-12-24 21:09:42', '2024-12-24 21:09:42'),
(90, 61, 8, 1, '5000.00', '2024-12-24 21:09:42', '2024-12-24 21:09:42'),
(91, 62, 2, 1, '10000.00', '2024-12-24 21:10:00', '2024-12-24 21:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Makanan', '2024-11-24 03:45:48', '2024-11-24 03:45:48'),
(2, 'Minuman', '2024-11-24 03:45:48', '2024-11-24 03:45:48');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kategori_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `nama`, `harga`, `gambar`, `created_at`, `updated_at`, `kategori_id`) VALUES
(1, 'Chocolatos Coklat', '10000.00', 'storage/menu-images/Chocolatos Coklat-1732448078.png', '2024-11-24 03:43:54', '2024-11-24 04:34:38', 2),
(2, 'Chocolatos Matcha', '10000.00', 'storage/menu-images/Chocolatos Matcha-1732448088.png', '2024-11-24 03:43:54', '2024-11-24 04:34:48', 2),
(3, 'Zee Coklat', '10000.00', 'storage/menu-images/Zee Coklat-1732448101.png', '2024-11-24 04:33:27', '2024-11-24 04:35:01', 2),
(4, 'Zee Vanilla', '10000.00', 'storage/menu-images/Zee Vanilla-1732456092.png', '2024-11-24 06:48:12', '2024-11-24 06:48:12', 2),
(5, 'Good Day Cappuccino', '10000.00', 'storage/menu-images/Good Day Cappuccino-1732456132.png', '2024-11-24 06:48:52', '2024-11-24 06:48:52', 2),
(6, 'Beng beng Drink', '10000.00', 'storage/menu-images/Beng beng Drink-1732781448.png', '2024-11-28 01:10:49', '2024-11-28 01:10:49', 2),
(7, 'Nutrisari Sweet Orange', '5000.00', 'storage/menu-images/Nutrisari Sweet Orange-1734202923.png', '2024-12-05 08:59:57', '2024-12-14 12:02:03', 2),
(8, 'Nutrisari Sweet Mango', '5000.00', 'storage/menu-images/Nutrisari Sweet Mango-1734727506.png', '2024-12-20 13:45:07', '2024-12-20 13:45:07', 2);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '2024_10_17_092115_create_menu_table', 1),
(3, '2024_10_19_120401_create_kategori_table', 1),
(4, '2024_11_24_091932_create_role_table', 1),
(5, '2024_11_24_092828_create_user_table', 1),
(7, '2024_11_24_094059_create_session_table', 2),
(9, '2024_11_24_094241_create_pesanan_table', 3),
(10, '2024_11_24_094328_create_detail_pesanan_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pemesanan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uang_dibayar` decimal(10,2) NOT NULL,
  `kembalian` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `nama_pemesanan`, `uang_dibayar`, `kembalian`, `created_at`, `updated_at`) VALUES
(1, 'leebprtm', '10000.00', '0.00', '2024-11-24 04:39:20', '2024-11-24 04:39:20'),
(2, 'fatih', '20000.00', '0.00', '2024-11-24 06:23:46', '2024-11-24 06:23:46'),
(3, 'dodo', '20000.00', '0.00', '2024-11-24 06:46:19', '2024-11-24 06:46:19'),
(4, 'edi', '10000.00', '0.00', '2024-11-24 06:46:36', '2024-11-24 06:46:36'),
(5, 'Riri', '10000.00', '0.00', '2024-11-24 06:49:26', '2024-11-24 06:49:26'),
(6, 'Anto', '10000.00', '0.00', '2024-11-24 06:49:39', '2024-11-24 06:49:39'),
(7, 'Siti A', '20000.00', '0.00', '2024-11-24 06:49:59', '2024-11-24 06:49:59'),
(8, 'Zizi', '20000.00', '0.00', '2024-11-24 06:50:11', '2024-11-24 06:50:11'),
(9, 'pebi', '10000.00', '0.00', '2024-11-24 06:50:37', '2024-11-24 06:50:37'),
(10, 'Leeb', '20000.00', '0.00', '2024-11-24 06:50:54', '2024-11-24 06:50:54'),
(11, 'Irfan', '10000.00', '0.00', '2024-11-24 06:51:15', '2024-11-24 06:51:15'),
(12, 'Bagus', '10000.00', '0.00', '2024-11-24 06:51:26', '2024-11-24 06:51:26'),
(13, 'Ghalib', '10000.00', '0.00', '2024-11-24 06:51:40', '2024-11-24 06:51:40'),
(14, 'fatih', '10000.00', '0.00', '2024-11-24 07:17:48', '2024-11-24 07:17:48'),
(15, 'intan', '10000.00', '0.00', '2024-11-24 07:17:58', '2024-11-24 07:17:58'),
(16, 'Ucup', '10000.00', '0.00', '2024-11-24 07:18:13', '2024-11-24 07:18:13'),
(17, 'Messi', '60000.00', '0.00', '2024-11-24 07:18:39', '2024-11-24 07:18:39'),
(18, 'RIco', '20000.00', '0.00', '2024-11-24 07:22:03', '2024-11-24 07:22:03'),
(19, 'Endri', '20000.00', '0.00', '2024-11-24 07:22:25', '2024-11-24 07:22:25'),
(20, 'Ricard', '10000.00', '0.00', '2024-11-24 07:22:40', '2024-11-24 07:22:40'),
(21, 'Agus', '10000.00', '0.00', '2024-11-24 07:23:07', '2024-11-24 07:23:07'),
(22, 'okura', '10000.00', '0.00', '2024-11-24 12:08:38', '2024-11-24 12:08:38'),
(23, 'sakura', '10000.00', '0.00', '2024-11-24 12:20:07', '2024-11-24 12:20:07'),
(24, 'neell', '10000.00', '0.00', '2024-11-24 13:17:54', '2024-11-24 13:17:54'),
(25, 'aziz hendra', '10000.00', '0.00', '2024-11-24 13:41:03', '2024-11-24 13:41:03'),
(26, 'jek', '10000.00', '0.00', '2024-11-24 16:05:51', '2024-11-24 16:05:51'),
(27, 'bg dika', '10000.00', '0.00', '2024-11-27 11:58:36', '2024-11-27 11:58:36'),
(28, 'pinggal', '20000.00', '0.00', '2024-11-27 12:00:59', '2024-11-27 12:00:59'),
(29, 'rio', '20000.00', '0.00', '2024-11-28 01:00:52', '2024-11-28 01:00:52'),
(30, 'Endrik', '20000.00', '0.00', '2024-11-28 01:01:14', '2024-11-28 01:01:14'),
(31, 'El Breakdance', '20000.00', '0.00', '2024-11-28 01:01:56', '2024-11-28 01:01:56'),
(32, 'otuan', '20000.00', '0.00', '2024-11-30 10:18:44', '2024-11-30 10:18:44'),
(33, 'perd', '20000.00', '0.00', '2024-12-01 08:16:50', '2024-12-01 08:16:50'),
(34, 'rere', '10000.00', '0.00', '2024-12-01 08:17:02', '2024-12-01 08:17:02'),
(35, 'Ilham', '10000.00', '0.00', '2024-12-01 08:17:18', '2024-12-01 08:17:18'),
(36, 'hilay', '10000.00', '0.00', '2024-12-02 20:01:41', '2024-12-02 20:01:41'),
(37, 'Abdan', '20000.00', '0.00', '2024-12-02 20:01:59', '2024-12-02 20:01:59'),
(38, 'zidan', '10000.00', '0.00', '2024-12-05 09:02:03', '2024-12-05 09:02:03'),
(39, 'ilham', '10000.00', '0.00', '2024-12-05 09:02:39', '2024-12-05 09:02:39'),
(40, 'Rico', '20000.00', '0.00', '2024-12-05 09:03:05', '2024-12-05 09:03:05'),
(41, 'Ahmad', '20000.00', '0.00', '2024-12-05 09:03:18', '2024-12-05 09:03:18'),
(42, 'Aziz', '20000.00', '0.00', '2024-12-05 18:32:37', '2024-12-05 18:32:37'),
(43, 'Rahmad', '20000.00', '0.00', '2024-12-05 18:32:53', '2024-12-05 18:32:53'),
(44, 'yayad', '20000.00', '0.00', '2024-12-08 12:38:12', '2024-12-08 12:38:12'),
(45, 'lana', '20000.00', '0.00', '2024-12-08 12:38:23', '2024-12-08 12:38:23'),
(46, 'tulus', '20000.00', '0.00', '2024-12-08 12:38:42', '2024-12-08 12:38:42'),
(47, 'gyorkes', '10000.00', '0.00', '2024-12-08 12:39:03', '2024-12-08 12:39:03'),
(48, 'kaka', '10000.00', '0.00', '2024-12-08 12:39:26', '2024-12-08 12:39:26'),
(49, 'Daniel', '10000.00', '0.00', '2024-12-08 16:53:39', '2024-12-08 16:53:39'),
(50, 'Ikhsan', '15000.00', '0.00', '2024-12-14 04:47:13', '2024-12-14 04:47:13'),
(51, 'Juicy', '20000.00', '0.00', '2024-12-14 04:47:24', '2024-12-14 04:47:24'),
(52, 'Adnan', '5000.00', '0.00', '2024-12-14 04:47:49', '2024-12-14 04:47:49'),
(53, 'ghalib', '10000.00', '-10000.00', '2024-12-14 05:26:45', '2024-12-14 05:26:45'),
(54, 'enri', '10000.00', '5000.00', '2024-12-14 05:27:14', '2024-12-14 05:27:14'),
(55, 'Ilham', '35000.00', '0.00', '2024-12-17 12:15:28', '2024-12-17 12:15:28'),
(56, 'Jay', '20000.00', '0.00', '2024-12-17 12:21:22', '2024-12-17 12:21:22'),
(57, 'Abdan', '10000.00', '0.00', '2024-12-17 12:21:35', '2024-12-17 12:21:35'),
(58, 'Intan', '20000.00', '0.00', '2024-12-17 12:21:50', '2024-12-17 12:21:50'),
(59, 'Hihuh', '30000.00', '0.00', '2024-12-17 13:09:25', '2024-12-17 13:09:25'),
(60, 'Irfan', '10000.00', '0.00', '2024-12-23 06:50:00', '2024-12-23 06:50:00'),
(61, 'Ghalibbb', '10000.00', '0.00', '2024-12-24 21:09:42', '2024-12-24 21:09:42'),
(62, 'Matco', '10000.00', '0.00', '2024-12-24 21:10:00', '2024-12-24 21:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', NULL, NULL),
(2, 'Kasir', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2j62TiVV3cNjjHx5QkC49xAla63FOESlY3T8uSHX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRmI1OXduQk54NVpBak92dktiMnNnNVJVRFFGQ2RoVjhydDh1a2xBMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735099864),
('ed9rVHrsbTQ3o7SY3cFbYDiFlsDwpSQfn3Hq2DzQ', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidFFWTlQxb0JhUzgzb1lOREtEYmpqMThIeGVTMzRveUZCcVA3azRnUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1735099615),
('n89YHgBm64ip12D5DhzNbVkrEcqouoHw8rC68UFs', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN3JpZEhDaEhrMWhrWk9BY2xGQmJ0Y25rR2txbFVPS3lpYUl6MUxERiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735099620),
('wdvpSe3gD2wAMytkqBDIFjHRydIWIrPfi1aKTLMI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlU1OHp6T1NLeks2RU9WYTNLbXZTR25aVjE5YWg5QzN1ZG95V1FzciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1735099605),
('YGOrrclAMYOyHYmiWb9wb9jNuzOqmlHcPrMBmi4U', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidkxGcWtCc0dsMWJXbzE3YVh3ejQwNml0VU1BdFdZanBJd3pEbWZ6TyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fX0=', 1735100244),
('yxThpezuhMpi5ao5BA3mi1yHc3nnApJRUjTdq8nb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHNaUXBIdE9uU3FmendjNEJqRDZBUktTbGhuVzNMWW5mRXhrclpiQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1735099606);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `phone`, `address`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'Ghalib', 'admin1', '$2y$12$9YmdWXMupWxCc.bUkiUF4e6gTrctboUuRIYzS9jVoQjQNuXy7aPa6', '08123456789', 'Jl. Eka Tunggal Perum PIP i.15', 1, NULL, NULL),
(2, 'Hilya', 'kasir1', '$2y$12$ajOIwCo2HIiUKlHdp0JUOeVnxqtR8eZ5uroNFZgDsIqtFjrIC/DE.', '08987654321', 'Jl. Melati Kubang', 2, NULL, NULL),
(3, 'Bagus', 'kasir2', '$2y$12$i8LCOd5sOH/cHmmOitD1weGP.mF3QEE4Yr6Wbe/aEWPslpL5L/Wpm', '0888997766551', 'Jl Arifin Ahmad', 2, '2024-11-28 05:59:45', '2024-11-28 05:59:45'),
(4, 'Yayad', 'kasir3', '$2y$12$.ylrbfOrWmfeC972KMK7au79pljIjVhYVfdQxVum9T66EtbI4dbyC', '0888997766551', 'JL. HANGTUAH', 2, '2024-12-05 08:58:08', '2024-12-05 08:58:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_pesanan_pesanan_id_foreign` (`pesanan_id`),
  ADD KEY `detail_pesanan_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_kategori_id_foreign` (`kategori_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_user_id_index` (`user_id`),
  ADD KEY `session_last_activity_index` (`last_activity`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_username_unique` (`username`),
  ADD KEY `user_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD CONSTRAINT `detail_pesanan_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `detail_pesanan_pesanan_id_foreign` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
