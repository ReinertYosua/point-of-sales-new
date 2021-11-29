-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2021 at 07:41 AM
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
(51, 'Test', 'Test1', '2021-10-13 21:13:24', '2021-10-13 21:13:24'),
(53, 'Lala', 'lala\n', '2021-10-25 21:53:18', '2021-10-25 21:53:18');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `first_name`, `last_name`, `address`, `city`, `province`, `country`, `phone1`, `phone2`, `postal_code`, `account_number`, `bank_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Fitria', 'Setiawan', 'Gg. Batako No. 295, Bima 67095, Banten', 'Banda Aceh', 'Maluku', 'Denmark', '(+62) 772 1478 8377', '0458 0996 7674', '12204', '7595674527', 'Perum Laksita', 'Sapiente facilis vitae quidem molestias vero ducimus qui. Eum provident doloribus rerum odit quos officia. Ullam dolorum et id exercitationem dolorem voluptates.', NULL, NULL),
(2, 'Dian', 'Wahyuni', 'Ki. Bagas Pati No. 296, Pekalongan 17244, Lampung', 'Lubuklinggau', 'Maluku Utara', 'Pulau Bouvet', '(+62) 626 1314 622', '0254 9712 000', '18894', '94057425', 'CV Hariyah Pudjiastuti Tbk', 'Repellendus qui porro in pariatur consequatur. Commodi commodi cumque accusamus quam recusandae. Molestiae quam deserunt modi aut voluptas libero reprehenderit.', NULL, NULL),
(3, 'Suci', 'Rahimah', 'Jln. Banal No. 898, Tasikmalaya 82992, Papua', 'Makassar', 'Riau', 'Vatikan', '(+62) 718 3221 2775', '0312 9108 566', '70653', '143640881453', 'PT Hakim (Persero) Tbk', 'Suscipit repudiandae sit voluptatem alias minima. Rerum officiis voluptatum ducimus dolor. Totam quo illum aperiam nihil laborum velit optio non. Vel eos quis quam.', NULL, NULL),
(4, 'Sarah', 'Purnawati', 'Kpg. Dipatiukur No. 860, Administrasi Jakarta Barat 31942, Kalteng', 'Bima', 'Sulawesi Tenggara', 'Fiji', '0791 0935 155', '(+62) 495 9727 0821', '28643', '989248381', 'CV Hutapea (Persero) Tbk', 'Ut et perferendis minima voluptatem. Omnis nostrum non optio maiores. Maiores eos sapiente ullam voluptatem. Minus consequatur maiores esse officiis architecto ut.', NULL, NULL),
(5, 'Dono', 'Sihombing', 'Jln. Ketandan No. 724, Kediri 62420, Papua', 'Pekanbaru', 'Sulawesi Tenggara', 'Namibia', '0241 5249 7730', '0278 5217 692', '67431', '783479579405', 'PT Waskita', 'Optio quos accusantium ratione. Aliquid omnis est aut minima recusandae sit ea. Eum aut sit qui.', NULL, NULL),
(6, 'Hasna', 'Oktaviani', 'Jr. BKR No. 514, Tegal 56379, Jateng', 'Tasikmalaya', 'DKI Jakarta', 'Bahrain', '0897 808 715', '0979 5425 948', '72882', '09187205535', 'CV Maryadi (Persero) Tbk', 'Ea esse aspernatur et voluptas. Aut voluptate beatae cupiditate quis aliquam et totam tempora. Aut quasi reprehenderit et recusandae commodi. Iure laudantium autem et repudiandae dolore.', NULL, NULL),
(7, 'Bakiadi', 'Mulyani', 'Dk. Tambak No. 583, Tual 25008, Kalbar', 'Madiun', 'Maluku', 'Kongo', '(+62) 950 8130 994', '028 5037 3943', '79117', '34373099', 'PD Kuswoyo Tbk', 'Doloribus rerum error autem tempora. Omnis animi molestias laborum ut eveniet non. Officia quisquam voluptatem voluptas. Possimus dolor aut ut et non deserunt esse.', NULL, NULL),
(8, 'Yuni', 'Wastuti', 'Dk. Gremet No. 664, Tangerang 35463, Malut', 'Depok', 'Bali', 'Maroko', '0763 7836 946', '0636 9922 1536', '66532', '2595736137', 'PT Winarno', 'Eos placeat non accusamus. Exercitationem sapiente aliquam aut dicta dicta. Enim et iusto dolorum et consectetur numquam.', NULL, NULL),
(9, 'Puji', 'Napitupulu', 'Kpg. Bak Air No. 937, Bukittinggi 98135, Kaltara', 'Bitung', 'Riau', 'Meksiko', '(+62) 988 1383 123', '0679 0464 264', '20643', '47879391755', 'CV Kuswandari Maulana Tbk', 'Tempore deserunt consequuntur repellat ad. Consequatur dolorem distinctio reprehenderit voluptas sapiente. Non aut autem autem aut et. Unde aut delectus possimus ea.', NULL, NULL),
(10, 'Cici', 'Laksmiwati', 'Ds. S. Parman No. 126, Jayapura 34573, Maluku', 'Cimahi', 'Jawa Tengah', 'Nauru', '(+62) 871 764 305', '(+62) 514 2088 689', '94730', '62409737498', 'PT Wibowo Damanik', 'Non at expedita beatae. Pariatur ipsam ipsam debitis magni quia et eos impedit. Eum cum alias consequatur at cum distinctio error repudiandae.', NULL, NULL),
(11, 'Respati', 'Kurniawan', 'Ds. Badak No. 37, Padangsidempuan 13181, Babel', 'Administrasi Jakarta Selatan', 'Sulawesi Selatan', 'Brasil', '0825 8337 9099', '(+62) 23 1871 7704', '96181', '14713428041', 'CV Hasanah Permadi (Persero) Tbk', 'Rem alias quia id voluptate eos qui ullam. Iusto distinctio reiciendis et blanditiis. Quis est in veniam occaecati cumque distinctio.', NULL, NULL),
(12, 'Yuliana', 'Rahimah', 'Psr. Raya Ujungberung No. 194, Bandung 48859, DKI', 'Serang', 'Bali', 'Bahama', '(+62) 20 9306 370', '(+62) 879 9263 040', '46190', '361657270', 'PD Sitorus Puspasari Tbk', 'Et nostrum ipsam consequatur suscipit. Nostrum eum est repellendus quidem est. Eligendi temporibus enim dolorem eaque.', NULL, NULL),
(13, 'Kasusra', 'Hardiansyah', 'Psr. Achmad No. 956, Gorontalo 26369, Riau', 'Banjarbaru', 'Sulawesi Tenggara', 'Uzbekistan', '0971 2516 543', '0922 8000 812', '58756', '115163744176', 'CV Pangestu Pudjiastuti Tbk', 'Quae voluptatem delectus nesciunt tempora mollitia. Sunt et pariatur nobis at illum officia asperiores. Fugiat quisquam non maiores quidem sit est.', NULL, NULL),
(14, 'Galuh', 'Tarihoran', 'Ds. Pasir Koja No. 856, Surabaya 51884, DIY', 'Cimahi', 'Kalimantan Timur', 'Finlandia', '(+62) 907 3909 9738', '(+62) 534 3725 0164', '10608', '06210731046165', 'Perum Budiyanto', 'Est dolores vitae sunt et minus. Dolorem vitae temporibus repudiandae non id amet aut enim. Ad illum eos molestias temporibus. Quasi minus reiciendis quia.', NULL, NULL),
(15, 'Daryani', 'Maulana', 'Dk. Sutarto No. 534, Pontianak 95510, Lampung', 'Administrasi Jakarta Barat', 'Sulawesi Utara', 'Yunani', '0445 3408 0963', '(+62) 276 4154 973', '92860', '5559394318', 'PT Nababan Sihombing', 'Vel non dolorum tenetur. Quia repellat et quidem placeat expedita quam qui. Beatae expedita soluta cum. Quia ratione natus quas autem temporibus.', NULL, NULL),
(16, 'Prima', 'Widodo', 'Ds. Kiaracondong No. 265, Banjar 50740, Kalsel', 'Parepare', 'Nusa Tenggara Timur', 'Pulau Norfolk', '(+62) 332 0743 589', '(+62) 616 4547 1666', '11913', '94385929892', 'Perum Wahyudin', 'Cupiditate sed sunt eum perferendis quas voluptatem quod accusamus. Porro deserunt ut consectetur quasi explicabo. Delectus repudiandae non sed. Nisi sed non voluptas et.', NULL, NULL),
(17, 'Ganep', 'Januar', 'Ds. Flora No. 621, Sukabumi 21788, Kalsel', 'Batam', 'Nusa Tenggara Barat', 'Kolombia', '0806 307 463', '(+62) 359 5052 7958', '27050', '2455387489835', 'Perum Pudjiastuti Tbk', 'Dignissimos vitae voluptatem omnis quo sit. Itaque inventore est et autem hic. Sunt officiis rerum eius eum repellat.', NULL, NULL),
(18, 'Shania', 'Puspasari', 'Dk. Sukajadi No. 279, Gorontalo 79825, Kaltim', 'Banda Aceh', 'Kepulauan Bangka Belitung', 'Senegal', '026 9198 3277', '(+62) 789 8430 3803', '61922', '17482540921', 'PD Kuswandari', 'Mollitia quo assumenda facere magnam recusandae eius fuga labore. Blanditiis accusantium nam sit maxime distinctio velit nulla ut. Laborum minus aut et. Dolor ipsam sit quam.', NULL, NULL),
(19, 'Ani', 'Rahimah', 'Ki. Bagis Utama No. 783, Bontang 61130, Sulteng', 'Yogyakarta', 'Kalimantan Utara', 'Jersey', '0801 2547 4014', '0840 8008 758', '26807', '538118404', 'Perum Winarno Halimah', 'Quis qui impedit sit. Hic ducimus maxime voluptatum cum ea et. Adipisci qui dignissimos illo quae ratione est.', NULL, NULL),
(20, 'Mursita', 'Manullang', 'Kpg. Hang No. 957, Lubuklinggau 17851, Aceh', 'Blitar', 'Maluku', 'Senegal', '(+62) 528 8690 2801', '0531 7822 051', '28017', '8375017', 'PD Uyainah Simanjuntak Tbk', 'Natus ipsam et fuga quasi ut. Magnam quasi deleniti aut aut optio quia. Praesentium et facere neque quia labore fugit incidunt aut.', NULL, NULL),
(21, 'Pardi', 'Zulaika', 'Kpg. Raya Setiabudhi No. 99, Palopo 27420, Lampung', 'Tasikmalaya', 'Kalimantan Selatan', 'Antigua dan Barbuda', '(+62) 230 9200 136', '(+62) 447 7138 4734', '71319', '0750640973721133', 'CV Kuswandari (Persero) Tbk', 'Nobis nulla ad amet. Dolor id dolorem reiciendis autem eum quia sunt. Quaerat quia at quae beatae quos.', NULL, NULL),
(22, 'Zaenab', 'Palastri', 'Psr. Hang No. 744, Sorong 89858, Sumut', 'Banjar', 'Kepulauan Bangka Belitung', 'Tuvalu', '(+62) 976 9297 587', '0847 439 935', '55393', '2340558679', 'CV Usamah (Persero) Tbk', 'Itaque in culpa praesentium vel autem architecto voluptatum et. Eum est laborum distinctio tenetur quidem labore excepturi. Recusandae in consectetur eos.', NULL, NULL),
(23, 'Asmadi', 'Yulianti', 'Kpg. Ikan No. 803, Solok 95988, Lampung', 'Palembang', 'Lampung', 'Guadeloupe', '(+62) 629 1210 7609', '0670 1127 1696', '19565', '0311109065960', 'PD Habibi Zulkarnain', 'Est iusto labore harum. Veritatis vitae ad facere ea consequatur. Velit odio accusantium doloribus quia rerum sed voluptate nostrum.', NULL, NULL),
(24, 'Nasim', 'Permata', 'Gg. Jend. Sudirman No. 729, Gorontalo 33870, NTT', 'Bima', 'Bali', 'Australia', '0828 9705 6317', '(+62) 712 6240 313', '60385', '809677', 'CV Saragih Budiyanto (Persero) Tbk', 'Quo pariatur earum magni ullam. Et distinctio exercitationem hic dicta. In totam asperiores nemo fugiat quaerat omnis aperiam.', NULL, NULL),
(25, 'Farhunnisa', 'Fujiati', 'Ds. Bayam No. 668, Probolinggo 93572, Sulsel', 'Bekasi', 'Kepulauan Riau', 'Maladewa', '(+62) 603 2827 3206', '(+62) 409 8267 508', '46039', '75905391463910023', 'UD Zulkarnain Hassanah Tbk', 'Rerum quas dolor sint laudantium consequatur. Commodi eaque quibusdam ut dolorem soluta omnis harum. Praesentium est tempora at. Dolor accusamus nesciunt neque et. Nesciunt dicta rem qui sapiente.', NULL, NULL),
(26, 'Hesti', 'Mulyani', 'Gg. Babakan No. 368, Cilegon 90769, Jatim', 'Samarinda', 'Banten', 'Namibia', '0213 1328 375', '(+62) 983 2083 3329', '93815', '540972006548', 'CV Pradana (Persero) Tbk', 'Dolores nisi sapiente possimus explicabo aperiam. Laborum dolorum est adipisci necessitatibus similique in. Aut et placeat natus et a enim vel.', NULL, NULL),
(27, 'Anita', 'Maryati', 'Dk. Tubagus Ismail No. 771, Tebing Tinggi 99498, Sulsel', 'Kotamobagu', 'Sumatera Utara', 'Tuvalu', '(+62) 887 590 202', '(+62) 874 190 785', '95504', '6197655829290', 'UD Wijayanti (Persero) Tbk', 'Enim libero et repellendus quasi ut. Et doloremque dolor atque. Pariatur dolores quas alias quia. Excepturi harum sunt qui laudantium.', NULL, NULL),
(28, 'Vera', 'Puspita', 'Jr. Gambang No. 451, Bontang 76173, Babel', 'Batam', 'Sulawesi Tengah', 'Panama', '0398 7828 9033', '0617 7047 217', '24897', '00529209917507', 'Perum Suartini', 'Adipisci rerum delectus libero fuga facilis inventore ex. Sit consequatur natus distinctio. Dolor ea quia sint omnis. Non aut similique aliquam illum.', NULL, NULL),
(29, 'Kusuma', 'Hutapea', 'Jr. Bambu No. 663, Cilegon 14719, Gorontalo', 'Semarang', 'Kalimantan Utara', 'Gabon', '0511 4894 7795', '0564 8563 080', '15191', '11123093684', 'UD Lazuardi (Persero) Tbk', 'Quaerat a et ea animi. Et voluptas non ratione magnam et repellendus. Eligendi labore quae quia dignissimos. Id mollitia praesentium nobis quia in.', NULL, NULL),
(30, 'Ella', 'Nuraini', 'Psr. Ciwastra No. 406, Administrasi Jakarta Timur 74958, Sultra', 'Bontang', 'DI Yogyakarta', 'Federasi Rusia', '(+62) 472 1383 666', '025 6581 010', '37045', '961558918', 'PD Namaga Mardhiyah', 'Eum nostrum rem sed voluptatem. In possimus repellendus id quo debitis neque. Eum voluptates qui possimus ipsam est itaque ut.', NULL, NULL),
(31, 'Cahyo', 'Puspita', 'Dk. Villa No. 210, Lubuklinggau 69437, Jatim', 'Administrasi Jakarta Utara', 'Sulawesi Selatan', 'Albania', '(+62) 907 2320 5209', '0302 7785 8694', '42636', '152279730', 'UD Yuliarti', 'Tempora aut totam harum. Repellat aut qui voluptatem consequatur eum eum dolorem. Odit aspernatur aut est qui accusamus.', NULL, NULL),
(32, 'Dwi', 'Farida', 'Dk. Cikutra Timur No. 202, Malang 82465, Lampung', 'Parepare', 'Sumatera Utara', 'Kepulauan Turks dan Caicos', '0851 9680 716', '(+62) 27 8259 890', '58635', '81931776669', 'CV Megantara', 'Earum hic tenetur possimus vitae impedit quod. Officia in voluptatibus ex et dolore laboriosam. Sed placeat dolorem laboriosam quo asperiores.', NULL, NULL),
(33, 'Keisha', 'Sinaga', 'Kpg. Tubagus Ismail No. 572, Makassar 48549, Bengkulu', 'Makassar', 'Kalimantan Selatan', 'Korea', '0202 3263 499', '(+62) 22 2314 475', '99071', '0081079824', 'UD Latupono', 'Corrupti animi et sit aliquam quos eum accusamus. Error nemo qui nobis eligendi. Suscipit architecto similique quos labore.', NULL, NULL),
(34, 'Ayu', 'Siregar', 'Dk. Arifin No. 240, Kendari 15673, Malut', 'Cimahi', 'Nusa Tenggara Timur', 'Ghana', '0216 4900 791', '0409 8264 9328', '89531', '35658303', 'CV Nasyiah Rahimah (Persero) Tbk', 'Omnis laboriosam illo et alias atque voluptas. Dolorem accusamus voluptatem qui ut molestias aliquam voluptas corporis. Error itaque asperiores voluptas cumque laudantium et non.', NULL, NULL),
(35, 'Azalea', 'Natsir', 'Ds. Lada No. 202, Bitung 83216, Babel', 'Prabumulih', 'Sumatera Utara', 'Swedia', '0857 446 787', '0889 9884 640', '53526', '37018027014', 'PT Riyanti Yolanda', 'Hic qui quo reiciendis placeat molestiae. Illo temporibus omnis corporis commodi molestias numquam est. Est perferendis eaque quod fugiat. Adipisci expedita error adipisci eius esse officia.', NULL, NULL),
(36, 'Gina', 'Widodo', 'Kpg. Panjaitan No. 971, Cimahi 15779, Kaltim', 'Gunungsitoli', 'DKI Jakarta', 'Mayotte', '0644 8436 0597', '0648 5420 205', '86722', '70592357', 'PT Handayani (Persero) Tbk', 'Voluptates magnam aut iusto facere quibusdam. Ullam et rerum sit deserunt hic aliquid amet. Dolore maxime ullam aut quod illum voluptatem animi veritatis.', NULL, NULL),
(37, 'Padmi', 'Yulianti', 'Jr. Cut Nyak Dien No. 296, Mataram 99109, Sulut', 'Kediri', 'Aceh', 'Kaledonia baru', '0341 8684 225', '0595 2803 383', '47389', '37169110', 'CV Sinaga Tbk', 'Saepe sequi minima illum sint asperiores ea nihil. Nisi ea officiis illo est ut rerum. Modi tempore labore fuga iste vitae ea. Iure eum sed est necessitatibus non temporibus est.', NULL, NULL),
(38, 'Asirwanda', 'Ardianto', 'Jln. Astana Anyar No. 297, Pekalongan 47321, Sulsel', 'Cilegon', 'Bali', 'Spanyol', '0432 6742 0042', '(+62) 670 7807 757', '30471', '2760977', 'PT Sihombing (Persero) Tbk', 'Quis ut fugit blanditiis placeat sint suscipit. Labore cum voluptatum explicabo nesciunt dolorum. Iste aut eos amet totam commodi vero enim.', NULL, NULL),
(39, 'Lili', 'Wacana', 'Psr. Bahagia  No. 895, Probolinggo 21621, NTB', 'Cimahi', 'Kepulauan Bangka Belitung', 'Kepulauan Virgin Amerika Serikat', '0348 2722 902', '(+62) 219 5641 864', '45678', '95370526266', 'UD Mardhiyah', 'Voluptatibus ea autem facilis atque quas. Autem assumenda ea ut earum quis architecto qui. Ut ut placeat veritatis asperiores rerum totam. Mollitia amet voluptatem illo dolorem qui delectus in.', NULL, NULL),
(40, 'Adika', 'Wacana', 'Dk. Hasanuddin No. 800, Batam 35124, Sultra', 'Cimahi', 'Kepulauan Riau', 'Malta', '(+62) 817 5885 6639', '(+62) 350 5188 584', '79872', '7309004732183', 'Perum Budiman Tbk', 'Voluptas corrupti molestias sequi enim. Ut consectetur deserunt atque exercitationem occaecati sit. Explicabo dolore itaque consequatur dolores cum necessitatibus. Omnis numquam sed ipsam in.', NULL, NULL),
(41, 'Gatra', 'Mulyani', 'Jln. Basmol Raya No. 764, Padangsidempuan 92699, Sulut', 'Sabang', 'Maluku Utara', 'Martinik', '0588 3640 425', '(+62) 474 7052 2860', '79417', '726522164', 'PT Anggraini (Persero) Tbk', 'Nam adipisci eos dolor quas excepturi reiciendis sint. Quos voluptas magni atque voluptatem qui. Doloremque modi ut excepturi ut qui debitis. Voluptas vitae illum omnis aut.', NULL, NULL),
(42, 'Yusuf', 'Sihombing', 'Kpg. Baladewa No. 845, Langsa 46276, Riau', 'Batu', 'Kalimantan Selatan', 'Filipina', '0811 415 073', '0557 8689 197', '69104', '96352032895', 'PT Pudjiastuti Thamrin (Persero) Tbk', 'Delectus repellat ab voluptas ut. Doloremque quo iusto est explicabo perspiciatis eligendi molestias. Qui ex modi possimus tempora. Illo molestiae amet et labore ipsam.', NULL, NULL),
(43, 'Dacin', 'Laksmiwati', 'Ds. Radio No. 60, Medan 89371, Kalsel', 'Subulussalam', 'Kalimantan Timur', 'Guinea Ekuatorial', '0764 3409 7198', '0879 267 082', '83726', '6890916107420', 'PD Lailasari Setiawan', 'Incidunt rem rem nemo. Aperiam est maxime optio est consequuntur. Quis minima atque velit recusandae sit. Iusto recusandae sed voluptas.', NULL, NULL),
(44, 'Endah', 'Winarsih', 'Ki. Reksoninten No. 705, Banjarmasin 25398, NTT', 'Parepare', 'Papua', 'Jamaika', '0645 7965 9959', '023 6816 547', '86205', '75351527', 'Perum Pudjiastuti Natsir', 'Quae temporibus eum deserunt facilis est quia. Quia repellendus ipsam eos placeat. Velit quibusdam molestiae qui iste eligendi illo.', NULL, NULL),
(45, 'Gina', 'Iswahyudi', 'Psr. Tangkuban Perahu No. 281, Bukittinggi 43767, NTB', 'Cirebon', 'Jawa Tengah', 'Oman', '(+62) 650 4214 211', '0512 3490 536', '98782', '354732795', 'Perum Mulyani', 'Sit cumque quia consequatur aliquam nihil. Laboriosam quia quaerat et laboriosam aut ea voluptas. Sint distinctio error aut unde tempora dolor aut.', NULL, NULL),
(46, 'Ana', 'Yuliarti', 'Kpg. Bawal No. 909, Cirebon 68892, DKI', 'Tegal', 'Kalimantan Timur', 'Aruba', '0683 4738 8979', '(+62) 809 900 835', '84440', '70616608126220', 'CV Permadi', 'Aut unde eum eum consequatur. Perferendis non illum quia similique. Explicabo ut commodi quo magni in. Enim non debitis maxime omnis.', NULL, NULL),
(47, 'Ira', 'Farida', 'Jln. Babakan No. 99, Administrasi Jakarta Timur 71355, Kalbar', 'Bontang', 'Kalimantan Barat', 'Azerbaijan', '0250 9956 5060', '(+62) 728 9630 6711', '87530', '783670368', 'CV Handayani Natsir', 'Nostrum sit dolor odit. Et iusto non et vel id excepturi. Placeat dolores nostrum hic pariatur asperiores quae.', NULL, NULL),
(48, 'Gawati', 'Lestari', 'Ds. Bayan No. 987, Tarakan 75104, Bali', 'Pangkal Pinang', 'Kalimantan Tengah', 'Mongolia', '(+62) 712 9908 9118', '(+62) 772 7119 063', '11436', '22941169530', 'UD Firmansyah Hutapea Tbk', 'Vel et qui voluptate dicta repudiandae est sunt dolorum. Vero aut magnam non. Rerum occaecati incidunt nisi consequatur mollitia. Nemo laudantium et ex voluptas qui possimus voluptatem et.', NULL, NULL),
(49, 'Endah', 'Maulana', 'Jln. Sudiarto No. 775, Bandung 19691, Gorontalo', 'Blitar', 'Jawa Barat', 'Haiti', '(+62) 537 8907 9167', '(+62) 534 3332 9459', '64863', '37332329510558', 'Perum Yolanda', 'Odit dicta dignissimos fugiat atque aut. Perferendis exercitationem tenetur quia dolor magni qui. Aut odio et quisquam recusandae consequatur.', NULL, NULL),
(50, 'Cahyanto', 'Habibi', 'Jln. K.H. Maskur No. 226, Banjar 15607, Sulut', 'Lhokseumawe', 'Sumatera Selatan', 'Malawi', '(+62) 689 4206 7592', '(+62) 568 3462 2069', '26101', '629851838', 'CV Marpaung Tbk', 'Dolore voluptatibus vel fugit eaque. Eligendi provident fugiat ipsa consectetur nobis similique harum. Aut ea ut corporis quibusdam.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail_order`
--

