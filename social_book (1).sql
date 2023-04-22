-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2023 at 07:21 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_book`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_clint`
--

CREATE TABLE `all_clint` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `clint` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `all_clint`
--

INSERT INTO `all_clint` (`id`, `user_id`, `clint`, `image`, `created_at`, `updated_at`) VALUES
(2, 13, 'I found this very good book Atomic Habit by James Clear.', NULL, '2023-03-21 00:50:36', '2023-03-21 00:50:36'),
(3, 12, 'whizzy is one of the best website for bookworms as we can shop as well as share our feeling with others', NULL, '2023-03-21 02:31:29', '2023-03-21 02:31:29'),
(4, 13, 'Well ,the self help book can only help you only if you apply those rule ..', NULL, '2023-03-21 02:34:58', '2023-03-21 02:34:58'),
(5, 1, 'what a wonderful view. It reminds me one of the book of collen hover', '1679832160.jpg', '2023-03-26 06:32:40', '2023-03-26 06:32:40');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(14, 'Ravinder Singh', 'ravinder-singh', 0, '2023-03-23 21:47:14', '2023-03-23 21:48:11', 10),
(15, 'Drujoy Dutta', 'drujoy-dutta', 0, '2023-03-23 21:47:35', '2023-03-23 21:48:06', 10),
(16, 'Colleen Hover', 'colleen-hover', 0, '2023-03-23 21:48:00', '2023-03-23 21:48:00', 10),
(17, 'James Clear', 'james-clear', 0, '2023-03-23 22:14:40', '2023-03-23 22:14:40', 7),
(18, 'Mark Manson', 'mark-manson', 0, '2023-03-23 22:15:11', '2023-03-23 22:15:11', 7),
(19, 'Robin Sharma', 'robin-sharma', 0, '2023-03-23 22:15:54', '2023-03-23 22:15:54', 7),
(20, 'JK Rowling', 'jk-rowling', 0, '2023-03-23 22:20:45', '2023-03-23 22:20:45', 12),
(21, 'Amish Tripathi', 'amish-tripathi', 0, '2023-03-23 22:21:12', '2023-03-23 22:21:12', 12);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_color_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=visible,1=hidden',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(7, 'Self Help Book', 'self-help', 'All the self heal books', 'uploads/category/1679547033.jpg', 'self help', 'self help', 'self help', 0, '2023-03-22 23:20:33', '2023-03-22 23:20:33'),
(8, 'Personal Finance Books', 'personal-finance-books', 'All the personal finance books', 'uploads/category/1679547131.jpg', 'personal-finance-books', 'personal-finance-books', 'personal-finance-books', 0, '2023-03-22 23:22:11', '2023-03-22 23:22:11'),
(9, 'Adventure', 'adventure-books', 'adventure-books', 'uploads/category/1679547232.jpg', 'adventure-books', 'adventure-books', 'adventure-books', 0, '2023-03-22 23:23:52', '2023-03-23 22:01:24'),
(10, 'Romance Books', 'romance-books', 'All the romance books', 'uploads/category/1679547370.jpg', 'romance-books', 'romance-books', 'romance-books', 0, '2023-03-22 23:26:10', '2023-03-22 23:26:10'),
(11, 'Crime And Thriller', 'crime-thriller', 'Crime-Thriller', 'uploads/category/1679548628.jpg', 'Crime-Thriller', 'Crime-Thriller', 'Crime-Thriller', 0, '2023-03-22 23:47:08', '2023-03-22 23:47:08'),
(12, 'Fantasy Books', 'fantasy-books', 'fantasy-books', 'uploads/category/1679627380.jpg', 'fantasy-books', 'fantasy-books', 'fantasy-books', 0, '2023-03-23 21:39:40', '2023-03-23 21:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Blue', '#00BFFF', 0, '2022-11-12 05:43:39', '2022-11-12 06:27:49'),
(3, 'Black', '#000000', 0, '2022-11-12 06:00:14', '2022-11-12 06:27:44'),
(4, 'Green', '#32CD32', 1, '2022-11-12 06:28:00', '2022-11-12 06:28:00'),
(5, 'Yellow', '#FF7F50', 0, '2022-11-12 06:28:17', '2022-11-12 06:28:25'),
(6, 'White', '#FFE4E1', 1, '2022-11-12 06:28:47', '2022-11-12 06:28:47');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `comment_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'sad', '2023-03-26 05:29:42', '2023-03-26 05:29:42'),
(2, 1, 2, 'sdf', '2023-03-26 05:31:11', '2023-03-26 05:31:11'),
(3, 1, 2, 'a', '2023-03-26 05:33:10', '2023-03-26 05:33:10'),
(4, 1, 2, 'as', '2023-03-26 05:35:50', '2023-03-26 05:35:50'),
(5, 1, 2, 'asd', '2023-03-26 05:36:11', '2023-03-26 05:36:11'),
(6, 1, 2, 'q', '2023-03-26 05:39:30', '2023-03-26 05:39:30'),
(7, 1, 2, 'a', '2023-03-26 05:40:58', '2023-03-26 05:40:58'),
(8, 1, 2, 'v', '2023-03-26 05:41:41', '2023-03-26 05:41:41'),
(9, 1, 2, 'a', '2023-03-26 05:43:31', '2023-03-26 05:43:31'),
(10, 1, 2, 'w', '2023-03-26 05:44:58', '2023-03-26 05:44:58'),
(11, 1, 2, 'q', '2023-03-26 05:45:02', '2023-03-26 05:45:02'),
(12, 1, 3, 'agreed❤️❤️❤️', '2023-04-18 04:25:49', '2023-04-18 04:25:49');

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
-- Table structure for table `follower_data`
--

CREATE TABLE `follower_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `follower_id` int(11) NOT NULL,
  `following_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `follower_data`
--

INSERT INTO `follower_data` (`id`, `follower_id`, `following_id`, `created_at`, `updated_at`) VALUES
(1, 12, 6, '2023-03-21 02:31:13', '2023-03-21 02:31:13'),
(2, 13, 12, '2023-03-21 02:40:22', '2023-03-21 02:40:22'),
(6, 1, 11, '2023-04-15 00:30:54', '2023-04-15 00:30:54'),
(7, 1, 12, '2023-04-15 00:38:24', '2023-04-15 00:38:24');

-- --------------------------------------------------------

--
-- Table structure for table `like_data`
--

CREATE TABLE `like_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tweet_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `like_data`
--

