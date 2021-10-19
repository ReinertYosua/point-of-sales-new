-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2021 at 05:19 PM
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
(1, 'suscipit', 'Vero dolorem dolore veritatis enim placeat repellendus excepturi. Nemo dolore et quia ullam.', NULL, NULL),
(2, 'incidunt', 'Minus tempore labore perferendis voluptas quia. Maxime eaque quia quis distinctio. Illo aspernatur quibusdam accusantium vel.', NULL, NULL),
(3, 'dolores', 'Accusantium possimus blanditiis consequatur porro id. Est modi magnam corporis voluptatem. Quaerat rem dolorem molestiae id accusamus in a commodi. Est explicabo omnis molestias voluptate dolorem.', NULL, NULL),
(4, 'tempora', 'Modi laboriosam necessitatibus nihil minus occaecati dicta. Quaerat perspiciatis repudiandae nihil error hic corrupti vel. Id ea culpa quos ab eaque.', NULL, NULL),
(5, 'voluptas', 'Porro soluta perferendis accusantium. Incidunt nemo doloribus et totam nemo. Aut temporibus incidunt quasi commodi.', NULL, NULL),
(6, 'doloremque', 'Vel maiores et quod aliquam aut ipsa. Sit veritatis debitis magnam ea quia. Et itaque quo veniam sint. Quaerat sint et beatae quia. Ex placeat rerum eligendi qui dolorem fugit iure.', NULL, NULL),
(7, 'voluptatem', 'Delectus in minus aperiam ducimus. Aliquam deleniti delectus rerum quia in. Veritatis debitis quia et dolores aut ducimus. Voluptas nihil magnam voluptatibus esse quod deleniti dolores.', NULL, NULL),
(8, 'et', 'Optio sit quo atque voluptas omnis atque consequuntur. Quidem qui voluptatem optio ut provident est adipisci accusantium. A reiciendis aut eos accusamus culpa.', NULL, NULL),
(9, 'expedita', 'Occaecati necessitatibus magnam in reprehenderit quibusdam sit iste repellat. Et laudantium quam recusandae harum ullam sint consequatur. Et numquam dolorem rem asperiores est dolorem soluta.', NULL, NULL),
(10, 'sapiente', 'Occaecati officiis est eius aspernatur doloribus. Sed nobis nisi consectetur autem. Nisi reprehenderit dolorem dicta vel quam. Velit minima iusto est.', NULL, NULL),
(11, 'quo', 'Architecto non itaque tempore suscipit ducimus voluptatum. Est est qui iure dicta. Mollitia quia odio consequuntur asperiores.', NULL, NULL),
(12, 'veniam', 'Et cupiditate dolores blanditiis eum dolorem odio. Atque velit odio aliquid ut in distinctio autem est. Ratione minima voluptas enim molestiae placeat totam.', NULL, NULL),
(13, 'porro', 'Vitae similique quas qui quam nobis. Molestiae soluta quidem esse veritatis. Enim aut explicabo minus qui.', NULL, NULL),
(14, 'dolores', 'Architecto aspernatur omnis sit aperiam dolor. Quia voluptate praesentium corrupti. Sunt sit excepturi dolorum.', NULL, NULL),
(15, 'odit', 'Sunt autem natus aliquam hic quasi. Rerum voluptas explicabo sed vero. Quod voluptas est quia et doloremque suscipit. Eveniet rem repudiandae odit pariatur quam quos.', NULL, NULL),
(16, 'molestiae', 'Autem reiciendis voluptas explicabo ut. Soluta voluptas et incidunt temporibus est aut. Rerum omnis rem dolorem est beatae quasi autem.', NULL, NULL),
(17, 'cumque', 'Ipsa eum quia enim minima sit. Facere enim veniam fuga. Nobis dolore ratione qui cum rem repudiandae.', NULL, NULL),
(18, 'quod', 'Voluptatem minima quaerat mollitia iure qui quo consequatur sit. Maiores aspernatur facilis dolorem et iusto illo error. Non dicta quis et nihil dignissimos esse architecto aspernatur.', NULL, NULL),
(19, 'tempora', 'Qui id quibusdam ratione molestias est enim quia. Voluptates odio occaecati necessitatibus et dolorem velit dolor. Est omnis beatae qui voluptatem. Nostrum dolor culpa sint.', NULL, NULL),
(20, 'nulla', 'Minus eveniet dolor voluptatibus rem. Fuga voluptas et et dolor. Necessitatibus facere natus sed alias. Natus eos dolor cupiditate iste repellat maxime sit. Dolorum sint recusandae quo molestiae eos.', NULL, NULL),
(21, 'qui', 'Corporis vitae quia molestiae ipsam. Cumque et unde ut. Reiciendis harum et et et delectus blanditiis.', NULL, NULL),
(22, 'voluptate', 'Velit quisquam sed magnam repellendus doloribus totam. Error eum recusandae nulla odio. Laborum sed ut sint id aut voluptas.', NULL, NULL),
(23, 'dignissimos', 'Vero et necessitatibus hic quae. Officiis sunt ad maxime debitis error. Voluptatem quia eum deleniti est consectetur. Repellendus repudiandae sed debitis tempora ut voluptatum tempore temporibus.', NULL, NULL),
(24, 'vero', 'Et iste sit laboriosam veniam non. Repellat et ipsam et ut sunt repellendus quae quidem. Laudantium voluptatem eum perspiciatis iusto. Explicabo nulla nam qui cupiditate voluptas vero.', NULL, NULL),
(25, 'accusantium', 'Est maxime quaerat quis quae quos doloribus. Nemo quasi illo libero delectus delectus nam. Distinctio perspiciatis ad quo. Ut adipisci unde voluptas doloribus rem aut.', NULL, NULL),
(26, 'dolor', 'Fuga repellat eos quae vero perspiciatis. Doloribus eos maxime et alias saepe nesciunt vel. Aut minus mollitia autem fugit quibusdam asperiores.', NULL, NULL),
(27, 'et', 'Facere consequatur animi veritatis error labore non ut quasi. Praesentium accusamus magni culpa soluta hic explicabo repellat. Quo beatae quo dignissimos corrupti at omnis voluptas.', NULL, NULL),
(28, 'eveniet', 'Et at eos nemo voluptates commodi. Sed at est alias deleniti exercitationem praesentium. Eos adipisci non nesciunt excepturi veritatis quos. Similique veniam aperiam quasi quo ut neque.', NULL, NULL),
(29, 'pariatur', 'Odit architecto laudantium explicabo modi ut. Ut dolores eaque quisquam est. Dolorum nisi illo sunt voluptatem tempora nesciunt.', NULL, NULL),
(30, 'deleniti', 'Eos atque est sed ratione. Accusamus quos est nesciunt assumenda. Id harum dolore consequatur omnis sunt inventore unde amet.', NULL, NULL),
(31, 'quis', 'Sit accusantium quasi a et. Velit labore quos quae quod dolorum ex numquam nisi. Et corrupti eligendi aspernatur fugit laudantium natus nisi.', NULL, NULL),
(32, 'laborum', 'Commodi architecto et sed et quia doloremque porro ut. Autem aut officiis quibusdam dolor et aspernatur earum. Sequi aut voluptas delectus sit esse. Eos repudiandae ut velit.', NULL, NULL),
(33, 'reprehenderit', 'Enim sed quis quidem dolorum eaque. Ullam expedita sit sed sint incidunt. Laborum sunt quis provident facere quis. Maiores ab porro iusto sit recusandae rerum excepturi provident.', NULL, NULL),
(34, 'sed', 'Qui molestias dignissimos quam non consequatur. Quod qui provident reprehenderit molestias. Vel exercitationem et id sed nobis ratione magni.', NULL, NULL),
(35, 'in', 'Quis dolorem maxime minus nobis quaerat consequatur fugiat autem. Occaecati ullam non quis velit praesentium et beatae. Ipsam laudantium at consequatur.', NULL, NULL),
(36, 'possimus', 'Similique omnis eum omnis quod non officia aperiam. Quos optio eveniet ea fuga rerum quas. Totam aliquam quaerat odio unde. Eos sint optio dolorem odio rerum.', NULL, NULL),
(37, 'qui', 'Labore aut nihil unde accusantium dolor recusandae. Recusandae dolor minus autem ea debitis amet. Laborum adipisci nam cupiditate vero fugiat molestias voluptatum. Voluptatem quae sit est.', NULL, NULL),
(38, 'ut', 'Doloribus nobis et et dolorem quas est. Libero nihil non quisquam ea. Voluptatem aut dolore eius qui.', NULL, NULL),
(39, 'est', 'Asperiores voluptatibus aut voluptate ratione impedit. Voluptas omnis unde odit harum. Est fugit nobis et nihil. Reprehenderit et commodi porro.', NULL, NULL),
(40, 'neque', 'Est dolore esse voluptatem corporis officia. Aut voluptatem omnis distinctio ex ea culpa sapiente. Quod aut doloremque numquam fugit veniam.', NULL, NULL),
(41, 'sequi', 'Iure et consequatur porro laudantium. Deserunt in vel neque aut. Itaque quia provident voluptatum molestiae voluptatem ex. Aut magni est non non porro consectetur.', NULL, NULL),
(42, 'ea', 'Adipisci laudantium amet delectus maxime. In sapiente vel et quaerat sed rerum ipsam porro. Ipsam rerum nostrum natus perspiciatis libero fugiat facilis ea. Et beatae nostrum suscipit quia.', NULL, NULL),
(43, 'vero', 'Illum rerum quis nesciunt qui maiores quam delectus. Consequatur facere non qui voluptate. Et occaecati soluta nobis soluta cumque.', NULL, NULL),
(44, 'natus', 'Maxime voluptates officia soluta aperiam commodi nostrum minima. Sunt odio itaque architecto sint. Animi est dolores cum explicabo.', NULL, NULL),
(45, 'dolorem', 'Et laborum voluptas animi quaerat. Est labore earum ab aut quisquam. Fugit rerum voluptatem voluptatibus rerum hic.', NULL, NULL),
(46, 'voluptatem', 'Quia est ipsum qui. Quasi officia et ad molestiae quia odio quasi voluptatibus. Nisi quia aut suscipit mollitia id consequatur ut qui.', NULL, NULL),
(47, 'sit', 'Ad rerum esse ipsam rerum ipsam ipsa. Et repudiandae porro qui cumque est ipsam maxime. Porro laborum dolor ipsa ratione culpa ut omnis. Magni id harum eos et.', NULL, NULL),
(48, 'voluptatem', 'Odit porro maiores quia ut doloribus. Quaerat et distinctio sunt id molestias autem cupiditate. Est et nesciunt et a est qui consequuntur odit.', NULL, NULL),
(49, 'delectus', 'Amet facere non quibusdam voluptatum et nihil necessitatibus. Itaque nihil eum reprehenderit optio. Quibusdam et quidem est modi.', NULL, NULL),
(50, 'molestiae', 'Voluptatum commodi dolorem dolorum a animi suscipit corrupti alias. Et aut repellendus excepturi repellendus. Molestias sint delectus dolore et. Velit molestias alias quia.', NULL, NULL),
(51, 'Test', 'Test1', '2021-10-13 21:13:24', '2021-10-13 21:13:24');

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
-- Table structure for table `image_product`
--

