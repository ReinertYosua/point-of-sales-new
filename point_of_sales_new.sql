-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2021 at 11:47 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `point_of_sales_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'aaa', 'aaa', '2021-10-04 21:10:41', '2021-10-04 21:11:33'),
(2, 'bbb', 'bbb', '2021-10-04 21:10:48', '2021-10-04 21:11:27'),
(3, 'ccc', 'ccc', '2021-10-04 21:10:56', '2021-10-04 21:11:20'),
(4, 'ddd', 'ddd', '2021-10-04 21:11:03', '2021-10-04 21:11:12'),
(5, 'eee', 'eee', '2021-10-04 21:11:46', '2021-10-04 21:11:46'),
(6, 'fff', 'fff', '2021-10-04 21:11:54', '2021-10-04 21:11:54'),
(7, 'ggg', 'ggg', '2021-10-04 21:12:02', '2021-10-04 21:12:02'),
(8, 'hhh', 'hhh', '2021-10-04 21:12:12', '2021-10-04 21:12:12'),
(9, 'iii', 'iii', '2021-10-04 21:12:20', '2021-10-04 21:12:20'),
(10, 'jjj', 'jjj', '2021-10-04 21:12:32', '2021-10-04 21:12:32'),
(11, 'kkk', 'kkk', '2021-10-04 21:12:41', '2021-10-04 21:12:41'),
(12, 'lll', 'lll', '2021-10-04 21:12:51', '2021-10-04 21:12:51'),
(14, 'mmm', 'mmm', '2021-10-05 22:02:56', '2021-10-05 22:02:56'),
(15, 'nnn', 'nnn', '2021-10-05 22:07:05', '2021-10-05 22:07:05'),
(16, 'ooo', 'ooo', '2021-10-05 23:18:03', '2021-10-05 23:18:03'),
(17, 'ppp', 'ppp', '2021-10-06 02:28:15', '2021-10-06 02:28:15');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2021_09_21_161051_create_category_table', 1),
(14, '2021_10_02_061942_create_product_table', 1),
(15, '2021_09_24_152543_create_supplier_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `capital_price` int(11) NOT NULL,
  `sell_price` int(11) NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `supplier_id`, `name`, `type`, `qty`, `capital_price`, `sell_price`, `unit`, `description`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'sdf', 'sdf', 1, 100000, 150000, 'pcs', 'tes', NULL, NULL),
(2, 16, 12, 'Lampu Depan Avanza', 'Lampu', 10, 100000, 150000, 'pcs', 'Barang dengan stok susah didapat', '2021-10-08 02:17:06', '2021-10-08 02:17:06'),
(3, 10, 13, 'Wiper Depan Avanza', 'Wiper', 13, 250000, 300000, 'pcs', 'Barang selalu ready', '2021-10-08 02:20:38', '2021-10-08 02:20:38'),
(4, 6, 8, 'Sarung Stir Innova', 'Sarung Stir', 20, 320000, 400000, 'pcs', 'Barang selalu ready', '2021-10-08 02:46:19', '2021-10-08 02:46:19');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `company_name`, `contact_name`, `contact_title`, `address`, `city`, `region`, `country`, `postal_code`, `phone`, `account_number`, `bank_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'supa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', '923', '0823', '0834', 'BCA', 'aaa', '2021-10-04 21:29:08', '2021-10-04 21:29:08'),
(2, 'supb', 'bbb', 'bbb', 'bbb', 'bbb', 'bbb', 'bbb', '8323', '924', '2424', 'Mandiri', 'bbb', '2021-10-04 21:29:40', '2021-10-04 21:29:40'),
(3, 'supc', 'ccc', 'ccc', 'ccc', 'ccc', 'ccc', 'ccc', '9224', '082424', '28424', 'BCA', 'ccc', '2021-10-04 21:30:04', '2021-10-04 21:30:04'),
(4, 'supd', 'ddd', 'ddd', 'ddd', 'ddd', 'ddd', 'ddd', '224', '02424', '2424', 'BNI', 'ddd', '2021-10-04 21:30:37', '2021-10-04 21:30:37'),
(5, 'supe', 'eee', 'eee', 'eee', 'eee', 'eee', 'eee', '114242', '08242', '028424', 'BCA', 'eee', '2021-10-04 21:31:04', '2021-10-04 21:31:04'),
(6, 'supf', 'fff', 'fff', 'fff', 'fff', 'fff', 'fff', '923224', '0824', '28424', 'Mandiri', 'fff', '2021-10-04 21:31:39', '2021-10-04 21:31:39'),
(7, 'supg', 'ggg', 'ggg', 'ggg', 'ggg', 'ggg', 'ggg', '29324', '024284', '2424', 'Mandiri', 'ggg', '2021-10-04 21:32:02', '2021-10-04 21:32:02'),
(8, 'suph', 'hhh', 'hhh', 'hhh', 'hhh', 'hhh', 'hhh', '08224', '082424', '0824', 'BCA', 'hhh', '2021-10-04 21:32:24', '2021-10-04 21:32:24'),
(9, 'supi', 'iii', 'iii', 'iii', 'iii', 'iii', 'iii', '9203424', '082411', '02424', 'BCA', 'iii', '2021-10-04 21:32:53', '2021-10-04 21:32:53'),
(10, 'supj', 'jjj', 'jjj', 'jjj', 'jjj', 'jjj', 'jjj', '9242424', '082424', '824', 'BCA', 'jjj', '2021-10-04 21:33:33', '2021-10-04 21:33:33'),
(11, 'supk', 'kkk', 'kkk', 'kkk', 'kkk', 'kkk', 'kkk', '082324', '89242', '92824', 'BNI', 'kkk', '2021-10-04 21:33:59', '2021-10-04 21:33:59'),
(12, 'supl', 'lll', 'lll', 'lll', 'lll', 'lll', 'lll', '8242', '0823421', '082424', 'BNI', 'lll', '2021-10-04 21:34:21', '2021-10-04 21:34:21'),
(13, 'supm', 'mmm', 'mmm', 'mmm', 'mmm', 'mmm', 'mmm', '8242', '082424', '872424', 'Mandiri', 'mmm', '2021-10-04 21:34:50', '2021-10-04 21:34:50'),
(15, 'supn', 'nnn', 'nnn', 'nnn', 'nnn', 'nnn', 'nnn', '14124', '0234235', '023523', 'BCA', 'nnn', '2021-10-05 21:40:25', '2021-10-05 21:40:25'),
(16, 'supo', 'ooo', 'ooo', 'ooo', 'ooo', 'ooo', 'ooo', '234234', '0234', '234', 'BCA', 'ooo', '2021-10-05 21:41:16', '2021-10-05 21:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Reinert Yosua Rumagit', 'reinertyosuarumagit@gmail.com', NULL, '$2y$10$Qxy5.NPFOlPZQEMDyVr/pOF/HLoo9hmLrxlBBiMrSkYcAYFaJqpoK', NULL, '2021-10-05 02:55:05', '2021-10-05 02:55:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_category` (`category_id`),
  ADD KEY `fk_supplier_category` (`supplier_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_supplier_category` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
