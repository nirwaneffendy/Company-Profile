-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2026 at 08:58 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `servis_penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `module` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `old_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`old_data`)),
  `new_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`new_data`)),
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `module`, `description`, `old_data`, `new_data`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(1, 23, 'Reset All Activities', 'Pengguna', 'Mereset (menghapus) semua riwayat aktivitas sistem.', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-15 09:03:56', '2026-03-15 09:03:56'),
(2, 23, 'View Page', 'Settings', 'Mengakses halaman: settings/users', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-15 09:03:57', '2026-03-15 09:03:57'),
(3, 23, 'View Page', 'Master Data', 'Mengakses halaman: master-data/suppliers', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-15 09:04:29', '2026-03-15 09:04:29'),
(4, 23, 'Delete to Trash', 'Supplier', 'Menghapus data ke Recycle Bin: dummy', '{\"id\":4,\"code\":\"SUP\\/SS\\/000001\",\"name\":\"Test Supplier\",\"phone\":\"081274554645\",\"fax\":null,\"email\":null,\"npwp\":null,\"address\":\"Semabung\",\"city\":\"Pangkalpinang\",\"province\":\"Bangka Belitung\",\"country\":\"Indonesia\",\"postal_code\":\"33125\",\"created_at\":\"2026-03-15T09:02:25.000000Z\",\"updated_at\":\"2026-03-15T09:02:25.000000Z\",\"bank_number_1\":null,\"bank_holder_1\":null,\"bank_name_1\":null,\"bank_number_2\":null,\"bank_holder_2\":null,\"bank_name_2\":null,\"bank_number_3\":null,\"bank_holder_3\":null,\"bank_name_3\":null,\"notes\":null}', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-15 09:04:40', '2026-03-15 09:04:40'),
(5, 23, 'View Page', 'Master Data', 'Mengakses halaman: master-data/suppliers', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-15 09:04:40', '2026-03-15 09:04:40'),
(6, 23, 'View Page', 'Dashboard', 'Mengakses halaman: /', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-15 09:04:46', '2026-03-15 09:04:46'),
(7, 23, 'Logout', 'Auth', 'Pengguna berhasil logout', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-15 09:07:52', '2026-03-15 09:07:52'),
(8, 23, 'Login', 'Auth', 'Pengguna berhasil login', NULL, '{\"id\":23,\"username\":\"sabrian\",\"role\":\"Superadmin\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 12:17:53', '2026-03-19 12:17:53'),
(9, 23, 'View Page', 'Dashboard', 'Mengakses halaman: /', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 12:17:54', '2026-03-19 12:17:54'),
(10, 23, 'View Page', 'Settings', 'Mengakses halaman: settings/users', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 12:18:26', '2026-03-19 12:18:26'),
(11, 23, 'View Page', 'Settings', 'Mengakses halaman: settings/users', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 12:43:56', '2026-03-19 12:43:56'),
(12, 23, 'View Page', 'Dashboard', 'Mengakses halaman: /', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 12:47:46', '2026-03-19 12:47:46'),
(13, 23, 'View Page', 'Penjualan', 'Mengakses halaman: penjualan/kasir', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 12:49:12', '2026-03-19 12:49:12'),
(14, 23, 'View Page', 'Auth', 'Mengakses halaman: auth/login-basic', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 12:49:20', '2026-03-19 12:49:20'),
(15, 23, 'View Page', 'Auth', 'Mengakses halaman: auth/login-basic', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 12:51:31', '2026-03-19 12:51:31'),
(16, 23, 'View Page', 'Auth', 'Mengakses halaman: auth/login-basic', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:39:07', '2026-03-19 13:39:07'),
(17, 23, 'Login', 'Auth', 'Pengguna berhasil login', NULL, '{\"id\":23,\"username\":\"sabrian\",\"role\":\"Superadmin\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:39:21', '2026-03-19 13:39:21'),
(18, 23, 'View Page', 'Dashboard', 'Mengakses halaman: /', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:39:21', '2026-03-19 13:39:21'),
(19, 23, 'View Page', 'Settings', 'Mengakses halaman: settings/company', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:48:34', '2026-03-19 13:48:34'),
(20, 23, 'View Page', 'Dashboard', 'Mengakses halaman: /', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:54:26', '2026-03-19 13:54:26'),
(21, 23, 'View Page', 'Penjualan', 'Mengakses halaman: penjualan/kasir', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:54:37', '2026-03-19 13:54:37'),
(22, 23, 'Create', 'Penjualan', 'Transaksi penjualan baru: PNJ/SS/000002 - Total: Rp 5.320', NULL, '{\"id\":76,\"transaction_number\":\"PNJ\\/SS\\/000002\",\"transaction_date\":\"2026-03-19\",\"customer_id\":null,\"subtotal\":\"5000.00\",\"discount_percentage\":\"5.00\",\"discount\":\"250.00\",\"tax_percentage\":\"12.00\",\"tax\":\"570.00\",\"show_tax\":1,\"total_amount\":\"5320.00\",\"paid_amount\":\"10000.00\",\"change_amount\":\"4680.00\",\"payment_method\":\"cash\",\"transfer_proof\":null,\"bank_name\":null,\"reference_no\":null,\"due_date\":null,\"user_id\":23,\"status\":\"completed\",\"notes\":\"Metode: Cash\",\"created_at\":\"2026-03-19T13:55:04.000000Z\",\"updated_at\":\"2026-03-19T13:55:04.000000Z\",\"deleted_at\":null,\"items\":[{\"id\":103,\"sales_transaction_id\":76,\"product_id\":18,\"product_name\":\"test\",\"quantity\":1,\"price\":\"5000.00\",\"discount\":\"0.00\",\"discount_percent\":\"0.00\",\"subtotal\":\"5000.00\",\"created_at\":\"2026-03-19T13:55:04.000000Z\",\"updated_at\":\"2026-03-19T13:55:04.000000Z\",\"deleted_at\":null}]}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:55:04', '2026-03-19 13:55:04'),
(23, 23, 'View Page', 'Penjualan', 'Mengakses halaman: penjualan/print/PNJ/SS/000002', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:55:04', '2026-03-19 13:55:04'),
(24, 23, 'View Page', 'Penjualan', 'Mengakses halaman: penjualan/kasir', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:55:12', '2026-03-19 13:55:12'),
(25, 23, 'View Page', 'Penjualan', 'Mengakses halaman: penjualan/data', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:55:17', '2026-03-19 13:55:17'),
(26, 23, 'View Page', 'Servis', 'Mengakses halaman: services/incoming', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:55:23', '2026-03-19 13:55:23'),
(27, 23, 'Create', 'Servis', 'Menerima servis baru: SRV/SS/000001 - Bian', NULL, '{\"store_id\":\"1\",\"dept_toko\":\"SS LAPTOP PANGKALPINANG\",\"nama_pelanggan\":\"Bian\",\"no_hp_wa\":\"081278554645\",\"nama_unit\":null,\"snid_unit\":\"123456\",\"keluhan\":null,\"catatan_servis\":null,\"kelengkapan_unit\":\"UNIT ONLY\",\"estimasi_biaya\":\"0\",\"estimasi_biaya_decimal\":0,\"service_code\":\"SRV\\/SS\\/000001\",\"service_date\":\"2026-03-19\",\"daily_sequence\":1,\"status_servis\":\"Masuk\",\"updated_at\":\"2026-03-19T13:55:41.000000Z\",\"created_at\":\"2026-03-19T13:55:41.000000Z\",\"id\":109}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:55:42', '2026-03-19 13:55:42'),
(28, 23, 'View Page', 'Servis', 'Mengakses halaman: services/incoming', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:55:42', '2026-03-19 13:55:42'),
(29, 23, 'View Page', 'Servis', 'Mengakses halaman: services/incoming/109/checkout', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:55:47', '2026-03-19 13:55:47'),
(30, 23, 'Delete to Trash', 'ServiceIncoming', 'Menghapus data ke Recycle Bin: dummy', '{\"id\":109,\"service_code\":\"SRV\\/SS\\/000001\",\"service_date\":\"2026-03-19\",\"daily_sequence\":1,\"dept_toko\":\"SS LAPTOP PANGKALPINANG\",\"store_id\":1,\"nama_pelanggan\":\"Bian\",\"no_hp_wa\":\"081278554645\",\"nama_unit\":null,\"snid_unit\":\"123456\",\"keluhan\":null,\"catatan_servis\":null,\"kelengkapan_unit\":\"UNIT ONLY\",\"estimasi_biaya\":0,\"estimasi_biaya_decimal\":\"0.00\",\"status_servis\":\"Masuk\",\"created_at\":\"2026-03-19T13:55:41.000000Z\",\"updated_at\":\"2026-03-19T13:55:41.000000Z\"}', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:56:34', '2026-03-19 13:56:34'),
(31, 23, 'View Page', 'Servis', 'Mengakses halaman: services/incoming', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:56:34', '2026-03-19 13:56:34'),
(32, 23, 'View Page', 'Penjualan', 'Mengakses halaman: penjualan/data', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:56:38', '2026-03-19 13:56:38'),
(33, 23, 'View Page', 'Dashboard', 'Mengakses halaman: /', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:56:47', '2026-03-19 13:56:47'),
(34, 23, 'View Page', 'Penjualan', 'Mengakses halaman: penjualan/data', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:56:53', '2026-03-19 13:56:53'),
(35, 23, 'Delete to Trash', 'SalesTransaction', 'Menghapus data ke Recycle Bin: dummy', '{\"id\":76,\"transaction_number\":\"PNJ\\/SS\\/000002\",\"transaction_date\":\"2026-03-19\",\"customer_id\":null,\"subtotal\":\"5000.00\",\"discount_percentage\":\"5.00\",\"discount\":\"250.00\",\"tax_percentage\":\"12.00\",\"tax\":\"570.00\",\"show_tax\":1,\"total_amount\":\"5320.00\",\"paid_amount\":\"10000.00\",\"change_amount\":\"4680.00\",\"payment_method\":\"cash\",\"transfer_proof\":null,\"bank_name\":null,\"reference_no\":null,\"due_date\":null,\"user_id\":23,\"status\":\"completed\",\"notes\":\"Metode: Cash\",\"created_at\":\"2026-03-19T13:55:04.000000Z\",\"updated_at\":\"2026-03-19T13:55:04.000000Z\",\"deleted_at\":null,\"items\":[{\"id\":103,\"sales_transaction_id\":76,\"product_id\":18,\"product_name\":\"test\",\"quantity\":1,\"price\":\"5000.00\",\"discount\":\"0.00\",\"discount_percent\":\"0.00\",\"subtotal\":\"5000.00\",\"created_at\":\"2026-03-19T13:55:04.000000Z\",\"updated_at\":\"2026-03-19T13:55:04.000000Z\",\"deleted_at\":null}],\"user\":{\"id\":23,\"name\":\"Sabrian\",\"username\":\"sabrian\",\"email\":\"sslaptop@gmail.com\",\"phone\":\"081278554645\",\"role\":\"Superadmin\",\"approval_status\":\"approved\",\"approved_by\":2,\"approved_at\":\"2026-03-15 00:56:19\",\"is_active\":1,\"store_id\":null,\"email_verified_at\":null,\"plain_password\":\"ss123456\",\"created_at\":\"2026-03-14T17:36:59.000000Z\",\"updated_at\":\"2026-03-14T17:56:19.000000Z\",\"deleted_at\":null}}', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:57:00', '2026-03-19 13:57:00'),
(36, 23, 'View Page', 'Penjualan', 'Mengakses halaman: penjualan/data', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:57:00', '2026-03-19 13:57:00'),
(37, 23, 'View Page', 'Dashboard', 'Mengakses halaman: /', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:57:03', '2026-03-19 13:57:03'),
(38, 23, 'Logout', 'Auth', 'Pengguna berhasil logout', NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 14:28:25', '2026-03-19 14:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `assemblies`
--

CREATE TABLE `assemblies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_number` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(255) DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `service_fee` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_cost` decimal(15,2) NOT NULL,
  `notes` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'completed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assembly_items`