CREATE TABLE `detail_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_order`
--

INSERT INTO `detail_order` (`id`, `invoice_number`, `product_id`, `quantity`, `discount`, `total_price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'INV/11/2021/00001', 1, 1, 0, 82122611, 'oo', '2021-11-25 23:40:29', '2021-11-25 23:40:29'),
(2, 'INV/11/2021/00001', 3, 1, 50, 53047147, 'lll', '2021-11-25 23:40:29', '2021-11-25 23:40:29'),
(3, 'INV/11/2021/00001', 9, 1, 0, 59092565, '', '2021-11-25 23:40:29', '2021-11-25 23:40:29'),
(4, 'INV/11/2021/00002', 1, 1, 0, 82122611, 'oo', '2021-11-25 23:43:34', '2021-11-25 23:43:34'),
(5, 'INV/11/2021/00002', 3, 1, 50, 53047147, 'lll', '2021-11-25 23:43:34', '2021-11-25 23:43:34'),
(6, 'INV/11/2021/00002', 9, 1, 0, 59092565, 'pppppp', '2021-11-25 23:43:34', '2021-11-25 23:43:34'),
(7, 'INV/11/2021/00003', 9, 4, 20, 59092565, 'ok', '2021-11-25 23:46:27', '2021-11-25 23:46:27'),
(8, 'INV/11/2021/00003', 48, 3, 0, 46574592, 'ok', '2021-11-25 23:46:27', '2021-11-25 23:46:27'),
(9, 'INV/11/2021/00003', 47, 1, 0, 51653269, 'ok', '2021-11-25 23:46:27', '2021-11-25 23:46:27'),
(10, 'INV/11/2021/00004', 1, 1, 20, 82122611, '', '2021-11-26 02:20:20', '2021-11-26 02:20:20'),
(11, 'INV/11/2021/00004', 3, 1, 10, 53047147, '', '2021-11-26 02:20:20', '2021-11-26 02:20:20'),
(12, 'INV/11/2021/00005', 1, 2, 50, 82122611, 'tt', '2021-11-26 02:40:05', '2021-11-26 02:40:05'),
(13, 'INV/11/2021/00005', 9, 1, 20, 59092565, 'gfhcgv', '2021-11-26 02:40:05', '2021-11-26 02:40:05'),
(14, 'INV/11/2021/00005', 10, 1, 5, 66945333, 'kj', '2021-11-26 02:40:05', '2021-11-26 02:40:05'),
(15, 'INV/11/2021/00006', 56, 17, 20, 1771196, 'ok', '2021-11-26 02:48:31', '2021-11-26 02:48:31'),
(16, 'INV/11/2021/00006', 45, 2, 80, 30217936, 'ok', '2021-11-26 02:48:31', '2021-11-26 02:48:31'),
(17, 'INV/11/2021/00006', 48, 4, 50, 93149184, 'ok', '2021-11-26 02:48:31', '2021-11-26 02:48:31'),
(18, 'INV/11/2021/00007', 4, 4, 70, 53950939, 'io', '2021-11-26 02:50:55', '2021-11-26 02:50:55'),
(19, 'INV/11/2021/00007', 7, 4, 38, 43271127, 'io', '2021-11-26 02:50:55', '2021-11-26 02:50:55'),
(20, 'INV/11/2021/00007', 9, 3, 21, 140049379, 'io', '2021-11-26 02:50:55', '2021-11-26 02:50:55'),
(21, 'INV/11/2021/00008', 1, 3, 70, 73910350, '', '2021-11-26 02:53:49', '2021-11-26 02:53:49'),
(22, 'INV/11/2021/00008', 7, 4, 30, 48854498, '', '2021-11-26 02:53:49', '2021-11-26 02:53:49'),
(23, 'INV/11/2021/00009', 1, 3, 20, 197094266, 'oke', '2021-11-28 19:57:54', '2021-11-28 19:57:54'),
(24, 'INV/11/2021/00009', 3, 5, 10, 238712162, 'oke', '2021-11-28 19:57:54', '2021-11-28 19:57:54');

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
(15, 53, '2aa4631295cbe3588eb26c57819374b2', '2021-10-19 05:36:14', '2021-10-19 05:36:14'),
(16, 53, '72783e2f26632bc7c3cc31a83992313f', '2021-10-19 05:36:14', '2021-10-19 05:36:14'),
(17, 53, 'ba0d5e4d13ae17b8f75115236d6f584a', '2021-10-19 05:36:14', '2021-10-19 05:36:14'),
(18, 53, '8ec98a2d40f1f4add2ca0775f3fd78c8', '2021-10-19 05:36:14', '2021-10-19 05:36:14'),
(19, 53, '52430f1f91033d585518a1fc91ce8896', '2021-10-19 05:36:14', '2021-10-19 05:36:14'),
(57, 55, '0344003518a645334ff84c56be74eb91', '2021-10-19 20:13:16', '2021-10-19 20:13:16'),
(58, 55, '31ee7dab51e4a5c9cbd63f72031ea13a', '2021-10-19 20:13:16', '2021-10-19 20:13:16'),
(59, 55, '44a70231995c9810f5465c63cd6472db', '2021-10-19 20:13:16', '2021-10-19 20:13:16'),
(66, 56, '72353da9e98d992de5989e996283157f', '2021-10-19 20:52:09', '2021-10-19 20:52:09'),
(67, 56, '813308b638f03746dc7a3666af1459b3', '2021-10-19 20:52:09', '2021-10-19 20:52:09'),
(68, 56, 'd4e72f584609455bdde32fc6d54769b6', '2021-10-19 20:52:09', '2021-10-19 20:52:09'),
(81, 57, '87954001e43c808563a2a2f6663a3549', '2021-10-24 05:23:34', '2021-10-24 05:23:34'),
(82, 57, '49c431be4a8778b4ea4586f2cff92239', '2021-10-24 05:23:34', '2021-10-24 05:23:34'),
(83, 57, '8d523c3eb3e8832d8cc9d814f23c946f', '2021-10-24 05:23:34', '2021-10-24 05:23:34'),
(84, 18, '29e4a551a3321660905b86bb7a5ad9ce', '2021-11-10 02:44:13', '2021-11-10 02:44:13'),
(85, 18, '57295dba763a7c860b2312d3bb23b167', '2021-11-10 02:44:13', '2021-11-10 02:44:13'),
(86, 18, 'daf3bfc2cba53c1950b0d03791b8a476', '2021-11-10 02:44:13', '2021-11-10 02:44:13');

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
(17, '2021_10_02_061942_create_product_table', 4),
(20, '2021_10_23_044037_create_pelanggan_table', 5),
(21, '2021_11_05_122343_term_payment', 6),
(30, '2021_10_23_043029_create_order_table', 11),
(31, '2021_10_23_043447_create_detail_order_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `date_order` date NOT NULL,
  `term_payment` bigint(20) UNSIGNED NOT NULL,
  `desc_order` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_date` date NOT NULL,
  `sent_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_status` enum('proses','selesai') COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `invoice_number`, `customer_id`, `date_order`, `term_payment`, `desc_order`, `sent_date`, `sent_address`, `transaction_status`, `grand_total`, `created_at`, `updated_at`) VALUES