INSERT INTO `like_data` (`id`, `user_id`, `tweet_id`, `created_at`, `updated_at`) VALUES
(2, 3, 1, '2023-03-21 00:14:07', '2023-03-21 00:14:07'),
(8, 1, 3, '2023-04-18 04:25:52', '2023-04-18 04:25:52');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_10_08_154416_create_sessions_table', 1),
(7, '2022_10_10_163530_add_details_to_users', 1),
(8, '2022_10_13_165344_create_categories_table', 1),
(9, '2022_10_20_122939_create_brands_table', 1),
(10, '2022_10_28_132445_create_products_table', 1),
(11, '2022_10_29_174127_create_product_images_table', 1),
(12, '2022_11_11_144620_create_colors_table', 1),
(13, '2022_11_12_155412_create_product_color_table', 1),
(14, '2022_11_14_070122_create_sliders_table', 1),
(15, '2022_11_21_132813_add_category_id_to_brands_table', 1),
(16, '2022_11_23_062834_create_wishlists_table', 1),
(17, '2022_11_24_042456_create_carts_table', 1),
(18, '2022_11_24_134514_create_orders_table', 1),
(19, '2022_11_24_135008_create_order_items_table', 1),
(20, '2023_01_13_070632_create_setting_table', 1),
(21, '2023_01_25_060616_create_user_details_table', 1),
(22, '2023_01_07_063921_create_all_clint_table', 2),
(23, '2023_01_20_044126_create_follower_data_table', 2),
(24, '2023_03_13_093000_create_like_data_table', 2),
(25, '2023_03_26_104635_create_comment_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tracking_no` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `address` mediumtext NOT NULL,
  `status_message` varchar(255) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `tracking_no`, `fullname`, `email`, `phone`, `pincode`, `address`, `status_message`, `payment_mode`, `payment_id`, `created_at`, `updated_at`) VALUES
