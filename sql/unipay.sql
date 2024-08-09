-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2024 at 07:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unipay`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `name`, `email`, `phone`, `password`, `ip`, `user_agent`, `created_at`, `updated_at`) VALUES
(3, 'Myat Phone San', 'myatphonesan131619@gmail.com', '09677173327', '$2y$10$P1tDMPfx8/592zT91adCcenZiJRdvnGm5RRUjIrBMGDNPqKMZAoOG', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-07-12 02:15:49', '2024-08-06 16:54:39'),
(12, 'Arkar Tun', 'arkartun123@gmail.com', '092228526', '$2y$10$l0LNofRGyjF1NWGDFq0VdeqVed0GH4k4RVCnrlcbjaPp/ajLm3bjO', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-05 18:53:33', '2024-08-06 16:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_13_120625_create_admin_users_table', 1),
(6, '2021_01_17_144925_create_wallets_table', 2),
(7, '2021_06_05_200539_create_transactions_table', 3),
(9, '2021_07_13_010422_create_notifications_table', 4),
(10, '2016_06_01_000001_create_oauth_auth_codes_table', 5),
(11, '2016_06_01_000002_create_oauth_access_tokens_table', 5),
(12, '2016_06_01_000003_create_oauth_refresh_tokens_table', 5),
(13, '2016_06_01_000004_create_oauth_clients_table', 5),
(14, '2016_06_01_000005_create_oauth_personal_access_clients_table', 5),
(15, '2021_01_24_154837_create_webauthn_credentials_table', 6),
(17, '2021_08_15_221015_create_web_authn_tables', 7);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0214e97e-87a4-49ad-8982-7ca03908d112', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 1,000 MMK to Kyaw Kyaw ( 09762228526 )\",\"sourceable_id\":106,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/1191033288030286\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":1191033288030286}}}', NULL, '2024-08-06 07:12:10', '2024-08-06 07:12:10'),
('0288f984-9d32-4eb7-ab93-354b05bed54f', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 1,000 MMK to Kyaw Kyaw ( 09762228526 )\",\"sourceable_id\":54,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/4604637480875600\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":4604637480875600}}}', NULL, '2024-06-02 18:12:58', '2024-06-02 18:12:58'),
('02f6ba36-ea19-4b6f-b945-020c319a3a3f', 'App\\Notifications\\GeneralNotification', 'App\\User', 18, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 1,000 MMK to Tun Tun ( 09987654321 )\",\"sourceable_id\":59,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/192.168.1.8:8000\\/transaction\\/1709303790066089\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":1709303790066089}}}', NULL, '2024-07-14 06:51:48', '2024-07-14 06:51:48'),
('082856dd-7982-4f8b-a157-82791cb43a6f', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 5,000 MMK from T Khant Aung ( 0955555555 )\",\"sourceable_id\":73,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/6336175838036013\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":6336175838036013}}}', NULL, '2024-07-15 08:10:08', '2024-07-15 08:10:08'),
('0c6fcd01-b8bf-4c86-99ca-faf547063b1d', 'App\\Notifications\\GeneralNotification', 'App\\User', 20, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 100,000 MMK by Unipay Super Admin.\",\"sourceable_id\":69,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/2825122149277660\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":2825122149277660}}}', '2024-07-15 08:20:59', '2024-07-15 08:00:43', '2024-07-15 08:20:59'),
('0cc31ed6-000a-49f6-9093-9f8087625fde', 'App\\Notifications\\GeneralNotification', 'App\\User', 18, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 1,000 MMK from Tun Tun ( 09987654321 )\",\"sourceable_id\":107,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/7133922311112033\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":7133922311112033}}}', NULL, '2024-08-06 07:12:10', '2024-08-06 07:12:10'),
('0e04d951-5584-4909-a7e3-c806ec732fc2', 'App\\Notifications\\GeneralNotification', 'App\\User', 20, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 5,000 MMK to Tun Tun ( 09987654321 )\",\"sourceable_id\":72,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/2248480109394748\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":2248480109394748}}}', '2024-07-15 08:20:43', '2024-07-15 08:10:08', '2024-07-15 08:20:43'),
('0e69433a-0933-4cb6-a536-29afd8e67d51', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 10,000 MMK by Unipay Super Admin.\",\"sourceable_id\":81,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/2594826425104363\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":2594826425104363}}}', NULL, '2024-07-19 16:56:10', '2024-07-19 16:56:10'),
('10ce17db-69e0-43cc-9275-00fdf374ba49', 'App\\Notifications\\GeneralNotification', 'App\\User', 18, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 2,000 MMK from Kaung Kaung ( 0933333333 )\",\"sourceable_id\":58,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/1255308018584792\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":1255308018584792}}}', NULL, '2024-07-13 20:02:14', '2024-07-13 20:02:14'),
('110f37e1-1a0b-40d8-a0de-26a77c612578', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 1,000 MMK to Kyaw Kyaw ( 09762228526 )\",\"sourceable_id\":61,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/192.168.1.8:8000\\/transaction\\/8172526808200359\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":8172526808200359}}}', NULL, '2024-07-14 06:53:59', '2024-07-14 06:53:59'),
('12f5a467-b2c2-48f0-8d09-375dc1d8bf2c', 'App\\Notifications\\GeneralNotification', 'App\\User', 20, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 20,000 MMK to Tun Tun ( 09987654321 )\",\"sourceable_id\":70,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/4073730244864052\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":4073730244864052}}}', NULL, '2024-07-15 08:08:16', '2024-07-15 08:08:16'),
('14922d90-7fea-4774-a02b-302b61ff0795', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Reduced!\",\"message\":\"Your wallet reduced 10,000 MMK by Unipay Super Admin.\",\"sourceable_id\":86,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/3666785357730032\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":3666785357730032}}}', NULL, '2024-07-19 17:18:56', '2024-07-19 17:18:56'),
('1aa91df8-b7b3-4de5-8073-1321b2b2f1f9', 'App\\Notifications\\GeneralNotification', 'App\\User', 18, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 1,000 MMK from Tun Tun ( 09987654321 )\",\"sourceable_id\":64,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/192.168.1.8:8000\\/transaction\\/1765363292330490\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":1765363292330490}}}', NULL, '2024-07-14 06:55:09', '2024-07-14 06:55:09'),
('1dd2f221-5605-4dfc-a1f2-597a7eaf7193', 'App\\Notifications\\GeneralNotification', 'App\\User', 7, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 10,000 MMK to Testing ( 0922222222 )\",\"sourceable_id\":43,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/1385378905461259\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":1385378905461259}}}', NULL, '2021-07-22 16:36:42', '2021-07-22 16:36:42'),
('1f1d2cb2-1db0-4b87-a38f-35a06958c0dd', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 20,000 MMK to Kyaw Kyaw ( 09762228526 )\",\"sourceable_id\":52,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/9538922421635323\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":9538922421635323}}}', '2024-07-28 15:35:23', '2024-05-03 19:39:29', '2024-07-28 15:35:23'),
('2136fb59-ae57-4e4c-82ea-bc3ecd7102e9', 'App\\Notifications\\GeneralNotification', 'App\\User', 14, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 10,000 MMK from Htet Lin Thu ( 09977292898 )\",\"sourceable_id\":42,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/7718705536625785\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":7718705536625785}}}', NULL, '2021-07-22 07:29:20', '2021-07-22 07:29:20'),
('22f9db17-b90c-41a3-be24-1ea000aa596a', 'App\\Notifications\\GeneralNotification', 'App\\User', 18, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 1,000 MMK by Unipay Super Admin.\",\"sourceable_id\":68,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/7925048321195644\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":7925048321195644}}}', NULL, '2024-07-15 07:56:22', '2024-07-15 07:56:22'),
('27a62922-fdfc-4a83-93ce-6635d8c1a368', 'App\\Notifications\\GeneralNotification', 'App\\User', 18, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 1,000 MMK from Tun Tun ( 09987654321 )\",\"sourceable_id\":55,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/8144778520401384\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":8144778520401384}}}', NULL, '2024-06-02 18:12:58', '2024-06-02 18:12:58'),
('2f73fbdc-8522-40cc-9a63-dfdda6f0a538', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 1,000 MMK to Kyaw Kyaw ( 09762228526 )\",\"sourceable_id\":98,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/7319676646077005\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":7319676646077005}}}', '2024-07-28 12:29:25', '2024-07-28 12:26:08', '2024-07-28 12:29:25'),
('3004571b-334d-4d1b-bb31-8aee140e3d00', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 10,000 MMK by Unipay Super Admin.\",\"sourceable_id\":92,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/5205959131010647\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":5205959131010647}}}', NULL, '2024-07-19 17:43:35', '2024-07-19 17:43:35'),
('31be5a85-0f37-4c53-a8b3-219ac6391ddf', 'App\\Notifications\\GeneralNotification', 'App\\User', 19, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 30,000 MMK by Magic Pay Super Admin.\",\"sourceable_id\":56,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/9896008055032595\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":9896008055032595}}}', NULL, '2024-07-13 19:51:16', '2024-07-13 19:51:16'),
('329464ec-9fc9-4470-a84b-83442d4477bb', 'App\\Notifications\\GeneralNotification', 'App\\User', 16, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 50,000 MMK by Magic Pay Super Admin.\",\"sourceable_id\":50,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/4633014677999106\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":4633014677999106}}}', NULL, '2024-05-03 19:28:56', '2024-05-03 19:28:56'),
('3739d2f8-4766-47bb-a67b-bbdaf9c43af6', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 1,000 MMK to Kyaw Kyaw ( 09762228526 )\",\"sourceable_id\":78,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/8807538033611515\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":8807538033611515}}}', '2024-07-15 12:54:25', '2024-07-15 12:52:31', '2024-07-15 12:54:25'),
('3a1dc604-2c04-4a45-8e61-f7a765d35ab4', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Reduced!\",\"message\":\"Your wallet reduced 1,000 MMK by Unipay Super Admin.\",\"sourceable_id\":101,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/2961387328548681\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":2961387328548681}}}', NULL, '2024-07-28 15:56:27', '2024-07-28 15:56:27'),
('3b17f805-0c6a-4383-8ea1-24ec936ca706', 'App\\Notifications\\GeneralNotification', 'App\\User', 18, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 1,000 MMK from Tun Tun ( 09987654321 )\",\"sourceable_id\":109,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/7531847733001855\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":7531847733001855}}}', NULL, '2024-08-06 07:12:17', '2024-08-06 07:12:17'),
('3ba22b2d-9c0c-411b-8b43-62f3f1362aa3', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 10,000 MMK by Unipay Super Admin.\",\"sourceable_id\":88,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/8501286624441653\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":8501286624441653}}}', NULL, '2024-07-19 17:32:28', '2024-07-19 17:32:28'),
('3bc315c5-6f59-42be-bf07-a43cff762526', 'App\\Notifications\\GeneralNotification', 'App\\User', 14, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 10,000 MMK from Htet Lin Thu ( 09977292898 )\",\"sourceable_id\":44,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/4120856863814532\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":4120856863814532}}}', NULL, '2021-07-22 16:36:42', '2021-07-22 16:36:42'),
('3e22038c-2674-4fbf-80d0-db531602b4c8', 'App\\Notifications\\GeneralNotification', 'App\\User', 18, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 1,000 MMK from Tun Tun ( 09987654321 )\",\"sourceable_id\":79,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/3668576220711160\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":3668576220711160}}}', NULL, '2024-07-15 12:52:31', '2024-07-15 12:52:31'),
('46763cd2-7a6d-4477-b2f3-f69f7082bbec', 'App\\Notifications\\GeneralNotification', 'App\\User', 23, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 30,000 MMK by Unipay Super Admin.\",\"sourceable_id\":80,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/192.168.43.24:8000\\/transaction\\/5191485671606873\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":5191485671606873}}}', NULL, '2024-07-15 16:25:52', '2024-07-15 16:25:52'),
('4aac6914-b9cb-4805-9ced-feaa93891a4c', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 1,000 MMK from Kyaw Kyaw ( 09762228526 )\",\"sourceable_id\":105,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/7965205601363947\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":7965205601363947}}}', NULL, '2024-08-02 05:32:13', '2024-08-02 05:32:13'),
('4c1404ad-441e-451d-8d11-cc99a71153db', 'App\\Notifications\\GeneralNotification', 'App\\User', 19, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 2,000 MMK to Kyaw Kyaw ( 09762228526 )\",\"sourceable_id\":57,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/2463617406828472\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":2463617406828472}}}', NULL, '2024-07-13 20:02:14', '2024-07-13 20:02:14'),
('5461bb88-b729-40f9-9b0e-e8d0db90ea61', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Reduced!\",\"message\":\"Your wallet reduced 10,000 MMK by Unipay Super Admin.\",\"sourceable_id\":95,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/7962858997519715\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":7962858997519715}}}', NULL, '2024-07-19 17:54:24', '2024-07-19 17:54:24'),
('569bed4d-b612-4081-859c-6efb580254ed', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 1,000 MMK to Kyaw Kyaw ( 09762228526 )\",\"sourceable_id\":76,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/4782794025760989\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":4782794025760989}}}', NULL, '2024-07-15 12:50:21', '2024-07-15 12:50:21'),
('58b9aa3b-6945-48cc-ab18-a88fde59ca23', 'App\\Notifications\\GeneralNotification', 'App\\User', 7, '{\"title\":\"Changed Password!\",\"message\":\"Your account password is successfully changed.\",\"sourceable_id\":7,\"sourceable_type\":\"App\\\\User\",\"web_link\":\"http:\\/\\/localhost:8000\\/profile\",\"deep_link\":{\"target\":\"profile\",\"parameter\":null}}', NULL, '2021-07-22 07:28:41', '2021-07-22 07:28:41'),
('5a01e736-6ef1-447b-95f3-1d5ce6925abe', 'App\\Notifications\\GeneralNotification', 'App\\User', 18, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 1,000 MMK to Tun Tun ( 09987654321 )\",\"sourceable_id\":65,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/3072412742923226\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":3072412742923226}}}', NULL, '2024-07-15 05:07:18', '2024-07-15 05:07:18'),
('5e8e478c-39a8-4f15-b7f7-471fd4977379', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 20,000 MMK from T Khant Aung ( 0955555555 )\",\"sourceable_id\":71,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/1337181831941347\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":1337181831941347}}}', NULL, '2024-07-15 08:08:16', '2024-07-15 08:08:16'),
('5f4d5ef1-692f-45cc-8330-7e68b0236e5d', 'App\\Notifications\\GeneralNotification', 'App\\User', 7, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 10,000 MMK to Testing ( 0922222222 )\",\"sourceable_id\":41,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/7206858414596288\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":7206858414596288}}}', '2021-07-22 07:30:08', '2021-07-22 07:29:20', '2021-07-22 07:30:08'),
('5ffb4053-6a65-49d9-9c20-fa669a055e04', 'App\\Notifications\\GeneralNotification', 'App\\User', 18, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 1,000 MMK from Tun Tun ( 09987654321 )\",\"sourceable_id\":99,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/2697723308413984\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":2697723308413984}}}', NULL, '2024-07-28 12:26:08', '2024-07-28 12:26:08'),
('6b6cf009-0982-4c8e-a3d2-a4605b3cf58c', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 10,000 MMK by Unipay Super Admin.\",\"sourceable_id\":96,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/9445792408545517\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":9445792408545517}}}', NULL, '2024-07-19 18:00:41', '2024-07-19 18:00:41'),
('73d7b8d7-e321-42e7-bf00-86a4512fcf9e', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 10,000 MMK by Unipay Super Admin.\",\"sourceable_id\":85,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/4887238045070538\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":4887238045070538}}}', NULL, '2024-07-19 17:18:23', '2024-07-19 17:18:23'),
('75b4e619-db42-4bc3-9159-c935b565bc29', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 40,000 MMK by Magic Pay Super Admin.\",\"sourceable_id\":51,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/8900884154649439\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":8900884154649439}}}', NULL, '2024-05-03 19:29:23', '2024-05-03 19:29:23'),
('7eb0f956-848a-4e3c-b3c4-3b33b7b84aa3', 'App\\Notifications\\GeneralNotification', 'App\\User', 22, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 1,000,000 MMK by Unipay Super Admin.\",\"sourceable_id\":75,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/192.168.0.173:8000\\/transaction\\/5438584123547711\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":5438584123547711}}}', NULL, '2024-07-15 08:56:07', '2024-07-15 08:56:07'),
('821915b5-22a1-4999-9919-e30b70b14a66', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Reduced!\",\"message\":\"Your wallet reduced 10,000 MMK by Unipay Super Admin.\",\"sourceable_id\":84,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/6840807425598716\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":6840807425598716}}}', NULL, '2024-07-19 17:13:24', '2024-07-19 17:13:24'),
('85088ae5-0e06-4ccd-bf38-630d8e06cc08', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 1,000 MMK from Kyaw Kyaw ( 09762228526 )\",\"sourceable_id\":60,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/192.168.1.8:8000\\/transaction\\/4177538631838014\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":4177538631838014}}}', NULL, '2024-07-14 06:51:48', '2024-07-14 06:51:48'),
('879056b8-c1be-47ae-ac8e-fb2f6151df17', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 10,000 MMK by Unipay Super Admin.\",\"sourceable_id\":87,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/9741168051484972\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":9741168051484972}}}', NULL, '2024-07-19 17:25:52', '2024-07-19 17:25:52'),
('8d80c620-a45d-4e67-92b8-ac6bf38726da', 'App\\Notifications\\GeneralNotification', 'App\\User', 14, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 10,000 MMK from Htet Lin Thu ( 09977292898 )\",\"sourceable_id\":46,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/7335559541111762\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":7335559541111762}}}', NULL, '2021-07-22 17:00:04', '2021-07-22 17:00:04'),
('8e8d4256-5abf-4edb-8060-af4e02ddfd86', 'App\\Notifications\\GeneralNotification', 'App\\User', 18, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 20,000 MMK from Tun Tun ( 09987654321 )\",\"sourceable_id\":53,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/9829502217654095\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":9829502217654095}}}', '2024-07-12 02:21:08', '2024-05-03 19:39:29', '2024-07-12 02:21:08'),
('91e5dee1-7131-49e5-8a45-ad2b06da8b2d', 'App\\Notifications\\GeneralNotification', 'App\\User', 7, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 10,000 MMK to Testing ( 0922222222 )\",\"sourceable_id\":45,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/1630586337245958\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":1630586337245958}}}', NULL, '2021-07-22 17:00:04', '2021-07-22 17:00:04'),
('9a882de0-fcc8-48c9-ad40-b7bbdd7967ae', 'App\\Notifications\\GeneralNotification', 'App\\User', 21, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 1,000,000 MMK by Unipay Super Admin.\",\"sourceable_id\":74,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/192.168.0.173:8000\\/transaction\\/7868097205831233\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":7868097205831233}}}', '2024-07-15 08:56:37', '2024-07-15 08:53:31', '2024-07-15 08:56:37'),
('9ae5dfac-9f7a-4374-b947-b17c82ef06a7', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 1,000 MMK to Kyaw Kyaw ( 09762228526 )\",\"sourceable_id\":110,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/2194912736801863\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":2194912736801863}}}', NULL, '2024-08-06 07:19:52', '2024-08-06 07:19:52'),
('9b108b1a-97cc-48a1-b909-3f59f5e9b3af', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 10,000 MMK by Unipay Super Admin.\",\"sourceable_id\":94,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/2585634824851828\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":2585634824851828}}}', NULL, '2024-07-19 17:54:05', '2024-07-19 17:54:05'),
('a1c503ee-d280-4793-af4e-e2c5a99eb1d8', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 1,000 MMK to Kyaw Kyaw ( 09762228526 )\",\"sourceable_id\":63,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/192.168.1.8:8000\\/transaction\\/7582426205947744\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":7582426205947744}}}', NULL, '2024-07-14 06:55:09', '2024-07-14 06:55:09'),
('a33bc350-c55f-411c-ab7d-79f31600dbf8', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 10,000 MMK by Unipay Super Admin.\",\"sourceable_id\":90,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/9051838000221359\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":9051838000221359}}}', NULL, '2024-07-19 17:38:26', '2024-07-19 17:38:26'),
('b028759b-7d83-44c9-b193-3803b189f681', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Reduced!\",\"message\":\"Your wallet reduced 10,000 MMK by Unipay Super Admin.\",\"sourceable_id\":93,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/3472409009851291\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":3472409009851291}}}', NULL, '2024-07-19 17:44:04', '2024-07-19 17:44:04'),
('b0bfba3c-01d4-47ec-aa41-a24dfee94fd8', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 10,000 MMK by Unipay Super Admin.\",\"sourceable_id\":82,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/3803533005087896\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":3803533005087896}}}', NULL, '2024-07-19 17:07:50', '2024-07-19 17:07:50'),
('b14a06af-0549-4733-b006-f2962a486142', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 1,000 MMK from Kyaw Kyaw ( 09762228526 )\",\"sourceable_id\":66,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/2551682879058204\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":2551682879058204}}}', NULL, '2024-07-15 05:07:18', '2024-07-15 05:07:18'),
('bc18e903-9222-4e29-8e43-cb83f46b1a61', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 1,000 MMK by Unipay Super Admin.\",\"sourceable_id\":83,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/6828771199462823\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":6828771199462823}}}', NULL, '2024-07-19 17:13:03', '2024-07-19 17:13:03'),
('be07151f-0ac0-4c5a-9595-8cc3e2c7788e', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Reduced!\",\"message\":\"Your wallet reduced 10,000 MMK by Unipay Super Admin.\",\"sourceable_id\":91,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/1423589209488860\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":1423589209488860}}}', NULL, '2024-07-19 17:38:48', '2024-07-19 17:38:48'),
('be698faf-8c33-44ea-b12b-3bcfd357093e', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 10,000 MMK by Unipay Super Admin.\",\"sourceable_id\":67,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/8818208495913924\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":8818208495913924}}}', NULL, '2024-07-15 05:12:52', '2024-07-15 05:12:52'),
('be74f092-c2a5-4c00-8dc9-bb28e76d9d8c', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 1,000 MMK to Kyaw Kyaw ( 09762228526 )\",\"sourceable_id\":108,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/4253283483520838\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":4253283483520838}}}', NULL, '2024-08-06 07:12:17', '2024-08-06 07:12:17'),
('c4866da8-e664-4d9e-8ca9-427fe89f3abb', 'App\\Notifications\\GeneralNotification', 'App\\User', 18, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 1,000 MMK from Tun Tun ( 09987654321 )\",\"sourceable_id\":77,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/3173636020165483\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":3173636020165483}}}', NULL, '2024-07-15 12:50:21', '2024-07-15 12:50:21'),
('c68a0414-ca09-4dee-9fef-9dfc627ba315', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Reduced!\",\"message\":\"Your wallet reduced 10,000 MMK by Unipay Super Admin.\",\"sourceable_id\":97,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/5258185977223562\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":5258185977223562}}}', NULL, '2024-07-19 18:01:00', '2024-07-19 18:01:00'),
('cca0daa3-56eb-4d18-8755-9c0903483e3b', 'App\\Notifications\\GeneralNotification', 'App\\User', 18, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 1,000 MMK to Tun Tun ( 09987654321 )\",\"sourceable_id\":104,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/9249827184618366\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":9249827184618366}}}', NULL, '2024-08-02 05:32:13', '2024-08-02 05:32:13'),
('ce769345-6021-42fe-9445-5ec915e4011d', 'App\\Notifications\\GeneralNotification', 'App\\User', 18, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 1,000 MMK from Tun Tun ( 09987654321 )\",\"sourceable_id\":103,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/4498590536386042\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":4498590536386042}}}', NULL, '2024-07-28 17:32:06', '2024-07-28 17:32:06'),
('cfbee627-22c4-453c-8357-12ae1c7245e1', 'App\\Notifications\\GeneralNotification', 'App\\User', 18, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 1,000 MMK from Tun Tun ( 09987654321 )\",\"sourceable_id\":62,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/192.168.1.8:8000\\/transaction\\/6987973162606776\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":6987973162606776}}}', NULL, '2024-07-14 06:53:59', '2024-07-14 06:53:59'),
('d5039f98-2bca-4503-9932-5589dc094218', 'App\\Notifications\\GeneralNotification', 'App\\User', 7, '{\"title\":\"Changed Password!\",\"message\":\"Your account password is successfully changed.\",\"sourceable_id\":7,\"sourceable_type\":\"App\\\\User\",\"web_link\":\"http:\\/\\/localhost:8000\\/profile\",\"deep_link\":{\"target\":\"profile\",\"parameter\":null}}', NULL, '2021-07-22 07:28:08', '2021-07-22 07:28:08'),
('d73e1631-8f9d-455c-9645-0fab2dd4123d', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Reduced!\",\"message\":\"Your wallet reduced 10,000 MMK by Unipay Super Admin.\",\"sourceable_id\":89,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/4865523992440918\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":4865523992440918}}}', NULL, '2024-07-19 17:32:45', '2024-07-19 17:32:45'),
('dc5247ef-6e9a-452b-80e1-37d7fb4d95bb', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 1,000 MMK to Kyaw Kyaw ( 09762228526 )\",\"sourceable_id\":102,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/1333277656787887\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":1333277656787887}}}', '2024-07-31 12:22:13', '2024-07-28 17:32:06', '2024-07-31 12:22:13'),
('e35a42ba-735a-4984-9281-e10926d8ecf5', 'App\\Notifications\\GeneralNotification', 'App\\User', 20, '{\"title\":\"Changed Password!\",\"message\":\"Your account password is successfully changed.\",\"sourceable_id\":20,\"sourceable_type\":\"App\\\\User\",\"web_link\":\"http:\\/\\/localhost:8000\\/profile\",\"deep_link\":{\"target\":\"profile\",\"parameter\":null}}', '2024-07-15 08:20:21', '2024-07-15 08:18:59', '2024-07-15 08:20:21'),
('fb4622b3-fafd-409d-a0f2-c7d684e7ca40', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 1,000 MMK by Unipay Super Admin.\",\"sourceable_id\":100,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/3715162038153764\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":3715162038153764}}}', NULL, '2024-07-28 15:56:12', '2024-07-28 15:56:12'),
('fec00d3b-5538-43e2-b9fa-a4ceffa4e5fc', 'App\\Notifications\\GeneralNotification', 'App\\User', 18, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 1,000 MMK from Tun Tun ( 09987654321 )\",\"sourceable_id\":111,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/7138351528436117\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":7138351528436117}}}', NULL, '2024-08-06 07:19:52', '2024-08-06 07:19:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref_no` varchar(255) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1 => income, 2 => expense',
  `amount` decimal(20,2) NOT NULL,
  `source_id` bigint(20) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `ref_no`, `trx_id`, `user_id`, `type`, `amount`, `source_id`, `description`, `created_at`, `updated_at`) VALUES
