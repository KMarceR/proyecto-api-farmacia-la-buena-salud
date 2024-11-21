-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 21, 2024 at 05:32 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farmacia`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int NOT NULL,
  `nombre_categoria` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `nombre_categoria`, `created_at`, `updated_at`) VALUES
(1, 'VITAMINAS', '2024-11-19 03:38:29', '2024-11-19 03:38:29');

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `id` int NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `direccion`, `telefono`, `created_at`, `updated_at`) VALUES
(1, 'KATSUKI BAKUGO', 'JAPON', '888888888', '2024-11-21 04:11:32', '2024-11-21 04:11:32');

-- --------------------------------------------------------

--
-- Table structure for table `detalle_ordenes_pedido`
--

CREATE TABLE `detalle_ordenes_pedido` (
  `id` int NOT NULL,
  `cantidad` int DEFAULT NULL,
  `producto_id` int DEFAULT NULL,
  `pedido_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id` int NOT NULL,
  `venta_id` int DEFAULT NULL,
  `producto_id` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `empleados`
--

CREATE TABLE `empleados` (
  `id` int NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `usuario_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `usuario_id`, `created_at`, `updated_at`) VALUES
(1, 'IZUKU MIDORIYA', 2, '2024-11-21 04:14:04', '2024-11-21 04:14:04');

-- --------------------------------------------------------

--
-- Table structure for table `envio`
--