CREATE TABLE `image_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_product`
--

INSERT INTO `image_product` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 51, '4655620ce58afa7bb6f57fee66a78737', '2021-10-19 03:33:19', '2021-10-19 03:33:19'),
(2, 51, '0e148d13fd7e5f24c0e010d5b9ba1b7e', '2021-10-19 03:33:19', '2021-10-19 03:33:19'),
(3, 51, 'ed3fd4a7c8ec31a4ab565072ed2cef36', '2021-10-19 03:33:19', '2021-10-19 03:33:19'),
(4, 51, 'c9e7cb5519bc542271620a004ad81ce7', '2021-10-19 03:33:19', '2021-10-19 03:33:19'),
(5, 51, '26b92a79e03a70d180183a72f2a4fe5a', '2021-10-19 03:33:19', '2021-10-19 03:33:19'),
(6, 51, '1090a6226db12c09fb504b6e8caf6a76', '2021-10-19 03:33:19', '2021-10-19 03:33:19'),
(7, 51, '1258ff6c0095e2d711eca956c03b49a4', '2021-10-19 03:33:19', '2021-10-19 03:33:19'),
(8, 51, '9dc22a98ceb664790b766e88f14e9488', '2021-10-19 03:33:19', '2021-10-19 03:33:19'),
(9, 51, 'a2deb1e007866f78e90652c449ff4f5c', '2021-10-19 03:33:19', '2021-10-19 03:33:19'),
(10, 51, 'ce23c53c1084a84735a721568e21f8a0', '2021-10-19 03:33:19', '2021-10-19 03:33:19'),
(15, 53, '2aa4631295cbe3588eb26c57819374b2', '2021-10-19 05:36:14', '2021-10-19 05:36:14'),
(16, 53, '72783e2f26632bc7c3cc31a83992313f', '2021-10-19 05:36:14', '2021-10-19 05:36:14'),
(17, 53, 'ba0d5e4d13ae17b8f75115236d6f584a', '2021-10-19 05:36:14', '2021-10-19 05:36:14'),
(18, 53, '8ec98a2d40f1f4add2ca0775f3fd78c8', '2021-10-19 05:36:14', '2021-10-19 05:36:14'),
(19, 53, '52430f1f91033d585518a1fc91ce8896', '2021-10-19 05:36:14', '2021-10-19 05:36:14'),
(33, 52, '70df5412a3066fb7687db45935a32718', '2021-10-19 08:17:12', '2021-10-19 08:17:12'),
(34, 52, 'b0f115c6ca6a3e91fc25bd871ad33c4f', '2021-10-19 08:17:12', '2021-10-19 08:17:12'),
(35, 52, '6303a01515b2e1ecb23afe8135d94749', '2021-10-19 08:17:12', '2021-10-19 08:17:12'),
(36, 52, 'c4d3608214ce13e915d0f718a5ca539b', '2021-10-19 08:17:12', '2021-10-19 08:17:12'),
(37, 52, 'bd64bf54fddb076ed7a80396d32c30cb', '2021-10-19 08:17:12', '2021-10-19 08:17:12'),
(38, 52, 'd1065c9b170d7f7fe23c31d57e42c2c6', '2021-10-19 08:17:12', '2021-10-19 08:17:12'),
(39, 52, 'be22e4ae507b6525ddf1e130519c92c0', '2021-10-19 08:17:12', '2021-10-19 08:17:12'),
(40, 52, 'cc2bee20c58ccd7a07304f4d45c9fe69', '2021-10-19 08:17:12', '2021-10-19 08:17:12'),
(41, 52, '7dc36f896d2cf543bb6db83cb323d8d7', '2021-10-19 08:17:12', '2021-10-19 08:17:12'),
(42, 52, '54be9054f4063fd1e89508985beb0fa1', '2021-10-19 08:17:12', '2021-10-19 08:17:12'),
(43, 52, '4b779047adc9994dcbac7c96e9bcae81', '2021-10-19 08:17:12', '2021-10-19 08:17:12'),
(44, 52, '49421d957df20a3306d29f1611c90c81', '2021-10-19 08:17:12', '2021-10-19 08:17:12'),
(45, 55, 'ef6f04af59789da825dced943262a991', '2021-10-19 08:18:14', '2021-10-19 08:18:14'),
(46, 55, '1de985a851b0d8dc199b0ead6b3753b9', '2021-10-19 08:18:14', '2021-10-19 08:18:14'),
(47, 55, '2f53d90c2bedc07ac09e0958d56563d8', '2021-10-19 08:18:14', '2021-10-19 08:18:14'),
(48, 55, '54433e5ee9142497d11e8c67a5960e19', '2021-10-19 08:18:14', '2021-10-19 08:18:14'),
(49, 55, 'a1f7d04729eead91e86501cb16428473', '2021-10-19 08:18:14', '2021-10-19 08:18:14'),
(50, 55, 'e7e070e14c8d5f8c7187b29ccd87d46f', '2021-10-19 08:18:14', '2021-10-19 08:18:14'),
(51, 55, 'd1fb0015e2f230d64e63d7b07e6c6d82', '2021-10-19 08:18:14', '2021-10-19 08:18:14'),
(52, 55, 'bbbfb17bb788f6da6ed324b930b18f5e', '2021-10-19 08:18:14', '2021-10-19 08:18:14'),
(53, 55, '2588fc8ea6fab69bb5cc34770ba6207f', '2021-10-19 08:18:14', '2021-10-19 08:18:14'),
(54, 55, '59fc58eb8db3f190fc89a7b6b7b008b7', '2021-10-19 08:18:14', '2021-10-19 08:18:14'),
(55, 55, '542c4057f89ce49d875d367e1646f0e6', '2021-10-19 08:18:14', '2021-10-19 08:18:14'),
(56, 55, '4ecfc2aa0767881c218ebbd8f4295cb5', '2021-10-19 08:18:14', '2021-10-19 08:18:14');

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
(15, '2021_09_24_152543_create_supplier_table', 2),
(16, '2021_10_18_151549_create_image_products_table', 3),
(17, '2021_10_02_061942_create_product_table', 4);

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
  `featuredImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `supplier_id`, `name`, `type`, `qty`, `capital_price`, `sell_price`, `unit`, `description`, `featuredImage`, `created_at`, `updated_at`) VALUES
(1, 33, 7, 'quod', 'et', 8, 98696150, 82122611, 'aliquid', 'Error rerum velit et error quibusdam et a. Tempore autem minima distinctio provident enim animi dolor.', 'Molestias est ea modi nihil explicabo delectus. Neque ut ab voluptatem. Ipsum repudiandae est dolorem pariatur odio. Numquam est ipsa dolorem quia totam consequuntur omnis.', '2021-08-04 14:59:02', NULL),
(2, 34, 25, 'assumenda', 'quia', 0, 62923173, 95232207, 'voluptas', 'Quia est sit temporibus quo. Ipsa et non sunt soluta sapiente. Natus voluptates dolor deleniti voluptatum tempore rerum est voluptates. Velit et officiis sed officiis magni animi et.', 'Est nobis ab tempora non a dolor officiis nihil. In quam cumque incidunt. Autem architecto labore delectus veniam possimus. Ea eveniet labore voluptas voluptates.', '2021-07-31 11:41:05', NULL),
(3, 8, 22, 'eum', 'quod', 7, 8571402, 53047147, 'rerum', 'Neque ut autem est. Asperiores aut animi a et quia. Ut ad vel sunt laboriosam.', 'Consequatur aut eos omnis rerum dignissimos dolorum similique pariatur. Architecto et natus dolorem repellat consequuntur. Ipsam eligendi rerum quae et. Porro sit sunt aut quibusdam fuga beatae.', '2021-09-02 16:56:52', NULL),
(4, 21, 44, 'velit', 'et', 5, 87807905, 44959116, 'et', 'Et aut neque hic quia repellat eos. Facilis culpa dignissimos officiis cum. Amet praesentium rerum ea a quis minima.', 'Eaque est totam recusandae delectus omnis nisi aut voluptatem. In et sed ut tenetur accusantium sint aut. Quidem neque qui et id incidunt ut.', '2021-08-11 02:50:05', NULL),
(5, 34, 4, 'ratione', 'quibusdam', 0, 55931402, 95849754, 'ut', 'Enim eum natus consequatur error. Exercitationem vel ipsum soluta iusto aut. Nihil autem aut ducimus qui quibusdam neque.', 'Natus quia eum et dicta ex suscipit possimus. Modi vel facere voluptas dolore suscipit. Provident officiis quia beatae delectus aut.', '2021-08-13 00:03:52', NULL),
(6, 16, 41, 'laudantium', 'neque', 8, 42865789, 50429841, 'id', 'Laborum dolor est ab iste ea neque. Aut est est consectetur natus voluptatibus ut nostrum qui. Id esse reprehenderit quae nesciunt qui.', 'Aliquid inventore necessitatibus nam qui deserunt quo autem et. Provident fugit rerum eius rem officia. Sint qui sit impedit voluptatibus sint voluptatem.', '2021-09-26 23:38:28', NULL),
(7, 26, 48, 'dicta', 'doloribus', 9, 74517019, 17448035, 'praesentium', 'Sed cupiditate molestiae reprehenderit odit minima. Asperiores est delectus quos optio porro officiis atque. Rem impedit facere facilis aut porro porro. Nesciunt eaque sint saepe sed earum.', 'Natus incidunt repudiandae minus sint. Harum amet voluptatibus illum rerum qui deleniti nobis. Officia amet et est qui et nemo iusto. Placeat dolorem deserunt excepturi aut et.', '2021-08-10 01:12:15', NULL),
(8, 5, 35, 'ut', 'facilis', 0, 45417975, 8729309, 'voluptatibus', 'Rerum quo natus eos numquam incidunt doloribus eveniet. Facere natus est minus atque. Id temporibus culpa sequi rem. Qui reiciendis sint accusamus nihil.', 'Exercitationem tenetur in vitae unde et hic facere. Iure consequatur quibusdam atque ducimus distinctio. Ipsa assumenda beatae magni ducimus ratione ut.', '2021-08-17 21:16:47', NULL),
(9, 15, 26, 'et', 'voluptatum', 7, 5980844, 59092565, 'nisi', 'Eius rerum eum distinctio ea dicta facilis nisi sapiente. Nesciunt velit et et exercitationem modi amet harum. Est provident eum et. Repudiandae iusto architecto sunt libero qui minus qui.', 'Quia sunt quia nostrum facilis. Quibusdam quis sint rerum quaerat assumenda atque. Asperiores tempore id magni iure dignissimos quos dolor.', '2021-09-02 19:07:24', NULL),
(10, 7, 4, 'blanditiis', 'quia', 8, 56457438, 66945333, 'animi', 'Qui earum tempore iure laboriosam architecto rerum. Deleniti occaecati eos ut odit. Non ut deleniti eum.', 'Occaecati ratione eos iure architecto. Odio id dolorem nostrum aut molestias debitis. Id qui consequuntur reiciendis iusto doloribus sit ex.', '2021-09-18 09:41:51', NULL),
(11, 27, 36, 'exercitationem', 'est', 7, 37490983, 28704829, 'possimus', 'Nihil quaerat id quis esse. Est atque at in qui ea officia rerum. Placeat quidem rerum beatae consequatur qui dolorem odit.', 'Id nihil aliquam neque eos ipsum aut maxime. Nulla et sit non. Ut sit beatae minima totam natus reprehenderit occaecati nisi. Sint odio voluptate consequatur est aut.', '2021-08-16 16:57:42', NULL),
(12, 28, 35, 'ipsa', 'omnis', 3, 50209813, 3229002, 'laudantium', 'Quaerat reiciendis deserunt illum illum. Id quidem magni hic optio. Eligendi velit voluptatem delectus sit corrupti dolores. Et et voluptatum sunt accusantium quibusdam soluta.', 'Excepturi iste saepe minima odit omnis. Sit reiciendis architecto aliquam quo ducimus nihil.', '2021-08-17 20:19:23', NULL),
(13, 41, 2, 'totam', 'eveniet', 1, 38053088, 90908326, 'aliquid', 'Est necessitatibus voluptas corrupti sit vel. Qui impedit accusamus dolores eos non. Tenetur deserunt eaque doloribus necessitatibus corrupti.', 'Optio autem eius modi harum sit sunt. Quidem et saepe velit soluta velit dolorum saepe. At asperiores illum pariatur voluptatem officia quos alias libero.', '2021-08-11 01:22:12', NULL),
(14, 44, 45, 'est', 'corporis', 6, 40260758, 868436, 'rerum', 'Quis et expedita dolorem reprehenderit. Iste rerum doloribus molestiae. Voluptatem nesciunt unde inventore sit modi et. Quis commodi ut qui.', 'Non iste magni et laborum quidem. Maiores omnis ut facilis et. Minima sed minus reprehenderit quas. Et hic quam occaecati eius qui voluptatum error tenetur.', '2021-08-15 22:38:44', NULL),
(15, 11, 50, 'nulla', 'quis', 9, 85813691, 74962549, 'autem', 'Vitae explicabo consectetur placeat recusandae. In amet illum tenetur neque. Velit accusamus est eos consectetur ut.', 'Repellat ut non iusto vel inventore porro. Possimus atque odit consectetur ut aut officia. Et asperiores nihil ut labore quo delectus nulla. Qui suscipit aut non minima.', '2021-09-28 19:42:21', NULL),
(16, 49, 40, 'voluptatem', 'aspernatur', 1, 65857116, 81752782, 'voluptatum', 'Odit voluptatem molestiae fugit voluptatem ea consequatur. Qui accusamus rerum illum dignissimos. Nostrum perferendis nihil eaque provident est quia. Ullam et esse unde voluptatibus consequatur modi.', 'Consectetur repellat cumque consequuntur reiciendis magni corporis. Voluptas rerum voluptate nulla odio suscipit et a. Dolorem iusto voluptatem magnam a.', '2021-08-29 21:29:32', NULL),
(17, 43, 28, 'eveniet', 'dolorem', 9, 5849771, 8850638, 'nihil', 'Temporibus laborum laudantium dolores totam itaque eaque cupiditate. Nulla nisi atque ut quibusdam quia sed. Voluptatem sequi et maxime cumque. Ea quia aut est rerum tempora veritatis et.', 'Doloribus necessitatibus nisi deserunt vel. Est et magnam aliquid veniam non libero. Qui quia dolores et qui. Nemo cupiditate hic facere qui.', '2021-08-13 13:27:16', NULL),
(18, 29, 13, 'est', 'illo', 4, 42556739, 84423535, 'quisquam', 'Enim dolorem praesentium cupiditate quibusdam quia ipsa et. Qui modi sunt sapiente autem. Qui laborum earum nam et corporis impedit molestias.', 'Inventore qui est dolores neque quaerat voluptatibus non sapiente. Nemo dignissimos asperiores possimus odio. Et modi qui culpa fugiat. Tempora et quidem aut sed quae sit est.', '2021-09-30 14:18:03', NULL),
(19, 38, 32, 'tenetur', 'est', 2, 81140016, 51097204, 'adipisci', 'Eos in doloribus omnis dolorem repudiandae. Repellendus qui accusantium vel. Ut nesciunt voluptatem doloremque accusantium sed veritatis. Voluptatem omnis suscipit unde sit numquam et.', 'Nihil sed quos quae aliquam inventore. Et libero eos molestiae architecto culpa aliquid quis. Nihil et est distinctio deserunt reprehenderit qui. Nemo praesentium dolores eum amet nam non.', '2021-09-27 16:48:54', NULL),
(20, 1, 43, 'maiores', 'qui', 4, 75885158, 93329628, 'nobis', 'Quae repellendus quia numquam eum tempora dolores molestiae possimus. Veniam qui minus rerum fuga vero.', 'Sapiente error est dignissimos nostrum consectetur repudiandae. Autem nihil molestias ut. Sequi ut eum cupiditate id quod. Fugit debitis non quisquam tempore.', '2021-09-21 08:15:32', NULL),
(21, 31, 41, 'optio', 'quia', 2, 58265297, 66610067, 'illum', 'Ut modi possimus non. Laudantium aperiam illo voluptatem totam. Incidunt aliquam quo natus.', 'Reiciendis sit quaerat recusandae. Occaecati cum esse nihil dolor eos. Deserunt qui dolores architecto dolores hic natus quo.', '2021-09-11 03:50:31', NULL),
(22, 32, 5, 'et', 'ducimus', 6, 22729009, 64206431, 'repudiandae', 'Inventore qui nihil et magni ratione velit ipsa id. In aut odio reprehenderit qui. Delectus repudiandae dolores vero fugiat deserunt. Eveniet quasi sit doloremque quibusdam occaecati.', 'Qui dolorem id asperiores minima cum harum. In odio velit excepturi dicta perspiciatis et inventore accusamus.', '2021-08-01 18:04:44', NULL),
(23, 38, 12, 'cumque', 'ullam', 6, 965393, 90486161, 'nostrum', 'Accusamus nobis quidem quia incidunt voluptas placeat. Quam voluptate error doloremque earum dignissimos. Consequatur earum nostrum inventore sequi enim quis.', 'Qui vitae voluptatem libero aut odio assumenda. Ut in eum fuga fuga odit. Dolorem quis tenetur ullam dolor. Nihil ipsam officiis exercitationem et laudantium cupiditate accusantium.', '2021-08-02 13:32:48', NULL),
(24, 20, 1, 'sunt', 'quia', 0, 56620261, 71478013, 'voluptates', 'Voluptas qui rerum repellendus commodi perferendis accusamus. Dolorum at qui dolores omnis sunt corrupti neque eos. Minus et et illum aperiam eveniet odio amet.', 'Corrupti deleniti est quod sed. Error nam dolor expedita et esse quibusdam. Cum libero et facere adipisci est debitis nobis.', '2021-09-14 12:25:31', NULL),
(25, 3, 31, 'magnam', 'esse', 0, 15331555, 53046113, 'eligendi', 'Soluta voluptas quia at repudiandae ut voluptatem. Provident mollitia unde maxime illo. Et voluptatibus dolore assumenda culpa alias est vel. Mollitia rerum rerum laudantium ullam qui.', 'Aut facilis voluptatibus quia ut. Facere labore quisquam in ut maxime quis.', '2021-08-29 00:40:17', NULL),
(26, 46, 24, 'rerum', 'id', 7, 41027002, 33850147, 'sit', 'Amet cum tempore ut consequatur omnis optio. Sint voluptas dignissimos distinctio. Velit ad culpa quia iure. Sapiente velit enim doloribus sint perferendis fugit.', 'Reiciendis nostrum eaque eos quo culpa. Eum sapiente maxime nobis nihil voluptate ut voluptatem ut. Ratione sunt est ipsam nulla aut mollitia consequuntur. Assumenda recusandae qui debitis.', '2021-08-23 14:01:30', NULL),
(27, 24, 20, 'cum', 'voluptates', 9, 39589582, 12676922, 'atque', 'Animi aut qui consequatur sunt possimus. Quisquam ea rerum at sit in ut et.', 'Fugit autem voluptas molestiae error optio. Molestias aut molestiae et nihil sed assumenda laborum. Perspiciatis blanditiis id cupiditate accusamus eos amet.', '2021-08-22 08:53:21', NULL),
(28, 38, 34, 'ducimus', 'voluptate', 3, 54931708, 49017003, 'et', 'Enim sit quis molestiae ipsam enim. Veniam molestiae assumenda sunt est. Doloremque enim facilis natus consectetur est similique et ut.', 'Vero vitae ratione modi in. Id autem sit et. Praesentium corrupti fugiat nostrum perferendis soluta. Voluptatem consectetur ea quaerat itaque praesentium praesentium nulla.', '2021-09-14 09:47:38', NULL),
(29, 18, 38, 'et', 'in', 6, 23728558, 50758970, 'voluptatibus', 'Eum laboriosam hic corrupti rem aspernatur velit dolor. Numquam quas ea earum numquam. Eius velit odio perspiciatis voluptatum assumenda.', 'Quia nobis aut perferendis et porro dolores ut provident. Quidem sint necessitatibus deleniti. Dignissimos voluptate ut quisquam est ducimus nihil neque.', '2021-08-28 22:42:05', NULL),
(30, 35, 36, 'doloremque', 'sint', 2, 1399653, 87387568, 'vel', 'Eum iste dolore officiis minus ducimus illo consequatur. Et rerum voluptatum enim ea. Non sunt sed consequuntur eum.', 'Cum perferendis voluptatem quis sit sapiente. Culpa sint omnis voluptas perferendis ab ad. Aliquid modi velit in quidem. Velit corrupti quam numquam corrupti.', '2021-09-10 23:01:32', NULL),
(31, 20, 23, 'similique', 'vel', 1, 42017542, 73730136, 'modi', 'Nihil distinctio repellat nisi sint in. Quod sit ipsam ad totam in in corporis. Molestiae fugit asperiores ducimus sint nihil est id. Quo minima esse soluta qui non consequatur.', 'Earum et sed autem vel. Dolorem non alias esse. Laborum temporibus nulla voluptas fuga consequatur in sunt.', '2021-08-18 04:34:36', NULL),
(32, 8, 23, 'ipsam', 'hic', 7, 11584789, 94093347, 'sed', 'Id quis voluptatem cupiditate porro corrupti qui. Officia quod exercitationem consequatur non possimus. Aut dolorem ut aliquam ut perspiciatis.', 'Placeat et vero nam sunt. Est ab sequi assumenda cum soluta rerum occaecati. Sit quis aut quas ut nulla a sed. Consequuntur necessitatibus rerum ducimus quae impedit autem distinctio.', '2021-09-24 03:20:50', NULL),
(33, 47, 23, 'est', 'nesciunt', 1, 60355583, 43047163, 'ipsa', 'Sed asperiores atque blanditiis labore. Id delectus aspernatur quae voluptatibus sit reprehenderit. Et est omnis enim quaerat fuga debitis sed.', 'Magnam autem voluptatem perspiciatis architecto incidunt. Aliquid quia quo hic. Aut ab non eveniet asperiores vel quis distinctio est. Sunt repellendus dolor non aperiam qui.', '2021-08-19 08:36:57', NULL),
(34, 11, 14, 'odit', 'qui', 9, 65241556, 8372156, 'totam', 'Neque voluptates molestiae dolorem. Ad dolore rerum quam exercitationem. Sed ut atque qui non fugit.', 'Neque officia sunt natus ducimus ad. Ut dolor labore qui velit.', '2021-09-12 17:13:53', NULL),
(35, 2, 13, 'sit', 'aut', 0, 55370854, 49621207, 'adipisci', 'Nihil provident quia debitis quos. Odit nemo officiis esse aspernatur consequatur aut. Et aut officiis tenetur assumenda aut.', 'Id qui optio numquam repellat. Dolorem qui qui iste cum. Odio ab quia amet et. Impedit sint incidunt accusamus in ex. Accusamus sed iure nisi inventore nisi.', '2021-08-01 15:35:51', NULL),
(36, 18, 4, 'explicabo', 'fugit', 8, 85407214, 4854575, 'iste', 'Quia tempora nostrum quam autem veritatis nihil. Sunt pariatur hic officia ea enim sint. Facere sed reiciendis pariatur id dolore recusandae. Iste eos nostrum et.', 'Deleniti voluptas blanditiis tempore voluptate voluptatem iure. Iusto error eaque nulla repellendus quibusdam reprehenderit. Rerum iure et consequatur exercitationem.', '2021-09-30 07:38:54', NULL),
(37, 47, 46, 'mollitia', 'aliquid', 0, 69729876, 60195633, 'architecto', 'Enim accusantium et eum. Ut earum omnis repudiandae molestias voluptas. Aliquam sed et incidunt voluptatum. Quaerat iure enim inventore aut cum.', 'Nesciunt praesentium dolore repellat omnis consequatur. Omnis quam aut autem est non quasi dolores eveniet. Maxime quo enim error consequatur aut similique.', '2021-08-17 14:47:38', NULL),
(38, 14, 7, 'aut', 'non', 1, 54845455, 75281481, 'ipsam', 'Qui est soluta et eos earum maiores. Similique ipsum nostrum voluptatem. Dignissimos nam omnis ut voluptatem molestiae nemo.', 'Enim sit error esse ut rem cupiditate dolorem. Sint nesciunt sit natus ipsum aut. Qui eligendi eaque enim natus quia.', '2021-09-30 00:43:34', NULL),
(39, 20, 48, 'eos', 'quidem', 6, 50997062, 76326981, 'aut', 'Magni rerum voluptatibus reprehenderit molestias laboriosam natus ipsam mollitia. Repudiandae neque est aliquid quia dolorum quo magni. Temporibus necessitatibus fuga sint id sunt omnis.', 'Eum blanditiis quod fugiat quia recusandae eveniet. Repellendus et ab rem provident ullam sint fuga. Qui magnam exercitationem quia quia officia ipsum. Enim adipisci eligendi voluptatem laborum unde.', '2021-09-26 13:30:31', NULL),
(40, 8, 6, 'voluptates', 'rerum', 4, 10764232, 52953349, 'esse', 'Quo delectus dolor praesentium accusamus omnis commodi. Nobis autem blanditiis non cupiditate culpa consequuntur qui. Est est in itaque molestiae eos consequatur quod.', 'Sunt tempora provident quas aut esse enim cupiditate. Quo harum fugit explicabo porro. Dolor odio odio et repellendus ut sapiente et.', '2021-09-04 00:26:04', NULL),
(41, 42, 50, 'reprehenderit', 'corporis', 2, 91806709, 70766408, 'voluptate', 'Ut distinctio et ad recusandae fuga. Rerum explicabo aut mollitia. Quis porro iste nulla delectus rerum natus.', 'Iusto ut est quidem iusto odio voluptatem est. Asperiores et qui et unde hic. Minus ipsam id consequuntur. In qui rem est tenetur modi. Nihil accusantium velit accusantium voluptatem assumenda.', '2021-09-15 15:51:34', NULL),
(42, 15, 17, 'porro', 'dolor', 6, 54768186, 29000876, 'est', 'Magnam qui natus voluptas impedit consequuntur ea id. Ut qui ullam ullam nisi rem explicabo velit. Ad quis necessitatibus fugit earum numquam.', 'Quod a quod aperiam placeat. Sit quis deserunt fuga et explicabo. Sunt veniam voluptatem ut non earum.', '2021-09-12 15:15:39', NULL),
(43, 40, 50, 'quas', 'reiciendis', 1, 92260755, 35569005, 'aut', 'Sapiente minus molestiae qui incidunt quis minus. Est delectus eveniet id necessitatibus sunt sequi.', 'Doloribus est quam excepturi facilis debitis. Saepe iusto illo quia molestiae possimus maxime. Accusamus pariatur nam omnis tempora. Est nihil saepe dolor voluptatibus nesciunt maxime.', '2021-09-14 06:08:29', NULL),
(44, 32, 30, 'dolorem', 'a', 9, 21144331, 1378627, 'consectetur', 'Id quam perspiciatis qui impedit id autem est. Ducimus ut officiis deleniti perferendis. Doloremque atque amet voluptatem inventore sapiente laborum voluptates.', 'Alias ipsam cupiditate commodi ut qui deserunt. Et doloribus fugiat saepe mollitia delectus sit incidunt. Facere vero repellat suscipit est.', '2021-09-14 20:52:14', NULL),
(45, 45, 33, 'ut', 'tempora', 2, 8278875, 75544840, 'eos', 'Vel ea reiciendis quae quaerat possimus. Voluptatem et ipsa alias expedita atque vitae ut laborum. Placeat dolorum ea laborum id. Necessitatibus deserunt adipisci consequatur libero.', 'Qui quia alias laborum sint itaque et. Velit commodi pariatur quisquam libero. Ab aperiam id inventore est.', '2021-08-16 10:29:06', NULL),
(46, 44, 15, 'aliquid', 'nulla', 9, 56344837, 54254233, 'dolorem', 'Beatae cum minima et quia. Et magnam similique voluptas ipsa similique voluptas dolor. In velit nulla fugiat perspiciatis nisi dolore voluptatibus doloribus.', 'Et nesciunt cumque et voluptas cum. Ea optio totam eaque corrupti atque ut.', '2021-09-01 04:01:18', NULL),
(47, 33, 31, 'aut', 'quis', 1, 36794969, 51653269, 'harum', 'Sed nobis sequi ducimus molestiae. Tempore repellendus est sequi nisi ut odit. Esse libero quidem dolores nam ut asperiores voluptate. Occaecati quia ipsum delectus facilis qui rerum ut.', 'Iusto iste aperiam accusamus officiis recusandae esse. Mollitia qui et et aut rem error. Fugiat in atque quo inventore impedit.', '2021-08-21 21:37:28', NULL),
(48, 43, 20, 'at', 'sit', 5, 26536150, 46574592, 'voluptatum', 'Harum et ullam voluptatem rerum quis saepe ut. Autem aut quis aliquid doloribus voluptatum. Non sequi ea maiores dolores.', 'Ea molestiae repudiandae ea placeat ex eum. Deserunt eum vel sit illo in. Sit est voluptatem optio sed non ducimus.', '2021-09-05 03:00:20', NULL),
(49, 20, 47, 'doloremque', 'et', 8, 75816481, 39225306, 'deserunt', 'Dolor assumenda incidunt sunt fugiat quidem. Sint quibusdam reprehenderit est aspernatur amet ut. Cum nihil consequatur numquam totam ut repellendus facilis.', 'Distinctio reiciendis quia sed quo. Tenetur mollitia ad non debitis. Sapiente in dolor dolorem consequatur facere et pariatur.', '2021-08-18 01:55:26', NULL),
(50, 2, 37, 'ea', 'error', 6, 90368336, 29792559, 'libero', 'Sint ab qui quis a. Quasi aut aperiam voluptatum blanditiis quis vitae esse. Impedit quibusdam dolores perferendis nesciunt iusto.', 'Ab harum corrupti illum. Saepe id eum aut. Fugiat enim optio consequatur aliquid rerum. Maiores asperiores omnis consequatur sunt nihil et.', '2021-08-05 21:47:33', NULL),
(51, 20, 21, 'aaa', 'aaa', 99, 756879, 6576878, 'pcs', 'aaa', '270e2b297a18ba24f4ea04c7d0eb5679', '2021-10-19 03:33:19', '2021-10-19 03:33:19'),
(52, 13, 4, 'lala lili', 'lala lili', 1111, 88888, 99999, 'kg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '3da3db1bf5baf88220e96d146a8ed551', '2021-10-19 04:28:56', '2021-10-19 08:17:12'),
(53, 13, 48, 'papa', 'papa', 20, 190000, 250000, 'pcs', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '17a33b9f0c662a7457c60ff61f8be512', '2021-10-19 05:36:14', '2021-10-19 05:36:14'),
(54, 32, 2, 'zaza', 'zaza', 23, 900000, 950000, 'pcs', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'b5208a5776c2f18faeca891180767207', '2021-10-19 06:32:14', '2021-10-19 06:32:14'),
(55, 51, 50, 'Kaka Ayu tinggi', 'kaka ayu tinggi', 222222222, 888888888, 888888888, 'kaka ayu tinggi', 'kaka ayu tinggi', '16e8ca92287d7d1501d85d4876bc0658', '2021-10-19 06:51:20', '2021-10-19 08:18:14');

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
(1, 'CV Nasyiah Usada Tbk', 'Paramita Kusmawati', 'Pramusaji', 'Ds. Karel S. Tubun No. 30, Tual 84566, Sumsel', 'Sorong', 'Kepulauan Riau', 'Taiwan', '91412', '(+62) 239 0172 300', '520742033385', 'CV Safitri Habibi (Persero) Tbk', 'Rem nihil doloribus delectus porro. Atque nisi repudiandae ipsam ad debitis accusamus. Ipsum sit cupiditate sint dignissimos.', NULL, NULL),
(2, 'PD Lailasari Astuti (Persero) Tbk', 'Faizah Nurdiyanti', 'Guru', 'Gg. Basudewo No. 634, Dumai 43596, Malut', 'Pasuruan', 'Nusa Tenggara Barat', 'Burundi', '59370', '(+62) 28 3024 109', '08744027930', 'UD Agustina', 'Vel nulla quod minima. Et quas dolore dignissimos voluptatem necessitatibus numquam. Perferendis vero ut voluptatem sed.', NULL, NULL),
(3, 'UD Riyanti', 'Victoria Pia Rahimah S.I.Kom', 'Dosen', 'Ds. Gatot Subroto No. 948, Prabumulih 15226, DIY', 'Madiun', 'Sulawesi Selatan', 'Kepulauan Turks dan Caicos', '92945', '(+62) 828 5842 929', '59989201', 'PD Najmudin Yuniar (Persero) Tbk', 'Quia cumque quia velit voluptas ad. Pariatur et neque quasi quod sit provident. A vel ut est eum.', NULL, NULL),
(4, 'UD Mayasari (Persero) Tbk', 'Lalita Rahayu', 'Karyawan Honorer', 'Dk. Baabur Royan No. 305, Tebing Tinggi 92115, Jatim', 'Tidore Kepulauan', 'Kepulauan Bangka Belitung', 'Eritrea', '94025', '(+62) 946 5598 144', '92934074', 'PD Nasyiah (Persero) Tbk', 'Quibusdam enim quia officia qui est. Et quibusdam tempore recusandae fugit odio. Non et eius molestiae a aspernatur voluptatibus rem. Fugiat quis quaerat autem voluptas explicabo voluptatem.', NULL, NULL),
(5, 'PD Wahyudin Yulianti', 'Septi Padmi Halimah M.TI.', 'Buruh Harian Lepas', 'Ki. Sadang Serang No. 469, Mojokerto 52232, NTT', 'Bau-Bau', 'Jambi', 'Cina', '40690', '(+62) 429 9188 000', '0956141203035714', 'UD Riyanti Tbk', 'Voluptatem qui minus voluptatem autem. Aut quis debitis et autem. Minima esse id cumque. Iusto necessitatibus voluptatem eaque iste nemo laudantium nemo id.', NULL, NULL),
(6, 'PD Pradipta Wulandari (Persero) Tbk', 'Digdaya Sitompul', 'Industri', 'Ds. Baiduri No. 780, Lubuklinggau 89594, DIY', 'Gunungsitoli', 'Nusa Tenggara Timur', 'Guyana Prancis', '64676', '(+62) 541 4833 6650', '8286866762', 'CV Mardhiyah Haryanti (Persero) Tbk', 'Velit aperiam fugit eaque eum sequi inventore inventore. Iste sapiente aliquid dolores ducimus veritatis error quo. Doloribus dolores cum iure. Eius consequuntur velit sint.', NULL, NULL),
(7, 'UD Wacana Padmasari', 'Panji Hairyanto Prasetyo', 'Peneliti', 'Kpg. Bakaru No. 379, Padangpanjang 45286, DIY', 'Pontianak', 'Maluku', 'Prancis', '10206', '(+62) 679 8626 7011', '613741336', 'UD Suwarno', 'Perferendis quae non nemo soluta laudantium iste. Tempora dolorem iure quia aliquam est eius. Ab voluptatem et sed in magni. Doloremque laborum voluptates distinctio et.', NULL, NULL),
(8, 'Perum Kusumo Widiastuti (Persero) Tbk', 'Garang Marbun', 'Penata Busana', 'Kpg. Ikan No. 624, Dumai 98359, Sumut', 'Batam', 'Lampung', 'Kepulauan Faroe', '95670', '0597 5117 5801', '48198213396', 'PD Wulandari Sihombing (Persero) Tbk', 'Ea rerum quia voluptates consequatur provident. Placeat consequatur quis rerum earum placeat. Eos ut eum nam facere. In suscipit tempore suscipit itaque veniam et.', NULL, NULL),
(9, 'PT Mahendra Puspasari (Persero) Tbk', 'Sadina Yuliarti', 'Buruh Nelayan / Perikanan', 'Ki. Bambon No. 597, Sukabumi 47815, Sumsel', 'Parepare', 'Sulawesi Selatan', 'Namibia', '98235', '0855 716 273', '17121226052', 'CV Lailasari Purnawati', 'Nihil quaerat aut illo voluptas et. Rerum quasi doloribus accusantium error et.', NULL, NULL),
(10, 'PT Siregar Mansur', 'Tiara Nabila Widiastuti', 'Tabib', 'Ds. Padang No. 538, Sabang 71438, DIY', 'Tidore Kepulauan', 'Papua', 'Timor-Leste', '64441', '0578 9936 286', '7938667017', 'CV Usamah', 'Autem nobis quia et eius. Est aliquid ea ipsum sit repudiandae provident ducimus. Laboriosam sed laudantium voluptatem maxime est blanditiis voluptate sunt.', NULL, NULL),
(11, 'Perum Nashiruddin (Persero) Tbk', 'Gambira Adriansyah M.Pd', 'Buruh Harian Lepas', 'Kpg. Gremet No. 460, Palembang 70962, Kaltara', 'Salatiga', 'Sulawesi Utara', 'Portugal', '51849', '(+62) 911 2632 659', '122495177123', 'PD Habibi Yolanda (Persero) Tbk', 'Ut necessitatibus atque rem sed eum neque. Ullam omnis voluptatibus et laudantium non itaque sunt.', NULL, NULL),
(12, 'CV Wahyudin', 'Paris Pertiwi', 'Pendeta', 'Ki. Yap Tjwan Bing No. 651, Tanjung Pinang 85783, Kaltara', 'Kendari', 'Sumatera Selatan', 'Tanjung Verde', '55859', '(+62) 454 0665 7931', '75669782174', 'Perum Prasetyo', 'Quas ut voluptatem distinctio et. Eligendi corporis dicta cum eligendi corrupti vel impedit reprehenderit.', NULL, NULL),
(13, 'PD Dabukke', 'Jaiman Haryanto', 'Penyiar Radio', 'Gg. Thamrin No. 325, Tegal 41574, Gorontalo', 'Cirebon', 'Kepulauan Bangka Belitung', 'Selandia baru', '80898', '0722 1406 176', '734316308328446', 'Perum Waluyo Laksita (Persero) Tbk', 'Maxime commodi est molestiae amet magni rerum ad. Modi recusandae unde explicabo. Repellat aut laboriosam consequatur deserunt natus et. Quia illo quo nam aut sed.', NULL, NULL),
(14, 'PD Handayani (Persero) Tbk', 'Lili Nasyiah', 'Konsultan', 'Jln. Jamika No. 707, Banjar 20289, Lampung', 'Bogor', 'Sulawesi Utara', 'Singapura', '50047', '024 6815 962', '84371996426', 'Perum Lestari Habibi', 'Recusandae sed accusantium rerum. Qui ut nemo consequuntur id et et fugit. Omnis vel harum quae. Quae ea eum molestiae error enim sit suscipit mollitia.', NULL, NULL),
(15, 'PT Farida Astuti', 'Daliman Oskar Winarno', 'Penerjemah', 'Gg. Cikapayang No. 6, Jambi 92451, Jambi', 'Palopo', 'Riau', 'Luxembourg', '56965', '0355 0485 155', '978299338661939', 'PD Winarsih Farida (Persero) Tbk', 'Enim officia atque in voluptas aut quis. Culpa asperiores vel quia. Omnis et natus optio tempora sit. Totam modi vero excepturi ex.', NULL, NULL),
(16, 'PD Purwanti', 'Ganep Gatot Waluyo M.Pd', 'Imam Masjid', 'Gg. Diponegoro No. 65, Administrasi Jakarta Selatan 57631, Sulut', 'Metro', 'Sulawesi Tenggara', 'Guinea Ekuatorial', '21717', '(+62) 934 0742 3695', '92216585987', 'Perum Padmasari (Persero) Tbk', 'Tenetur iure perspiciatis totam voluptatem. Voluptatum omnis quia aut est fugiat temporibus dolore. Dolorem sit sit unde molestias aut. Neque rerum aperiam aspernatur omnis alias enim beatae.', NULL, NULL),
(17, 'UD Pertiwi Hastuti', 'Bakijan Winarno', 'Penata Busana', 'Gg. Suniaraja No. 257, Tarakan 52095, Sultra', 'Palembang', 'Nusa Tenggara Barat', 'Meksiko', '14240', '0843 655 417', '0055698096159', 'UD Waluyo', 'Illum sint harum minus quisquam. Quaerat pariatur velit sunt amet accusantium dolores in. At aliquam totam commodi placeat. Totam deleniti et molestiae consequuntur.', NULL, NULL),
(18, 'PD Farida Widodo', 'Cemeti Galar Simbolon', 'Tukang Jahit', 'Jln. Bakit  No. 657, Prabumulih 95315, Sultra', 'Dumai', 'Jawa Tengah', 'Federasi Rusia', '10834', '(+62) 565 1793 2690', '62048959', 'PT Halimah Usada (Persero) Tbk', 'Laudantium suscipit amet excepturi et ut nesciunt. Est rerum possimus nobis. Nostrum rerum magnam ea ullam. Ad ut adipisci dolore quas dicta veritatis dolorum.', NULL, NULL),
(19, 'Perum Hartati', 'Zelaya Rahmawati', 'Dokter', 'Jr. Jend. A. Yani No. 861, Administrasi Jakarta Utara 19594, Bengkulu', 'Tual', 'Bali', 'Kepulauan Terluar Kecil Amerika Serikat', '19373', '0533 8027 7056', '60677635962974', 'PD Nasyidah Firgantoro (Persero) Tbk', 'In molestiae corporis ad neque exercitationem maxime nam. Dolore quis eligendi recusandae rem. Animi et quas placeat consequatur culpa.', NULL, NULL),
(20, 'CV Firgantoro Sinaga (Persero) Tbk', 'Ivan Waluyo S.E.I', 'Kepala Desa', 'Jln. Dipatiukur No. 939, Pagar Alam 66439, Kaltara', 'Samarinda', 'Sumatera Selatan', 'Tajikistan', '47022', '0323 9324 0214', '216883196627', 'CV Saptono Namaga', 'Aut optio sunt omnis sed. Totam molestiae vero nisi dicta. Et qui inventore voluptas qui.', NULL, NULL),
(21, 'PT Yolanda Aryani Tbk', 'Bakiono Luluh Sihombing', 'Pramugari', 'Jr. Barasak No. 475, Salatiga 12934, Maluku', 'Madiun', 'Bali', 'Nepal', '13799', '0658 9331 8506', '871902087513', 'Perum Hardiansyah Tbk', 'Expedita non consequatur est magnam nobis voluptatem ut. Suscipit deserunt nam aut odio non in et. Temporibus architecto est ea rerum et aut.', NULL, NULL),
(22, 'UD Haryanto (Persero) Tbk', 'Siska Ida Nasyiah', 'Industri', 'Gg. Baing No. 351, Pekanbaru 89619, NTB', 'Bukittinggi', 'Gorontalo', 'Armenia', '45996', '(+62) 279 1822 5522', '759219578', 'PT Pangestu Lestari', 'Placeat magnam exercitationem qui vel hic. Enim ratione voluptates ipsam labore explicabo. Assumenda autem non corporis cupiditate qui est.', NULL, NULL),
(23, 'Perum Wacana', 'Hesti Rahmawati', 'Psikiater / Psikolog', 'Jr. Banceng Pondok No. 435, Kendari 67078, Banten', 'Pangkal Pinang', 'Bengkulu', 'Pulau Natal', '75517', '0355 9494 615', '7450189997618', 'UD Nugroho Zulaika', 'Est consectetur vel eos aperiam asperiores accusamus unde. Animi reprehenderit similique voluptas et eius ut ratione.', NULL, NULL),
(24, 'PD Pangestu Mayasari Tbk', 'Cemplunk Nugroho', 'Guru', 'Gg. Hasanuddin No. 617, Padangsidempuan 39147, Sumbar', 'Cimahi', 'Nusa Tenggara Timur', 'Austria', '69768', '0812 366 438', '04017396956514', 'Perum Kuswandari', 'Porro et optio veritatis maiores consequuntur corporis ducimus ratione. Quia maxime sit enim facilis ipsum sunt et. Autem voluptas deserunt veniam architecto. Sint dolor totam odit quo.', NULL, NULL),
(25, 'CV Ardianto Gunarto (Persero) Tbk', 'Prabowo Wibisono', 'Pendeta', 'Jr. Samanhudi No. 908, Sawahlunto 40207, Sulsel', 'Metro', 'Sulawesi Utara', 'Republik Chad', '11431', '(+62) 554 8732 0316', '1895623086744', 'PT Suryatmi Tbk', 'Dicta dolores temporibus aut ab. Incidunt doloremque harum harum voluptas perspiciatis. Quo eligendi est inventore est quo est aut.', NULL, NULL),
(26, 'Perum Safitri', 'Keisha Paramita Safitri', 'Tukang Gigi', 'Jln. Gajah Mada No. 491, Tasikmalaya 91440, Sulteng', 'Sawahlunto', 'Nusa Tenggara Barat', 'Polandia', '11933', '0419 8877 6381', '6878928807', 'UD Laksmiwati Hidayanto Tbk', 'Deleniti perferendis ut accusamus occaecati ut eius. At excepturi eveniet at adipisci.', NULL, NULL),
(27, 'UD Pertiwi (Persero) Tbk', 'Kani Puput Purnawati M.Pd', 'Desainer', 'Jr. Wahidin No. 404, Pekanbaru 17302, Sulbar', 'Jambi', 'Sulawesi Barat', 'Antartika', '31780', '(+62) 464 9029 503', '48068646056894', 'CV Yulianti Kuswoyo Tbk', 'Id qui veniam ipsam voluptate delectus. Minima corporis sunt laudantium ullam. Inventore voluptas nihil facilis sint impedit excepturi. Vel aut aliquid qui laboriosam laborum minus.', NULL, NULL),
(28, 'CV Prastuti', 'Ivan Omar Hidayanto', 'Pembantu Rumah Tangga', 'Gg. Pasir Koja No. 712, Tidore Kepulauan 49423, Sumsel', 'Langsa', 'Kalimantan Barat', 'Pantai Gading', '71313', '(+62) 701 6892 839', '337205853855', 'Perum Wibisono Oktaviani', 'Rerum sunt beatae consectetur. Neque voluptatem sint dicta minus dolore. Doloribus sunt dolor blanditiis aspernatur exercitationem qui et excepturi.', NULL, NULL),
(29, 'UD Uwais (Persero) Tbk', 'Argono Tirta Prasetya M.Pd', 'Wiraswasta', 'Jln. Ki Hajar Dewantara No. 584, Yogyakarta 20683, Sulteng', 'Pasuruan', 'Gorontalo', 'Wilayah Samudra Hindia Britania', '75182', '0919 5272 7641', '393659151834559', 'Perum Iswahyudi Sinaga', 'Esse in ut dolore velit et. Molestias velit asperiores assumenda laboriosam. Perferendis neque et asperiores qui odit illum. Voluptas sit aut vel odio.', NULL, NULL),
(30, 'Perum Laksmiwati Irawan Tbk', 'Emas Zulkarnain', 'Kondektur', 'Ki. Suryo No. 876, Bekasi 78454, Jatim', 'Mojokerto', 'Jawa Tengah', 'Mauritius', '16925', '0403 2436 2600', '71978853150', 'Perum Suryatmi Habibi Tbk', 'Ab modi rerum dignissimos velit maxime non. Fuga sed consequuntur laboriosam omnis. Pariatur voluptatibus quia asperiores ea. Veniam maxime ipsam cupiditate rerum.', NULL, NULL),
(31, 'UD Januar Laksmiwati', 'Simon Januar M.Ak', 'Ustaz / Mubaligh', 'Ki. Lumban Tobing No. 377, Manado 64460, Gorontalo', 'Manado', 'Jambi', 'Italia', '79714', '(+62) 25 7973 0236', '9264923125', 'Perum Pudjiastuti', 'Porro molestias doloremque totam soluta et quisquam dignissimos. Facilis ut quos ea sed nam. Nobis ducimus sunt sunt nihil fugiat id. Sit et sit quae quod rem.', NULL, NULL),
(32, 'Perum Hidayat (Persero) Tbk', 'Adikara Himawan Sihombing', 'Nahkoda', 'Gg. Baung No. 393, Makassar 36681, Sumsel', 'Batu', 'Sumatera Selatan', 'Georgia Selatan dan Kepulauan Sandwich Selatan', '38113', '0737 3194 212', '14516641577999447', 'UD Suryatmi Hakim (Persero) Tbk', 'Quod nihil sed eos nobis. Laboriosam ut voluptatum animi ipsa. Et expedita voluptatem est ut exercitationem voluptatum.', NULL, NULL),
(33, 'PT Suryono Novitasari', 'Sari Suryatmi', 'Industri', 'Ki. Sudirman No. 690, Kotamobagu 58558, Jatim', 'Tanjung Pinang', 'Kepulauan Riau', 'Kiribati', '39386', '(+62) 312 6261 043', '7691782', 'UD Ardianto (Persero) Tbk', 'Non repudiandae eius et omnis. Ea dolorem ut culpa. Sit sit iste sunt consequatur ut excepturi quos.', NULL, NULL),
(34, 'UD Mustofa (Persero) Tbk', 'Edison Hutasoit', 'Konstruksi', 'Ki. Baung No. 594, Bogor 15348, Sulteng', 'Samarinda', 'Nusa Tenggara Timur', 'Chili', '96183', '0774 7035 688', '2304321096613', 'UD Zulkarnain', 'Placeat voluptas odio sequi suscipit. Vel voluptatem quia quisquam. Eius perferendis est qui et porro. Sit necessitatibus iure est soluta.', NULL, NULL),
(35, 'PD Pratama Hastuti', 'Puput Wulan Rahmawati S.Sos', 'Perangkat Desa', 'Kpg. Gardujati No. 132, Samarinda 69143, Sumsel', 'Pematangsiantar', 'Nusa Tenggara Timur', 'Ghana', '74070', '(+62) 569 9064 4607', '5551123523', 'PT Saefullah Hidayanto (Persero) Tbk', 'Aut dolor in voluptatem nesciunt quam qui et sint. Quia similique ex rem eos et numquam. Tempore harum corporis ut natus occaecati qui. Earum soluta fugiat minus architecto et qui.', NULL, NULL),
(36, 'PD Palastri Hartati (Persero) Tbk', 'Titin Umi Sudiati', 'Pedagang', 'Ki. Fajar No. 413, Gorontalo 90651, NTT', 'Yogyakarta', 'Sumatera Utara', 'Greenland', '80958', '(+62) 601 6766 380', '3231610875', 'UD Purnawati Kusmawati', 'Accusamus ratione tempora vel fuga. Qui dignissimos consequuntur amet. Id ut accusamus earum est dolor doloremque iusto illo.', NULL, NULL),
(37, 'UD Nuraini Puspasari Tbk', 'Yuliana Padmasari', 'Pedagang', 'Ki. Kyai Mojo No. 425, Batu 12704, Sumbar', 'Mojokerto', 'Papua', 'Kepulauan Faroe', '25184', '021 3854 934', '699489926', 'UD Riyanti Kusumo Tbk', 'Est beatae voluptates ex vel quis voluptatem earum. Vel natus magni dolore in omnis reiciendis. Harum accusantium nostrum ea et non dolorum.', NULL, NULL),
(38, 'PT Nasyidah Novitasari', 'Setya Dabukke', 'Pembantu Rumah Tangga', 'Jln. Imam Bonjol No. 225, Pekalongan 24536, Jambi', 'Bogor', 'Maluku Utara', 'Madagaskar', '26672', '0536 2487 9829', '4359482603631', 'CV Winarsih Halimah Tbk', 'Consequatur neque modi repudiandae dolore. Modi rerum ipsa voluptatem voluptatem odio quos earum. Omnis modi rerum fuga magni deserunt est.', NULL, NULL),
(39, 'UD Iswahyudi', 'Agnes Kuswandari', 'Paraji', 'Kpg. Rajiman No. 943, Pangkal Pinang 18670, Papua', 'Sorong', 'Maluku', 'Finlandia', '16900', '0609 8289 317', '03518740351', 'PT Halimah', 'Aperiam quasi quibusdam fugit hic. Explicabo omnis rerum esse omnis. Eos sed et ut illo reiciendis. Repellendus asperiores maxime libero at dolorum culpa odio.', NULL, NULL),
(40, 'CV Fujiati Tbk', 'Emin Lukita Sitompul', 'Tukang Cukur', 'Jr. Adisumarmo No. 613, Lhokseumawe 82631, DKI', 'Tanjungbalai', 'Kalimantan Selatan', 'Gambia', '13431', '0332 1558 286', '88571692', 'CV Sitorus (Persero) Tbk', 'Adipisci saepe rerum a illum dolorem. Inventore pariatur omnis adipisci sunt quae non. Voluptas reiciendis enim eum molestias et.', NULL, NULL),
(41, 'PD Haryanto Rajasa', 'Darmanto Setiawan S.Psi', 'Sopir', 'Psr. S. Parman No. 662, Banjarmasin 16780, Bengkulu', 'Lubuklinggau', 'Aceh', 'Kepulauan Cayman', '28758', '(+62) 377 1671 8311', '25653021324', 'UD Widiastuti Rajata', 'Voluptatum placeat veniam et harum fugiat. Libero ipsum minima est molestiae. Est et aut odio soluta.', NULL, NULL),
(42, 'UD Pangestu', 'Muni Pangeran Firgantoro S.H.', 'Perancang Busana', 'Ds. Bank Dagang Negara No. 77, Banda Aceh 54772, Sulsel', 'Administrasi Jakarta Selatan', 'Bali', 'Aruba', '52214', '0834 184 014', '7818632926238', 'UD Hastuti', 'Omnis amet ea aut adipisci et in voluptatem mollitia. Ut tenetur nulla dolor impedit. Enim iste eum laudantium eos ut harum.', NULL, NULL),
(43, 'Perum Aryani Tbk', 'Unjani Hasanah', 'Penyelam', 'Ds. Basoka Raya No. 837, Depok 72372, Maluku', 'Yogyakarta', 'Sulawesi Barat', 'Hongaria', '83309', '0813 9127 2935', '0126425290', 'PT Latupono Tbk', 'Magnam soluta nihil voluptatem consectetur nihil et quod. Similique sequi illo qui quod et molestias. Libero eveniet nostrum qui odit illo.', NULL, NULL),
(44, 'Perum Wahyudin Marpaung', 'Raisa Farah Agustina S.Farm', 'Buruh Peternakan', 'Gg. Lumban Tobing No. 187, Bukittinggi 96289, Kaltim', 'Pekalongan', 'Jawa Tengah', 'Mongolia', '52081', '(+62) 514 6141 928', '6177238381', 'CV Najmudin', 'Ipsa odit asperiores dolorem qui aut. Quod consequatur ut eos dolorum error amet fuga. Sed aperiam animi voluptatem ad et. Blanditiis vel cumque soluta neque id rerum.', NULL, NULL),
(45, 'CV Utama Nasyiah (Persero) Tbk', 'Purwanto Prakasa', 'Mengurus Rumah Tangga', 'Dk. Kusmanto No. 343, Pekalongan 14580, Sulut', 'Palangka Raya', 'Maluku', 'Afganistan', '72848', '0993 2442 6092', '646797732', 'PT Ardianto Halimah (Persero) Tbk', 'Quos magnam voluptatem eveniet non dolorem iusto ea. Reiciendis qui vel perspiciatis dolorum. Minus ea officia temporibus ab reiciendis perspiciatis ipsa. Alias qui ea et perspiciatis excepturi.', NULL, NULL),
(46, 'Perum Suryatmi Tbk', 'Rafid Budiyanto', 'Penyiar Radio', 'Gg. Siliwangi No. 524, Batu 73483, Kaltim', 'Denpasar', 'Kalimantan Timur', 'Kongo', '34400', '(+62) 824 7460 9999', '444322110168', 'CV Prastuti', 'Ut in nulla dolore. Omnis autem qui quis ut qui molestias qui. Enim assumenda corrupti quaerat culpa.', NULL, NULL),
(47, 'PT Oktaviani Tbk', 'Prasetyo Ramadan', 'Pastor', 'Jln. Madrasah No. 869, Bima 27922, Maluku', 'Sorong', 'DI Yogyakarta', 'Taiwan', '76414', '0213 1218 7941', '1505418611527', 'PT Halimah Kuswoyo', 'Reprehenderit rem et velit deserunt. Consequuntur aut sit quae sit in et. Quod repudiandae illum ut accusantium tempora consectetur veniam.', NULL, NULL),
(48, 'CV Hutagalung (Persero) Tbk', 'Tasnim Harsanto Saragih S.Farm', 'Nelayan / Perikanan', 'Ki. Cemara No. 465, Balikpapan 40994, Pabar', 'Tanjungbalai', 'Bali', 'Republik Afrika Tengah', '22317', '(+62) 440 6375 839', '977117375778', 'CV Hassanah', 'Esse facere atque accusantium. Ullam rerum ut harum hic et sint dicta. Nobis ducimus consequatur et.', NULL, NULL),
(49, 'CV Susanti (Persero) Tbk', 'Galuh Tampubolon', 'Konsultan', 'Psr. Antapani Lama No. 86, Kediri 44873, Sumut', 'Jambi', 'Sulawesi Selatan', 'Jordan', '14936', '0845 916 675', '4737272617519', 'UD Mahendra Haryanto', 'Ut sit mollitia exercitationem mollitia fugit alias voluptatem. Veritatis numquam quam et cum. Et voluptates consectetur qui nemo. Et alias rem dolore vel quos quia.', NULL, NULL),
(50, 'PD Mulyani Tbk', 'Sarah Fujiati', 'Karyawan Swasta', 'Ki. Madrasah No. 342, Tarakan 49722, Sulut', 'Probolinggo', 'Jawa Tengah', 'Aruba', '57532', '(+62) 861 4727 791', '1405177159', 'PT Uyainah Kusumo (Persero) Tbk', 'Doloribus cum incidunt odio minus. Sed ea a hic doloremque atque. Autem quas et sit odit et et aspernatur. Nemo assumenda dolores esse ipsum ullam.', NULL, NULL);

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
-- Indexes for table `image_product`
--
ALTER TABLE `image_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_detail_gambar` (`product_id`);

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image_product`
--
ALTER TABLE `image_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `image_product`
--
ALTER TABLE `image_product`
  ADD CONSTRAINT `fk_product_detail_gambar` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