(51, '8868583466598987', '8900884154649439', 17, 1, 40000.00, 0, 'bill', '2024-05-03 19:29:23', '2024-05-03 19:29:23'),
(52, '3603468382609184', '9538922421635323', 17, 2, 20000.00, 18, 'Ph Bill Transfer', '2024-05-03 19:39:29', '2024-05-03 19:39:29'),
(53, '3603468382609184', '9829502217654095', 18, 1, 20000.00, 17, 'Ph Bill Transfer', '2024-05-03 19:39:29', '2024-05-03 19:39:29'),
(54, '1844047805375769', '4604637480875600', 17, 2, 1000.00, 18, 'phone bill', '2024-06-02 18:12:58', '2024-06-02 18:12:58'),
(55, '1844047805375769', '8144778520401384', 18, 1, 1000.00, 17, 'phone bill', '2024-06-02 18:12:58', '2024-06-02 18:12:58'),
(58, '6155311997808702', '1255308018584792', 18, 1, 2000.00, 19, 'to buy accessories', '2024-07-13 20:02:14', '2024-07-13 20:02:14'),
(59, '5238373084736172', '1709303790066089', 18, 2, 1000.00, 17, 'ph bill လွဲတာ', '2024-07-14 06:51:48', '2024-07-14 06:51:48'),
(60, '5238373084736172', '4177538631838014', 17, 1, 1000.00, 18, 'ph bill လွဲတာ', '2024-07-14 06:51:48', '2024-07-14 06:51:48'),
(61, '7754308551904129', '8172526808200359', 17, 2, 1000.00, 18, 'မုန်.ဖိုး', '2024-07-14 06:53:59', '2024-07-14 06:53:59'),
(62, '7754308551904129', '6987973162606776', 18, 1, 1000.00, 17, 'မုန်.ဖိုး', '2024-07-14 06:53:59', '2024-07-14 06:53:59'),
(63, '2795288890344571', '7582426205947744', 17, 2, 1000.00, 18, 'ph bill လွဲတာ', '2024-07-14 06:55:09', '2024-07-14 06:55:09'),
(64, '2795288890344571', '1765363292330490', 18, 1, 1000.00, 17, 'ph bill လွဲတာ', '2024-07-14 06:55:09', '2024-07-14 06:55:09'),
(65, '5519070047872223', '3072412742923226', 18, 2, 1000.00, 17, 'testing', '2024-07-15 05:07:18', '2024-07-15 05:07:18'),
(66, '5519070047872223', '2551682879058204', 17, 1, 1000.00, 18, 'testing', '2024-07-15 05:07:18', '2024-07-15 05:07:18'),
(67, '3597376634387547', '8818208495913924', 17, 1, 10000.00, 0, 'Filling Bill', '2024-07-15 05:12:52', '2024-07-15 05:12:52'),
(68, '3187411863949307', '7925048321195644', 18, 1, 1000.00, 0, NULL, '2024-07-15 07:56:21', '2024-07-15 07:56:21'),
(73, '9653880322077887', '6336175838036013', 17, 1, 5000.00, 20, 'မုန့္ဖိုးေပးတာ', '2024-07-15 08:10:08', '2024-07-15 08:10:08'),
(74, '4126392672509490', '7868097205831233', 21, 1, 1000000.00, 0, NULL, '2024-07-15 08:53:31', '2024-07-15 08:53:31'),
(76, '7917636068255830', '4782794025760989', 17, 2, 1000.00, 18, 'Phone Bill ပို႕တာပါ', '2024-07-15 12:50:20', '2024-07-15 12:50:20'),
(77, '7917636068255830', '3173636020165483', 18, 1, 1000.00, 17, 'Phone Bill ပို႕တာပါ', '2024-07-15 12:50:20', '2024-07-15 12:50:20'),
(78, '7629133490653539', '8807538033611515', 17, 2, 1000.00, 18, 'to buy food', '2024-07-15 12:52:31', '2024-07-15 12:52:31'),
(79, '7629133490653539', '3668576220711160', 18, 1, 1000.00, 17, 'to buy food', '2024-07-15 12:52:31', '2024-07-15 12:52:31'),
(81, '6283882590953939', '2594826425104363', 17, 1, 10000.00, 0, NULL, '2024-07-19 16:56:10', '2024-07-19 16:56:10'),
(82, '1664961707560835', '3803533005087896', 17, 1, 10000.00, 0, NULL, '2024-07-19 17:07:49', '2024-07-19 17:07:49'),
(83, '7197024395289495', '6828771199462823', 17, 1, 1000.00, 0, NULL, '2024-07-19 17:13:02', '2024-07-19 17:13:02'),
(85, '6796793883436261', '4887238045070538', 17, 1, 10000.00, 0, NULL, '2024-07-19 17:18:23', '2024-07-19 17:18:23'),
(86, '5150351412159306', '3666785357730032', 17, 2, 10000.00, 0, NULL, '2024-07-19 17:18:56', '2024-07-19 17:18:56'),
(87, '4377631751953881', '9741168051484972', 17, 1, 10000.00, 0, NULL, '2024-07-19 17:25:52', '2024-07-19 17:25:52'),
(88, '7288839758760496', '8501286624441653', 17, 1, 10000.00, 0, NULL, '2024-07-19 17:32:28', '2024-07-19 17:32:28'),
(90, '1636552505864615', '9051838000221359', 17, 1, 10000.00, 0, NULL, '2024-07-19 17:38:26', '2024-07-19 17:38:26'),
(92, '3745123384729854', '5205959131010647', 17, 1, 10000.00, 0, NULL, '2024-07-19 17:43:35', '2024-07-19 17:43:35'),
(94, '7736544162160177', '2585634824851828', 17, 1, 10000.00, 0, NULL, '2024-07-19 17:54:05', '2024-07-19 17:54:05'),
(96, '6344779255789444', '9445792408545517', 17, 1, 10000.00, 0, NULL, '2024-07-19 18:00:41', '2024-07-19 18:00:41'),
(98, '8316794847564337', '7319676646077005', 17, 2, 1000.00, 18, 'dsgdgd', '2024-07-28 12:26:08', '2024-07-28 12:26:08'),
(99, '8316794847564337', '2697723308413984', 18, 1, 1000.00, 17, 'dsgdgd', '2024-07-28 12:26:08', '2024-07-28 12:26:08'),
(100, '2186283358973735', '3715162038153764', 17, 1, 1000.00, 0, NULL, '2024-07-28 15:56:11', '2024-07-28 15:56:11'),
(102, '3282467122826181', '1333277656787887', 17, 2, 1000.00, 18, 'စာအုပ်ဖိုးပေးတာ', '2024-07-28 17:32:06', '2024-07-28 17:32:06'),
(103, '3282467122826181', '4498590536386042', 18, 1, 1000.00, 17, 'စာအုပ်ဖိုးပေးတာ', '2024-07-28 17:32:06', '2024-07-28 17:32:06'),
(104, '9978560666841606', '9249827184618366', 18, 2, 1000.00, 17, 'to buy food', '2024-08-02 05:32:13', '2024-08-02 05:32:13'),
(105, '9978560666841606', '7965205601363947', 17, 1, 1000.00, 18, 'to buy food', '2024-08-02 05:32:13', '2024-08-02 05:32:13'),
(106, '7361908446462518', '1191033288030286', 17, 2, 1000.00, 18, 'phone money transfer', '2024-08-06 07:12:10', '2024-08-06 07:12:10'),
(107, '7361908446462518', '7133922311112033', 18, 1, 1000.00, 17, 'phone money transfer', '2024-08-06 07:12:10', '2024-08-06 07:12:10'),
(108, '7332448364467410', '4253283483520838', 17, 2, 1000.00, 18, 'phone money transfer', '2024-08-06 07:12:17', '2024-08-06 07:12:17'),
(109, '7332448364467410', '7531847733001855', 18, 1, 1000.00, 17, 'phone money transfer', '2024-08-06 07:12:17', '2024-08-06 07:12:17'),
(110, '7604189595717130', '2194912736801863', 17, 2, 1000.00, 18, 'phone money transfer', '2024-08-06 07:19:52', '2024-08-06 07:19:52'),
(111, '7604189595717130', '7138351528436117', 18, 1, 1000.00, 17, 'phone money transfer', '2024-08-06 07:19:52', '2024-08-06 07:19:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `login_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `ip`, `user_agent`, `login_at`, `created_at`, `updated_at`) VALUES
(17, 'Tun Tun', 'tuntun123@gmail.com', '09987654321', '$2y$10$.QGxO0ocN6UFXsToXGktyOgVd8AVWmBW8g4AmFEn7CN.fNp2wyQrO', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-06 16:57:42', '2024-05-03 19:28:24', '2024-08-06 16:57:42'),
(18, 'Kyaw Kyaw', 'kyawkyaw123@gmail.com', '09762228526', '$2y$10$SuqH86GU3/ncN3El9oF.7OIcCWa94FYITqA1TdnQ10VX/WWzWHlK2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-06 17:17:25', '2024-05-03 19:32:41', '2024-08-06 17:17:25'),
(21, 'Kaung Htet San', 'sansan123@gmail.com', '09972258144', '$2y$10$ZTlVjLMMmOiONROHK1orK.7ms5BDdij9STrZnv2WIxDc5SPdMVfau', '192.168.0.183', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '2024-07-15 08:52:17', '2024-07-15 08:52:17', '2024-07-15 08:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `account_number`, `amount`, `created_at`, `updated_at`) VALUES
(8, 17, '4241629126102236', 69000.00, '2024-05-03 19:28:24', '2024-08-06 07:19:52'),
(9, 18, '8672117536011925', 30000.00, '2024-05-03 19:32:41', '2024-08-06 07:19:52'),
(12, 21, '4686686891199837', 1000000.00, '2024-07-15 08:52:17', '2024-07-15 08:53:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_email_unique` (`email`),
  ADD UNIQUE KEY `admin_users_phone_unique` (`phone`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallets_account_number_unique` (`account_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
