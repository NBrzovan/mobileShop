-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.11-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for sajtphp2
CREATE DATABASE IF NOT EXISTS `id21374914_netmobileshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `id21374914_netmobileshop`;

-- Dumping structure for table sajtphp2.anketa
CREATE TABLE IF NOT EXISTS `anketa` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_odgovor` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `anketa_id_odgovor_foreign` (`id_odgovor`),
  CONSTRAINT `anketa_id_odgovor_foreign` FOREIGN KEY (`id_odgovor`) REFERENCES `odgovori` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sajtphp2.anketa: ~6 rows (approximately)
/*!40000 ALTER TABLE `anketa` DISABLE KEYS */;
INSERT INTO `anketa` (`id`, `id_odgovor`, `created_at`, `updated_at`) VALUES
	(1, 1, '2021-03-13 21:40:01', '2021-03-13 21:40:01'),
	(2, 1, '2021-03-13 21:41:19', '2021-03-13 21:41:19'),
	(3, 1, '2021-03-13 21:41:57', '2021-03-13 21:41:57'),
	(4, 1, '2021-03-13 21:42:39', '2021-03-13 21:42:39'),
	(5, 1, '2021-03-13 21:44:46', '2021-03-13 21:44:46'),
	(6, 1, '2021-03-13 21:46:05', '2021-03-13 21:46:05'),
	(7, 1, '2021-03-13 21:46:34', '2021-03-13 21:46:34'),
	(8, 1, '2021-03-14 20:48:33', '2021-03-14 20:48:33'),
	(9, 1, '2021-03-15 17:30:47', '2021-03-15 17:30:47');
/*!40000 ALTER TABLE `anketa` ENABLE KEYS */;

-- Dumping structure for table sajtphp2.detaljiporudzbine
CREATE TABLE IF NOT EXISTS `detaljiporudzbine` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_porudzbina` bigint(20) unsigned NOT NULL,
  `id_proizvod` bigint(20) unsigned NOT NULL,
  `kolicina` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `detaljiporudzbine_id_porudzbina_foreign` (`id_porudzbina`),
  KEY `detaljiporudzbine_id_proizvod_foreign` (`id_proizvod`),
  CONSTRAINT `detaljiporudzbine_id_porudzbina_foreign` FOREIGN KEY (`id_porudzbina`) REFERENCES `porudzbine` (`id`),
  CONSTRAINT `detaljiporudzbine_id_proizvod_foreign` FOREIGN KEY (`id_proizvod`) REFERENCES `proizvodi` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sajtphp2.detaljiporudzbine: ~0 rows (approximately)
/*!40000 ALTER TABLE `detaljiporudzbine` DISABLE KEYS */;
/*!40000 ALTER TABLE `detaljiporudzbine` ENABLE KEYS */;

-- Dumping structure for table sajtphp2.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sajtphp2.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table sajtphp2.karakteristike
CREATE TABLE IF NOT EXISTS `karakteristike` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `naziv` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sajtphp2.karakteristike: ~22 rows (approximately)
/*!40000 ALTER TABLE `karakteristike` DISABLE KEYS */;
INSERT INTO `karakteristike` (`id`, `naziv`, `created_at`, `updated_at`) VALUES
	(1, 'Ekran', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(2, 'RAM Memorija', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(3, 'Interna Memorija', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(4, 'Kamera', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(5, 'Procesor', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(6, 'Operativni sistem', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(7, 'Kapacitet baterije', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(8, 'Dimenzije', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(9, 'Težina', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(10, 'Rezolucija', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(11, 'Boja', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(12, 'Ekran', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(13, 'RAM Memorija', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(14, 'Interna Memorija', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(15, 'Kamera', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(16, 'Procesor', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(17, 'Operativni sistem', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(18, 'Kapacitet baterije', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(19, 'Dimenzije', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(20, 'Težina', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(21, 'Rezolucija', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(22, 'Boja', '2022-03-13 14:40:35', '2022-03-13 14:40:35');
/*!40000 ALTER TABLE `karakteristike` ENABLE KEYS */;

-- Dumping structure for table sajtphp2.korisnici
CREATE TABLE IF NOT EXISTS `korisnici` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ime` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prezime` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresa` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grad` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postanski_broj` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefon` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_uloga` bigint(20) unsigned NOT NULL,
  `kod_aktivacija` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aktivan` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `korisnici_id_uloga_foreign` (`id_uloga`),
  CONSTRAINT `korisnici_id_uloga_foreign` FOREIGN KEY (`id_uloga`) REFERENCES `uloge` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sajtphp2.korisnici: ~4 rows (approximately)
/*!40000 ALTER TABLE `korisnici` DISABLE KEYS */;
INSERT INTO `korisnici` (`id`, `ime`, `prezime`, `email`, `password`, `adresa`, `grad`, `postanski_broj`, `telefon`, `id_uloga`, `kod_aktivacija`, `aktivan`, `created_at`, `updated_at`) VALUES
	(1, 'Nikola', 'Brzovan', 'brzi@gmail.com', 'f31ae35369ef5cdf63a88a6d6fc614b7', 'boulevard of broken dreams', 'Beograd', '11000', '063123123', 1, '', 1, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(2, 'Pera', 'Peric', 'pera@gamil.com', 'f31ae35369ef5cdf63a88a6d6fc614b7', 'Perin put bb', 'Perograd', '123123', '231234123', 2, '', 1, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(3, 'Mika', 'Mikic', 'mika@gmail.com', '28b0717d03cf7ab20cc25dc743c60676', 'kk4', 'Bgd', NULL, '0631231231', 2, NULL, 1, '2021-03-14 20:46:46', '2021-03-14 20:46:46'),
	(6, 'Nikola', 'Brzi', 'provera@gmail.com', 'ba561f1ada2a1e2f897aa26ca7c55bea', 'Beograd', 'Beograd', NULL, '123', 2, NULL, 1, '2023-10-09 10:59:37', '2023-10-09 10:59:37');
/*!40000 ALTER TABLE `korisnici` ENABLE KEYS */;

-- Dumping structure for table sajtphp2.marke
CREATE TABLE IF NOT EXISTS `marke` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `naziv` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sajtphp2.marke: ~6 rows (approximately)
/*!40000 ALTER TABLE `marke` DISABLE KEYS */;
INSERT INTO `marke` (`id`, `naziv`, `created_at`, `updated_at`) VALUES
	(1, 'Samsung', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(2, 'Huawei', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(3, 'Apple', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(4, 'Samsung', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(5, 'Huawei', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(6, 'Apple', '2022-03-13 14:40:35', '2022-03-13 14:40:35');
/*!40000 ALTER TABLE `marke` ENABLE KEYS */;

-- Dumping structure for table sajtphp2.mejl
CREATE TABLE IF NOT EXISTS `mejl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ime` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prezime` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefon` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poruka` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sajtphp2.mejl: ~0 rows (approximately)
/*!40000 ALTER TABLE `mejl` DISABLE KEYS */;
/*!40000 ALTER TABLE `mejl` ENABLE KEYS */;

