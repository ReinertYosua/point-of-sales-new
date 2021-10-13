-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2021 at 11:32 AM
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
(50, 'molestiae', 'Voluptatum commodi dolorem dolorum a animi suscipit corrupti alias. Et aut repellendus excepturi repellendus. Molestias sint delectus dolore et. Velit molestias alias quia.', NULL, NULL);

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
(1, 10, 31, 'fugiat', 'in', 1, 96098300, 84000433, 'libero', 'Alias aliquam sit ut aut. Deleniti est nostrum et hic ut maiores adipisci. Eum quos dolorem numquam sed nobis impedit ut molestias. Magni repellat est ratione consectetur aut perspiciatis nulla nisi.', '2021-08-05 11:27:58', NULL),
(2, 4, 27, 'quos', 'et', 3, 50961510, 53662044, 'autem', 'Quaerat iste animi molestiae qui. Quo dolores eum in iure non. Sunt ad quam odio quidem dignissimos. Blanditiis alias qui magnam accusamus.', '2021-08-14 04:21:27', NULL),
(3, 2, 1, 'labore', 'id', 1, 99603737, 24578229, 'occaecati', 'Ab dolores laudantium vel officiis totam. Expedita maiores recusandae optio dolorum enim facere odio. Repellendus soluta sint qui est rerum.', '2021-09-25 23:47:25', NULL),
(4, 45, 24, 'et', 'quia', 3, 75927133, 73278790, 'sunt', 'Molestiae nostrum minima perspiciatis sunt ex eaque itaque. Aut fugiat pariatur repudiandae delectus quas. Nihil reiciendis esse sunt autem voluptates ea.', '2021-09-02 03:11:25', NULL),
(5, 24, 32, 'ex', 'maiores', 5, 35498525, 5398601, 'repellat', 'Exercitationem ipsa et sunt nulla enim veniam est consequatur. Tenetur numquam incidunt totam cupiditate dolores. Inventore omnis rerum qui similique magni quo.', '2021-08-19 18:30:11', NULL),
(6, 6, 33, 'totam', 'distinctio', 3, 5865731, 33705550, 'qui', 'Et vitae ut ullam similique. Nemo aut odit alias et et omnis sapiente. Dolorem autem exercitationem dolorem necessitatibus velit.', '2021-09-08 12:27:08', NULL),
(7, 33, 45, 'nihil', 'eos', 8, 95257023, 44512564, 'quae', 'Et minima aliquam nihil voluptatem. Blanditiis provident qui et. Sit nemo est quaerat dolore qui aperiam modi.', '2021-09-01 21:43:55', NULL),
(8, 35, 38, 'perferendis', 'dolorum', 1, 96162356, 68944265, 'maxime', 'Tempore eum exercitationem laudantium aut et repellat. Dolores aliquam maxime qui sequi ducimus voluptatibus incidunt. Enim non non facere voluptates deleniti id.', '2021-09-03 18:49:07', NULL),
(9, 36, 35, 'sed', 'doloribus', 5, 46611515, 5166807, 'eveniet', 'Voluptas eveniet eveniet corrupti repudiandae sed. Sed omnis occaecati non doloribus. Nulla facilis harum non voluptatum aut debitis alias.', '2021-09-07 13:44:09', NULL),
(10, 49, 36, 'repellat', 'quia', 9, 49298648, 57831944, 'inventore', 'Quaerat suscipit qui soluta est fuga aperiam. Quo architecto vitae odio sed. Ut enim reprehenderit impedit rerum recusandae at.', '2021-09-06 12:29:02', NULL),
(11, 34, 42, 'distinctio', 'dolor', 7, 40613026, 60147522, 'recusandae', 'Impedit quis reprehenderit et. Voluptatem fugiat est qui at est dolorem voluptas mollitia. Nostrum omnis beatae est aperiam earum magnam. Accusamus ut voluptates enim corporis ad magnam provident.', '2021-08-20 05:39:40', NULL),
(12, 48, 42, 'temporibus', 'assumenda', 2, 6749932, 81221684, 'ab', 'Cum dolores qui alias voluptas ab. Qui reprehenderit vel reiciendis fuga aspernatur suscipit et. Adipisci quo enim eligendi et.', '2021-09-05 12:06:23', NULL),
(13, 27, 39, 'qui', 'laboriosam', 5, 60469569, 93082710, 'aliquam', 'Molestiae suscipit iste alias autem deserunt ut. Odio accusantium quia omnis quo quia sint. In qui sit officia. Rerum voluptate nulla omnis porro et et.', '2021-09-04 14:06:47', NULL),
(14, 41, 6, 'quis', 'dolorem', 5, 52586673, 27950548, 'sapiente', 'Rerum beatae molestias tenetur natus dolorum repellat. Et fuga magni praesentium aspernatur dolore. Quisquam mollitia adipisci repellat fugit harum quibusdam porro.', '2021-09-05 08:21:10', NULL),
(15, 16, 15, 'blanditiis', 'ut', 4, 26479545, 54514220, 'quasi', 'Consequuntur est modi quis vero tempora laboriosam nihil. Quas minima qui voluptatem iste tempore expedita. Qui magnam alias voluptas et et tempore aperiam tempore.', '2021-08-23 06:34:52', NULL),
(16, 21, 6, 'voluptatem', 'ut', 9, 2015711, 67947967, 'tempora', 'Provident quia consequuntur magni velit qui ducimus commodi. Sed necessitatibus accusantium harum minima distinctio. Non quisquam alias numquam est.', '2021-09-02 18:10:35', NULL),
(17, 46, 19, 'quas', 'necessitatibus', 1, 12747448, 27973969, 'perferendis', 'Et vero in error itaque illo temporibus. Alias repellat rerum soluta aut fugit voluptatem mollitia. Aliquid qui voluptatem quo sint. Occaecati molestiae esse pariatur sit exercitationem.', '2021-09-11 04:55:30', NULL),
(18, 47, 19, 'optio', 'qui', 6, 53735025, 41307012, 'et', 'Tenetur doloribus id mollitia fugiat eius. Nostrum necessitatibus eos maxime consequatur sunt esse aperiam. Ut officia earum odit a doloremque omnis unde. Vel quibusdam totam sequi sit et.', '2021-09-21 02:05:17', NULL),
(19, 34, 43, 'in', 'repellat', 4, 41175063, 3685061, 'doloribus', 'Enim vel est reiciendis nostrum sunt vel. Enim pariatur laborum atque ipsam vel aut.', '2021-08-30 18:26:01', NULL),
(20, 45, 24, 'rerum', 'labore', 2, 43651305, 27542664, 'mollitia', 'Dignissimos esse illo magni. Ea alias vero quia sapiente dolorem asperiores molestias. Eaque sapiente molestias nesciunt possimus sapiente. In voluptatem doloribus velit ratione.', '2021-08-16 12:16:22', NULL),
(21, 18, 23, 'cum', 'qui', 1, 56292979, 51796296, 'aperiam', 'Sit nostrum temporibus aliquam ut asperiores. Velit nam magnam nemo doloribus. Soluta eum autem unde. Omnis quia maiores asperiores nostrum et cumque voluptatem voluptatem.', '2021-08-18 11:17:49', NULL),
(22, 19, 2, 'numquam', 'et', 4, 39406679, 27667402, 'ad', 'Eius eum quis voluptas libero hic dolorum doloremque. Adipisci et enim impedit voluptas deleniti. Iste est quod exercitationem quibusdam molestias voluptas alias.', '2021-09-24 08:56:04', NULL),
(23, 2, 42, 'tempore', 'vero', 4, 73281335, 71847547, 'quo', 'Iusto saepe repudiandae vel. Ut dolor voluptatem magni laboriosam et repellat. Sit repellat laborum libero qui excepturi assumenda.', '2021-09-08 07:12:38', NULL),
(24, 28, 20, 'veniam', 'et', 0, 95068262, 77611703, 'est', 'Doloribus ut natus suscipit sed est. Ut quidem est et ex ipsum. Modi illo corrupti itaque soluta libero rem.', '2021-08-21 02:29:55', NULL),
(25, 32, 26, 'rerum', 'consequatur', 6, 85180220, 65640386, 'qui', 'Beatae qui laboriosam reiciendis aliquid facilis deserunt rerum. Voluptatem ut consequuntur sunt dolores sunt et omnis. Maxime vel sit iusto hic et reiciendis.', '2021-08-22 09:51:07', NULL),
(26, 48, 35, 'provident', 'temporibus', 6, 66895027, 41145384, 'ut', 'Id et rem natus pariatur. Aut nesciunt voluptatibus et aut. Culpa pariatur repellat alias ipsum velit.', '2021-08-04 01:43:41', NULL),
(27, 11, 16, 'similique', 'aut', 2, 65568067, 57006243, 'ducimus', 'A magnam soluta velit et non. Eligendi veritatis aspernatur consequatur omnis et rerum magnam. Iure voluptatum libero quae. Et explicabo hic exercitationem pariatur eum et.', '2021-08-07 03:30:24', NULL),
(28, 9, 9, 'rerum', 'vel', 3, 78773296, 50372208, 'dolor', 'A odio animi modi ea eos. Voluptas accusantium ut excepturi et officia molestiae. Non placeat dolorum alias et. Animi et natus fugit sit deserunt quia totam eveniet.', '2021-08-01 12:32:08', NULL),
(29, 25, 19, 'ut', 'consequatur', 3, 49638501, 14092821, 'omnis', 'Dolore ad quis similique repellendus nemo id. Nisi voluptas omnis aliquam porro tempore. Suscipit et numquam et veniam ad eum ad.', '2021-08-15 22:45:09', NULL),
(30, 24, 36, 'iure', 'voluptatem', 9, 25182371, 61564228, 'culpa', 'Ad rerum rerum animi et. Sit vitae atque qui repellat. Rem vel commodi labore consequatur quidem. Dolore officia aut unde qui possimus. Vero officia recusandae mollitia rerum sed voluptatibus.', '2021-09-07 21:38:11', NULL),
(31, 37, 33, 'sit', 'temporibus', 3, 6399478, 2766910, 'praesentium', 'Est asperiores laboriosam ipsum et eos. Pariatur minus neque ut ratione. Reiciendis earum distinctio ipsam. Et ipsum est voluptatem vel.', '2021-09-11 07:25:32', NULL),
(32, 49, 31, 'expedita', 'voluptates', 0, 52990244, 49320852, 'non', 'Dicta sapiente voluptas ex ad. Ducimus commodi non labore aut quia quia. Earum quae amet deleniti quia praesentium possimus est maiores.', '2021-09-30 12:48:16', NULL),
(33, 8, 46, 'ut', 'perferendis', 6, 49895437, 27787490, 'tenetur', 'Qui cumque ad sed. Voluptatibus voluptatem non voluptas officiis voluptatem quia quis est. Et sint alias aut quia tempora.', '2021-09-12 15:12:02', NULL),
(34, 42, 6, 'minima', 'quibusdam', 2, 29562970, 62474463, 'voluptates', 'Omnis similique est voluptas nostrum aut natus. Id ea eaque autem quidem nostrum eos magnam. Dicta numquam debitis laborum sapiente.', '2021-08-13 00:09:16', NULL),
(35, 8, 49, 'quis', 'cupiditate', 5, 27978367, 48273754, 'et', 'Pariatur inventore dolor est autem maiores necessitatibus. Eum odio nemo ad. Omnis nulla a a neque unde voluptatem saepe rerum. Dolores corporis rerum neque eum amet est molestias.', '2021-09-22 09:01:52', NULL),
(36, 9, 36, 'sit', 'autem', 5, 67693052, 53780365, 'debitis', 'A est ullam omnis pariatur est nisi. Molestiae ipsum voluptas non. Voluptatibus fugiat eos non reiciendis nobis dolor autem.', '2021-09-04 08:13:15', NULL),
(37, 43, 11, 'aut', 'perspiciatis', 4, 9892986, 94068936, 'molestiae', 'Voluptatem necessitatibus culpa non in autem. Tempore inventore illum corporis debitis molestiae suscipit. Nesciunt facere dolores esse sunt.', '2021-08-10 05:00:10', NULL),
(38, 16, 28, 'ut', 'incidunt', 9, 63996234, 50008277, 'aperiam', 'Ipsam repellat corporis ea eligendi. Amet nobis eligendi quasi odio adipisci. Est nihil est recusandae laborum ut asperiores deleniti. Et voluptas fugiat nostrum repellendus et est error rerum.', '2021-08-19 07:13:17', NULL),
(39, 15, 44, 'recusandae', 'hic', 8, 72145736, 33179748, 'dolore', 'Quibusdam sapiente cumque dolor qui dolores. Natus doloremque possimus sapiente sed tempora totam. Et commodi minus ut saepe. Deleniti laborum nihil rerum quaerat voluptate eos.', '2021-09-05 11:36:53', NULL),
(40, 15, 41, 'ut', 'harum', 8, 500976, 12061113, 'doloribus', 'Dolor id non similique non. Facilis eius alias reiciendis deleniti dolore qui. Mollitia sapiente autem id sit. Ipsa corrupti provident ut est. Ipsam sunt doloremque nihil magnam deleniti.', '2021-08-18 20:55:42', NULL),
(41, 6, 46, 'occaecati', 'tempora', 5, 34183146, 1740420, 'excepturi', 'Eveniet sunt velit ut veniam sunt ducimus. Porro voluptatem molestiae et aut. Et suscipit et quidem eligendi delectus. Aperiam eum voluptate dolores consequatur in qui.', '2021-08-19 00:13:25', NULL),
(42, 26, 2, 'exercitationem', 'vel', 8, 22595361, 92839273, 'non', 'Ipsam explicabo quia fugit veritatis est. Soluta accusamus dolorum itaque consectetur.', '2021-09-16 19:40:18', NULL),
(43, 40, 5, 'unde', 'quas', 4, 91066601, 22359323, 'ut', 'Dolorum dolorum at molestiae neque fuga saepe mollitia. Qui tempora rerum corporis debitis veritatis quis. Ipsa quas et soluta optio.', '2021-09-18 19:38:55', NULL),
(44, 29, 43, 'sunt', 'assumenda', 2, 53440153, 99004445, 'quis', 'Eius illo culpa autem delectus harum in. Veritatis cum eos totam vero suscipit autem. Porro nobis unde occaecati libero ad quo omnis. Qui ut mollitia adipisci cum labore ut quod.', '2021-09-21 03:45:39', NULL),
(45, 34, 24, 'dignissimos', 'sit', 5, 88750771, 72399053, 'consequuntur', 'Et ut explicabo quam labore itaque. Vitae explicabo eos ut ratione est rerum. Ipsam sit consequatur eos et ab.', '2021-09-23 03:57:35', NULL),
(46, 23, 32, 'culpa', 'voluptatem', 8, 205429, 84765355, 'aut', 'Tempora placeat magni dolore. Sequi eum error delectus eius et dolorem. Autem ut qui dolor suscipit alias quos porro. Recusandae voluptate atque error quo sed.', '2021-09-22 04:30:17', NULL),
(47, 19, 24, 'eligendi', 'eaque', 3, 31761200, 14247751, 'architecto', 'Ab dolorum nesciunt quae officia dolor. Inventore nam vitae non earum dicta. Ut consequuntur voluptatibus quia porro.', '2021-09-19 09:11:33', NULL),
(48, 32, 36, 'nihil', 'repudiandae', 8, 43983477, 30884584, 'dolor', 'Blanditiis facilis ut voluptate alias. Enim est dolore tempora ut necessitatibus officia.', '2021-09-07 18:13:01', NULL),
(49, 15, 22, 'debitis', 'laborum', 2, 63431046, 86691252, 'exercitationem', 'Voluptas in ullam non et nulla animi. Qui ratione est omnis quasi. Nemo suscipit numquam rerum dignissimos corrupti vero. Placeat minima pariatur ut alias ut eligendi et.', '2021-08-24 23:18:49', NULL),
(50, 18, 23, 'corrupti', 'beatae', 6, 90718051, 8911136, 'a', 'Vel blanditiis rerum exercitationem ratione tempora. Dolorem est eos aut beatae quaerat quis. Magnam ipsum tempora exercitationem.', '2021-08-31 02:49:03', NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_supplier_category` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