--

CREATE TABLE `assembly_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assembly_id` bigint(20) UNSIGNED NOT NULL,
  `item_type` varchar(255) NOT NULL DEFAULT 'Barang',
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_profiles`
--

CREATE TABLE `company_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `app_name` varchar(255) DEFAULT NULL,
  `transaction_code` varchar(255) DEFAULT 'MS',
  `sales_code_prefix` varchar(255) NOT NULL DEFAULT 'MS',
  `address` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `system_logo` varchar(255) DEFAULT NULL,
  `barcode_image` varchar(255) DEFAULT NULL,
  `qris_image` varchar(255) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `ppn_percentage` decimal(5,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `service_incoming_receipt_footer` text DEFAULT NULL,
  `sales_invoice_footer` text DEFAULT NULL,
  `service_signature_label` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_profiles`
--

INSERT INTO `company_profiles` (`id`, `company_name`, `app_name`, `transaction_code`, `sales_code_prefix`, `address`, `phone`, `email`, `logo`, `system_logo`, `barcode_image`, `qris_image`, `footer_text`, `ppn_percentage`, `created_at`, `updated_at`, `service_incoming_receipt_footer`, `sales_invoice_footer`, `service_signature_label`) VALUES
(1, 'SS LAPTOP PANGKALPINANG', NULL, 'SS', 'SS', 'Jl. Depati Hamzah No.731, Semabung Lama, \r\nKec. Bukitintan, Kota Pangkal Pinang, \r\nKepulauan Bangka Belitung 33684', '081278554645', NULL, 'company_logos/f8TQLUM8Pp9NXrqeHN7FxrfIPuqd4FmHVpl7ivHJ.png', 'company_logos/MrrsIWRNwGbAUXoWHd2UmyaoNjqgBQ9pLFe9Qq91.png', 'company_logos/63WGGZgstUlmjHlEBTAdkTaMiA5PJNfc2lKJCo7Z.jpg', 'company_logos/swLioCe4ntw6MgbaXqyM4NfDoI8Szi5bn4Zr7qYL.jpg', '2026 © MANAJEMEN SERVIS DAN PENJUALAN SPAREPART © SS LAPTOP PANGKALPINANG', 12.00, '2026-01-12 11:12:29', '2026-03-14 18:41:42', '1. Harap simpan tanda terima servis ini dengan benar &amp; tunjukkan tanda terima servis ini saat mengambil perangkat.\r\n2. Jika tanda terima servis ini hilang tunjukkan KTP asli &amp; berikan salinan KTP untuk mengambil perangkat Anda.\r\n3. Tanda terima ini secara otomatis tidak berlaku setelah perangkat sudah diambil.\r\n4. Segala bentuk perkembangan perbaikan unit perangkat servis, akan dikonfirmasi secepatnya.\r\n5. Terima kasih telah berkunjung ke di SS LAPTOP PANGKALPINANG.\r\n6. Pelayanan terbaik adalah mutu kualitas kami.', '1. Barang yang sudah dibeli tidak dapat ditukar atau dikembalikan kecuali ada perjanjian tertulis.\r\n2. Garansi mengikuti ketentuan masing-masing produk dan layanan.\r\n3. Mohon simpan faktur ini sebagai bukti transaksi yang sah.', 'SS LAPTOP PANGKALPINANG');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `bank_holder` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `customer_group` varchar(255) NOT NULL DEFAULT 'Umum',
  `address` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `fax`, `email`, `bank_holder`, `bank_name`, `notes`, `customer_group`, `address`, `city`, `province`, `postal_code`, `created_at`, `updated_at`) VALUES
(84, 'Bian', '081278554645', NULL, NULL, NULL, NULL, NULL, 'Umum', NULL, NULL, NULL, NULL, '2026-03-14 18:38:45', '2026-03-14 18:38:45');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(93, '2026_03_15_000002_add_soft_deletes_to_products_table', 1),
(94, '2026_03_15_000003_make_purchase_items_product_nullable_and_snapshot', 2),
(95, '2026_03_15_000004_make_stock_transfer_items_product_nullable_and_snapshot', 3);

-- --------------------------------------------------------

--
-- Table structure for table `opening_stocks`
--

CREATE TABLE `opening_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `notes` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `opening_stocks`
--

INSERT INTO `opening_stocks` (`id`, `product_id`, `store_id`, `quantity`, `unit`, `date`, `notes`, `user_id`, `created_at`, `updated_at`) VALUES
(16, 18, 1, 5, 'Pcs', '2026-03-15', '[Stok Awal]', 23, '2026-03-14 18:35:57', '2026-03-14 18:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `opening_stock_histories`
--

CREATE TABLE `opening_stock_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `opening_stock_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `notes` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `opening_stock_histories`
--

INSERT INTO `opening_stock_histories` (`id`, `opening_stock_id`, `quantity`, `unit`, `date`, `notes`, `user_id`, `created_at`, `updated_at`) VALUES
(16, 16, 5, 'Pcs', '2026-03-15', '[Stok Awal]', 23, '2026-03-14 18:35:57', '2026-03-14 18:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `sub_category` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `rack_location` varchar(255) DEFAULT NULL,
  `purchase_price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `selling_price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `sales_status` varchar(255) NOT NULL DEFAULT 'Jual',
  `stock` int(11) NOT NULL DEFAULT 0,
  `min_stock` int(11) NOT NULL DEFAULT 0,
  `has_serial_number` tinyint(1) NOT NULL DEFAULT 0,
  `is_assembled` tinyint(1) NOT NULL DEFAULT 0,
  `assembly_mode` varchar(255) DEFAULT NULL,
  `assembly_extra_cost` decimal(15,2) NOT NULL DEFAULT 0.00,
  `pricing_policy` varchar(255) NOT NULL DEFAULT 'manual',
  `markup_value` decimal(8,2) NOT NULL DEFAULT 0.00,
  `unit` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `length` decimal(10,2) DEFAULT NULL,
  `width` decimal(10,2) DEFAULT NULL,
  `height` decimal(10,2) DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `item_type`, `category`, `sub_category`, `brand`, `rack_location`, `purchase_price`, `selling_price`, `sales_status`, `stock`, `min_stock`, `has_serial_number`, `is_assembled`, `assembly_mode`, `assembly_extra_cost`, `pricing_policy`, `markup_value`, `unit`, `description`, `length`, `width`, `height`, `weight`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(18, 'PRDK/SS/000001', 'test', 'Hardware', 'test', 'test', 'test', '1', 1000.00, 5000.00, 'Jual', 3, 0, 0, 0, NULL, 0.00, 'manual', 0.00, 'Pcs', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-14 18:34:05', '2026-03-19 13:55:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_bom_items`
--

CREATE TABLE `product_bom_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `component_product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(15,3) NOT NULL DEFAULT 1.000,
  `unit_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_discounts`
--

CREATE TABLE `product_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `min_qty` int(11) NOT NULL,
  `discount_type` enum('fixed','percent') NOT NULL,
  `discount_value` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_stores`
--

CREATE TABLE `product_stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_stores`
--

INSERT INTO `product_stores` (`id`, `product_id`, `store_id`, `quantity`, `created_at`, `updated_at`) VALUES
(14, 18, 1, 5, '2026-03-14 18:35:57', '2026-03-14 18:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `product_units`
--

CREATE TABLE `product_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `unit_name` varchar(255) NOT NULL,
  `conversion_value` decimal(10,2) NOT NULL DEFAULT 1.00,
  `purchase_price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `selling_price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_units`
--

INSERT INTO `product_units` (`id`, `product_id`, `unit_name`, `conversion_value`, `purchase_price`, `selling_price`, `is_primary`, `description`, `created_at`, `updated_at`) VALUES
(26, 18, 'Pcs', 1.00, 1000.00, 5000.00, 1, NULL, '2026-03-14 18:34:05', '2026-03-14 18:34:05');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_payments`
--

CREATE TABLE `purchase_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `reference_no` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_transactions`
--

CREATE TABLE `purchase_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_number` varchar(255) NOT NULL,
  `transaction_date` date NOT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  `subtotal` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(5,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_amount` decimal(15,2) NOT NULL,
  `paid_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(255) NOT NULL DEFAULT 'cash',
  `bank_name` varchar(255) DEFAULT NULL,
  `reference_no` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `notes` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'completed',
  `payment_status` varchar(255) NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_transaction_items`
--

CREATE TABLE `purchase_transaction_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `cost_price` decimal(15,2) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_payments`
--

CREATE TABLE `sales_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `reference_no` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_payments`
--

INSERT INTO `sales_payments` (`id`, `sales_transaction_id`, `amount`, `payment_date`, `payment_method`, `bank_name`, `reference_no`, `notes`, `user_id`, `created_at`, `updated_at`) VALUES
(21, 75, 10000.00, '2026-03-15', 'cash', NULL, NULL, 'Pembayaran Awal / DP', 23, '2026-03-14 18:36:22', '2026-03-14 18:36:22'),
(22, 76, 10000.00, '2026-03-19', 'cash', NULL, NULL, 'Pembayaran Awal / DP', 23, '2026-03-19 13:55:04', '2026-03-19 13:55:04');

-- --------------------------------------------------------

--
-- Table structure for table `sales_people`
--

CREATE TABLE `sales_people` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `bank_account_number` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_transactions`
--

CREATE TABLE `sales_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_number` varchar(255) NOT NULL,
  `transaction_date` date NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subtotal` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount_percentage` decimal(5,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `tax_percentage` decimal(5,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(15,2) NOT NULL DEFAULT 0.00,
  `show_tax` tinyint(1) NOT NULL DEFAULT 1,
  `total_amount` decimal(15,2) NOT NULL,
  `paid_amount` decimal(15,2) NOT NULL,
  `change_amount` decimal(15,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL DEFAULT 'cash',
  `transfer_proof` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `reference_no` varchar(255) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'completed',
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_transactions`
--

INSERT INTO `sales_transactions` (`id`, `transaction_number`, `transaction_date`, `customer_id`, `subtotal`, `discount_percentage`, `discount`, `tax_percentage`, `tax`, `show_tax`, `total_amount`, `paid_amount`, `change_amount`, `payment_method`, `transfer_proof`, `bank_name`, `reference_no`, `due_date`, `user_id`, `status`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(75, 'PNJ/SS/000001', '2026-03-15', NULL, 5000.00, 0.00, 0.00, 12.00, 600.00, 1, 5600.00, 10000.00, 4400.00, 'cash', NULL, NULL, NULL, NULL, 23, 'completed', 'Metode: Cash', '2026-03-14 18:36:22', '2026-03-14 19:16:29', '2026-03-14 19:16:29'),
(76, 'PNJ/SS/000002', '2026-03-19', NULL, 5000.00, 5.00, 250.00, 12.00, 570.00, 1, 5320.00, 10000.00, 4680.00, 'cash', NULL, NULL, NULL, NULL, 23, 'completed', 'Metode: Cash', '2026-03-19 13:55:04', '2026-03-19 13:57:00', '2026-03-19 13:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `sales_transaction_items`
--

CREATE TABLE `sales_transaction_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(5,2) NOT NULL DEFAULT 0.00,
  `subtotal` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_transaction_items`
--

INSERT INTO `sales_transaction_items` (`id`, `sales_transaction_id`, `product_id`, `product_name`, `quantity`, `price`, `discount`, `discount_percent`, `subtotal`, `created_at`, `updated_at`, `deleted_at`) VALUES
(102, 75, 18, 'test', 1, 5000.00, 0.00, 0.00, 5000.00, '2026-03-14 18:36:22', '2026-03-14 18:36:22', NULL),
(103, 76, 18, 'test', 1, 5000.00, 0.00, 0.00, 5000.00, '2026-03-19 13:55:04', '2026-03-19 13:55:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sub_type` varchar(255) DEFAULT NULL,
  `sales_status` varchar(255) NOT NULL DEFAULT 'Jual',
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `base_price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `member_price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `code`, `name`, `type`, `sub_type`, `sales_status`, `price`, `base_price`, `member_price`, `description`, `created_at`, `updated_at`) VALUES
(64, 'JSA/SS/000001', 'test jasa', 'Hardware', 'test', 'Jual', 20000.00, 1000.00, 20000.00, NULL, '2026-03-14 18:35:04', '2026-03-14 18:35:04');

-- --------------------------------------------------------

--
-- Table structure for table `service_incomings`
--

CREATE TABLE `service_incomings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_code` varchar(255) DEFAULT NULL,
  `service_date` date DEFAULT NULL,
  `daily_sequence` int(10) UNSIGNED DEFAULT NULL,
  `dept_toko` varchar(255) DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `no_hp_wa` varchar(255) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  `snid_unit` varchar(255) DEFAULT NULL,
  `keluhan` text DEFAULT NULL,
  `catatan_servis` text DEFAULT NULL,
  `kelengkapan_unit` varchar(255) DEFAULT NULL,
  `estimasi_biaya` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `estimasi_biaya_decimal` decimal(15,2) NOT NULL DEFAULT 0.00,
  `status_servis` varchar(255) NOT NULL DEFAULT 'Masuk',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_receivable_payments`
--

CREATE TABLE `service_receivable_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `amount_paid` decimal(15,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_date` date NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_transactions`
--

CREATE TABLE `service_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `technician_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_cost` decimal(15,2) NOT NULL DEFAULT 0.00,
  `subtotal` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount_percentage` decimal(5,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `tax_percentage` decimal(5,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(15,2) NOT NULL DEFAULT 0.00,
  `show_tax` tinyint(1) NOT NULL DEFAULT 1,
  `total` decimal(15,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `amount_paid` decimal(15,2) NOT NULL,
  `transfer_proof` varchar(255) DEFAULT NULL,
  `change_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `bank_name` varchar(255) DEFAULT NULL,
  `reference_no` varchar(255) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Belum Lunas',
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_transaction_items`
--

CREATE TABLE `service_transaction_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `item_type` varchar(255) NOT NULL DEFAULT 'product',
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `discount_percent` decimal(5,2) NOT NULL DEFAULT 0.00,
  `subtotal` decimal(15,2) NOT NULL,
  `warranty` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_units`
--

CREATE TABLE `service_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `unit_name` varchar(255) NOT NULL,
  `conversion_value` decimal(10,2) NOT NULL DEFAULT 1.00,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `base_price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `member_price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_units`
--

INSERT INTO `service_units` (`id`, `service_id`, `unit_name`, `conversion_value`, `price`, `base_price`, `member_price`, `description`, `created_at`, `updated_at`) VALUES
(65, 64, 'Unit', 1.00, 20000.00, 1000.00, 20000.00, NULL, '2026-03-14 18:35:04', '2026-03-14 18:35:04');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_transfers`
--

CREATE TABLE `stock_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transfer_number` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(255) NOT NULL,
  `from_store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `to_store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `from_location` varchar(255) DEFAULT NULL,
  `to_location` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_transfer_items`
--

CREATE TABLE `stock_transfer_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stock_transfer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `wa_template` text DEFAULT NULL,
  `receipt_header` text DEFAULT NULL,
  `receipt_footer` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `code`, `name`, `address`, `phone`, `wa_template`, `receipt_header`, `receipt_footer`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'TK/MS/0001', 'SS LAPTOP PANGKALPINANG', 'Jl. Depati Hamzah No.731, Semabung Lama, Kec. Bukitintan, Kota Pangkal Pinang, Kepulauan Bangka Belitung 33684', '081278554645', NULL, NULL, NULL, 1, '2026-01-13 18:32:17', '2026-03-14 17:39:32');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `npwp` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bank_number_1` varchar(255) DEFAULT NULL,
  `bank_holder_1` varchar(255) DEFAULT NULL,
  `bank_name_1` varchar(255) DEFAULT NULL,
  `bank_number_2` varchar(255) DEFAULT NULL,
  `bank_holder_2` varchar(255) DEFAULT NULL,
  `bank_name_2` varchar(255) DEFAULT NULL,
  `bank_number_3` varchar(255) DEFAULT NULL,
  `bank_holder_3` varchar(255) DEFAULT NULL,
  `bank_name_3` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_banks`
--

CREATE TABLE `supplier_banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `account_no` varchar(64) NOT NULL,
  `bank_holder` varchar(128) DEFAULT NULL,
  `bank_name` varchar(128) DEFAULT NULL,
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_notifications`
--

CREATE TABLE `system_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_role` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `level` varchar(255) NOT NULL DEFAULT 'info',
  `link_url` varchar(255) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_notifications`
--

INSERT INTO `system_notifications` (`id`, `user_id`, `target_role`, `created_by`, `type`, `title`, `message`, `level`, `link_url`, `is_read`, `read_at`, `created_at`, `updated_at`) VALUES
(1232, NULL, 'superadmin', 23, 'product_created', 'Produk baru ditambahkan: test', 'Kode: PRDK/SS/000001 | Status jual: Jual', 'info', 'http://localhost/MANAJEMEN%20SERVIS%20LAPTOP%20DAN%20PENJUALAN%20SPAREPART/public/master-data/products', 1, '2026-03-14 19:15:54', '2026-03-14 18:34:05', '2026-03-14 19:15:54'),
(1233, NULL, 'admin', 23, 'product_created', 'Produk baru ditambahkan: test', 'Kode: PRDK/SS/000001 | Status jual: Jual', 'info', 'http://localhost/MANAJEMEN%20SERVIS%20LAPTOP%20DAN%20PENJUALAN%20SPAREPART/public/master-data/products', 0, NULL, '2026-03-14 18:34:05', '2026-03-14 18:34:05'),
(1234, NULL, 'superadmin', 23, 'service_created', 'Jasa baru ditambahkan: test jasa', 'Kode: JSA/SS/000001 | Status jual: Jual', 'info', 'http://localhost/MANAJEMEN%20SERVIS%20LAPTOP%20DAN%20PENJUALAN%20SPAREPART/public/master-data/services', 1, '2026-03-14 19:15:54', '2026-03-14 18:35:04', '2026-03-14 19:15:54'),
(1235, NULL, 'admin', 23, 'service_created', 'Jasa baru ditambahkan: test jasa', 'Kode: JSA/SS/000001 | Status jual: Jual', 'info', 'http://localhost/MANAJEMEN%20SERVIS%20LAPTOP%20DAN%20PENJUALAN%20SPAREPART/public/master-data/services', 0, NULL, '2026-03-14 18:35:04', '2026-03-14 18:35:04'),
(1236, NULL, 'superadmin', 23, 'sales_new', 'Penjualan baru: PNJ/SS/000001', 'Total: Rp 0 | Status: completed', 'info', 'http://localhost/MANAJEMEN%20SERVIS%20LAPTOP%20DAN%20PENJUALAN%20SPAREPART/public/penjualan/data', 1, '2026-03-14 19:15:54', '2026-03-14 18:36:22', '2026-03-14 19:15:54'),
(1237, NULL, 'admin', 23, 'sales_new', 'Penjualan baru: PNJ/SS/000001', 'Total: Rp 0 | Status: completed', 'info', 'http://localhost/MANAJEMEN%20SERVIS%20LAPTOP%20DAN%20PENJUALAN%20SPAREPART/public/penjualan/data', 0, NULL, '2026-03-14 18:36:22', '2026-03-14 18:36:22'),
(1238, NULL, 'kasir', 23, 'sales_new', 'Penjualan baru: PNJ/SS/000001', 'Total: Rp 0 | Status: completed', 'info', 'http://localhost/MANAJEMEN%20SERVIS%20LAPTOP%20DAN%20PENJUALAN%20SPAREPART/public/penjualan/data', 0, NULL, '2026-03-14 18:36:22', '2026-03-14 18:36:22'),
(1243, NULL, 'superadmin', 23, 'supplier_created', 'Supplier baru ditambahkan: Test Supplier', 'Kode: SUP/SS/000001, Telepon: 081274554645', 'info', 'http://localhost/MANAJEMEN%20SERVIS%20LAPTOP%20DAN%20PENJUALAN%20SPAREPART/public/master-data/suppliers', 1, '2026-03-19 12:18:00', '2026-03-15 09:02:25', '2026-03-19 12:18:00'),
(1244, NULL, 'admin', 23, 'supplier_created', 'Supplier baru ditambahkan: Test Supplier', 'Kode: SUP/SS/000001, Telepon: 081274554645', 'info', 'http://localhost/MANAJEMEN%20SERVIS%20LAPTOP%20DAN%20PENJUALAN%20SPAREPART/public/master-data/suppliers', 0, NULL, '2026-03-15 09:02:25', '2026-03-15 09:02:25'),
(1245, NULL, 'superadmin', 23, 'sales_new', 'Penjualan baru: PNJ/SS/000002', 'Total: Rp 0 | Status: completed', 'info', 'http://localhost/MANAJEMEN%20SERVIS%20LAPTOP%20DAN%20PENJUALAN%20SPAREPART/public/penjualan/data', 0, NULL, '2026-03-19 13:55:04', '2026-03-19 13:55:04'),
(1246, NULL, 'admin', 23, 'sales_new', 'Penjualan baru: PNJ/SS/000002', 'Total: Rp 0 | Status: completed', 'info', 'http://localhost/MANAJEMEN%20SERVIS%20LAPTOP%20DAN%20PENJUALAN%20SPAREPART/public/penjualan/data', 0, NULL, '2026-03-19 13:55:04', '2026-03-19 13:55:04'),
(1247, NULL, 'kasir', 23, 'sales_new', 'Penjualan baru: PNJ/SS/000002', 'Total: Rp 0 | Status: completed', 'info', 'http://localhost/MANAJEMEN%20SERVIS%20LAPTOP%20DAN%20PENJUALAN%20SPAREPART/public/penjualan/data', 0, NULL, '2026-03-19 13:55:04', '2026-03-19 13:55:04');

-- --------------------------------------------------------

--
-- Table structure for table `teknisi`
--

CREATE TABLE `teknisi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `komisi` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trash_bins`
--

CREATE TABLE `trash_bins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`)),
  `reason` text DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trash_bins`
--

INSERT INTO `trash_bins` (`id`, `model_type`, `model_id`, `data`, `reason`, `deleted_by`, `deleted_by_name`, `created_at`, `updated_at`) VALUES
(39, 'App\\Models\\Supplier', 4, '{\"id\":4,\"code\":\"SUP\\/SS\\/000001\",\"name\":\"Test Supplier\",\"phone\":\"081274554645\",\"fax\":null,\"email\":null,\"npwp\":null,\"address\":\"Semabung\",\"city\":\"Pangkalpinang\",\"province\":\"Bangka Belitung\",\"country\":\"Indonesia\",\"postal_code\":\"33125\",\"created_at\":\"2026-03-15T09:02:25.000000Z\",\"updated_at\":\"2026-03-15T09:02:25.000000Z\",\"bank_number_1\":null,\"bank_holder_1\":null,\"bank_name_1\":null,\"bank_number_2\":null,\"bank_holder_2\":null,\"bank_name_2\":null,\"bank_number_3\":null,\"bank_holder_3\":null,\"bank_name_3\":null,\"notes\":null}', 'dummy', 23, 'Sabrian', '2026-03-15 09:04:39', '2026-03-15 09:04:39'),
(40, 'App\\Models\\ServiceIncoming', 109, '{\"id\":109,\"service_code\":\"SRV\\/SS\\/000001\",\"service_date\":\"2026-03-19\",\"daily_sequence\":1,\"dept_toko\":\"SS LAPTOP PANGKALPINANG\",\"store_id\":1,\"nama_pelanggan\":\"Bian\",\"no_hp_wa\":\"081278554645\",\"nama_unit\":null,\"snid_unit\":\"123456\",\"keluhan\":null,\"catatan_servis\":null,\"kelengkapan_unit\":\"UNIT ONLY\",\"estimasi_biaya\":0,\"estimasi_biaya_decimal\":\"0.00\",\"status_servis\":\"Masuk\",\"created_at\":\"2026-03-19T13:55:41.000000Z\",\"updated_at\":\"2026-03-19T13:55:41.000000Z\"}', 'dummy', 23, 'Sabrian', '2026-03-19 13:56:34', '2026-03-19 13:56:34'),
(41, 'App\\Models\\SalesTransaction', 76, '{\"id\":76,\"transaction_number\":\"PNJ\\/SS\\/000002\",\"transaction_date\":\"2026-03-19\",\"customer_id\":null,\"subtotal\":\"5000.00\",\"discount_percentage\":\"5.00\",\"discount\":\"250.00\",\"tax_percentage\":\"12.00\",\"tax\":\"570.00\",\"show_tax\":1,\"total_amount\":\"5320.00\",\"paid_amount\":\"10000.00\",\"change_amount\":\"4680.00\",\"payment_method\":\"cash\",\"transfer_proof\":null,\"bank_name\":null,\"reference_no\":null,\"due_date\":null,\"user_id\":23,\"status\":\"completed\",\"notes\":\"Metode: Cash\",\"created_at\":\"2026-03-19T13:55:04.000000Z\",\"updated_at\":\"2026-03-19T13:55:04.000000Z\",\"deleted_at\":null,\"items\":[{\"id\":103,\"sales_transaction_id\":76,\"product_id\":18,\"product_name\":\"test\",\"quantity\":1,\"price\":\"5000.00\",\"discount\":\"0.00\",\"discount_percent\":\"0.00\",\"subtotal\":\"5000.00\",\"created_at\":\"2026-03-19T13:55:04.000000Z\",\"updated_at\":\"2026-03-19T13:55:04.000000Z\",\"deleted_at\":null}],\"user\":{\"id\":23,\"name\":\"Sabrian\",\"username\":\"sabrian\",\"email\":\"sslaptop@gmail.com\",\"phone\":\"081278554645\",\"role\":\"Superadmin\",\"approval_status\":\"approved\",\"approved_by\":2,\"approved_at\":\"2026-03-15 00:56:19\",\"is_active\":1,\"store_id\":null,\"email_verified_at\":null,\"plain_password\":\"ss123456\",\"created_at\":\"2026-03-14T17:36:59.000000Z\",\"updated_at\":\"2026-03-14T17:56:19.000000Z\",\"deleted_at\":null}}', 'dummy', 23, 'Sabrian', '2026-03-19 13:57:00', '2026-03-19 13:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'Teknisi',
  `approval_status` varchar(255) NOT NULL DEFAULT 'pending',
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `plain_password` varchar(255) DEFAULT NULL COMMENT 'Stores plain password temporarily for admin verification',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `phone`, `role`, `approval_status`, `approved_by`, `approved_at`, `is_active`, `store_id`, `email_verified_at`, `password`, `plain_password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(23, 'Sabrian', 'sabrian', 'sslaptop@gmail.com', '081278554645', 'Superadmin', 'approved', 2, '2026-03-14 17:56:19', 1, NULL, NULL, '$2y$12$xWPjNkNI310YPmmBHZR5SegVJAPpk1wfDM1l7E9hsR2wvC4TNUDbi', 'ss123456', 'NWwOVJJu2c4iTwhNO6fqOFuIOYVr0qUcXCvovOmbQRHYNBxIDd2HJX5htfxN', '2026-03-14 17:36:59', '2026-03-14 17:56:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_sessions`
--

CREATE TABLE `user_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `login_at` timestamp NULL DEFAULT NULL,
  `logout_at` timestamp NULL DEFAULT NULL,
  `close_requested_at` timestamp NULL DEFAULT NULL,
  `close_reason` varchar(255) DEFAULT NULL,
  `last_seen_at` timestamp NULL DEFAULT NULL,
  `logout_reason` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_sessions`
--

INSERT INTO `user_sessions` (`id`, `session_id`, `user_id`, `username`, `role`, `login_at`, `logout_at`, `close_requested_at`, `close_reason`, `last_seen_at`, `logout_reason`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(245, '6k96WO8Hsfc3v8mEEmgZ6gZlw0PMX57pFxaTBSed', 23, 'sabrian', 'Superadmin', '2026-03-14 19:18:31', '2026-03-14 19:18:49', NULL, NULL, NULL, 'user_logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-14 19:18:31', '2026-03-14 19:18:49'),
(246, 'OIkanziD67tRLpcoPcgTP1RhULQ3vkbQxkJzA96n', 23, 'sabrian', 'Superadmin', '2026-03-14 19:18:57', '2026-03-14 19:20:47', NULL, NULL, NULL, 'user_logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-14 19:18:57', '2026-03-14 19:20:47'),
(247, 'Shvow4qmWxgSrM3Aaszj1SVnFyUr7rnarg2Qcibr', 23, 'sabrian', 'Superadmin', '2026-03-14 19:22:40', '2026-03-14 19:22:53', NULL, NULL, NULL, 'user_logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-14 19:22:40', '2026-03-14 19:22:53'),
(248, 'Lfjz5rGU7HumAbUGYx04QlnZo125LUEzEsrL7fT7', 23, 'sabrian', 'Superadmin', '2026-03-15 08:50:30', '2026-03-15 08:59:15', NULL, NULL, NULL, 'new_login_override', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-15 08:50:30', '2026-03-15 08:59:15'),
(249, 'lNBiRCfGBx8y72LsNalcXHge9rjzadQOaKsaPjMV', 23, 'sabrian', 'Superadmin', '2026-03-15 08:59:15', '2026-03-15 09:01:29', NULL, NULL, NULL, 'new_login_override', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-15 08:59:15', '2026-03-15 09:01:29'),
(250, 'VQVYJa6Hvj9twnrZhnlUYZFkhtDtBomHpkHfU6ND', 23, 'sabrian', 'Superadmin', '2026-03-15 09:01:29', '2026-03-15 09:07:52', NULL, NULL, NULL, 'user_logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-15 09:01:29', '2026-03-15 09:07:52'),
(251, 'YJbm3WC5zgFlsLWURGRHsCnubbESbgxdov5lm6Zm', 23, 'sabrian', 'Superadmin', '2026-03-19 12:17:53', '2026-03-19 13:39:21', NULL, NULL, NULL, 'new_login_override', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 12:17:53', '2026-03-19 13:39:21'),
(252, 'pppRLbIcPQ1aJwxHDMJD8lysJcGKwH9u9DJI3U6N', 23, 'sabrian', 'Superadmin', '2026-03-19 13:39:21', '2026-03-19 14:28:25', NULL, NULL, NULL, 'user_logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:39:21', '2026-03-19 14:28:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `assemblies`
--
ALTER TABLE `assemblies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assemblies_transaction_number_unique` (`transaction_number`),
  ADD KEY `assemblies_user_id_foreign` (`user_id`),
  ADD KEY `assemblies_store_id_foreign` (`store_id`);

--
-- Indexes for table `assembly_items`
--
ALTER TABLE `assembly_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assembly_items_assembly_id_foreign` (`assembly_id`),
  ADD KEY `assembly_items_product_id_foreign` (`product_id`),
  ADD KEY `assembly_items_service_id_foreign` (`service_id`);

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
-- Indexes for table `company_profiles`
--
ALTER TABLE `company_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_name_index` (`name`),
  ADD KEY `customers_phone_index` (`phone`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opening_stocks`
--
ALTER TABLE `opening_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `opening_stocks_product_id_foreign` (`product_id`),
  ADD KEY `opening_stocks_user_id_foreign` (`user_id`),
  ADD KEY `opening_stocks_store_id_foreign` (`store_id`);

--
-- Indexes for table `opening_stock_histories`
--
ALTER TABLE `opening_stock_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `opening_stock_histories_opening_stock_id_foreign` (`opening_stock_id`),
  ADD KEY `opening_stock_histories_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_code_unique` (`code`),
  ADD KEY `products_name_index` (`name`),
  ADD KEY `products_category_index` (`category`),
  ADD KEY `products_brand_index` (`brand`);

--
-- Indexes for table `product_bom_items`
--
ALTER TABLE `product_bom_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_bom_items_product_id_foreign` (`product_id`),
  ADD KEY `product_bom_items_component_product_id_foreign` (`component_product_id`);

--
-- Indexes for table `product_discounts`
--
ALTER TABLE `product_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_discounts_product_id_foreign` (`product_id`),
  ADD KEY `product_discounts_unit_id_foreign` (`unit_id`);

--
-- Indexes for table `product_stores`
--
ALTER TABLE `product_stores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_stores_product_id_store_id_unique` (`product_id`,`store_id`),
  ADD KEY `product_stores_store_id_foreign` (`store_id`);

--
-- Indexes for table `product_units`
--
ALTER TABLE `product_units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_units_product_id_foreign` (`product_id`);

--
-- Indexes for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_payments_purchase_transaction_id_foreign` (`purchase_transaction_id`),
  ADD KEY `purchase_payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `purchase_transactions`
--
ALTER TABLE `purchase_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `purchase_transactions_transaction_number_unique` (`transaction_number`),
  ADD KEY `purchase_transactions_transaction_date_index` (`transaction_date`),
  ADD KEY `purchase_transactions_supplier_id_index` (`supplier_id`),
  ADD KEY `purchase_transactions_user_id_index` (`user_id`),
  ADD KEY `purchase_transactions_due_date_index` (`due_date`),
  ADD KEY `purchase_transactions_store_id_foreign` (`store_id`),
  ADD KEY `purchase_transactions_status_index` (`status`),
  ADD KEY `purchase_transactions_transaction_number_index` (`transaction_number`);

--
-- Indexes for table `purchase_transaction_items`
--
ALTER TABLE `purchase_transaction_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_transaction_items_purchase_transaction_id_foreign` (`purchase_transaction_id`),
  ADD KEY `purchase_transaction_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `sales_payments`
--
ALTER TABLE `sales_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_payments_sales_transaction_id_foreign` (`sales_transaction_id`),
  ADD KEY `sales_payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `sales_people`
--
ALTER TABLE `sales_people`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sales_people_code_unique` (`code`);

--
-- Indexes for table `sales_transactions`
--
ALTER TABLE `sales_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sales_transactions_transaction_number_unique` (`transaction_number`),
  ADD KEY `sales_transactions_transaction_date_index` (`transaction_date`),
  ADD KEY `sales_transactions_customer_id_index` (`customer_id`),
  ADD KEY `sales_transactions_user_id_index` (`user_id`),
  ADD KEY `sales_transactions_status_index` (`status`),
  ADD KEY `sales_transactions_payment_method_index` (`payment_method`);

--
-- Indexes for table `sales_transaction_items`
--
ALTER TABLE `sales_transaction_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_transaction_items_sales_transaction_id_foreign` (`sales_transaction_id`),
  ADD KEY `sales_transaction_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_code_unique` (`code`),
  ADD KEY `services_name_index` (`name`),
  ADD KEY `services_type_index` (`type`);

--
-- Indexes for table `service_incomings`
--
ALTER TABLE `service_incomings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_incomings_service_code_unique` (`service_code`),
  ADD KEY `service_incomings_service_date_index` (`service_date`),
  ADD KEY `service_incomings_dept_toko_index` (`dept_toko`),
  ADD KEY `service_incomings_store_id_foreign` (`store_id`),
  ADD KEY `service_incomings_nama_pelanggan_index` (`nama_pelanggan`),
  ADD KEY `service_incomings_no_hp_wa_index` (`no_hp_wa`),
  ADD KEY `service_incomings_status_servis_index` (`status_servis`);

--
-- Indexes for table `service_receivable_payments`
--
ALTER TABLE `service_receivable_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_receivable_payments_service_transaction_id_foreign` (`service_transaction_id`),
  ADD KEY `service_receivable_payments_service_id_foreign` (`service_id`),
  ADD KEY `service_receivable_payments_payment_date_index` (`payment_date`);

--
-- Indexes for table `service_transactions`
--
ALTER TABLE `service_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_transactions_service_id_foreign` (`service_id`),
  ADD KEY `service_transactions_created_at_index` (`created_at`),
  ADD KEY `service_transactions_due_date_index` (`due_date`),
  ADD KEY `service_transactions_technician_id_index` (`technician_id`);

--
-- Indexes for table `service_transaction_items`
--
ALTER TABLE `service_transaction_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_transaction_items_transaction_id_foreign` (`transaction_id`);

--
-- Indexes for table `service_units`
--
ALTER TABLE `service_units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_units_service_id_foreign` (`service_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `stock_transfers`
--
ALTER TABLE `stock_transfers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stock_transfers_transfer_number_unique` (`transfer_number`),
  ADD KEY `stock_transfers_user_id_foreign` (`user_id`),
  ADD KEY `stock_transfers_from_store_id_foreign` (`from_store_id`),
  ADD KEY `stock_transfers_to_store_id_foreign` (`to_store_id`);

--
-- Indexes for table `stock_transfer_items`
--
ALTER TABLE `stock_transfer_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_transfer_items_stock_transfer_id_foreign` (`stock_transfer_id`),
  ADD KEY `stock_transfer_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stores_code_unique` (`code`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_code_unique` (`code`);

--
-- Indexes for table `supplier_banks`
--
ALTER TABLE `supplier_banks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `supplier_banks_supplier_id_account_no_unique` (`supplier_id`,`account_no`);

--
-- Indexes for table `system_notifications`
--
ALTER TABLE `system_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teknisi`
--
ALTER TABLE `teknisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trash_bins`
--
ALTER TABLE `trash_bins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trash_bins_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_sessions_session_id_unique` (`session_id`),
  ADD KEY `user_sessions_user_id_index` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `assemblies`
--
ALTER TABLE `assemblies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `assembly_items`
--
ALTER TABLE `assembly_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `company_profiles`
--
ALTER TABLE `company_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `opening_stocks`
--
ALTER TABLE `opening_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `opening_stock_histories`
--
ALTER TABLE `opening_stock_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_bom_items`
--
ALTER TABLE `product_bom_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_discounts`
--
ALTER TABLE `product_discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_stores`
--
ALTER TABLE `product_stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_units`
--
ALTER TABLE `product_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `purchase_transactions`
--
ALTER TABLE `purchase_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `purchase_transaction_items`
--
ALTER TABLE `purchase_transaction_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sales_payments`
--
ALTER TABLE `sales_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sales_people`
--
ALTER TABLE `sales_people`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales_transactions`
--
ALTER TABLE `sales_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `sales_transaction_items`
--
ALTER TABLE `sales_transaction_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `service_incomings`
--
ALTER TABLE `service_incomings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `service_receivable_payments`
--
ALTER TABLE `service_receivable_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_transactions`
--
ALTER TABLE `service_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `service_transaction_items`
--
ALTER TABLE `service_transaction_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `service_units`
--
ALTER TABLE `service_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `stock_transfers`
--
ALTER TABLE `stock_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_transfer_items`
--
ALTER TABLE `stock_transfer_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `supplier_banks`
--
ALTER TABLE `supplier_banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_notifications`
--
ALTER TABLE `system_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1252;

--
-- AUTO_INCREMENT for table `teknisi`
--
ALTER TABLE `teknisi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trash_bins`
--
ALTER TABLE `trash_bins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user_sessions`
--
ALTER TABLE `user_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `assemblies`
--
ALTER TABLE `assemblies`
  ADD CONSTRAINT `assemblies_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `assemblies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `assembly_items`
--
ALTER TABLE `assembly_items`
  ADD CONSTRAINT `assembly_items_assembly_id_foreign` FOREIGN KEY (`assembly_id`) REFERENCES `assemblies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assembly_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `assembly_items_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`);

--
-- Constraints for table `opening_stocks`
--
ALTER TABLE `opening_stocks`
  ADD CONSTRAINT `opening_stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `opening_stocks_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `opening_stocks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `opening_stock_histories`
--
ALTER TABLE `opening_stock_histories`
  ADD CONSTRAINT `opening_stock_histories_opening_stock_id_foreign` FOREIGN KEY (`opening_stock_id`) REFERENCES `opening_stocks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `opening_stock_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_bom_items`
--
ALTER TABLE `product_bom_items`
  ADD CONSTRAINT `product_bom_items_component_product_id_foreign` FOREIGN KEY (`component_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_bom_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_discounts`
--
ALTER TABLE `product_discounts`
  ADD CONSTRAINT `product_discounts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_discounts_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `product_units` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_stores`
--
ALTER TABLE `product_stores`
  ADD CONSTRAINT `product_stores_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_stores_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_units`
--
ALTER TABLE `product_units`
  ADD CONSTRAINT `product_units_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  ADD CONSTRAINT `purchase_payments_purchase_transaction_id_foreign` FOREIGN KEY (`purchase_transaction_id`) REFERENCES `purchase_transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `purchase_transactions`
--
ALTER TABLE `purchase_transactions`
  ADD CONSTRAINT `purchase_transactions_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `purchase_transactions_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `purchase_transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `purchase_transaction_items`
--
ALTER TABLE `purchase_transaction_items`
  ADD CONSTRAINT `purchase_transaction_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `purchase_transaction_items_purchase_transaction_id_foreign` FOREIGN KEY (`purchase_transaction_id`) REFERENCES `purchase_transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_payments`
--
ALTER TABLE `sales_payments`
  ADD CONSTRAINT `sales_payments_sales_transaction_id_foreign` FOREIGN KEY (`sales_transaction_id`) REFERENCES `sales_transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sales_transactions`
--
ALTER TABLE `sales_transactions`
  ADD CONSTRAINT `sales_transactions_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sales_transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sales_transaction_items`
--
ALTER TABLE `sales_transaction_items`
  ADD CONSTRAINT `sales_transaction_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sales_transaction_items_sales_transaction_id_foreign` FOREIGN KEY (`sales_transaction_id`) REFERENCES `sales_transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_incomings`
--
ALTER TABLE `service_incomings`
  ADD CONSTRAINT `service_incomings_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `service_receivable_payments`
--
ALTER TABLE `service_receivable_payments`
  ADD CONSTRAINT `service_receivable_payments_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service_incomings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_receivable_payments_service_transaction_id_foreign` FOREIGN KEY (`service_transaction_id`) REFERENCES `service_transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_transactions`
--
ALTER TABLE `service_transactions`
  ADD CONSTRAINT `service_transactions_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service_incomings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_transactions_technician_id_foreign` FOREIGN KEY (`technician_id`) REFERENCES `teknisi` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `service_transaction_items`
--
ALTER TABLE `service_transaction_items`
  ADD CONSTRAINT `service_transaction_items_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `service_transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_units`
--
ALTER TABLE `service_units`
  ADD CONSTRAINT `service_units_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock_transfers`
--
ALTER TABLE `stock_transfers`
  ADD CONSTRAINT `stock_transfers_from_store_id_foreign` FOREIGN KEY (`from_store_id`) REFERENCES `stores` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `stock_transfers_to_store_id_foreign` FOREIGN KEY (`to_store_id`) REFERENCES `stores` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `stock_transfers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `stock_transfer_items`
--
ALTER TABLE `stock_transfer_items`
  ADD CONSTRAINT `stock_transfer_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `stock_transfer_items_stock_transfer_id_foreign` FOREIGN KEY (`stock_transfer_id`) REFERENCES `stock_transfers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `supplier_banks`
--
ALTER TABLE `supplier_banks`
  ADD CONSTRAINT `supplier_banks_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trash_bins`
--
ALTER TABLE `trash_bins`
  ADD CONSTRAINT `trash_bins_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD CONSTRAINT `user_sessions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