-- Dumping structure for table sajtphp2.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sajtphp2.migrations: ~18 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2021_01_09_211959_create_uloge_table', 1),
	(5, '2021_01_10_211633_create_korisnici_table', 1),
	(6, '2021_02_09_211648_create_marke_table', 1),
	(7, '2021_02_09_211728_create_odgovor_table', 1),
	(8, '2021_02_10_211416_create_anketa_table', 1),
	(9, '2021_02_10_211746_create_porudzbine_table', 1),
	(10, '2021_02_10_211828_create_proizvodi_table', 1),
	(11, '2021_03_09_211930_create_tipslike_table', 1),
	(12, '2021_03_10_111848_create_slike_table', 1),
	(13, '2021_03_10_211454_create_detaljiporudzbine_table', 1),
	(14, '2021_03_10_211611_create_karakteristike_table', 1),
	(15, '2021_03_10_211700_create_mejl_table', 1),
	(16, '2021_03_10_211716_create_navigacija_table', 1),
	(17, '2021_03_10_211847_create_slika_proizvod_table', 1),
	(18, '2021_03_10_211914_create_specifikacije_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table sajtphp2.navigacija
CREATE TABLE IF NOT EXISTS `navigacija` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tekst` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pozicija` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sajtphp2.navigacija: ~12 rows (approximately)
/*!40000 ALTER TABLE `navigacija` DISABLE KEYS */;
INSERT INTO `navigacija` (`id`, `name`, `tekst`, `pozicija`, `created_at`, `updated_at`) VALUES
	(1, 'index', 'Početna', 1, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(2, 'proizvodi-korisnik', 'Proizvodi', 2, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(3, 'autor-korisnik', 'Autor', 3, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(4, 'login', 'Login', 4, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(5, 'registracija', 'Registracija', 5, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(6, 'logout', 'Logout', 6, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(7, 'index', 'Početna', 1, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(8, 'proizvodi-korisnik', 'Proizvodi', 2, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(9, 'autor-korisnik', 'Autor', 3, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(10, 'login', 'Login', 4, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(11, 'registracija', 'Registracija', 5, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(12, 'logout', 'Logout', 6, '2022-03-13 14:40:35', '2022-03-13 14:40:35');
/*!40000 ALTER TABLE `navigacija` ENABLE KEYS */;

-- Dumping structure for table sajtphp2.odgovori
CREATE TABLE IF NOT EXISTS `odgovori` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `odgovor` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sajtphp2.odgovori: ~6 rows (approximately)
/*!40000 ALTER TABLE `odgovori` DISABLE KEYS */;
INSERT INTO `odgovori` (`id`, `odgovor`, `created_at`, `updated_at`) VALUES
	(1, 'Super', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(2, 'Dobro', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(3, 'Loše', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(4, 'Super', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(5, 'Dobro', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(6, 'Loše', '2022-03-13 14:40:36', '2022-03-13 14:40:36');
/*!40000 ALTER TABLE `odgovori` ENABLE KEYS */;

-- Dumping structure for table sajtphp2.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sajtphp2.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table sajtphp2.porudzbine
CREATE TABLE IF NOT EXISTS `porudzbine` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_korisnik` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `porudzbine_id_korisnik_foreign` (`id_korisnik`),
  CONSTRAINT `porudzbine_id_korisnik_foreign` FOREIGN KEY (`id_korisnik`) REFERENCES `korisnici` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sajtphp2.porudzbine: ~0 rows (approximately)
/*!40000 ALTER TABLE `porudzbine` DISABLE KEYS */;
/*!40000 ALTER TABLE `porudzbine` ENABLE KEYS */;

-- Dumping structure for table sajtphp2.proizvodi
CREATE TABLE IF NOT EXISTS `proizvodi` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_marka` bigint(20) unsigned NOT NULL,
  `naziv` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cena` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proizvodi_id_marka_foreign` (`id_marka`),
  CONSTRAINT `proizvodi_id_marka_foreign` FOREIGN KEY (`id_marka`) REFERENCES `marke` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sajtphp2.proizvodi: ~32 rows (approximately)
/*!40000 ALTER TABLE `proizvodi` DISABLE KEYS */;
INSERT INTO `proizvodi` (`id`, `id_marka`, `naziv`, `cena`, `created_at`, `updated_at`) VALUES
	(2, 1, 'Mate 20', '70490.00', '2021-03-13 21:10:46', '2022-03-13 15:26:07'),
	(3, 3, 'Iphone XS', '89990.00', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(4, 1, 'Galaxy S20 Ultra', '166990.00', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(5, 1, 'Galaxy S10 Lite 1', '81990.00', '2021-03-13 21:10:46', '2022-03-13 14:35:39'),
	(6, 1, 'Galaxy A71', '56990.00', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(7, 1, 'Galaxy Note10+++', '119990.00', '2021-03-13 21:10:46', '2022-03-12 18:48:06'),
	(8, 2, 'P30', '74990.00', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(9, 2, 'P20 Lite', '25990.00', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(10, 2, 'P smart Z', '28990.00', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(11, 2, 'Honor 8X', '26990.00', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(12, 1, 'Galaxy A51', '44990.00', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(13, 3, 'iPhone 7', '49900.00', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(14, 3, 'iPhone 11 Pro', '158490.00', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(15, 3, 'iPhone 6s', '39990.00', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(16, 1, 'Galaxy A80', '59990.00', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(18, 1, 'Galaxy A50', '34990.00', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(19, 2, 'Mate 20', '74990.00', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(20, 3, 'Iphone XS', '89990.00', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(21, 1, 'Galaxy S20 Ultra', '166990.00', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(22, 1, 'Galaxy S10 Lite', '81990.00', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(23, 1, 'Galaxy A71', '56990.00', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(24, 1, 'Galaxy Note10+', '119990.00', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(25, 2, 'P30', '74990.00', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(26, 2, 'P20 Lite', '25990.00', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(27, 2, 'P smart Z', '28990.00', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(28, 2, 'Honor 8X', '26990.00', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(29, 1, 'Galaxy A51', '44990.00', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(30, 3, 'iPhone 7', '49900.00', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(31, 3, 'iPhone 11 Pro', '158490.00', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(32, 3, 'iPhone 6s', '39990.00', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(33, 1, 'Galaxy A80', '59990.00', '2022-03-13 14:40:36', '2022-03-13 14:40:36');
/*!40000 ALTER TABLE `proizvodi` ENABLE KEYS */;

-- Dumping structure for table sajtphp2.slika_proizvod
CREATE TABLE IF NOT EXISTS `slika_proizvod` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_proizvod` bigint(20) unsigned NOT NULL,
  `id_slika` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slika_proizvod_id_slika_foreign` (`id_slika`),
  KEY `slika_proizvod_id_proizvod_foreign` (`id_proizvod`),
  CONSTRAINT `slika_proizvod_id_proizvod_foreign` FOREIGN KEY (`id_proizvod`) REFERENCES `proizvodi` (`id`),
  CONSTRAINT `slika_proizvod_id_slika_foreign` FOREIGN KEY (`id_slika`) REFERENCES `slike` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sajtphp2.slika_proizvod: ~64 rows (approximately)
/*!40000 ALTER TABLE `slika_proizvod` DISABLE KEYS */;
INSERT INTO `slika_proizvod` (`id`, `id_proizvod`, `id_slika`, `created_at`, `updated_at`) VALUES
	(3, 2, 3, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(4, 2, 4, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(5, 3, 5, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(6, 3, 6, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(7, 4, 7, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(8, 4, 8, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(9, 5, 9, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(10, 5, 10, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(11, 6, 11, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(12, 6, 12, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(13, 7, 13, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(14, 7, 14, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(15, 8, 15, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(16, 8, 16, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(17, 9, 17, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(18, 9, 18, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(19, 10, 23, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(20, 10, 24, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(21, 11, 25, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(22, 11, 24, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(23, 12, 11, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(24, 12, 12, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(25, 13, 21, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(26, 13, 22, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(27, 14, 19, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(28, 14, 20, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(29, 15, 5, '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(30, 15, 6, '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(31, 16, 1, '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(32, 16, 2, '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(35, 18, 1, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(36, 18, 2, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(37, 19, 3, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(38, 19, 4, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(39, 20, 5, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(40, 20, 6, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(41, 21, 7, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(42, 21, 8, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(43, 22, 9, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(44, 22, 10, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(45, 23, 11, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(46, 23, 12, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(47, 24, 13, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(48, 24, 14, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(49, 25, 15, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(50, 25, 16, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(51, 26, 17, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(52, 26, 18, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(53, 27, 23, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(54, 27, 24, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(55, 28, 25, '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(56, 28, 24, '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(57, 29, 11, '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(58, 29, 12, '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(59, 30, 21, '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(60, 30, 22, '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(61, 31, 19, '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(62, 31, 20, '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(63, 32, 5, '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(64, 32, 6, '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(65, 33, 1, '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(66, 33, 2, '2022-03-13 14:40:36', '2022-03-13 14:40:36');
/*!40000 ALTER TABLE `slika_proizvod` ENABLE KEYS */;

-- Dumping structure for table sajtphp2.slike
CREATE TABLE IF NOT EXISTS `slike` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `putanja` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_tip_slike` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slike_id_tip_slike_foreign` (`id_tip_slike`),
  CONSTRAINT `slike_id_tip_slike_foreign` FOREIGN KEY (`id_tip_slike`) REFERENCES `tipslike` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sajtphp2.slike: ~52 rows (approximately)
/*!40000 ALTER TABLE `slike` DISABLE KEYS */;
INSERT INTO `slike` (`id`, `putanja`, `opis`, `id_tip_slike`, `created_at`, `updated_at`) VALUES
	(1, 'galaxyA50.webp', 'Samsung Galaxy A50', 1, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(2, 'galaxyA50.png', 'Samsung Galaxy A50', 2, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(3, 'mate20.png', 'Huawei Mate 20', 1, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(4, 'mate20.png', 'Huawei Mate 20', 2, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(5, 'iphoneXS.png', 'Apple Iphone XS', 1, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(6, 'iphoneXS.png', 'Apple Iphone XS', 2, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(7, 'galaxyS20Ultra.webp', 'Samsung Galaxy S20 Ultra', 1, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(8, 'galaxyS20Ultra.png', 'Samsung Galaxy S20 Ultra', 2, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(9, 'galaxyS10Lite.webp', 'Samsung Galaxy S10 Lite', 1, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(10, 'iPhone6s.png', 'Samsung Galaxy S10 Lite', 2, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(11, 'galaxyA71.png', 'Samsung Galaxy A71', 1, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(12, 'galaxyA71.png', 'Samsung Galaxy A71', 2, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(13, 'galaxyS10Lite.webp', 'Samsung Galaxy Note10+', 1, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(14, 'iphoneXS.png', 'Samsung Galaxy Note10+', 2, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(15, 'p30.png', 'Huawei P30', 1, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(16, 'p30.png', 'Huawei P30', 2, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(17, 'p20Lite.png', 'Huawei P20 Lite', 1, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(18, 'p20Lite.png', 'Huawei P20 Lite', 2, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(19, 'iphone11Pro.webp', 'Apple Iphone 11 Pro', 1, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(20, 'iphone11Pro.png', 'Apple Iphone 11 Pro', 2, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(21, 'iphone7.jpg', 'Apple Iphone 7', 1, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(22, 'iphone7.png', 'Apple Iphone 7', 2, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(23, 'pSmartZ.png', 'Huawei P smart Z', 1, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(24, 'pSmartZ.png', 'Huawei P smart Z', 2, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(25, 'honor8X.png', 'Huawei Honor8X', 1, '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(26, '1647109809slika_IMG_20190611_114544.jpg', '213123', 1, '2022-03-12 18:30:09', '2022-03-12 18:30:09'),
	(27, '1647109809slicica_IMG_20190611_114544.jpg', '213123', 2, '2022-03-12 18:30:09', '2022-03-12 18:30:09'),
	(28, 'galaxyA50.webp', 'Samsung Galaxy A50', 1, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(29, 'galaxyA50.png', 'Samsung Galaxy A50', 2, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(30, 'mate20.png', 'Huawei Mate 20', 1, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(31, 'mate20.png', 'Huawei Mate 20', 2, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(32, 'iphoneXS.png', 'Apple Iphone XS', 1, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(33, 'iphoneXS.png', 'Apple Iphone XS', 2, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(34, 'galaxyS20Ultra.webp', 'Samsung Galaxy S20 Ultra', 1, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(35, 'galaxyS20Ultra.png', 'Samsung Galaxy S20 Ultra', 2, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(36, 'galaxyS10Lite.webp', 'Samsung Galaxy S10 Lite', 1, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(37, 'galaxyS10Lite.webp', 'Samsung Galaxy S10 Lite', 2, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(38, 'galaxyA71.png', 'Samsung Galaxy A71', 1, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(39, 'galaxyA71.png', 'Samsung Galaxy A71', 2, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(40, 'galaxyNote10+.png', 'Samsung Galaxy Note10+', 1, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(41, 'galaxyNote10+.png', 'Samsung Galaxy Note10+', 2, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(42, 'p30.png', 'Huawei P30', 1, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(43, 'p30.png', 'Huawei P30', 2, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(44, 'p20Lite.png', 'Huawei P20 Lite', 1, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(45, 'p20Lite.png', 'Huawei P20 Lite', 2, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(46, 'iphone11Pro.webp', 'Apple Iphone 11 Pro', 1, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(47, 'iphone11Pro.png', 'Apple Iphone 11 Pro', 2, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(48, 'iphone7.jpg', 'Apple Iphone 7', 1, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(49, 'iphone7.jpg', 'Apple Iphone 7', 2, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(50, 'pSmartZ.png', 'Huawei P smart Z', 1, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(51, 'pSmartZ.png', 'Huawei P smart Z', 2, '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(52, 'honor8X.png', 'Huawei Honor8X', 1, '2022-03-13 14:40:35', '2022-03-13 14:40:35');
/*!40000 ALTER TABLE `slike` ENABLE KEYS */;

-- Dumping structure for table sajtphp2.specifikacije
CREATE TABLE IF NOT EXISTS `specifikacije` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_proizvod` bigint(20) unsigned NOT NULL,
  `id_karakteristika` bigint(20) unsigned NOT NULL,
  `vrednost` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `specifikacije_id_proizvod_foreign` (`id_proizvod`),
  KEY `specifikacije_id_karakteristika_foreign` (`id_karakteristika`),
  CONSTRAINT `specifikacije_id_karakteristika_foreign` FOREIGN KEY (`id_karakteristika`) REFERENCES `karakteristike` (`id`),
  CONSTRAINT `specifikacije_id_proizvod_foreign` FOREIGN KEY (`id_proizvod`) REFERENCES `proizvodi` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=364 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sajtphp2.specifikacije: ~352 rows (approximately)
/*!40000 ALTER TABLE `specifikacije` DISABLE KEYS */;
INSERT INTO `specifikacije` (`id`, `id_proizvod`, `id_karakteristika`, `vrednost`, `created_at`, `updated_at`) VALUES
	(12, 2, 1, '6,4" OLED"', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(13, 2, 2, '6GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(14, 2, 3, '128GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(15, 2, 4, '40 MP + 20 MP + 5 MP/25 MP', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(16, 2, 5, 'ARM Octa Core (2 x Cortex-A76 2,6 GHz + 2 x Cortex-A76 1,92 GHz + 4 x Cortex-A55 1,8 GHz)', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(17, 2, 6, 'Android 9.0 (Pie)', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(18, 2, 7, '4200 mAh', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(19, 2, 8, '157.8 X 72.3 X 8.6 mm', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(20, 2, 9, '189 g', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(21, 2, 10, '3120 x 1440 px', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(22, 2, 11, 'Blue', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(23, 3, 1, '5,8" Super Retina HD', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(24, 3, 2, '4GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(25, 3, 3, '64GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(26, 3, 4, '12 MP + 12 MP/7 MP', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(27, 3, 5, 'Hexa-core (2x2.5 GHz Vortex + 4x1.6 GHz Tempest)', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(28, 3, 6, 'iOS 12', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(29, 3, 7, '2658 mAh', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(30, 3, 8, '143.6 mm X 70.9 mm X 7.7 mm', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(31, 3, 9, '177 g', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(32, 3, 10, '2436 x 1125 px', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(33, 3, 11, 'Gold', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(34, 4, 1, '6,9" Quad HD+ Dynamic AMOLED 2x Infinity-O display 3200 x 1440 px HDR10+ sertifikat 120 Hz displej', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(35, 4, 2, '12GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(36, 4, 3, '128GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(37, 4, 4, '108 MP + 12 MP + 48 MP/40 MP', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(38, 4, 5, '7 nm Octa Core 2,73 GHz maksimalna brzina + 2,5 GHz + 2 GHz', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(39, 4, 6, 'Android 10', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(40, 4, 7, '5000 mAh', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(41, 4, 8, '166,9 mm x 76 mm x 8,8 mm', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(42, 4, 9, '220 g', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(43, 4, 10, '3200 x 1440 px (Quad HD+)', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(44, 4, 11, 'Kosmic BLACK', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(45, 5, 1, '6,6" Super AMOLED Plus', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(46, 5, 2, '8GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(47, 5, 3, '128GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(48, 5, 4, '48 MP + 12 MP + 5 MP/32 MP', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(49, 5, 5, 'Octa Core Brzina: 2,8 GHz, 2,4 GHz, 1,7 GHz', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(50, 5, 6, 'Android 10', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(51, 5, 7, '4500 mAh', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(52, 5, 8, '75,6 mm x 162,5 mm x 8,1 mm', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(53, 5, 9, '186 g', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(54, 5, 10, '1080 x 2400 px, FHD+', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(55, 5, 11, 'WHITE', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(56, 6, 1, '6,7" 76 mm x 163,6 mm x 7,7 mm', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(57, 6, 2, '6GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(58, 6, 3, '128GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(59, 6, 4, '64 MP + 12 MP + 5 MP + 5 MP/32 MP', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(60, 6, 5, '64-bit Octa-core procesor', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(61, 6, 6, 'Android', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(62, 6, 7, '4500 mAh', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(63, 6, 8, '76 mm x 163,6 mm x 7,7 mm', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(64, 6, 9, '179 g', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(65, 6, 10, '1080 x 2400 px (FHD+)', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(66, 6, 11, 'GRAY', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(67, 7, 1, '6,8" Dynamic AMOLED Infinity-O displej', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(68, 7, 2, '12GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(69, 7, 3, '256GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(70, 7, 4, '16 MP + 12 MP + 12 MP + 5 MP/10 MP', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(71, 7, 5, '64-bit Octa-core procesor', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(72, 7, 6, 'Android 9.0 (Pie)', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(73, 7, 7, '4300 mAh', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(74, 7, 8, '76 mm x 163,6 mm x 7,7 mm', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(75, 7, 9, '196 g', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(76, 7, 10, '3040 x 1440 px', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(77, 7, 11, 'AURA', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(78, 8, 1, '6,8" Dynamic AMOLED Infinity-O displej', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(79, 8, 2, '6GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(80, 8, 3, '128GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(81, 8, 4, '40MP + 16MP + 8MP/32 MP', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(82, 8, 5, 'HUAWEI Kirin 980 CPU, Octa-core, 2 x Cortex-A76 Based 2.6GHz+ 2 x Cortex-A76 Based 1.92GHz + 4 x Cortex-A55 1.8GHz', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(83, 8, 6, 'Android 9.0 (Pie)', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(84, 8, 7, '3550 mAh', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(85, 8, 8, '76 mm x 163,6 mm x 7,7 mm', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(86, 8, 9, '165 g', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(87, 8, 10, '2340 x 1080 px', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(88, 8, 11, 'BLACK', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(89, 9, 1, '5.84" Dynamic AMOLED Infinity-O displej', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(90, 9, 2, '4GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(91, 9, 3, '64GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(92, 9, 4, '16 MP + 2 MP/ 16 MP', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(93, 9, 5, 'Octa-Core (4x2.36 GHz Cortex-A53 & 4x1.7 GHz Cortex-A53', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(94, 9, 6, 'Android 8.0 (Oreo)', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(95, 9, 7, '3000 mAh', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(96, 9, 8, '148.6 x 71.2 x 7.4 mm', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(97, 9, 9, '145 g', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(98, 9, 10, '2280 x 1080 px', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(99, 9, 11, 'BLACK', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(100, 10, 1, '6,59" TFT LCD (LTPS)', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(101, 10, 2, '4GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(102, 10, 3, '64GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(103, 10, 4, '16 MP + 2 MP/ 16 MP', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(104, 10, 5, 'Hisilicon Kirin 710F', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(105, 10, 6, 'EMUI 9.0 (baziran na Android 9)', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(106, 10, 7, '4000 mAh', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(107, 10, 8, '77,3 mm x 163,5 mm x 8,8 mm', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(108, 10, 9, '196 g', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(109, 10, 10, '2340 x 1080 px', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(110, 10, 11, 'BLACK', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(111, 11, 1, '6.5"', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(112, 11, 2, '4GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(113, 11, 3, '64GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(114, 11, 4, '20 MP+ 2 MP /16 MP', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(115, 11, 5, 'Octa Core ARMv8-A, 64 bita, 4x2.2 GHz Cortex-A73 & 4x1.7 GHz Cortex-A53', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(116, 11, 6, 'Android 8.1 (Oreo)', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(117, 11, 7, '3650 mAh', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(118, 11, 8, '7.66 x 16.04 x 0.78 cm', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(119, 11, 9, '176 g', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(120, 11, 10, '1080 x 2340 px', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(121, 11, 11, 'BLUE', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(122, 12, 1, '6,5"', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(123, 12, 2, '4GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(124, 12, 3, '128GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(125, 12, 4, '48 MP + 12 MP + 5 MP + 5 MP/32 MP', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(126, 12, 5, 'Octa Core Brzina CPU: 2,3 GHz, 1,7 GHz', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(127, 12, 6, 'Android', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(128, 12, 7, '4000 mAh', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(129, 12, 8, '73,6 mm x 158,5 mm x 7,9 mm', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(130, 12, 9, '172 g', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(131, 12, 10, '1080 x 2400 px', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(132, 12, 11, 'WHITE', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(133, 13, 1, '4.7" Retina HD', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(134, 13, 2, '2GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(135, 13, 3, '32GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(136, 13, 4, '12 MP/7 MP', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(137, 13, 5, 'Quad-core 2.34 GHz (2x Hurricane + 2x Zephyr)', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(138, 13, 6, 'iOS 10', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(139, 13, 7, '1960 mAh', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(140, 13, 8, '138.3 mm x 67.1 mm x 7.1 mm', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(141, 13, 9, '138 g', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(142, 13, 10, '1334 x 750 px', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(143, 13, 11, 'BLACK', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(144, 14, 1, '5,8" All-screen OLED Super Retina XDR displej', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(145, 14, 2, '2GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(146, 14, 3, '64GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(147, 14, 4, '12 MP + 12 MP + 12 MP/12 MP', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(148, 14, 5, 'Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(149, 14, 6, 'iOS 13', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(150, 14, 7, '4000 mAh', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(151, 14, 8, '71,4 mm x 144 mm x 8,1 mm', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(152, 14, 9, '188 g', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(153, 14, 10, '2436 x 1125 px', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(154, 14, 11, 'BLACK', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(155, 15, 1, '4.7"', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(156, 15, 2, '2GB', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(157, 15, 3, '32GB', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(158, 15, 4, '12 MP/5 MP', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(159, 15, 5, 'Dual-core', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(160, 15, 6, 'iOS 9', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(161, 15, 7, '1715 mAh', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(162, 15, 8, '138.3 mm x 67.1 mm x 7.1 mm', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(163, 15, 9, '148 g', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(164, 15, 10, '750 x 1334 px', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(165, 15, 11, 'SILVER', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(166, 16, 1, '6,7"', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(167, 16, 2, '8GB', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(168, 16, 3, '128 GB', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(169, 16, 4, '48 MP/8 MP', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(170, 16, 5, 'Octa Core 2,2 GHz, 1,8 GHz', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(171, 16, 6, 'Android', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(172, 16, 7, '3700 mAh', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(173, 16, 8, '76,5 mm x 165,2 mm x 9,3 mm', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(174, 16, 9, '220 g', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(175, 16, 10, '1080 x 2400 px', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(176, 16, 11, 'BLACK', '2021-03-13 21:10:47', '2021-03-13 21:10:47'),
	(188, 18, 1, '6,4"', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(189, 18, 2, '4GB', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(190, 18, 3, '128GB', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(191, 18, 4, '25 MP + 8 MP + 5 MP/25 MP', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(192, 18, 5, 'Octa Core (4x2.3 GHz Cortex-A73 & 4x1.7 GHz Cortex...', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(193, 18, 6, 'Android 9.0 (Pie)', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(194, 18, 7, '4000 mAh', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(195, 18, 8, '158.5 mm x 74.7 mm x 7.7 mm', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(196, 18, 9, '166 g', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(197, 18, 10, '1080 x 2340 px', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(198, 18, 11, 'Crna', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(199, 19, 1, '6,4" OLED"', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(200, 19, 2, '6GB', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(201, 19, 3, '128GB', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(202, 19, 4, '40 MP + 20 MP + 5 MP/25 MP', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(203, 19, 5, 'ARM Octa Core (2 x Cortex-A76 2,6 GHz + 2 x Cortex-A76 1,92 GHz + 4 x Cortex-A55 1,8 GHz)', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(204, 19, 6, 'Android 9.0 (Pie)', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(205, 19, 7, '4200 mAh', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(206, 19, 8, '157.8 X 72.3 X 8.6 mm', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(207, 19, 9, '189 g', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(208, 19, 10, '3120 x 1440 px', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(209, 19, 11, 'Blue', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(210, 20, 1, '5,8" Super Retina HD', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(211, 20, 2, '4GB', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(212, 20, 3, '64GB', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(213, 20, 4, '12 MP + 12 MP/7 MP', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(214, 20, 5, 'Hexa-core (2x2.5 GHz Vortex + 4x1.6 GHz Tempest)', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(215, 20, 6, 'iOS 12', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(216, 20, 7, '2658 mAh', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(217, 20, 8, '143.6 mm X 70.9 mm X 7.7 mm', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(218, 20, 9, '177 g', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(219, 20, 10, '2436 x 1125 px', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(220, 20, 11, 'Gold', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(221, 21, 1, '6,9" Quad HD+ Dynamic AMOLED 2x Infinity-O display 3200 x 1440 px HDR10+ sertifikat 120 Hz displej', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(222, 21, 2, '12GB', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(223, 21, 3, '128GB', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(224, 21, 4, '108 MP + 12 MP + 48 MP/40 MP', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(225, 21, 5, '7 nm Octa Core 2,73 GHz maksimalna brzina + 2,5 GHz + 2 GHz', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(226, 21, 6, 'Android 10', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(227, 21, 7, '5000 mAh', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(228, 21, 8, '166,9 mm x 76 mm x 8,8 mm', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(229, 21, 9, '220 g', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(230, 21, 10, '3200 x 1440 px (Quad HD+)', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(231, 21, 11, 'Kosmic BLACK', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(232, 22, 1, '6,6" Super AMOLED Plus', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(233, 22, 2, '8GB', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(234, 22, 3, '128GB', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(235, 22, 4, '48 MP + 12 MP + 5 MP/32 MP', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(236, 22, 5, 'Octa Core Brzina: 2,8 GHz, 2,4 GHz, 1,7 GHz', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(237, 22, 6, 'Android 10', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(238, 22, 7, '4500 mAh', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(239, 22, 8, '75,6 mm x 162,5 mm x 8,1 mm', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(240, 22, 9, '186 g', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(241, 22, 10, '1080 x 2400 px, FHD+', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(242, 22, 11, 'WHITE', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(243, 23, 1, '6,7" 76 mm x 163,6 mm x 7,7 mm', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(244, 23, 2, '6GB', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(245, 23, 3, '128GB', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(246, 23, 4, '64 MP + 12 MP + 5 MP + 5 MP/32 MP', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(247, 23, 5, '64-bit Octa-core procesor', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(248, 23, 6, 'Android', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(249, 23, 7, '4500 mAh', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(250, 23, 8, '76 mm x 163,6 mm x 7,7 mm', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(251, 23, 9, '179 g', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(252, 23, 10, '1080 x 2400 px (FHD+)', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(253, 23, 11, 'GRAY', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(254, 24, 1, '6,8" Dynamic AMOLED Infinity-O displej', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(255, 24, 2, '12GB', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(256, 24, 3, '256GB', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(257, 24, 4, '16 MP + 12 MP + 12 MP + 5 MP/10 MP', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(258, 24, 5, '64-bit Octa-core procesor', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(259, 24, 6, 'Android 9.0 (Pie)', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(260, 24, 7, '4300 mAh', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(261, 24, 8, '76 mm x 163,6 mm x 7,7 mm', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(262, 24, 9, '196 g', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(263, 24, 10, '3040 x 1440 px', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(264, 24, 11, 'AURA', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(265, 25, 1, '6,8" Dynamic AMOLED Infinity-O displej', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(266, 25, 2, '6GB', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(267, 25, 3, '128GB', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(268, 25, 4, '40MP + 16MP + 8MP/32 MP', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(269, 25, 5, 'HUAWEI Kirin 980 CPU, Octa-core, 2 x Cortex-A76 Based 2.6GHz+ 2 x Cortex-A76 Based 1.92GHz + 4 x Cortex-A55 1.8GHz', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(270, 25, 6, 'Android 9.0 (Pie)', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(271, 25, 7, '3550 mAh', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(272, 25, 8, '76 mm x 163,6 mm x 7,7 mm', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(273, 25, 9, '165 g', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(274, 25, 10, '2340 x 1080 px', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(275, 25, 11, 'BLACK', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(276, 26, 1, '5.84" Dynamic AMOLED Infinity-O displej', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(277, 26, 2, '4GB', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(278, 26, 3, '64GB', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(279, 26, 4, '16 MP + 2 MP/ 16 MP', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(280, 26, 5, 'Octa-Core (4x2.36 GHz Cortex-A53 & 4x1.7 GHz Cortex-A53', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(281, 26, 6, 'Android 8.0 (Oreo)', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(282, 26, 7, '3000 mAh', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(283, 26, 8, '148.6 x 71.2 x 7.4 mm', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(284, 26, 9, '145 g', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(285, 26, 10, '2280 x 1080 px', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(286, 26, 11, 'BLACK', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(287, 27, 1, '6,59" TFT LCD (LTPS)', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(288, 27, 2, '4GB', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(289, 27, 3, '64GB', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(290, 27, 4, '16 MP + 2 MP/ 16 MP', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(291, 27, 5, 'Hisilicon Kirin 710F', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(292, 27, 6, 'EMUI 9.0 (baziran na Android 9)', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(293, 27, 7, '4000 mAh', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(294, 27, 8, '77,3 mm x 163,5 mm x 8,8 mm', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(295, 27, 9, '196 g', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(296, 27, 10, '2340 x 1080 px', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(297, 27, 11, 'BLACK', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(298, 28, 1, '6.5"', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(299, 28, 2, '4GB', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(300, 28, 3, '64GB', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(301, 28, 4, '20 MP+ 2 MP /16 MP', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(302, 28, 5, 'Octa Core ARMv8-A, 64 bita, 4x2.2 GHz Cortex-A73 & 4x1.7 GHz Cortex-A53', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(303, 28, 6, 'Android 8.1 (Oreo)', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(304, 28, 7, '3650 mAh', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(305, 28, 8, '7.66 x 16.04 x 0.78 cm', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(306, 28, 9, '176 g', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(307, 28, 10, '1080 x 2340 px', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(308, 28, 11, 'BLUE', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(309, 29, 1, '6,5"', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(310, 29, 2, '4GB', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(311, 29, 3, '128GB', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(312, 29, 4, '48 MP + 12 MP + 5 MP + 5 MP/32 MP', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(313, 29, 5, 'Octa Core Brzina CPU: 2,3 GHz, 1,7 GHz', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(314, 29, 6, 'Android', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(315, 29, 7, '4000 mAh', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(316, 29, 8, '73,6 mm x 158,5 mm x 7,9 mm', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(317, 29, 9, '172 g', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(318, 29, 10, '1080 x 2400 px', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(319, 29, 11, 'WHITE', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(320, 30, 1, '4.7" Retina HD', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(321, 30, 2, '2GB', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(322, 30, 3, '32GB', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(323, 30, 4, '12 MP/7 MP', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(324, 30, 5, 'Quad-core 2.34 GHz (2x Hurricane + 2x Zephyr)', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(325, 30, 6, 'iOS 10', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(326, 30, 7, '1960 mAh', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(327, 30, 8, '138.3 mm x 67.1 mm x 7.1 mm', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(328, 30, 9, '138 g', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(329, 30, 10, '1334 x 750 px', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(330, 30, 11, 'BLACK', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(331, 31, 1, '5,8" All-screen OLED Super Retina XDR displej', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(332, 31, 2, '2GB', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(333, 31, 3, '64GB', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(334, 31, 4, '12 MP + 12 MP + 12 MP/12 MP', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(335, 31, 5, 'Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(336, 31, 6, 'iOS 13', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(337, 31, 7, '4000 mAh', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(338, 31, 8, '71,4 mm x 144 mm x 8,1 mm', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(339, 31, 9, '188 g', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(340, 31, 10, '2436 x 1125 px', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(341, 31, 11, 'BLACK', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(342, 32, 1, '4.7"', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(343, 32, 2, '2GB', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(344, 32, 3, '32GB', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(345, 32, 4, '12 MP/5 MP', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(346, 32, 5, 'Dual-core', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(347, 32, 6, 'iOS 9', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(348, 32, 7, '1715 mAh', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(349, 32, 8, '138.3 mm x 67.1 mm x 7.1 mm', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(350, 32, 9, '148 g', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(351, 32, 10, '750 x 1334 px', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(352, 32, 11, 'SILVER', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(353, 33, 1, '6,7"', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(354, 33, 2, '8GB', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(355, 33, 3, '128 GB', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(356, 33, 4, '48 MP/8 MP', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(357, 33, 5, 'Octa Core 2,2 GHz, 1,8 GHz', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(358, 33, 6, 'Android', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(359, 33, 7, '3700 mAh', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(360, 33, 8, '76,5 mm x 165,2 mm x 9,3 mm', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(361, 33, 9, '220 g', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(362, 33, 10, '1080 x 2400 px', '2022-03-13 14:40:36', '2022-03-13 14:40:36'),
	(363, 33, 11, 'BLACK', '2022-03-13 14:40:36', '2022-03-13 14:40:36');
/*!40000 ALTER TABLE `specifikacije` ENABLE KEYS */;

-- Dumping structure for table sajtphp2.tipslike
CREATE TABLE IF NOT EXISTS `tipslike` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `naziv` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sajtphp2.tipslike: ~4 rows (approximately)
/*!40000 ALTER TABLE `tipslike` DISABLE KEYS */;
INSERT INTO `tipslike` (`id`, `naziv`, `created_at`, `updated_at`) VALUES
	(1, 'slika', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(2, 'slicica', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(3, 'slika', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(4, 'slicica', '2022-03-13 14:40:35', '2022-03-13 14:40:35');
/*!40000 ALTER TABLE `tipslike` ENABLE KEYS */;

-- Dumping structure for table sajtphp2.uloge
CREATE TABLE IF NOT EXISTS `uloge` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `naziv` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sajtphp2.uloge: ~4 rows (approximately)
/*!40000 ALTER TABLE `uloge` DISABLE KEYS */;
INSERT INTO `uloge` (`id`, `naziv`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(2, 'korisnik', '2021-03-13 21:10:46', '2021-03-13 21:10:46'),
	(3, 'admin', '2022-03-13 14:40:35', '2022-03-13 14:40:35'),
	(4, 'korisnik', '2022-03-13 14:40:35', '2022-03-13 14:40:35');
/*!40000 ALTER TABLE `uloge` ENABLE KEYS */;

-- Dumping structure for table sajtphp2.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sajtphp2.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
