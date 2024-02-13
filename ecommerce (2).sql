-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2022 at 07:15 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Traditional Rice', 'traditional-rice', '2022-10-09 00:30:05', '2022-11-02 01:03:10'),
(2, 'Traditional Spices', 'traditional-spices', '2022-10-09 00:30:05', '2022-11-02 01:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(3, 'Luhith', 'Shakyashehannipuna@gmail.com', '0774855975', 'Ela kiri......', '2022-11-15 11:26:51', '2022-11-15 11:26:51');

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
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2', 2, '2022-10-04 06:06:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 'සුදු හීනටි සහල්', '1Kg', 'LKR 200.00', '#', '1667373195-png', '1', '2022-11-02 00:20:00', '2022-11-03 01:27:34');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_09_22_093850_create_sessions_table', 1),
(7, '2022_09_25_080221_create_categories_table', 1),
(8, '2022_09_25_080438_create_products_table', 1),
(9, '2022_10_01_035701_create_home_sliders_table', 1),
(10, '2022_10_03_110625_create_home_categories_table', 1),
(11, '2022_10_05_065934_create_sales_table', 1),
(14, '2022_10_08_093621_create_shippings_table', 1),
(16, '2022_10_20_031434_add_delivered_canceled_date_to_orders_table', 2),
(17, '2022_10_21_145618_create_reviews_table', 3),
(18, '2022_10_21_150531_add_rstatus_to_order_items_table', 3),
(19, '2022_11_01_101634_create_contacts_table', 4),
(20, '2022_11_02_025527_create_settings_table', 5),
(22, '2022_10_08_093431_create_orders_table', 6),
(23, '2022_10_08_093525_create_order_items_table', 6),
(24, '2022_10_08_093705_create_transactions_table', 6),
(25, '2022_12_30_055906_create_shoppingcart_table', 7),
(26, '2022_12_30_112137_create_subcategories_table', 8),
(27, '2022_12_30_171603_add_subcategory_id_to_products_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `canceled_date` timestamp NULL DEFAULT NULL,
  `delivered_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `canceled_date`, `delivered_date`) VALUES
(1, 2, '400.00', '400.00', 'Shakya', 'Shehan', '0718955412', 'Shakyashehan@gmail.com', 'Lipton Road', 'Avissawella', 'Avissawella', 'Western', 'Srilanka', '10700', 'ordered', 0, '2022-11-04 02:29:23', '2022-11-07 10:51:58', NULL, NULL),
(2, 2, '400.00', '400.00', 'Nipuna', 'Karunarathna', '0718952357', 'Shakyashehannipuna@gmail.com', 'Main Road', 'Hanwella', 'Hanwella', 'Western', 'Srilanka', '10856', 'delivered', 0, '2022-11-04 02:30:06', '2022-11-06 09:31:54', NULL, '2022-11-05 18:30:00'),
(3, 2, '910.00', '910.00', 'Luhith', 'Kariyawasam', '0774859854', 'Karuluhi@gmail.com', 'Lotus tower', 'thummulla', 'Colombo', 'Western', 'Srilanka', '20789', 'ordered', 1, '2022-11-04 02:42:49', '2022-11-04 02:42:49', NULL, NULL),
(4, 2, '600.00', '600.00', 'Saman', 'Kumara', '077841529', 'Shakyashehannipuna@gmail.com', 'Main Street', 'Maharagama', 'Maharagama', 'Western', 'Srilanka', '10589', 'canceled', 0, '2022-11-04 02:54:54', '2022-11-06 10:37:40', '2022-11-05 18:30:00', NULL),
(5, 2, '800.00', '800.00', 'Maleesha', 'Manori', '078995741', 'manorimanisha@gmail.com', 'Railway road', 'Homagama', 'Homagama', 'Western', 'Srilanka', '10596', 'canceled', 0, '2022-11-04 08:30:15', '2022-11-04 08:49:28', '2022-11-03 18:30:00', NULL),
(6, 2, '570.00', '570.00', 'Shakila', 'Rajini', '072885413', 'janishaki@gmail.com', 'Kudagama', 'Avissawella', 'Avissawella', 'Western', 'Srilanka', '10700', 'delivered', 0, '2022-11-04 08:38:06', '2022-11-05 04:24:40', NULL, '2022-11-04 18:30:00'),
(7, 2, '1200.00', '1200.00', 'Lakshi', 'Kumari', '0778854193', 'lakshi@gmail.com', 'New street', 'Panagoda', 'Homagama', 'Western', 'Srilanka', '105224', 'delivered', 0, '2022-11-06 07:44:51', '2022-11-06 10:37:13', NULL, '2022-11-05 18:30:00'),
(8, 2, '450.00', '450.00', 'Suraj', 'Maya', '077885412', 'Suraj@gmail.com', 'Near junction', 'Colombo', 'Colombo', 'Western', 'Srilanka', '10922', 'ordered', 0, '2022-11-06 07:50:22', '2022-11-06 07:50:22', NULL, NULL),
(9, 1, '320.00', '320.00', 'Naveen', 'Methsara', '0362225419', 'Nveeenmeth@gmail.com', 'New level', 'Rathnapura', 'Rathnapura', 'Sabaragamuwa', 'Srilanka', '66320', 'ordered', 0, '2022-11-06 08:47:44', '2022-11-06 08:47:44', NULL, NULL),
(10, 2, '1040.00', '1040.00', 'Sanath', 'Bandara', '0774855975', 'Sanath@gmail.com', 'Main Street', 'Maharagama', 'Maharagama', 'Western', 'Srilanka', '20148', 'delivered', 0, '2022-11-06 09:52:18', '2022-11-06 09:56:59', NULL, '2022-11-05 18:30:00'),
(11, 2, '800.00', '800.00', 'Ranil', 'Mahi', '0774855975', 'Shakyashehannipuna@gmail.com', 'Main Street', 'Avissawella', 'Avissawella', 'Western', 'Srilanka', '10700', 'canceled', 0, '2022-11-11 02:44:36', '2022-11-15 11:34:11', '2022-11-14 18:30:00', NULL),
(12, 2, '0.00', '0.00', 'Ranil', 'Mahi', '0774855975', 'Shakyashehannipuna@gmail.com', 'Main Street', 'Avissawella', 'Avissawella', 'Western', 'Srilanka', '10700', 'ordered', 0, '2022-11-11 02:52:48', '2022-11-11 02:52:48', NULL, NULL),
(13, 2, '600.00', '600.00', 'Luhith', 'Kariyawasam', '0715899652', 'kariyawasamluhith@gmail.com', 'Colombo', 'Colombo', 'Colombo', 'Western', 'Srilanka', '10200', 'canceled', 0, '2022-11-15 10:55:43', '2022-11-15 11:00:50', '2022-11-14 18:30:00', NULL),
(14, 5, '0.00', '0.00', 'fgdf', 'fgdsfg', '0769214087', 'kariyawasamluhith@gmail.com', 'dfgdfg', 'dfgdfg', 'dfgdfg', 'dfgdf', 'dfgdfg', '10200', 'ordered', 0, '2022-12-30 00:21:53', '2022-12-30 00:21:53', NULL, NULL),
(15, 5, '680.00', '680.00', 'sfsdfds', 'sdfsd', '012215', 'kariyawasamluhith@gmail.com', 'dasd', 'asda', 'asdas', 'asdas', 'asd', '10200', 'ordered', 0, '2022-12-30 01:06:30', '2022-12-30 01:06:30', NULL, NULL),
(16, 5, '680.00', '680.00', 'lihith', 'assdad', '01210', 'kariyawasamluhith@gmail.com', 'fdfsd', 'sxxas', 'sdfssd', 'asdas', 'dfgdfg', '1020', 'ordered', 0, '2022-12-30 05:33:42', '2022-12-30 05:33:42', NULL, NULL),
(17, 5, '680.00', '680.00', 'lihith', 'dd', '1020', 'kariyawasamluhith@gmail.com', 'dd', 'dasd', 'guugvu', '1020', 's', '1020', 'ordered', 0, '2022-12-30 05:37:36', '2022-12-30 05:37:36', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `rstatus`) VALUES
(1, 2, 1, '400.00', 1, '2022-11-04 02:29:23', '2022-11-04 02:29:23', 0),
(2, 2, 2, '400.00', 1, '2022-11-04 02:30:06', '2022-11-15 11:24:21', 1),
(3, 5, 3, '320.00', 1, '2022-11-04 02:42:49', '2022-11-04 02:42:49', 0),
(4, 13, 3, '590.00', 1, '2022-11-04 02:42:50', '2022-11-04 02:42:50', 0),
(5, 14, 4, '600.00', 1, '2022-11-04 02:54:54', '2022-11-04 02:54:54', 0),
(6, 2, 5, '400.00', 2, '2022-11-04 08:30:15', '2022-11-04 08:30:15', 0),
(7, 1, 6, '280.00', 1, '2022-11-04 08:38:06', '2022-11-04 08:38:06', 0),
(8, 12, 6, '290.00', 1, '2022-11-04 08:38:06', '2022-11-04 08:38:06', 0),
(9, 2, 7, '400.00', 3, '2022-11-06 07:44:51', '2022-11-06 07:44:51', 0),
(10, 3, 8, '450.00', 1, '2022-11-06 07:50:23', '2022-11-06 07:50:23', 0),
(11, 5, 9, '320.00', 1, '2022-11-06 08:47:44', '2022-11-06 08:47:44', 0),
(12, 15, 10, '520.00', 2, '2022-11-06 09:52:18', '2022-11-06 09:52:18', 0),
(13, 1, 11, '280.00', 1, '2022-11-11 02:44:36', '2022-11-11 02:44:36', 0),
(14, 15, 11, '520.00', 1, '2022-11-11 02:44:36', '2022-11-11 02:44:36', 0),
(15, 14, 13, '600.00', 1, '2022-11-15 10:55:43', '2022-11-15 10:55:43', 0),
(16, 1, 17, '280.00', 1, '2022-12-30 05:37:36', '2022-12-30 05:37:36', NULL),
(17, 2, 17, '400.00', 1, '2022-12-30 05:37:36', '2022-12-30 05:37:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('user@gmail.com', '$2y$10$Ceeupfcbbps7GqxjjMntUu4uyJcd/UlVmsNzZLCfsceQGdYYOOeHK', '2022-11-02 12:53:00'),
('Shakyashehannipuna@gmail.com', '$2y$10$YD9z6561ptuHtoMVc5y7LO3s5v3T4tazjbz1DB4NVfecVKM3F.NjS', '2022-11-15 11:48:21');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `category_id`, `created_at`, `updated_at`, `images`, `subcategory_id`) VALUES
(1, 'Sudu Heenati', 'sudu-heenati', '<p>This variety of rice is named Kalu Heeneti because of the color of its lemma and palea which turn blackish at maturity. It is traditionally cultivated in Sri Lanka and produces a red medium sized grain.</p>', '<p>සාම්ප්&zwj;රදායිකව සුදු හීනටි මිනිස් ප්&zwj;රතිශක්තිකරණ පද්ධතිය වැඩි දියුණු කිරීමට උපකාරී වන බව විශ්වාස කරන අතර එය මලබද්ධයට පිළියමක් ලෙස භාවිතා කරයි. විද්&zwj;යාත්මක අධ්&zwj;යයන මගින් දැවිල්ල, දියවැඩියාව, පිළිකා, ස්නායු රෝග, කොලෙස්ටරෝල් සහ ඔක්සිකාරක ආතතියට ප්&zwj;රතිකාර කිරීම සඳහා ප්&zwj;රයෝජනවත් ඖෂධීය ගුණ පිළිබඳ සාක්ෂි සොයාගෙන ඇත. එය විටමින් E සහ ස්වභාවිකව ඇති ප්&zwj;රතිඔක්සිකාරක පොහොසත් ප්&zwj;රභවයකි. මෙවන් වටිනා පෝෂණීය සහ ඖෂධීය ගුණයන් ලබා ගැනීමේදී නිවුඩ්ඩ සමග පරිභෝජනය වැදගත් වේ.</p>\n<ul>\n<li>For neurological diseases</li>\n<li>For cancer patients</li>\n<li>For diabetics</li>\n<li>For cholesterol patients</li>\n<li>ස්නායු රෝග සඳහා<br>පිළිකා රෝගීන් සඳහා<br>දියවැඩියා රෝගීන් සඳහා<br>කොලෙස්ටරෝල් රෝගීන් සඳහා</li>\n</ul>', '280.00', '250.00', 'DIGI189', 'instock', 0, 100, '1667372684-webp', 1, '2022-10-09 00:30:06', '2022-11-06 22:36:04', ',16677939640.png,16677939641.png', 4),
(2, 'Dahanala', 'dahanala', '<p>Dahanala is a long-grain red rice variety traditionally cultivated in Sri Lanka.</p>', '<p>Dahanala is a long-grain red rice variety traditionally cultivated in Sri Lanka. The culm is about 120cm in height. This crop can be harvested within 3&frac12; months from seeding. The number of tillers per plant is 4 to 5, which is low compared to other traditional rice varieties. The yield is also low at 30 to 35 bushels per acre. Dahanala is widely cultivated in the wet zone. It is susceptible to rice blast disease. However, it is resistant to the seedling pest called Trips.Traditionally Dahana rice is used in preparing porridge. Scientific studies have found evidence of medicinal properties useful for the treatment of&nbsp;<a title=\"diabetes\" href=\"https://lakpura.com/pages/diabetes\">diabetes</a>&nbsp;and oxidative stress. Further, it is a rich source of protein and iron</p>', '400.00', '380.00', 'DIGI152', 'instock', 0, 100, '1667500199-jpg', 1, '2022-10-09 00:30:06', '2022-11-03 12:59:59', NULL, 9),
(3, 'Dik Wee', 'dik-wee', '<p>Dik Wee is a medium-grain red rice variety traditionally cultivated in Sri Lanka.</p>', '<p>The plant develops to a maximum height of 150cm. This crop can be harvested within 4 to 4&frac12; months from seeding. At the stage of ripening the plant stem becomes light bluish in color. The number of tillers per plant is 10 to 12, which is very high compared to other traditional rice varieties. It is resistant to lodging and has a good yield of 80 to 85 bushels per acre and commands good commercial value. It is a popular variety cultivated in the wet zone.Research indicates the presence of medicinal properties useful for the treatment of&nbsp;<a title=\"inflammation\" href=\"https://lakpura.com/pages/inflammation\">inflammation</a>,&nbsp;diabetes,&nbsp;<a title=\"cancer\" href=\"https://lakpura.com/pages/cancer\">cancer</a>,&nbsp;neurological diseases, cholesterol and oxidative stress.&nbsp;<a title=\"Consumption\" href=\"https://lakpura.com/pages/consumption\">Consumption</a>&nbsp;with the bran is important in obtaining such valuable nutritional and medicinal properties.</p>', '450.00', '410.00', 'DIGI200', 'instock', 0, 240, '1667372772-jpg', 1, '2022-10-09 00:30:06', '2022-11-02 01:36:12', NULL, NULL),
(4, 'Kalu Heenati', 'kalu-heenati', '<p>This variety of rice is named Kalu Heeneti because of the color of its lemma and palea which turn blackish at maturity.</p>', '<p>It is traditionally cultivated in&nbsp;<a title=\"Sri Lanka\" href=\"https://lakpura.com/pages/sri-lanka\">Sri Lanka</a>&nbsp;and produces a red medium sized grain.The plant develops to a maximum height of 120cm. This crop can be harvested within 3&frac12; months from seeding. It bares 5 to 8 tillers per plant and the potential yield is about 30 to 50 bushels per acre. This crop performs well in the dry zone. Traditionally Kalu Heenati is used as a treatment for snake bite. Scientific studies have found evidence of medicinal properties useful for the treatment of&nbsp;<a title=\"diabetes\" href=\"https://lakpura.com/pages/diabetes\">diabetes</a>,&nbsp;cholesterol and hepatitis. Further, it is a rich source of iron &amp; zinc.&nbsp;<a title=\"Consumption\" href=\"https://lakpura.com/pages/consumption\">Consumption</a>&nbsp;with the bran is important in obtaining such valuable nutritional and medicinal properties.</p>', '280.00', '260.00', 'DIGI175', 'instock', 0, 150, '1667372818-jpg', 1, '2022-10-09 00:30:06', '2022-11-02 01:36:58', NULL, NULL),
(5, 'Ma Wee', 'ma-wee', '<p>Ma Wee is a red rice variety traditionally cultivated in Sri Lanka.</p>', '<p>The grain varies in size and shape from short and round varieties to long medium sized varieties. It is one of the tallest rice plants cultivated and develops to a maximum height of 350cm. This crop can be harvested within 5 to 6 months from seeding. It bares 15 to 20 tillers per plant and yields about 65 to 70 bushels per acre. Ma Wee is a photo period sensitive plant cultivated during the Maha season. It is widely cultivated in flood prone areas in the low country wet zone and intermediate zone. Traditionally it is believed that Ma Wee contains medicinal properties. It is used in the treatment of obesity,&nbsp;<a title=\"diabetes\" href=\"https://lakpura.com/pages/diabetes\">diabetes</a>,&nbsp;tuberculosis and as an effective remedy for purging. Scientific studies have found evidence of high levels of protein and antioxidants. Further, it is a good source of iron and zinc.</p>', '320.00', '300.00', 'DIGI167', 'instock', 0, 100, '1667372843-jpg', 1, '2022-10-09 00:30:06', '2022-11-02 01:37:23', NULL, NULL),
(6, 'Masuran ', 'masurann', '<p>Masuran is a popular medium-grain red rice variety traditionally cultivated in Sri Lanka.</p>', '<p>The plant develops to a maximum height of 120cm and is resistant to lodging. This crop can be harvested within 3&frac12; months from seeding during the&nbsp;<a title=\"Yala\" href=\"https://lakpura.com/pages/yala\">Yala</a>&nbsp;season and within 4&frac12; months in the Maha season.The potential yield is about 80 bushels per acre. This plant is resistant to the rice blast disease and plays an important role in weed control as its leaves tend to turn downwards during maturity. Masuran is widely cultivated in the wet zone.Scientific studies have found evidence of medicinal properties useful for the treatment of&nbsp;<a title=\"inflammation\" href=\"https://lakpura.com/pages/inflammation\">inflammation</a>,&nbsp;diabetes,&nbsp;<a title=\"cancer\" href=\"https://lakpura.com/pages/cancer\">cancer</a>,&nbsp;neurological diseases, cholesterol and oxidative stress.&nbsp;<a title=\"Consumption\" href=\"https://lakpura.com/pages/consumption\">Consumption</a>&nbsp;with the bran is important in obtaining such valuable nutritional and medicinal properties.</p>', '470.00', '450.00', 'DIGI127', 'instock', 0, 200, '1667372876-jpg', 1, '2022-10-09 00:30:06', '2022-11-02 01:37:56', NULL, NULL),
(7, 'Black Pepper', 'black-pepper', '<p>Black Pepper is a one of the most consumed spices in the world</p>', '<p>Pepper, the fruit of the plant Piper nigrum is native to the Indian state, Kerala. Even though Sri Lanka caters to merely 2.5% of the global demand for pepper, Ceylon Pepper is rich in Piperine, which gives Ceylon Pepper its distinct pungency and a premium price in the global market driven by its plenitude of the alkaloid.One of the most consumed spices in the world</p>', '350.00', '330.00', 'DIGI101', 'instock', 0, 75, '1667372135-webp', 2, '2022-10-09 00:30:06', '2022-11-02 01:25:35', NULL, NULL),
(12, 'Cloves', 'cloves', '<p>Cloves, which are the flower buds of a form of evergreen tree, originate from the Maluku Islands, Indonesia.&nbsp;</p>', '<div id=\"shopify-section-template--14422618177633__banner\" class=\"shopify-section section\">\n<div class=\"collection-hero color-background-2 gradient\">\n<div class=\"collection-hero__inner page-width\">\n<div class=\"collection-hero__text-wrapper\">\n<div class=\"collection-hero__description rte\">Cloves are primarily used as a spice, but are also used for medicine, fragrance (pomander) and clove cigars. Cloves are harvested and traded mainly in Sri Lanka, India, Indonesia, Madagascar, Pakistan, Tanzania and Zanzibar. When it comes to culinary purposes cloves are used in Asian, African, Mexican and Middle Eastern cuisine. They are most often used to add depth to meats, curries and marinades.</div>\n</div>\n</div>\n</div>\n</div>\n<div id=\"shopify-section-template--14422618177633__product-grid\" class=\"shopify-section section\">\n<div class=\"section-template--14422618177633__product-grid-padding\">\n<div class=\"\">\n<aside id=\"main-collection-filters\" class=\"facets-wrapper page-width\" aria-labelledby=\"verticalTitle\" data-id=\"template--14422618177633__product-grid\">\n<div class=\"facets-container\"><form id=\"FacetFiltersForm\" class=\"facets__form\">\n<div id=\"FacetsWrapperDesktop\" class=\"facets__wrapper\"></div>\n</form></div>\n</aside>\n</div>\n</div>\n</div>', '290.00', '260.00', 'DIGI173', 'instock', 0, 150, '1667372379-webp', 2, '2022-10-09 00:30:07', '2022-11-02 01:29:39', NULL, NULL),
(13, 'Cinnamon', 'cinnamon', '<p>Cinnamon refers to Cinnamomum Verum or &lsquo;true cinnamon,&rsquo;which is a plant endemic to Sri Lanka.</p>', '<p>Cinnamon refers to Cinnamomum Verum or &lsquo;true cinnamon,&rsquo;which is a plant endemic to Sri Lanka. Most other cinnamon (from other countries) is from related species of plants and is called &lsquo;cassia&rsquo;. It is a spice obtained by making shavings (also known as quills) of the inner bark of the cinnamon plant.</p>', '590.00', '548.00', 'DIGI104', 'instock', 0, 560, '1667372522-webp', 2, '2022-10-09 00:30:07', '2022-11-02 01:32:02', NULL, NULL),
(14, 'Cardamom', 'cardamom', '<p>Cardamom, also known as Cardamon, is a small spindle shaped seedpod with black seeds inside.</p>', '<p>Cardamom, also known as Cardamon, is a small spindle shaped seedpod with black seeds inside. The covers are thin and pale green (Elettaria) or dark brown (Amomum). It is the third on the list of the world&rsquo;s most expensive spices, right behind vanilla and saffron. Cardamom is used as a cooking spice as well as flavouring (mainly for tea and coffee). It is also used in medicine. Cardamom is native to India, Pakistan, Indonesia, Bhutan, Nepal and Bangaladesh. A few other countries, like Sri Lanka, have also taken up cultivation.</p>', '600.00', '584.00', 'DIGI155', 'instock', 0, 240, '1667372637-webp', 2, '2022-10-09 00:30:07', '2022-11-02 01:33:57', NULL, NULL),
(15, 'Mace', 'mace', '<p>Nutmeg is the seed of a type of evergreen tree (Myristica fragrans), while&nbsp;<a href=\"https://sg.lakpura.com/pages/mace\">mace</a>&nbsp;is the reddish netlike covering surrounding the seed.</p>', '<p>Nutmeg and mace are used as a flavouring for many sweet dishes from the cuisines of various countries, and as a spice in many savoury dishes. Nutmeg is also an essential ingredient in many Christmas favourites such as mulled cider, mulled wine and eggnog. Nutmeg is also used for perfume and medicine. The common nutmeg is native to the Banda islands of Indonesia. The plant was a lucrative trade spice throughout history. Therefore after the Napoleonic war it was transplanted by the British to Sri Lanka, Penang, Bencoolen and Singapore. However records show that the plant existed in Sri Lanka even before this.</p>', '520.00', '500.00', 'DIGI199', 'instock', 0, 300, '1667372974-webp', 2, '2022-10-09 00:30:07', '2022-11-02 01:39:34', NULL, NULL),
(16, 'Fennel', 'fennel', '<p>Fennel seeds are the dried seed of the fennel herb, and look like cumin seeds, only greener.&nbsp;</p>', '<p>Fennel seeds&nbsp;are the dried&nbsp;seed&nbsp;of the&nbsp;fennel&nbsp;herb, and look like cumin&nbsp;seeds, only greener. They have an aniseed flavour and a warm, sweet aroma. They can be used on their own or in spice mixes such as Chinese five-spice powder and Indian panch phoran.</p>', '490.00', '468.00', 'DIGI190', 'instock', 0, 245, '1667373077-webp', 2, '2022-10-09 00:30:07', '2022-11-02 01:41:17', NULL, NULL),
(17, 'Suwandel', 'suwandel', '<p>Suwandel is usually prepared with cardamom and turmeric or cumin and ghee, and it&rsquo;s especially popular at ceremonies and festive occasions.</p>', '<p>Suwandel or Oryza sativa is a traditional Sri Lankan rice variety. This white rice has a unique aroma and a milky flavor. It also has more vitamins than other rice varieties, along with high amounts of fat, carbohydrates, and micronutrients.</p>\n<p>The name is derived from the word suwandha, meaning fragrance, referring to the fragrant aroma after the rice has been cooked. The cultivation of suwandel takes longer than with other types of rice, and 5 to 6 months typically need to pass until the rice is ready for harvesting.</p>\n<p>Suwandel is usually prepared with cardamom and turmeric or cumin and ghee, and it&rsquo;s especially popular at ceremonies and festive occasions.</p>', '500.00', '480.00', 'DGT85', 'instock', 0, 400, '1667397797-jpg', 1, '2022-11-02 08:33:17', '2022-11-02 08:33:17', ',16673977970-jpg,16673977971-jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `order_item_id`, `created_at`, `updated_at`) VALUES
(2, 4, 'Supiri badu aaaaaaa.....!!!! ', 2, '2022-11-15 11:22:06', '2022-11-15 11:22:06'),
(3, 4, 'Supiri badu aaaaaaa.....!!!! ', 2, '2022-11-15 11:24:21', '2022-11-15 11:24:21');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2022-12-20 12:16:32', 1, NULL, '2022-11-15 11:38:02');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('o10Ea1id4yxFz6C5blWtprJJb60vyNo7vPM1zNCf', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiUTVsc0llWVdGVHZleUM1eGp1MVcxbVZCRFlna2Fob01LVWwzQWc0NCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LWNhdGVnb3J5L3RyYWRpdGlvbmFsLXNwaWNlcy9zaGFuaSI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ7czo1OiJ1dHlwZSI7czozOiJBRE0iO3M6NDoiY2FydCI7YToyOntzOjQ6ImNhcnQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjA6e31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6ODoid2lzaGxpc3QiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjA6e31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX19', 1672424040);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twiter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `phone2`, `address`, `map`, `twiter`, `facebook`, `pinterest`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'Aswannalk@gmail.com', '077-395-55-98', '011-211-10-10', 'Avissawella', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.3551901117835!2d80.00486087399491!3d6.847955419309982!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2518812bbda65%3A0x5a4666377a83f004!2sHeladiva%20properties%20(Pvt)%20Ltd!5e0!3m2!1sen!2slk!4v1668531644513!5m2!1sen!2slk', '#', '#', '#', '#', '#', '2022-11-01 22:52:54', '2022-11-15 11:32:23');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(5, 3, 'Kumari', 'Wasana', '0718599479', 'wasanakuma@gmail.com', 'second street', 'Rathnapura', 'Rathnapura', 'uva', 'Srilanka', '455869', '2022-11-04 02:42:50', '2022-11-04 02:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('luhith@admin', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-12-30 12:40:18', NULL),
('luhith@admin', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-12-30 12:40:18', NULL),
('user1@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";s:2:\"id\";i:1;s:3:\"qty\";i:1;s:4:\"name\";s:12:\"Sudu Heenati\";s:5:\"price\";d:280;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-12-30 05:48:31', NULL),
('user1@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:2:{s:32:\"370d08585360f5c568b18d1f2e4ca1df\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"370d08585360f5c568b18d1f2e4ca1df\";s:2:\"id\";i:2;s:3:\"qty\";i:1;s:4:\"name\";s:8:\"Dahanala\";s:5:\"price\";d:400;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"a775bac9cff7dec2b984e023b95206aa\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"a775bac9cff7dec2b984e023b95206aa\";s:2:\"id\";i:3;s:3:\"qty\";i:1;s:4:\"name\";s:7:\"Dik Wee\";s:5:\"price\";d:450;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-12-30 05:48:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `slug`, `category_id`, `created_at`, `updated_at`) VALUES
(4, 'white rice', 'white-rice', 1, '2022-12-30 09:10:56', '2022-12-30 10:25:32'),
(5, 'cinnamon', 'cinnamon', 2, '2022-12-30 09:14:52', '2022-12-30 10:25:42'),
(8, 'red rice', 'red-rice', 1, '2022-12-30 11:39:50', '2022-12-30 11:39:50'),
(9, 'shani', 'shani', 2, '2022-12-30 12:37:33', '2022-12-30 12:37:33');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','payal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'cod', 'pending', '2022-11-04 02:30:07', '2022-11-04 02:30:07'),
(2, 2, 3, 'cod', 'pending', '2022-11-04 02:42:50', '2022-11-04 02:42:50'),
(3, 2, 4, 'cod', 'pending', '2022-11-04 02:54:54', '2022-11-04 02:54:54'),
(4, 2, 5, 'cod', 'pending', '2022-11-04 08:30:15', '2022-11-04 08:30:15'),
(5, 2, 6, 'cod', 'pending', '2022-11-04 08:38:06', '2022-11-04 08:38:06'),
(6, 2, 7, 'cod', 'pending', '2022-11-06 07:44:51', '2022-11-06 07:44:51'),
(7, 2, 8, 'cod', 'pending', '2022-11-06 07:50:23', '2022-11-06 07:50:23'),
(8, 1, 9, 'cod', 'pending', '2022-11-06 08:47:44', '2022-11-06 08:47:44'),
(9, 2, 10, 'cod', 'pending', '2022-11-06 09:52:18', '2022-11-06 09:52:18'),
(10, 2, 11, 'cod', 'pending', '2022-11-11 02:44:36', '2022-11-11 02:44:36'),
(11, 2, 12, 'cod', 'pending', '2022-11-11 02:52:48', '2022-11-11 02:52:48'),
(12, 2, 13, 'cod', 'pending', '2022-11-15 10:55:43', '2022-11-15 10:55:43'),
(13, 5, 14, 'cod', 'pending', '2022-12-30 00:21:53', '2022-12-30 00:21:53'),
(14, 5, 17, 'cod', 'pending', '2022-12-30 05:37:36', '2022-12-30 05:37:36');

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for admins USR for users',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Shakya', 'Shakyashehannipuna@gmail.com', NULL, '$2y$10$MK8BEMUJWjpQyr.CX3Ef1usC2pWiiBgewUP.1Supng4pIerbYTBn2', NULL, NULL, NULL, '5sTjXlR9U7wAJbAT4K0zaDwFT6iEbr0gcxLWEpCsHQZqic4EhyjSx5Lx4aWV', NULL, NULL, 'ADM', '2022-10-09 00:38:27', '2022-11-03 11:56:26'),
(2, 'user', 'user@gmail.com', NULL, '$2y$10$3joBp.PXSM4DRrkCwwz1muqzSIVooVvF/UXb2ngtzUbocw09dYAj2', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-10-10 07:21:49', '2022-10-10 07:21:49'),
(3, 'new user', 'kifab53534@siberpay.com', NULL, '$2y$10$iN0AWhF4x2yZOCXOouWWrOdoD2dAKLm699Ke6JcSq.VSLorM.QkT.', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-10-31 07:48:57', '2022-10-31 07:57:46'),
(4, 'Admin1', 'luhith@admin', NULL, '$2y$10$G6tirOUhZFr1RlvH6m1s4uvq3qsBzOj4wP.FAQuE.CKPr.T/xttW.', NULL, NULL, NULL, NULL, NULL, NULL, 'ADM', '2022-12-30 00:18:33', '2022-12-30 00:18:33'),
(5, 'User1', 'user1@gmail.com', '2022-12-13 18:30:00', '$2y$10$msqRwEqavnrsWWZ/cBs4mevNZ2TQlbtOnCRWdd2/ppKo7N6r/guWC', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-12-30 00:19:44', '2022-12-30 00:19:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