(1, 'INV/11/2021/00001', 40, '2021-11-02', 9, 'tes aja', '2021-11-04', 'Dk. Hasanuddin No. 800, Batam 35124, Sultra', 'proses', 0, '2021-11-25 23:40:29', '2021-11-25 23:40:29'),
(2, 'INV/11/2021/00002', 40, '2021-11-02', 9, 'tes aja', '2021-11-04', 'Dk. Hasanuddin No. 800, Batam 35124, Sultra', 'proses', 0, '2021-11-25 23:43:34', '2021-11-25 23:43:34'),
(3, 'INV/11/2021/00003', 5, '2021-11-13', 9, '', '2021-11-10', 'Jln. Ketandan No. 724, Kediri 62420, Papua', 'proses', 0, '2021-11-25 23:46:27', '2021-11-25 23:46:27'),
(4, 'INV/11/2021/00004', 2, '2021-11-12', 7, '', '2021-11-04', 'Ki. Bagas Pati No. 296, Pekalongan 17244, Lampung', 'proses', 0, '2021-11-26 02:20:20', '2021-11-26 02:20:20'),
(5, 'INV/11/2021/00005', 2, '2021-11-04', 5, 'gnhmb', '2021-11-05', 'Ki. Bagas Pati No. 296, Pekalongan 17244, Lampung', 'proses', 192994729, '2021-11-26 02:40:05', '2021-11-26 02:40:05'),
(6, 'INV/11/2021/00006', 2, '2021-11-11', 10, '', '2021-11-27', 'Ki. Bagas Pati No. 296, Pekalongan 17244, Lampung', 'proses', 125138316, '2021-11-26 02:48:31', '2021-11-26 02:48:31'),
(7, 'INV/11/2021/00007', 3, '2021-11-10', 4, 'po', '2021-11-02', 'Jln. Banal No. 898, Tasikmalaya 82992, Papua', 'proses', 237271445, '2021-11-26 02:50:55', '2021-11-26 02:50:55'),
(8, 'INV/11/2021/00008', 3, '2021-11-12', 4, '', '2021-11-24', 'Jln. Banal No. 898, Tasikmalaya 82992, Papua', 'proses', 122764848, '2021-11-26 02:53:49', '2021-11-26 02:53:49'),
(9, 'INV/11/2021/00009', 2, '2021-11-02', 5, '', '2021-11-11', 'Ki. Bagas Pati No. 296, Pekalongan 17244, Lampung', 'proses', 435806428, '2021-11-28 19:57:54', '2021-11-28 19:57:54');

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
(18, 29, 13, 'est', 'illo', 4, 42556739, 84423535, 'quisquam', 'Enim dolorem praesentium cupiditate quibusdam quia ipsa et. Qui modi sunt sapiente autem. Qui laborum earum nam et corporis impedit molestias.', 'f09d65e1e28076cba440d511f2727180', '2021-09-30 14:18:03', '2021-11-10 02:44:13'),
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
(53, 13, 48, 'papa', 'papa', 20, 190000, 250000, 'pcs', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '17a33b9f0c662a7457c60ff61f8be512', '2021-10-19 05:36:14', '2021-10-19 05:36:14'),
(54, 32, 2, 'zaza', 'zaza', 23, 900000, 950000, 'pcs', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'b5208a5776c2f18faeca891180767207', '2021-10-19 06:32:14', '2021-10-19 06:32:14'),
(55, 50, 50, 'Kaka ayu bener', 'Kaka ayu bener', 222222222, 888888888, 888888888, 'pcs', 'kaka ayu tinggi', 'c81ed6838ca7a710b62199501bea5dd3', '2021-10-19 06:51:20', '2021-10-19 20:13:16'),
(56, 34, 29, 'Tata Panjang', 'tata panjang', 100, 124122, 130235, 'pcs', 'tata tiga', '658894b93d14a776b7e44ad8f14d6d28', '2021-10-19 20:46:58', '2021-10-19 20:52:35'),
(57, 31, 1, 'kkkk', 'jjjj', 45, 86565, 90000, 'pcs', 'chgjvhkbjn', 'e990c48a5981147743f15fe0f9cd476d', '2021-10-24 05:22:03', '2021-10-24 05:23:34');

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
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `supplier` (`id`, `company_name`, `contact_name`, `contact_title`, `address`, `city`, `province`, `country`, `postal_code`, `phone`, `account_number`, `bank_name`, `description`, `created_at`, `updated_at`) VALUES
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
(50, 'PD Mulyani Tbk', 'Sarah Fujiati', 'Karyawan Swasta', 'Ki. Madrasah No. 342, Tarakan 49722, Sulut', 'Probolinggo', 'Jawa Tengah', 'Aruba', '57532', '(+62) 861 4727 791', '1405177159', 'PT Uyainah Kusumo (Persero) Tbk', 'Doloribus cum incidunt odio minus. Sed ea a hic doloremque atque. Autem quas et sit odit et et aspernatur. Nemo assumenda dolores esse ipsum ullam.', NULL, NULL),
(51, 'PD Usada Pradana', 'Hesti Pudjiastuti', 'Sopir', 'Ki. Honggowongso No. 577, Administrasi Jakarta Barat 10149, Sumut', 'Gunungsitoli', 'Kalimantan Barat', 'Botswana', '24159', '0206 0984 273', '10579505510492', 'PT Prasetyo', 'Eius nihil debitis eaque quasi. Expedita ut ut cumque dicta consequatur quis. Accusamus possimus necessitatibus non in sit perferendis.', NULL, NULL),
(52, 'UD Prabowo Farida Tbk', 'Yance Dina Hastuti', 'Tabib', 'Jr. HOS. Cjokroaminoto (Pasirkaliki) No. 9, Cilegon 12896, Kaltim', 'Surabaya', 'Kalimantan Timur', 'Anguilla', '28207', '(+62) 693 0884 250', '766522783929774', 'PT Prasasta Yuliarti', 'Quod qui iure aut esse. Eum natus labore nostrum sit reiciendis. Occaecati atque ut quo tenetur vero officiis voluptate. Fuga temporibus reiciendis sit ullam.', NULL, NULL),
(53, 'PT Mustofa Anggraini', 'Puspa Titi Pratiwi M.Farm', 'Arsitek', 'Psr. HOS. Cjokroaminoto (Pasirkaliki) No. 474, Samarinda 42575, NTB', 'Pekalongan', 'Jawa Timur', 'Wallis dan Futuna', '41998', '0222 5596 4096', '738823194306', 'Perum Nasyiah Nasyidah Tbk', 'Quisquam quis ducimus blanditiis non doloribus soluta. Repudiandae enim assumenda ratione aut in. Est consequuntur dolorum quis ipsam odit quia.', NULL, NULL),
(54, 'CV Rajasa Siregar', 'Sadina Eva Zulaika', 'Pramugari', 'Gg. Flores No. 828, Bontang 55292, DKI', 'Tual', 'Sulawesi Tengah', 'Turki', '56096', '0436 0639 4757', '827737966926', 'Perum Sirait (Persero) Tbk', 'Consequuntur laboriosam beatae illo molestiae alias quas consectetur. Impedit rerum natus eligendi praesentium doloremque. Et velit aut iusto doloribus temporibus.', NULL, NULL),
(55, 'Perum Nuraini Zulaika', 'Viman Gaiman Suryono S.Pd', 'Pegawai Negeri Sipil (PNS)', 'Ds. Muwardi No. 76, Administrasi Jakarta Pusat 33511, Babel', 'Manado', 'Sumatera Barat', 'Tanzania', '65774', '0845 516 356', '539785229652', 'CV Prasetya Purnawati (Persero) Tbk', 'Ad voluptatem dolore odit. Provident sit nostrum modi et beatae nihil repudiandae. Architecto neque numquam non quia et. Dolorem quod repellendus voluptatem maiores fugiat.', NULL, NULL),
(56, 'PT Mayasari', 'Kartika Yolanda S.IP', 'Buruh Harian Lepas', 'Gg. Imam Bonjol No. 764, Ternate 60745, Banten', 'Administrasi Jakarta Utara', 'Sulawesi Tengah', 'Saint Barthelemy', '10804', '(+62) 716 2382 8506', '5786628853201', 'Perum Melani Tbk', 'Placeat quo eum ipsam hic quisquam quia et. Quia voluptas non ut ut consequatur ut. Molestiae occaecati id accusantium sed at ut.', NULL, NULL),
(57, 'PD Pradana (Persero) Tbk', 'Prayitna Damanik', 'Imam Masjid', 'Psr. Kalimantan No. 21, Pariaman 70501, Sumut', 'Sibolga', 'Sulawesi Tengah', 'Swaziland', '75452', '(+62) 567 0476 669', '739264496974336', 'PT Rajata (Persero) Tbk', 'Reiciendis quaerat autem sed nihil. Ea facere eaque debitis.', NULL, NULL),
(58, 'PT Wahyuni Melani', 'Baktiadi Mumpuni Mansur S.T.', 'Pembantu Rumah Tangga', 'Kpg. Sadang Serang No. 713, Solok 40901, Riau', 'Metro', 'Sulawesi Tengah', 'Vanuatu', '91294', '0751 2299 038', '8621159591460', 'UD Haryanto', 'Eos officiis qui suscipit reprehenderit. Voluptas itaque voluptas quis. Et qui mollitia est.', NULL, NULL),
(59, 'PD Aryani', 'Yulia Suryatmi', 'Perdagangan', 'Gg. Teuku Umar No. 971, Palangka Raya 74466, Aceh', 'Parepare', 'Riau', 'Jerman', '91253', '(+62) 524 1268 288', '8367058368', 'CV Wacana Siregar (Persero) Tbk', 'Voluptate accusantium suscipit nihil sit dolores consequuntur voluptatem. Nihil nihil harum est qui perspiciatis non veniam. Rerum ex illo esse. Officiis tempora dolores voluptatibus.', NULL, NULL),
(60, 'PT Rahmawati Andriani (Persero) Tbk', 'Cinta Puspita M.Ak', 'Desainer', 'Ki. Adisucipto No. 683, Mojokerto 30011, Riau', 'Makassar', 'Maluku', 'Uruguay', '48503', '029 2266 4014', '21860155961', 'UD Novitasari', 'Quia voluptatem recusandae excepturi nulla. Perspiciatis ipsum quos voluptatem et non nam. Quos praesentium iusto minima facere.', NULL, NULL),
(61, 'UD Maryati Ardianto', 'Pangeran Wibowo', 'Promotor Acara', 'Gg. Baja Raya No. 801, Sibolga 80904, Bali', 'Manado', 'Sulawesi Tengah', 'Kaledonia baru', '36866', '(+62) 418 5667 5225', '70396401702', 'UD Padmasari', 'Quam dolor aliquid magni quo. Maxime et aut et. Id nostrum ut perferendis non tempore explicabo ex. Laborum beatae dicta commodi harum.', NULL, NULL),
(62, 'PD Yolanda (Persero) Tbk', 'Violet Salwa Yuniar', 'Penata Rias', 'Ds. Umalas No. 284, Bukittinggi 35586, Lampung', 'Bontang', 'Sulawesi Tengah', 'Turkmenistan', '65889', '0509 1948 788', '57627334610', 'Perum Suartini Simanjuntak', 'Soluta ut velit repudiandae sed incidunt incidunt. Aut provident aliquam error voluptatem.', NULL, NULL),
(63, 'PD Laksita Haryanti (Persero) Tbk', 'Titin Usamah', 'Hakim', 'Gg. Kyai Mojo No. 81, Batam 84299, Kalteng', 'Subulussalam', 'Kepulauan Bangka Belitung', 'Somalia', '99765', '0295 2548 801', '592752', 'UD Sudiati (Persero) Tbk', 'Ut quod voluptatem fuga ad voluptatem. Non cumque id totam voluptatum tenetur aut. Magni voluptatem et vero explicabo. Molestias tempore velit consequatur voluptas vero quia sapiente.', NULL, NULL),
(64, 'Perum Hidayat Widiastuti', 'Wage Siregar M.Pd', 'Perangkat Desa', 'Jln. Bayam No. 106, Sukabumi 53453, NTT', 'Subulussalam', 'Maluku', 'Bosnia dan Herzegovina', '45713', '0209 3264 0961', '257483829437', 'PT Permata Zulkarnain', 'Ut commodi cumque consectetur fugit. Aut placeat eum necessitatibus. Quisquam in illo culpa at. Odio quidem soluta ab et fuga dolorem distinctio.', NULL, NULL),
(65, 'PT Hassanah Putra', 'Hafshah Susanti', 'Presiden', 'Ki. Babah No. 439, Banda Aceh 40003, NTB', 'Jayapura', 'Gorontalo', 'Guyana Prancis', '63687', '0644 8740 1616', '543790602', 'PT Aryani (Persero) Tbk', 'A quis ad aperiam labore vero enim. Dolorum culpa quis provident et adipisci. Assumenda id at eligendi quos.', NULL, NULL),
(66, 'PD Usada Suwarno', 'Daniswara Saefullah S.Kom', 'Paraji', 'Dk. Sukabumi No. 483, Pasuruan 89611, Bengkulu', 'Administrasi Jakarta Pusat', 'Sumatera Utara', 'Azerbaijan', '38526', '0408 7637 408', '033569904', 'UD Winarsih', 'Illum molestiae recusandae nobis natus aut quae. Commodi qui magni voluptate vero.', NULL, NULL),
(67, 'CV Budiman Sitompul', 'Lili Malika Astuti S.IP', 'Perdagangan', 'Psr. Bahagia No. 678, Bengkulu 49693, Bengkulu', 'Bima', 'Kalimantan Barat', 'Lebanon', '35826', '0897 588 772', '1984148152616796', 'PD Marbun Mandasari (Persero) Tbk', 'Laboriosam quidem reprehenderit sint et rerum iure quae quis. Voluptas consequuntur illo tenetur. Eius illo et qui sed alias. Ab sint voluptatem aut sed unde autem.', NULL, NULL),
(68, 'UD Mansur Nugroho', 'Argono Atmaja Santoso S.H.', 'Pramugari', 'Gg. Sukajadi No. 974, Lhokseumawe 13800, Bali', 'Tomohon', 'Kepulauan Riau', 'Angola', '44156', '(+62) 721 9328 4269', '36747795610', 'PT Damanik Puspita Tbk', 'Vitae nobis veniam quisquam adipisci. Eos accusamus accusamus incidunt et nihil quia. Facere soluta dolorem omnis velit eligendi voluptas.', NULL, NULL),
(69, 'PD Januar (Persero) Tbk', 'Lidya Wani Yuniar', 'Akuntan', 'Gg. Yoga No. 163, Tual 50285, Kepri', 'Cirebon', 'Jawa Timur', 'Afrika Selatan', '54943', '0862 7427 7396', '54215220', 'PT Laksmiwati (Persero) Tbk', 'Quis aut itaque dignissimos saepe reiciendis sint. Sint et qui similique id sed. Fuga id eius maiores aspernatur. Illum omnis vero dolores aliquid in recusandae.', NULL, NULL),
(70, 'CV Riyanti Tbk', 'Queen Pudjiastuti', 'Buruh Tani / Perkebunan', 'Jln. Moch. Yamin No. 464, Bau-Bau 97999, Bengkulu', 'Medan', 'Sulawesi Selatan', 'Republik Kirgizstan', '59143', '(+62) 895 4113 9522', '0937471985', 'Perum Sihombing', 'Est dolorum exercitationem consectetur. Quos deleniti itaque unde enim possimus autem illum. Esse architecto et omnis ut. Rerum repellat temporibus qui non id.', NULL, NULL),
(71, 'CV Santoso', 'Rendy Sihombing', 'Nelayan / Perikanan', 'Jln. Cikutra Barat No. 220, Bau-Bau 89692, Jambi', 'Pekalongan', 'Sulawesi Utara', 'Nauru', '60648', '0356 6022 9323', '59646068269', 'CV Uyainah Tbk', 'Quo velit autem ratione esse doloribus velit atque aut. Et at consectetur vel et. Porro voluptatum sequi eaque dolore non illum tempore.', NULL, NULL),
(72, 'UD Fujiati', 'Vanya Kusmawati S.E.I', 'Konstruksi', 'Gg. Jagakarsa No. 469, Solok 81797, Banten', 'Surakarta', 'Banten', 'Tonga', '79767', '0340 1040 5642', '063756664717543', 'PT Sitompul Yulianti', 'Quis iste enim libero et. Eligendi enim sint dignissimos cumque aut eos voluptatem error.', NULL, NULL),
(73, 'PT Laksmiwati (Persero) Tbk', 'Asmadi Natsir S.Pd', 'Kepala Desa', 'Jr. Suryo Pranoto No. 382, Palembang 70165, Kepri', 'Metro', 'DI Yogyakarta', 'Mauritius', '89677', '0892 530 236', '40089', 'PD Zulaika Wijayanti Tbk', 'Dignissimos dolorum consequatur reprehenderit saepe nihil. Aliquid sunt eius facilis pariatur sint. Velit eaque dolorem architecto pariatur. Ipsam voluptas qui alias et. Repellat sed est in et.', NULL, NULL),
(74, 'UD Winarsih Tbk', 'Bagus Rajasa', 'Tabib', 'Ds. B.Agam Dlm No. 275, Denpasar 35553, Gorontalo', 'Gorontalo', 'Kepulauan Riau', 'Uganda', '64013', '0655 5805 8533', '30023899158', 'PD Puspita Suwarno', 'Labore est amet et tempore ea. Nihil suscipit quia tenetur rerum qui. Et voluptatibus nulla unde est sed non iure. Qui deleniti porro architecto velit.', NULL, NULL),
(75, 'Perum Budiyanto Tbk', 'Lurhur Maryadi Pradipta S.E.I', 'Tukang Batu', 'Jln. R.M. Said No. 469, Ambon 91386, Jabar', 'Jambi', 'Sulawesi Selatan', 'Greenland', '32364', '(+62) 583 5030 9944', '6696617', 'PD Mayasari Mahendra (Persero) Tbk', 'In sapiente excepturi ipsa beatae fuga vitae. Quia aspernatur vitae ad fugit qui veniam eligendi. Quam quia quae deserunt in consectetur delectus.', NULL, NULL),
(76, 'PT Natsir (Persero) Tbk', 'Mursita Tamba', 'Peneliti', 'Jln. Lada No. 730, Sorong 15954, Maluku', 'Manado', 'Jambi', 'Islandia', '38148', '0929 6653 135', '420039476513', 'UD Safitri Tbk', 'Hic enim facilis aut molestias ad dolore. Voluptatem voluptas cumque laborum. Ut officia quos qui qui quo fuga.', NULL, NULL),
(77, 'UD Budiman', 'Digdaya Pradana', 'Tukang Listrik', 'Jr. Bakhita No. 542, Pagar Alam 12574, Bengkulu', 'Administrasi Jakarta Pusat', 'Gorontalo', 'Puerto Rico', '37030', '(+62) 24 0341 245', '11150410284154', 'PT Hariyah Tbk', 'Sunt possimus et dolorem architecto aut dolore autem velit. Voluptates possimus tempora necessitatibus quae dolor quia assumenda. Distinctio dolorum illum voluptatem ipsum praesentium.', NULL, NULL),
(78, 'CV Safitri Prasetya', 'Gangsa Suwarno S.H.', 'Konstruksi', 'Jln. Kyai Mojo No. 613, Banjar 70243, Sulteng', 'Lhokseumawe', 'Bali', 'Republik Ceko', '89489', '0877 1497 894', '9036139564', 'PD Gunawan Marpaung', 'Corrupti recusandae porro est odio qui voluptas. Magni nisi sed unde et dolorem. Deleniti molestiae quaerat esse consequatur qui.', NULL, NULL),
(79, 'UD Waluyo Tbk', 'Raden Kuswoyo', 'Pensiunan', 'Kpg. Banda No. 986, Pekalongan 11231, DKI', 'Cilegon', 'Riau', 'Zimbabwe', '57747', '0780 7004 9215', '652413295880', 'Perum Tampubolon Sinaga (Persero) Tbk', 'Aut quo praesentium nihil non labore eligendi. Velit eum animi qui eum magni in natus.', NULL, NULL),
(80, 'PD Wastuti', 'Yani Lailasari', 'Seniman', 'Psr. Bagonwoto  No. 672, Banjarbaru 75276, Jambi', 'Depok', 'Jawa Barat', 'Makedonia', '80394', '0582 0809 6176', '720972055626', 'PT Lailasari', 'Velit consequatur voluptatem delectus molestiae sit laboriosam. Dolore odit quod explicabo. In est atque ab rerum. Nulla illo rerum qui dicta ut. Necessitatibus doloremque officia ratione.', NULL, NULL),
(81, 'PD Mandasari Waskita', 'Lurhur Habibi', 'Tukang Las / Pandai Besi', 'Dk. Gedebage Selatan No. 729, Bekasi 33868, Sultra', 'Pekalongan', 'Banten', 'Guinea', '55224', '0284 6194 3362', '530704214038', 'CV Farida Hassanah', 'Voluptatem eius voluptatem aut dolores sed sit dolor. Sed ex quidem nihil rerum perspiciatis. Minus porro dolores sunt deleniti. Eum aut quasi rem voluptatem atque voluptates.', NULL, NULL),
(82, 'Perum Waskita', 'Nugraha Darsirah Simanjuntak', 'Juru Masak', 'Psr. Pasir Koja No. 80, Tebing Tinggi 28427, Bali', 'Lhokseumawe', 'Papua Barat', 'Lesotho', '36611', '(+62) 265 0898 4101', '566151069', 'CV Ardianto Prasasta', 'Modi commodi soluta quidem nostrum. Porro consequatur quibusdam hic asperiores officiis quas repellat mollitia. Repudiandae sint exercitationem aut laudantium aspernatur necessitatibus vero.', NULL, NULL),
(83, 'PD Haryanto (Persero) Tbk', 'Mala Suartini', 'Presiden', 'Ds. Baung No. 294, Tasikmalaya 63980, Kaltim', 'Gorontalo', 'Sumatera Barat', 'Malawi', '79568', '(+62) 279 5115 7275', '53580869401', 'PT Mangunsong', 'Quo cumque libero totam commodi voluptates rerum. Et facere quisquam voluptas officiis mollitia ducimus. Sapiente qui enim mollitia tempora in. Quod id aspernatur aut voluptatum facilis minima.', NULL, NULL),
(84, 'UD Samosir', 'Lidya Laila Winarsih S.Sos', 'Kepolisian RI (POLRI)', 'Jln. Labu No. 371, Sorong 42633, Jatim', 'Kediri', 'Kalimantan Utara', 'Bermuda', '65483', '0507 2550 454', '94802837171165', 'PT Prasasta', 'Illo dolore cupiditate porro eos aut cum. Facere necessitatibus molestiae doloribus sit et totam magni.', NULL, NULL),
(85, 'CV Prastuti Thamrin', 'Tira Zelda Usamah S.Pt', 'Pelajar / Mahasiswa', 'Ki. Gambang No. 996, Pekanbaru 79307, Kaltim', 'Parepare', 'Jawa Barat', 'Republik Dominika', '13195', '0489 4995 851', '2843581231168', 'PT Purnawati', 'Vero minus est praesentium aut quasi et aut. Commodi nihil commodi quia illo. Eligendi officia quis facere sit. Rerum culpa beatae iste ut.', NULL, NULL),
(86, 'UD Pradipta (Persero) Tbk', 'Anita Umi Farida S.E.', 'Tukang Kayu', 'Jln. Cokroaminoto No. 660, Tasikmalaya 19115, Sultra', 'Bandung', 'Papua', 'Yunani', '74612', '0879 792 287', '3516138620449', 'UD Habibi Najmudin Tbk', 'Velit reprehenderit ut est totam assumenda. Sit vitae molestias nihil facere quidem laudantium. Culpa expedita neque consequatur exercitationem voluptatibus est itaque voluptatum.', NULL, NULL),
(87, 'UD Riyanti Maryati Tbk', 'Gilang Prabowo', 'Petani / Pekebun', 'Dk. Jend. Sudirman No. 218, Tanjungbalai 63376, Kepri', 'Administrasi Jakarta Selatan', 'Kalimantan Utara', 'Maroko', '42529', '0824 053 129', '12764446237', 'Perum Usada Wijayanti (Persero) Tbk', 'Quae fugit consectetur itaque. Dolorum provident quod eaque eligendi aspernatur sint est.', NULL, NULL),
(88, 'PD Hariyah Fujiati Tbk', 'Fathonah Anggraini M.Kom.', 'Tukang Gigi', 'Jr. Ki Hajar Dewantara No. 468, Tidore Kepulauan 24346, NTT', 'Surabaya', 'Kepulauan Bangka Belitung', 'Malaysia', '85234', '(+62) 713 2202 0782', '00240425354377', 'PD Marbun (Persero) Tbk', 'In aut aliquid et voluptatibus ullam. Aut consequatur et eos suscipit ut reiciendis in. Numquam facere molestiae quod quas aspernatur consequatur.', NULL, NULL),
(89, 'Perum Pangestu Sihombing', 'Ami Oktaviani', 'Presiden', 'Dk. Baha No. 889, Lubuklinggau 38498, Riau', 'Magelang', 'Sumatera Selatan', 'Svalbard & Jan Mayen Islands', '16699', '0477 1036 5280', '2785618851582', 'PT Nurdiyanti Kusmawati Tbk', 'Accusamus nesciunt et aperiam. Expedita autem voluptas voluptatum accusantium magnam at. Sint sequi amet fuga sint non sed. In quam sunt pariatur sapiente reprehenderit alias.', NULL, NULL),
(90, 'UD Putra', 'Najwa Widiastuti', 'Bidan', 'Kpg. Raden Saleh No. 712, Denpasar 55006, Jateng', 'Mataram', 'Gorontalo', 'Angola', '85051', '0351 8410 209', '652084134141', 'Perum Utami Tbk', 'Vitae est officia possimus dolorum rerum accusamus laborum. Quis temporibus in impedit nulla vel esse. Qui voluptas error vero dolorem id et laudantium.', NULL, NULL),
(91, 'CV Marbun (Persero) Tbk', 'Makuta Habibi', 'Pegawai Negeri Sipil (PNS)', 'Ds. Sutoyo No. 950, Ternate 44837, Kalsel', 'Tanjungbalai', 'Jawa Timur', 'Monako', '72981', '026 1229 475', '096108439', 'PD Kusmawati Maulana Tbk', 'Commodi consequatur consequatur qui qui dolores. Laudantium soluta explicabo nobis tenetur ut. Alias rerum aut nulla voluptatibus totam.', NULL, NULL),
(92, 'PT Prastuti Oktaviani Tbk', 'Rafid Wahyudin S.E.', 'Konstruksi', 'Kpg. Wahid Hasyim No. 495, Pasuruan 13149, Jatim', 'Langsa', 'DKI Jakarta', 'Guam', '41197', '0861 4074 0398', '16596719308008', 'PD Saefullah (Persero) Tbk', 'Quidem expedita quod accusamus. Laborum quas officiis eveniet et rem. Dolorum ullam praesentium omnis magni rerum assumenda eum.', NULL, NULL),
(93, 'UD Mardhiyah Tbk', 'Cakrawala Cawisadi Saefullah S.E.', 'Promotor Acara', 'Jr. Salam No. 545, Banjarbaru 78772, Kaltim', 'Pangkal Pinang', 'Jawa Barat', 'Belize', '73936', '026 7694 5610', '1824877623', 'PD Purnawati', 'Est ut nam necessitatibus et aut praesentium laborum fugiat. Laboriosam porro natus velit aut natus molestias dicta. Ab nisi qui in.', NULL, NULL),
(94, 'Perum Sinaga Sitompul', 'Endah Wahyuni', 'Perangkat Desa', 'Ds. Bayam No. 636, Pematangsiantar 29130, Sulteng', 'Padangpanjang', 'Jawa Tengah', 'Kepulauan Turks dan Caicos', '28231', '0481 6945 809', '191738146979', 'PD Wacana Wastuti', 'Aut consequuntur vitae ex iure distinctio provident dicta. Et a mollitia repudiandae repudiandae omnis sit id.', NULL, NULL),
(95, 'CV Sitompul Hutagalung Tbk', 'Galang Firgantoro', 'Pramugari', 'Ki. Bagonwoto  No. 702, Malang 77538, Jabar', 'Tasikmalaya', 'Jambi', 'Bosnia dan Herzegovina', '79470', '(+62) 277 6281 855', '33119446325', 'CV Mulyani', 'Id cum qui nostrum necessitatibus libero. Sit quam iusto aut dignissimos similique iste. Laborum nulla aut nesciunt porro.', NULL, NULL),
(96, 'Perum Widiastuti', 'Naradi Nababan', 'Nahkoda', 'Dk. Abdul Muis No. 156, Malang 17868, Jateng', 'Mojokerto', 'Sulawesi Utara', 'Swedia', '45055', '(+62) 850 508 395', '80017913784', 'PD Putra Marpaung Tbk', 'Officiis voluptas alias hic. Nihil nihil qui distinctio sunt eum nesciunt. Consequuntur maxime et rerum quis esse repellendus et impedit. Est qui ipsa ipsa impedit ipsam reiciendis autem.', NULL, NULL),
(97, 'PD Hakim Mayasari Tbk', 'Sadina Padma Pratiwi', 'Kepolisian RI (POLRI)', 'Ki. Eka No. 36, Pagar Alam 28222, Jateng', 'Tual', 'Kalimantan Selatan', 'Bhutan', '58136', '(+62) 581 7528 502', '130382548884002', 'CV Safitri', 'Odio nihil nesciunt fuga repellat sunt. Autem numquam placeat non. Aliquid id rerum est.', NULL, NULL),
(98, 'CV Januar', 'Candrakanta Wacana', 'Pialang', 'Jln. Moch. Toha No. 887, Gunungsitoli 80604, Banten', 'Tarakan', 'Kalimantan Utara', 'Pantai Gading', '84031', '0446 0832 4371', '3311548', 'CV Safitri Tbk', 'Et sit dicta et veniam. Ea impedit sit molestiae voluptatibus ab aut. Neque exercitationem non unde maxime tempora modi.', NULL, NULL),
(99, 'UD Suryono Jailani Tbk', 'Lintang Malika Yolanda S.Sos', 'Transportasi', 'Kpg. Wahidin Sudirohusodo No. 203, Makassar 86828, Kalbar', 'Batu', 'Kepulauan Bangka Belitung', 'Swedia', '40328', '(+62) 934 8924 1579', '426495330908', 'PT Rahimah Tbk', 'Eveniet et voluptas asperiores ipsam enim eligendi. Nulla officiis a numquam corporis minus dolores modi. Ut dolorem similique totam officiis id eligendi quasi officiis.', NULL, NULL),
(100, 'UD Namaga (Persero) Tbk', 'Cemeti Simanjuntak M.Farm', 'Tukang Jahit', 'Kpg. Dipatiukur No. 777, Langsa 38756, Banten', 'Tarakan', 'Kalimantan Barat', 'Barbados', '38246', '0222 6832 7572', '496554286586', 'PD Namaga Maheswara Tbk', 'Doloremque et voluptas iste reiciendis. Pariatur quis optio expedita perspiciatis. Odio eos nobis dolorem cum. Voluptatem aspernatur sit dolores perspiciatis reprehenderit similique.', NULL, NULL),
(101, 'Www', 'www', 'CEO', 'Jakarta', 'Tangerang', 'Banten', 'Indonesia', '142134', '081332345456', '0356676885', 'BCA', 'Supplier Baru', '2021-10-23 01:40:24', '2021-10-23 01:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `term_payment`
--

CREATE TABLE `term_payment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `term_payment`
--

INSERT INTO `term_payment` (`id`, `day`, `description`, `created_at`, `updated_at`) VALUES
(1, 4, 'Tes1', NULL, NULL),
(2, 30, 'Test2', NULL, NULL),
(3, 60, 'sss', NULL, NULL),
(4, 40, 'jhkjnk', NULL, NULL),
(5, 80, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', NULL, NULL),
(7, 20, 'Jangka waktu pembayaran singkat', '2021-11-09 20:15:09', '2021-11-09 20:15:09'),
(9, 7, 'Jangka short-term', '2021-11-10 00:05:08', '2021-11-10 00:05:08'),
(10, 0, 'Lunas', '2021-11-15 22:40:32', '2021-11-15 22:40:32'),
(11, 5, 'Singkat', '2021-11-16 22:20:33', '2021-11-16 22:20:33'),
(12, 180, '6 bulan', '2021-11-24 01:08:25', '2021-11-24 01:08:25');

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
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_order`
--
ALTER TABLE `detail_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_order_invoice_number_foreign` (`invoice_number`),
  ADD KEY `detail_order_product_id_foreign` (`product_id`);

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
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_invoice_number_unique` (`invoice_number`),
  ADD KEY `order_customer_id_foreign` (`customer_id`),
  ADD KEY `order_term_payment_foreign` (`term_payment`);

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
-- Indexes for table `term_payment`
--
ALTER TABLE `term_payment`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `detail_order`
--
ALTER TABLE `detail_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image_product`
--
ALTER TABLE `image_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `term_payment`
--
ALTER TABLE `term_payment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_order`
--
ALTER TABLE `detail_order`
  ADD CONSTRAINT `detail_order_invoice_number_foreign` FOREIGN KEY (`invoice_number`) REFERENCES `order` (`invoice_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_order_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `image_product`
--
ALTER TABLE `image_product`
  ADD CONSTRAINT `fk_product_detail_gambar` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_term_payment_foreign` FOREIGN KEY (`term_payment`) REFERENCES `term_payment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