CREATE TABLE `envio` (
  `id` int NOT NULL,
  `venta_id` int DEFAULT NULL,
  `estado_envio` varchar(100) DEFAULT NULL,
  `costo_envio` double DEFAULT NULL,
  `fecha_entrega` varchar(255) DEFAULT NULL,
  `empleado_id` int DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `envio`
--

INSERT INTO `envio` (`id`, `venta_id`, `estado_envio`, `costo_envio`, `fecha_entrega`, `empleado_id`, `direccion`, `created_at`, `updated_at`) VALUES
(1, 3, 'PENDIENTE', 30, '21/11/2024', 1, 'JAPON', '2024-11-21 04:22:41', '2024-11-21 05:29:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_23_034813_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ordenes_pedido`
--

CREATE TABLE `ordenes_pedido` (
  `id` int NOT NULL,
  `fecha` varchar(255) DEFAULT NULL,
  `total_pedido` double DEFAULT NULL,
  `proveedor_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'api-key', '138f2131ce66513453f47cc18c24087d29add4e6dfeecf15c7c64af505d33bae', '[\"*\"]', '2024-11-21 10:22:56', NULL, '2024-11-19 09:33:55', '2024-11-21 10:22:56'),
(2, 'App\\Models\\User', 2, 'api-key', 'b119874352ba679caaf75bc4270fabdfff2eb46745365b13674564fc410ab427', '[\"*\"]', '2024-11-21 08:54:39', NULL, '2024-11-21 08:53:04', '2024-11-21 08:54:39'),
(3, 'App\\Models\\User', 2, 'api-key', '45524fc4b2aa231dc7488c57626a65c41da58859ae6bd2a1d7cb0285956f44a2', '[\"*\"]', '2024-11-21 08:55:05', NULL, '2024-11-21 08:54:53', '2024-11-21 08:55:05'),
(4, 'App\\Models\\User', 2, 'api-key', '3e02419b8efea6da010222386242b7094f6c79ab5d9a1e68a21f2e335d92e7fa', '[\"*\"]', NULL, NULL, '2024-11-21 08:55:07', '2024-11-21 08:55:07'),
(5, 'App\\Models\\User', 2, 'api-key', 'fd77d611a512bf29282d1bb4fcc546b6a924003cc3f6644f723a8504dfb461b1', '[\"*\"]', NULL, NULL, '2024-11-21 09:25:08', '2024-11-21 09:25:08'),
(6, 'App\\Models\\User', 2, 'api-key', 'cd5507bd38830a69f0e0583f3185bb03272cc1ac235b074f30cdffc675b88cfd', '[\"*\"]', NULL, NULL, '2024-11-21 09:25:10', '2024-11-21 09:25:10'),
(7, 'App\\Models\\User', 2, 'api-key', '75dbe69cb2b90ace988d19a1fa01b1092e44415d95eccf35d35eb5398db995c4', '[\"*\"]', NULL, NULL, '2024-11-21 09:25:11', '2024-11-21 09:25:11'),
(8, 'App\\Models\\User', 2, 'api-key', 'd98b7e85f565aa02bc5307b1cef50e715882268237fa9552a6bebf5b43e63d3a', '[\"*\"]', NULL, NULL, '2024-11-21 09:25:12', '2024-11-21 09:25:12'),
(9, 'App\\Models\\User', 2, 'api-key', '4098a519cfa1d33c6c94a307ac6b1ee30062a64d10ce030ab19c168afcac64e9', '[\"*\"]', NULL, NULL, '2024-11-21 09:25:13', '2024-11-21 09:25:13'),
(10, 'App\\Models\\User', 2, 'api-key', 'fb28259fa3f8ddca47df09513556b1d07c00c40c27f3a0d02c5c827cfae217b7', '[\"*\"]', NULL, NULL, '2024-11-21 09:25:14', '2024-11-21 09:25:14'),
(11, 'App\\Models\\User', 2, 'api-key', '2a4d9ff0ff0772d5e7b2dd187e0b8f69f72fe4a2e6cad82a3b0ded55f8f00ad6', '[\"*\"]', NULL, NULL, '2024-11-21 09:25:15', '2024-11-21 09:25:15'),
(12, 'App\\Models\\User', 2, 'api-key', '9e4c23f9db0faf5bb4aa29aad03e874b5759f7e63b0a1feb6f8f6eaaf8a4d7cc', '[\"*\"]', NULL, NULL, '2024-11-21 09:25:15', '2024-11-21 09:25:15'),
(13, 'App\\Models\\User', 2, 'api-key', 'dce4bdbcb3f357b66ff3a63f8699c5d0a39ce4d16dd016e92b314efe6d88aaaf', '[\"*\"]', NULL, NULL, '2024-11-21 09:25:16', '2024-11-21 09:25:16'),
(14, 'App\\Models\\User', 2, 'api-key', '9fd39cef988f70bc030cfd9dce8e67225bc55570da3cb0ce260ed3e3fab08df1', '[\"*\"]', NULL, NULL, '2024-11-21 09:25:17', '2024-11-21 09:25:17'),
(15, 'App\\Models\\User', 2, 'api-key', 'efae3ae09346dff9fb01d5c8e883fef2d9d5141fea1c65f64dd9658ec81021c8', '[\"*\"]', NULL, NULL, '2024-11-21 09:25:18', '2024-11-21 09:25:18'),
(16, 'App\\Models\\User', 2, 'api-key', 'fb07a29c206fcb3ecd56c8be4731f7df28b5480645856b1914a7a7cf567823cb', '[\"*\"]', NULL, NULL, '2024-11-21 09:25:18', '2024-11-21 09:25:18'),
(17, 'App\\Models\\User', 2, 'api-key', '2f62bc869b431b74001d3564638836f576624165f03d81887a85e0f99f0946ff', '[\"*\"]', NULL, NULL, '2024-11-21 09:25:19', '2024-11-21 09:25:19'),
(18, 'App\\Models\\User', 2, 'api-key', '034b5754b64f72ca7756110af7d832715893f3dfad8d56d854c2d3ba79707ea6', '[\"*\"]', NULL, NULL, '2024-11-21 09:25:19', '2024-11-21 09:25:19'),
(19, 'App\\Models\\User', 2, 'api-key', '828d78485b3d0163864aebaaae0ae97ee766167d26269ec24baa1903f4fefc2e', '[\"*\"]', NULL, NULL, '2024-11-21 09:25:22', '2024-11-21 09:25:22'),
(20, 'App\\Models\\User', 2, 'api-key', 'e7945745641ef129f8b919a17fdf707b9c2df649d1f4f47803c647efeb5184fc', '[\"*\"]', NULL, NULL, '2024-11-21 09:25:58', '2024-11-21 09:25:58'),
(21, 'App\\Models\\User', 2, 'api-key', '5693f3fa6a48237a3d1ceb3a8d33e60a93a8b6a7fcb729a6d4f197bf28bfd255', '[\"*\"]', '2024-11-21 10:54:22', NULL, '2024-11-21 09:26:59', '2024-11-21 10:54:22'),
(22, 'App\\Models\\User', 2, 'api-key', 'd8728ff63f975e4a33ef258b769553dbe13231b1caaeff99db128b13980e08f2', '[\"*\"]', '2024-11-21 10:59:03', NULL, '2024-11-21 10:54:25', '2024-11-21 10:59:03'),
(23, 'App\\Models\\User', 2, 'api-key', '3c8a23c8dc226917ebaa40ad15c9c34c113f6cb665bbdfbaa436ddb9580eafbb', '[\"*\"]', '2024-11-21 11:21:16', NULL, '2024-11-21 10:59:05', '2024-11-21 11:21:16'),
(24, 'App\\Models\\User', 2, 'api-key', '81b48b7d419899f0afdaff07f2bacbfd87e0735a3b725d7c3e61ed17ce749df9', '[\"*\"]', '2024-11-21 11:26:43', NULL, '2024-11-21 11:21:21', '2024-11-21 11:26:43'),
(25, 'App\\Models\\User', 2, 'api-key', '3c604aef35176dc0b8ce5a72176a4c7842d4f809599ad7f57d4c30848a945e4e', '[\"*\"]', '2024-11-21 11:26:49', NULL, '2024-11-21 11:26:47', '2024-11-21 11:26:49'),
(26, 'App\\Models\\User', 2, 'api-key', '7c00e4b8daad3270f39d96cf5beda116376b98c54f605d6e7e42ede7e8ae9294', '[\"*\"]', '2024-11-21 11:29:36', NULL, '2024-11-21 11:27:41', '2024-11-21 11:29:36');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int NOT NULL,
  `nombre_producto` varchar(255) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `categoria_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `nombre_producto`, `precio`, `stock`, `categoria_id`, `created_at`, `updated_at`) VALUES
(1, 'VITAMINAS C', 25.99, 150, 1, '2024-11-21 04:10:17', '2024-11-21 04:10:17');

-- --------------------------------------------------------

--
-- Table structure for table `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int NOT NULL,
  `nombre_proveedor` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `proveedor`
--

INSERT INTO `proveedor` (`id`, `nombre_proveedor`, `direccion`, `telefono`, `created_at`, `updated_at`) VALUES
(1, 'Bayer', 'santa ana', '123654-5861', '2024-11-19 03:35:24', '2024-11-19 03:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'REPARTIDOR', '2024-11-19 03:33:46', '2024-11-19 03:33:46');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0R0ydV2sG34QSwidKaS0RiI2xbwUnxxGMppIAx9P', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUE2WWN0R25vVHJCS3kzd1lLaXpiTzhDQWdvZ3cwdGs4aXNUTWxnbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732162124),
('2qRybm7hLuqXF1i6xSftRnO3SXmCuVBclFWU2dWS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZDRsRXY5Q0VhbVpsTDNjeHhnYU1lNmJnamM0S3BuT055Z0ZYNmJoZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731984454),
('BRnHJk04s5Skdkq0LCc8sCHNc6gBIWoPChfAX5wp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0tPalZTUUlIVWxpZHR4dkZIN1VrZXRhb1dFeXczbDVpcjlMVWZLZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731883449),
('eLK50dCOMmkF0mWkVIJvfIM5jLtIdfk64Fli9nUm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZXNwMGpFZ1ppMTZPNjZQeFNsQjRRbUNaeDY2d3BRcWttOUdZY24xViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731987144),
('GfmZx24FcXBw0VG5rVSLYk1GN3r3asBMHSOXaujt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkkxOUdQdjZJMzBRVWY2R082UEZXdDJiSmsxbEJWREpNYlZhaHBEeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731879405),
('IvsWVpquAGBjahmDtsXaKDwPU71oIWNYTQWd21cT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2xNN2dSZ1JEWDAzamc1UU5jSU9uWXNRMlByQ2E0Wk9oTFVYVjdhUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732061367),
('VlXFdOgTQ8uUQ1xfHwCtSa8AEjsGxyqKdgPdIdxy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU051VjNMM1BiNW1neFpZdFFlNUQzS3J5YnBMNjhIenlXSW5oaU1DUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732158585);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol_id` int NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `rol_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'deku', 'deku@mail.com', NULL, '$2y$12$F2.HmvYPI7iU/hhxBACcI.gRXjBuSdMd4UAykicd4dQdqUH9N13mm', 1, NULL, '2024-11-19 09:33:55', '2024-11-19 09:33:55');

-- --------------------------------------------------------

--
-- Table structure for table `ventas`
--

CREATE TABLE `ventas` (
  `id` int NOT NULL,
  `total_venta` double DEFAULT NULL,
  `fecha` varchar(255) DEFAULT NULL,
  `cliente_id` int DEFAULT NULL,
  `empleado_id` int DEFAULT NULL,
  `tipo_pago` varchar(255) DEFAULT NULL,
  `tipo_venta` varchar(255) DEFAULT NULL,
  `estado_venta` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ventas`
--

INSERT INTO `ventas` (`id`, `total_venta`, `fecha`, `cliente_id`, `empleado_id`, `tipo_pago`, `tipo_venta`, `estado_venta`, `created_at`, `updated_at`) VALUES
(3, 25.99, '20/11/2024', 1, 1, 'CONTRAENTREGA', 'ENVIO', 'PENDIENTE', '2024-11-21 04:14:39', '2024-11-21 04:14:39');

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
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detalle_ordenes_pedido`
--
ALTER TABLE `detalle_ordenes_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_id` (`producto_id`),
  ADD KEY `pedido_id` (`pedido_id`);

--
-- Indexes for table `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `venta_id` (`venta_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indexes for table `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indexes for table `envio`
--
ALTER TABLE `envio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `venta_id` (`venta_id`),
  ADD KEY `empleado_id` (`empleado_id`);

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
-- Indexes for table `ordenes_pedido`
--
ALTER TABLE `ordenes_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proveedor_id` (`proveedor_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indexes for table `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `fk_users_roles` (`rol_id`);

--
-- Indexes for table `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `empleado_id` (`empleado_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detalle_ordenes_pedido`
--
ALTER TABLE `detalle_ordenes_pedido`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `envio`
--
ALTER TABLE `envio`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ordenes_pedido`
--
ALTER TABLE `ordenes_pedido`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detalle_ordenes_pedido`
--
ALTER TABLE `detalle_ordenes_pedido`
  ADD CONSTRAINT `detalle_ordenes_pedido_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `detalle_ordenes_pedido_ibfk_2` FOREIGN KEY (`pedido_id`) REFERENCES `ordenes_pedido` (`id`);

--
-- Constraints for table `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`),
  ADD CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Constraints for table `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `envio`
--
ALTER TABLE `envio`
  ADD CONSTRAINT `envio_ibfk_1` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`),
  ADD CONSTRAINT `envio_ibfk_2` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`);

--
-- Constraints for table `ordenes_pedido`
--
ALTER TABLE `ordenes_pedido`
  ADD CONSTRAINT `ordenes_pedido_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedor` (`id`);

--
-- Constraints for table `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_roles` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