(127, 3, 'funda-6h0Fm3XiTS', 'aman', 'admin1@gmail.com', '9809888900', '654321', 'amananamam', 'completed', 'cash on delivey', NULL, '2022-11-30 07:01:27', '2022-12-01 09:24:03'),
(128, 3, 'funda-S35rSqTGl2', 'aman', 'admin1@gmail.com', '9899990000', '111111', 'asddf', 'in progress', 'cash on delivey', NULL, '2022-12-05 05:00:18', '2022-12-05 05:00:18'),
(129, 3, '123', 'asdf', 'asdf@sd.c', '989898989898', '989898', 'kljbdas', 'as,dnb', ',kjsadbf', 'm,nbf,asdnbf', '2023-01-23 14:04:20', '2023-01-23 14:04:20'),
(130, 3, 'funda-eZN0skTzq2', 'aman', 'admin1@gmail.com', '9090909090', '222238', 'hggfjhchg', 'in progress', 'cash on delivey', NULL, '2023-02-08 00:53:56', '2023-02-08 00:53:56'),
(131, 1, 'funda-ldga51M917', 'Aman Chaudharyd', 'aman.patel7474@gmail.com', '3434343434', '222238', 'JHVFJH', 'completed', 'cash on delivey', NULL, '2023-03-24 02:01:46', '2023-03-24 02:02:11'),
(132, 3, 'funda-simZcxNK2f', 'aman', 'aman.ips2016@gmail.com', '3434343434', '222231', 'asdf', 'in progress', 'cash on delivey', NULL, '2023-03-25 08:48:45', '2023-03-25 08:48:45'),
(133, 1, 'funda-Sepjulcs5q', 'Amneet Kapoor', 'aman.patel7474@gmail.com', '3434343434', '222233', 'lucknow', 'in progress', 'cash on delivey', NULL, '2023-04-18 04:03:53', '2023-04-18 04:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_color_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_color_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(17, 127, 2, NULL, 1, 123, '2022-11-29 07:01:27', '2022-11-29 07:01:27'),
(18, 127, 5, NULL, 1, 12, '2022-11-29 07:01:27', '2022-11-29 07:01:27'),
(20, 130, 5, NULL, 3, 12, '2023-02-08 00:53:56', '2023-02-08 00:53:56'),
(21, 131, 16, NULL, 1, 200, '2023-03-24 02:01:46', '2023-03-24 02:01:46'),
(22, 132, 29, NULL, 1, 340, '2023-03-25 08:48:45', '2023-03-25 08:48:45'),
(23, 133, 28, NULL, 1, 200, '2023-04-18 04:03:53', '2023-04-18 04:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('aman.patel7474@gmail.com', '$2y$10$zRu.RVV5vzMY4gDmPQm8Pu4rl4RLaXhkyds3TGZCEgAMYuoQRHNvi', '2022-10-09 05:25:21');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `small_description` mediumtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `original_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `trending` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=tending,0=not-trending',
  `featured` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=featured,0=not-featured',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=hidden,0=visible',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` mediumtext DEFAULT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `brand`, `small_description`, `description`, `original_price`, `selling_price`, `quantity`, `trending`, `featured`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(12, 10, 'It Ends with Us', 'it-ends-with-us', 'Colleen Hover', 'It\'s a romcom book', 'The newest, highly anticipated novel from beloved #1 New York Times bestselling author, Colleen Hoover. Sometimes it is the one who loves you who hurts you the most. Lily hasn?t always had it easy, but that\'s never stopped her from working hard for the life she wants. She?s come a long way from the small town in Maine where she grew up?she graduated from college, moved to Boston and started her own business. So when she feels a spark with a gorgeous neurosurgeon named Ryle Kincaid, everything in Lily?s life suddenly seems almost too good to be true. Ryle is assertive, stubborn, maybe even a little arrogant. He?s also sensitive, brilliant and has a total soft spot for Lily. And the way he looks in scrubs certainly doesn?t hurt. Lily can not get him out of her head. But Ryle?s complete aversion to relationships is disturbing. Even as Lily finds herself becoming the exception to his ?no dating? rule, she can not help but wonder what made him that way in the first place. As questions about her new relationship overwhelm her, so do thoughts of Atlas Corrigan?her first love and a link to the past she left behind. He was her kindred spirit, her protector. When Atlas suddenly reappears, everything Lily has built with Ryle is threatened. With this bold and deeply personal novel, Colleen Hoover delivers a heart-wrenching story that breaks exciting new ground for her as a writer. Combining a captivating romance with a cast of all-too-human characters, it ends with us is an unforgettable tale of love that comes at the ultimate price.', 240, 210, 20, 1, 0, 0, 'nothing', 'nothing', 'nothing', '2023-03-23 22:26:15', '2023-03-23 22:28:00'),
(13, 10, 'November', 'november', 'Colleen Hover', 'Its a RomCom Book', 'The newest, highly anticipated novel from beloved #1 New York Times bestselling author, Colleen Hoover. Sometimes it is the one who loves you who hurts you the most. Lily hasn?t always had it easy, but that\'s never stopped her from working hard for the life she wants. She?s come a long way from the small town in Maine where she grew up?she graduated from college, moved to Boston and started her own business. So when she feels a spark with a gorgeous neurosurgeon named Ryle Kincaid, everything in Lily?s life suddenly seems almost too good to be true. Ryle is assertive, stubborn, maybe even a little arrogant. He?s also sensitive, brilliant and has a total soft spot for Lily. And the way he looks in scrubs certainly doesn?t hurt. Lily can not get him out of her head. But Ryle?s complete aversion to relationships is disturbing. Even as Lily finds herself becoming the exception to his ?no dating? rule, she can not help but wonder what made him that way in the first place. As questions about her new relationship overwhelm her, so do thoughts of Atlas Corrigan?her first love and a link to the past she left behind. He was her kindred spirit, her protector. When Atlas suddenly reappears, everything Lily has built with Ryle is threatened. With this bold and deeply personal novel, Colleen Hoover delivers a heart-wrenching story that breaks exciting new ground for her as a writer. Combining a captivating romance with a cast of all-too-human characters, it ends with us is an unforgettable tale of love that comes at the ultimate price.', 345, 300, 23, 0, 0, 0, 'nothing', 'nothing', 'nothing', '2023-03-23 22:35:53', '2023-03-23 22:35:53'),
(14, 10, 'Ugly Love', 'ugly-love', 'Colleen Hover', 'It\'s a RomCom Book', 'The newest, highly anticipated novel from beloved #1 New York Times bestselling author, Colleen Hoover. Sometimes it is the one who loves you who hurts you the most. Lily hasn?t always had it easy, but that\'s never stopped her from working hard for the life she wants. She?s come a long way from the small town in Maine where she grew up?she graduated from college, moved to Boston and started her own business. So when she feels a spark with a gorgeous neurosurgeon named Ryle Kincaid, everything in Lily?s life suddenly seems almost too good to be true. Ryle is assertive, stubborn, maybe even a little arrogant. He?s also sensitive, brilliant and has a total soft spot for Lily. And the way he looks in scrubs certainly doesn?t hurt. Lily can not get him out of her head. But Ryle?s complete aversion to relationships is disturbing.', 390, 345, 34, 0, 1, 0, 'nothing', 'nothing', 'nothing', '2023-03-23 22:37:45', '2023-03-23 22:37:45'),
(15, 10, 'I too had a love story', 'i-too-had-a-love-story', 'Ravinder Singh', 'It\'s RomCom', 'The newest, highly anticipated novel from beloved #1 New York Times bestselling author, Colleen Hoover. Sometimes it is the one who loves you who hurts you the most. Lily hasn?t always had it easy, but that\'s never stopped her from working hard for the life she wants. She?s come a long way from the small town in Maine where she grew up?she graduated from college, moved to Boston and started her own business. So when she feels a spark with a gorgeous neurosurgeon named Ryle Kincaid, everything in Lily?s life suddenly seems almost too good to be true. Ryle is assertive, stubborn, maybe even a little arrogant. He?s also sensitive, brilliant and has a total soft spot for Lily. And the way he looks in scrubs certainly doesn?t hurt. Lily can not get him out of her head. But Ryle?s complete aversion to relationships is disturbing.', 230, 190, 40, 0, 1, 0, 'nothing', 'nothing', 'nothing', '2023-03-23 22:39:53', '2023-03-23 22:39:53'),
(16, 10, 'Will You Still Love Me', 'will-you-still-love-me', 'Ravinder Singh', 'it\'s a RomCom Book', 'The newest, highly anticipated novel from beloved #1 New York Times bestselling author, Colleen Hoover. Sometimes it is the one who loves you who hurts you the most. Lily hasn?t always had it easy, but that\'s never stopped her from working hard for the life she wants. She?s come a long way from the small town in Maine where she grew up?she graduated from college, moved to Boston and started her own business. So when she feels a spark with a gorgeous neurosurgeon named Ryle Kincaid, everything in Lily?s life suddenly seems almost too good to be true. Ryle is assertive, stubborn, maybe even a little arrogant. He?s also sensitive, brilliant and has a total soft spot for Lily. And the way he looks in scrubs certainly doesn?t hurt. Lily can not get him out of her head. But Ryle?s complete aversion to relationships is disturbing.', 230, 200, 22, 0, 1, 0, 'nothing', 'nothing', 'nothing', '2023-03-23 22:41:54', '2023-03-24 02:01:46'),
(17, 10, 'The Love That Feels Right', 'the-love-that-feels-rigth', 'Ravinder Singh', 'Its a romcom Book', 'The newest, highly anticipated novel from beloved #1 New York Times bestselling author, Colleen Hoover. Sometimes it is the one who loves you who hurts you the most. Lily hasn?t always had it easy, but that\'s never stopped her from working hard for the life she wants. She?s come a long way from the small town in Maine where she grew up?she graduated from college, moved to Boston and started her own business. So when she feels a spark with a gorgeous neurosurgeon named Ryle Kincaid, everything in Lily?s life suddenly seems almost too good to be true. Ryle is assertive, stubborn, maybe even a little arrogant. He?s also sensitive, brilliant and has a total soft spot for Lily. And the way he looks in scrubs certainly doesn?t hurt. Lily can not get him out of her head. But Ryle?s complete aversion to relationships is disturbing.', 180, 170, 40, 0, 1, 0, 'nothing', 'nothing', 'nothing', '2023-03-23 22:43:19', '2023-03-23 22:43:19'),
(18, 10, 'The Perfect Us', 'the-perfect-us', 'Drujoy Dutta', 'This is a RomCom', 'The newest, highly anticipated novel from beloved #1 New York Times bestselling author, Colleen Hoover. Sometimes it is the one who loves you who hurts you the most. Lily hasn?t always had it easy, but that\'s never stopped her from working hard for the life she wants. She?s come a long way from the small town in Maine where she grew up?she graduated from college, moved to Boston and started her own business.', 230, 200, 23, 1, 0, 0, 'noting', 'nothing', 'nothing', '2023-03-24 10:34:03', '2023-03-24 10:34:03'),
(19, 10, 'The Girl Of My Dream', 'the-girl-of-my-dream', 'Drujoy Dutta', 'This is a RomCom', 'The newest, highly anticipated novel from beloved #1 New York Times bestselling author, Colleen Hoover. Sometimes it is the one who loves you who hurts you the most. Lily hasn?t always had it easy, but that\'s never stopped her from working hard for the life she wants. She?s come a long way from the small town in Maine where she grew up?she graduated from college, moved to Boston and started her own business.', 240, 210, 40, 1, 1, 0, 'nothing', 'nothing', 'nothing', '2023-03-24 10:35:46', '2023-03-24 10:35:46'),
(20, 10, 'Wish I Could Tell You', 'wish-i-could-tell-you', 'Ravinder Singh', 'This is a RomCom', 'The newest, highly anticipated novel from beloved #1 New York Times bestselling author, Colleen Hoover. Sometimes it is the one who loves you who hurts you the most. Lily hasn?t always had it easy, but that\'s never stopped her from working hard for the life she wants. She?s come a long way from the small town in Maine where she grew up?she graduated from college, moved to Boston and started her own business.', 300, 230, 30, 0, 1, 0, 'nothing', 'nothing', 'nothing', '2023-03-24 10:37:03', '2023-03-24 10:37:03'),
(21, 7, 'Atomic Habit', 'atomic-habit', 'James Clear', 'This is a RomCom', 'The newest, highly anticipated novel from beloved #1 New York Times bestselling author, Colleen Hoover. Sometimes it is the one who loves you who hurts you the most. Lily hasn?t always had it easy, but that\'s never stopped her from working hard for the life she wants. She?s come a long way from the small town in Maine where she grew up?she graduated from college, moved to Boston and started her own business.', 320, 290, 20, 0, 1, 0, 'nothing', 'nothing', 'nothing', '2023-03-24 10:38:57', '2023-03-24 10:38:57'),
(22, 7, 'Everything is F', 'every-thing-id-f', 'Mark Manson', 'This is a Self Help Book', 'n Everything is Fucked, Mark Manson focuses on the seemingly endless calamities that take place in the world around us. By drawing inspiration from the mountain of psychological research and the eternal wisdom of legendary philosophers like Plato and Nietzsche, he carefully dissects politics and religion.', 235, 220, 30, 0, 1, 0, 'nothing', 'nothing', 'nothing', '2023-03-24 10:40:59', '2023-03-24 10:40:59'),
(23, 7, 'The Subtle Art Of Not Giving A F', 'the-subtle-art-of-not-giving-f', 'Mark Manson', 'This is a Self Help Book', 'This is a bestselling self-help book for the millennials that addresses the wide-spread culture of mindless positivity which is beyond practical or remotely helpful for most people. Manson focuses on accepting flaws, understanding pain and how much one can tolerate, and on stop being delusional.', 340, 290, 50, 1, 0, 0, 'nothing', 'nothing', 'nothing', '2023-03-24 10:44:00', '2023-03-24 10:44:00'),
(24, 7, 'The five AM Club', 'the-five-am-club', 'Robin Sharma', 'This is a Self Help Book', 'This is a bestselling self-help book for the millennials that addresses the wide-spread culture of mindless positivity which is beyond practical or remotely helpful for most people. Manson focuses on accepting flaws, understanding pain and how much one can tolerate, and on stop being delusional.', 260, 230, 45, 0, 0, 0, 'nothing', 'nothing', 'nothing', '2023-03-24 10:45:40', '2023-03-24 10:45:40'),
(25, 7, 'The Everyday Hero', 'the-every-day-hero', 'Robin Sharma', 'The Every Day Hero Is A Self Help Book', 'This is a bestselling self-help book for the millennials that address the wide-spread culture of mindless positivity which is beyond practical or remotely helpful for most people. Manson focuses on accepting flaws, understanding pain and how much one can tolerate, and on stop being delusional.', 340, 260, 30, 1, 1, 0, 'nothing', 'nothing', 'nothing', '2023-03-24 10:47:39', '2023-03-24 10:47:39'),
(26, 7, 'The Monk Who Sold His Ferrari', 'the-monk', 'Robin Sharma', 'This is A Self Help Book', 'This is a bestselling self-help book for the millennials that addresses the wide-spread culture of mindless positivity which is beyond practical or remotely helpful for most people. Manson focuses on accepting flaws, understanding pain and how much one can tolerate, and on stop being delusional.', 390, 350, 30, 0, 1, 0, 'nothing', 'nothing', 'nothing', '2023-03-24 10:51:40', '2023-03-24 10:51:40'),
(27, 12, 'Nagas', 'nagas', 'Amish Tripathi', 'This is a Fantasy Book', 'This is a bestselling self-help book for the millennials that addresses the wide-spread culture of mindless positivity which is beyond practical or remotely helpful for most people. Manson focuses on accepting flaws, understanding pain and how much one can tolerate, and on stop being delusional.', 345, 300, 60, 0, 1, 0, 'nothing', 'nothing', 'nothing', '2023-03-24 10:58:52', '2023-03-24 10:58:52'),
(28, 12, 'Ram', 'ram', 'Amish Tripathi', 'This is a Fantasy Book', 'This is a bestselling self-help book for the millennials that addresses the wide-spread culture of mindless positivity which is beyond practical or remotely helpful for most people. Manson focuses on accepting flaws, understanding pain and how much one can tolerate, and on stop being delusional.', 230, 200, 19, 0, 1, 0, 'nothing', 'nothing', 'nothing', '2023-03-24 11:00:23', '2023-04-18 04:03:53'),
(29, 12, 'Mehula', 'mehula', 'Amish Tripathi', 'This is a Fantasy Book', 'This is a bestselling self-help book for the millennials that addresses the wide-spread culture of mindless positivity which is beyond practical or remotely helpful for most people. Manson focuses on accepting flaws, understanding pain and how much one can tolerate, and on stop being delusional.', 365, 340, 39, 1, 1, 0, 'nothing', 'nothing', 'nothing', '2023-03-24 11:01:23', '2023-03-25 08:48:45'),
(30, 12, 'Harry Potter And The Chamber Of Secrets', 'the-chamber', 'JK Rowling', 'Harry hears strange whispers echo through empty corridors - and then the attacks start. Students are found as through turned to stone.', 'Harry Potter\'s summer has included the worst birthday ever, doomy warnings from a house-elf called Dobby, and rescue from the Dursleys by his friend Ron Weasley in a magical flying car! Back at Hogwarts School of Witchcraft and Wizardry for his second year, Harry hears strange whispers echo through empty corridors - and then the attacks start. Students are found as through turned to stone.', 280, 230, 30, 1, 1, 0, '@', '@', '@', '2023-03-28 22:48:25', '2023-03-28 22:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(44, 12, 'uploads/products/16796301751.webp', '2023-03-23 22:26:15', '2023-03-23 22:26:15'),
(45, 13, 'uploads/products/16796307531.webp', '2023-03-23 22:35:53', '2023-03-23 22:35:53'),
(46, 14, 'uploads/products/16796308651.webp', '2023-03-23 22:37:45', '2023-03-23 22:37:45'),
(47, 15, 'uploads/products/16796309931.webp', '2023-03-23 22:39:53', '2023-03-23 22:39:53'),
(48, 16, 'uploads/products/16796311141.webp', '2023-03-23 22:41:54', '2023-03-23 22:41:54'),
(49, 17, 'uploads/products/16796311991.webp', '2023-03-23 22:43:19', '2023-03-23 22:43:19'),
(50, 18, 'uploads/products/16796738431.webp', '2023-03-24 10:34:03', '2023-03-24 10:34:03'),
(51, 19, 'uploads/products/16796739461.webp', '2023-03-24 10:35:46', '2023-03-24 10:35:46'),
(52, 20, 'uploads/products/16796740231.webp', '2023-03-24 10:37:03', '2023-03-24 10:37:03'),
(53, 21, 'uploads/products/16796741371.webp', '2023-03-24 10:38:57', '2023-03-24 10:38:57'),
(54, 22, 'uploads/products/16796742591.webp', '2023-03-24 10:40:59', '2023-03-24 10:40:59'),
(55, 23, 'uploads/products/16796744401.webp', '2023-03-24 10:44:00', '2023-03-24 10:44:00'),
(56, 24, 'uploads/products/16796745401.webp', '2023-03-24 10:45:40', '2023-03-24 10:45:40'),
(57, 25, 'uploads/products/16796746591.webp', '2023-03-24 10:47:39', '2023-03-24 10:47:39'),
(58, 26, 'uploads/products/16796749001.webp', '2023-03-24 10:51:40', '2023-03-24 10:51:40'),
(59, 27, 'uploads/products/16796753321.webp', '2023-03-24 10:58:52', '2023-03-24 10:58:52'),
(60, 28, 'uploads/products/16796754231.webp', '2023-03-24 11:00:23', '2023-03-24 11:00:23'),
(61, 29, 'uploads/products/16796754831.webp', '2023-03-24 11:01:23', '2023-03-24 11:01:23'),
(62, 30, 'uploads/products/16800635051.webp', '2023-03-28 22:48:25', '2023-03-28 22:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('B5HGIYGuSvIYG6UYljfiCPZSX3WfnWoQBDT3FguU', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibXFtUDdLSm9vWG9uMlN3ZTdpR0pMMkxQNldIU00zNGU5OVVZSU5ZRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTY4MTgzNDc3ODt9fQ==', 1681837415);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `website_name` varchar(255) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone1` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `email1` varchar(255) DEFAULT NULL,
  `email2` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `website_name`, `website_url`, `title`, `meta_keyword`, `meta_description`, `address`, `phone1`, `phone2`, `email1`, `email2`, `facebook`, `twitter`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'whizzy', 'www.google.com', 'Buy and connect', 'Buy and connect', 'Buy and connect', 'Lucknow,UP', '9090121267', '8989786745', 'whizzy@whizz.com', 'customerservice@whizz.com', 'facebook.com', 'twitter.com', 'fds', 'fsda', '2023-01-13 01:57:04', '2023-04-18 03:54:19');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=HIDDEN,0=VISIBLE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Check out all Categories', '/collections', 'uploads/slider/1681749557.svg', 1, '2022-11-14 02:29:43', '2023-04-17 11:09:17'),
(3, 'Choose from RomComs', '/collections/romance-books', 'uploads/slider/1681740936.svg', 1, '2022-11-14 02:33:35', '2023-04-17 08:45:36'),
(4, 'Choose from Self Help', '/collections/self-help', 'uploads/slider/1681741042.svg', 0, '2022-11-16 03:37:01', '2023-04-17 08:47:22'),
(5, 'Choose from Fantasy', '/collections/fantasy-books', 'uploads/slider/1681742095.svg', 0, '2022-11-16 04:22:47', '2023-04-17 09:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-user,1-admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `role_as`) VALUES
(1, 'Amneet Kapoor', 'aman.patel7474@gmail.com', NULL, '$2y$10$ij5gJcOJ4wtWFJWXmrPyPOTIc.myEkWsI9tAR/YL4kUITijCHQv.W', NULL, NULL, NULL, 'IiEWf7FsFuIae9TkcvKJbaWlLbhJHiVzGutSVsWt9yofDFQgxND5uLpKiY2H', NULL, NULL, '2022-10-09 05:24:56', '2023-01-23 07:05:40', 1),
(3, 'Emillie Williams', 'aman.ips2016@gmail.com', NULL, '$2y$10$ij5gJcOJ4wtWFJWXmrPyPOTIc.myEkWsI9tAR/YL4kUITijCHQv.W', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-23 01:22:27', '2022-11-23 01:22:27', 0),
(12, 'Rahul Maheswari', 'aman9080@gmail.com', NULL, '$2y$10$ij5gJcOJ4wtWFJWXmrPyPOTIc.myEkWsI9tAR/YL4kUITijCHQv.W', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-21 01:09:07', '2023-03-21 01:09:07', 0),
(13, 'Lesley Davis', 'an98@gmail.com', NULL, '$2y$10$ij5gJcOJ4wtWFJWXmrPyPOTIc.myEkWsI9tAR/YL4kUITijCHQv.W', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-21 02:33:48', '2023-03-21 02:33:48', 0),
(14, 'Kayleigh Perry', 'kp@gmail.com', NULL, '$2y$10$8pWlSACakhgXMj.iUmDuFOUqcJqr0b6Mv7EHGSYPFOad8skosak/W', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-16 07:22:28', '2023-04-16 07:22:28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pin_code` varchar(255) NOT NULL,
  `address` varchar(500) NOT NULL,
  `username` varchar(255) NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `background_pic` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `phone`, `pin_code`, `address`, `username`, `profile_pic`, `background_pic`, `bio`, `dob`, `country`, `state`, `created_at`, `updated_at`) VALUES
(1, 3, '3434343434', '343432', 'awde', 'me12', '6421a0bee35f0.png', 'uploads/background/1679831912.jpg', 'dsfsd', '0000-00-00', 'clintCountry', 'clintLand', '2023-01-25 01:30:33', '2023-03-27 08:27:18'),
(2, 12, '0', '0', 'default', 'aman11', '643beb7db1943.png', 'images/banner.jpg', 'as', '2023-03-21', 'clintCountry', 'clintLand', '2023-03-21 01:09:07', '2023-04-16 07:05:09'),
(3, 13, '0', '0', 'default', 'an98', '643bef1cdf187.png', 'images/banner.jpg', 'as', '2023-03-21', 'clintCountry', 'clintLand', '2023-03-21 02:33:48', '2023-04-16 07:20:36'),
(4, 1, '9811020022', '121212', '', 'amneet_k', '643c0d825732d.png', 'images/banner.jpg', 'Reading Is What I Love💖💖', '2023-03-21', 'India', 'Punjab', '2023-03-21 02:33:48', '2023-04-16 09:34:32'),
(5, 14, '0', '0', 'default', 'kp', '643befcb5578c.png', 'images/banner.jpg', '👩‍💻SDE \r\n@GoFynd\r\n • ✍️Technical Writer • Freelancer • Tweets about Programming, Productivity✨ Growth 🌱 and Self love💖', '2023-04-16', 'Bristol', 'England', '2023-04-16 07:22:28', '2023-04-16 07:29:59');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(4, 3, 3, '2022-11-23 07:34:06', '2022-11-23 07:34:06'),
(6, 3, 2, '2022-11-23 23:15:17', '2022-11-23 23:15:17'),
(7, 3, 10, '2022-11-23 23:46:33', '2022-11-23 23:46:33'),
(9, 1, 28, '2023-04-18 04:02:08', '2023-04-18 04:02:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_clint`
--
ALTER TABLE `all_clint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `follower_data`
--
ALTER TABLE `follower_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `like_data`
--
ALTER TABLE `like_data`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_color_product_id_foreign` (`product_id`),
  ADD KEY `product_color_color_id_foreign` (`color_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_details_user_id_unique` (`user_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_clint`
--
ALTER TABLE `all_clint`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `follower_data`
--
ALTER TABLE `follower_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `like_data`
--
ALTER TABLE `like_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_color`
--
ALTER TABLE `product_color`
  ADD CONSTRAINT `product_color_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_color_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
