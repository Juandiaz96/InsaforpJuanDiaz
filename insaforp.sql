-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2021 at 09:33 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insaforp`
--

-- --------------------------------------------------------

--
-- Table structure for table `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ISOcode` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `zona_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departamentos`
--

INSERT INTO `departamentos` (`id`, `nombre`, `ISOcode`, `estado`, `zona_id`, `created_at`, `updated_at`) VALUES
(1, 'Ahuachapán', 'SV-AH', 1, 1, '2021-08-09 12:00:00', NULL),
(2, 'Santa Ana', 'SV-SA', 1, 1, '2021-08-09 12:00:00', NULL),
(3, 'Sonsonate', 'SV-SO', 1, 1, '2021-08-09 12:00:00', NULL),
(4, 'La Libertad', 'SV-LI', 2, 1, '2021-08-09 12:00:00', NULL),
(5, 'Chalatenango', 'SV-CH', 2, 1, '2021-08-09 12:00:00', NULL),
(6, 'San Salvador', 'SV-SS', 2, 1, '2021-08-09 12:00:00', NULL),
(7, 'Cuscatlán', 'SV-CU', 3, 1, '2021-08-09 12:00:00', NULL),
(8, 'La Paz', 'SV-PA', 3, 1, '2021-08-09 12:00:00', NULL),
(9, 'Cabañas', 'SV-CA', 3, 1, '2021-08-09 12:00:00', NULL),
(10, 'San Vicente', 'SV-SV', 3, 1, '2021-08-09 12:00:00', NULL),
(11, 'Usulután', 'SV-US', 4, 1, '2021-08-09 12:00:00', NULL),
(12, 'Morazán', 'SV-MO', 4, 1, '2021-08-09 12:00:00', NULL),
(13, 'San Miguel', 'SV-SM', 4, 1, '2021-08-09 12:00:00', NULL),
(14, 'La Unión', 'SV-UN', 4, 1, '2021-08-09 12:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eventos`
--

CREATE TABLE `eventos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `ubicacion` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `horas_curso` decimal(4,0) NOT NULL,
  `costo` decimal(4,0) NOT NULL,
  `participantes` decimal(2,0) NOT NULL,
  `cantidad_evaluaciones` decimal(2,0) NOT NULL,
  `contrato` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_orden_compra` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `compra_bolsa` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `departamento_id` int(10) UNSIGNED NOT NULL,
  `municipio_id` int(10) UNSIGNED NOT NULL,
  `modalidad_id` int(10) UNSIGNED NOT NULL,
  `tipo_costo_id` int(10) UNSIGNED NOT NULL,
  `programa_id` int(10) UNSIGNED NOT NULL,
  `facilitador_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `eventos`
--

INSERT INTO `eventos` (`id`, `nombre`, `descripcion`, `fecha_inicio`, `fecha_fin`, `ubicacion`, `horas_curso`, `costo`, `participantes`, `cantidad_evaluaciones`, `contrato`, `numero_orden_compra`, `compra_bolsa`, `item`, `estado`, `departamento_id`, `municipio_id`, `modalidad_id`, `tipo_costo_id`, `programa_id`, `facilitador_id`, `created_at`, `updated_at`) VALUES
(1, 'Proyecto Prueba', 'Primer Proyecto para INSAFORP', '2021-08-09', '2021-08-09', 'San Salvador', '16', '1500', '30', '5', '1234', '5678', '9012', '345', 1, 6, 214, 1, 1, 1, 1, '2021-08-09 12:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `facilitadors`
--

CREATE TABLE `facilitadors` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilitadors`
--

INSERT INTO `facilitadors` (`id`, `nombre`, `apellido`, `correo`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Juan Carlos', 'Ramírez Díaz', 'correo@outlook.com', 1, '2021-08-09 12:00:00', NULL);

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
-- Table structure for table `horarios`
--

CREATE TABLE `horarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `evento_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `horarios`
--

INSERT INTO `horarios` (`id`, `fecha`, `hora`, `evento_id`, `created_at`, `updated_at`) VALUES
(1, '2021-08-09', '12:00:00', 1, '2021-08-09 12:00:00', NULL),
(2, '2021-08-09', '14:00:00', 1, '2021-08-09 12:00:00', NULL),
(3, '2021-08-09', '16:00:00', 1, '2021-08-09 12:00:00', NULL);

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_10_165459_create_zonas_table', 1),
(5, '2021_08_10_165508_create_departamentos_table', 1),
(6, '2021_08_10_165514_create_municipios_table', 1),
(7, '2021_08_10_165520_create_facilitadors_table', 1),
(8, '2021_08_10_165526_create_modalidads_table', 1),
(9, '2021_08_10_165532_create_programas_table', 1),
(10, '2021_08_10_165537_create_tipo_costos_table', 1),
(11, '2021_08_10_165543_create_eventos_table', 1),
(12, '2021_08_10_165553_create_horarios_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modalidads`
--

CREATE TABLE `modalidads` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modalidads`
--

INSERT INTO `modalidads` (`id`, `nombre`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Presencial', 1, '2021-08-09 12:00:00', NULL),
(2, 'Virtual', 1, '2021-08-09 12:00:00', NULL),
(3, 'Semi-Presencial', 1, '2021-08-09 12:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `municipios`
--

CREATE TABLE `municipios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `departamento_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `municipios`
--

INSERT INTO `municipios` (`id`, `nombre`, `estado`, `departamento_id`, `created_at`, `updated_at`) VALUES
(1, 'Ahuachapán', 1, 1, '2021-08-09 12:00:00', NULL),
(2, 'Jujutla', 1, 1, '2021-08-09 12:00:00', NULL),
(3, 'Atiquizaya', 1, 1, '2021-08-09 12:00:00', NULL),
(4, 'Concepción de Ataco', 1, 1, '2021-08-09 12:00:00', NULL),
(5, 'El Refugio', 1, 1, '2021-08-09 12:00:00', NULL),
(6, 'Guaymango', 1, 1, '2021-08-09 12:00:00', NULL),
(7, 'Apaneca', 1, 1, '2021-08-09 12:00:00', NULL),
(8, 'San Francisco Menéndez', 1, 1, '2021-08-09 12:00:00', NULL),
(9, 'San Lorenzo', 1, 1, '2021-08-09 12:00:00', NULL),
(10, 'San Pedro Puxtla', 1, 1, '2021-08-09 12:00:00', NULL),
(11, 'Tacuba', 1, 1, '2021-08-09 12:00:00', NULL),
(12, 'Turín', 1, 1, '2021-08-09 12:00:00', NULL),
(13, 'Candelaria de la Frontera', 1, 2, '2021-08-09 12:00:00', NULL),
(14, 'Chalchuapa', 1, 2, '2021-08-09 12:00:00', NULL),
(15, 'Coatepeque', 1, 2, '2021-08-09 12:00:00', NULL),
(16, 'El Congo', 1, 2, '2021-08-09 12:00:00', NULL),
(17, 'El Porvenir', 1, 2, '2021-08-09 12:00:00', NULL),
(18, 'Masahuat', 1, 2, '2021-08-09 12:00:00', NULL),
(19, 'Metapán', 1, 2, '2021-08-09 12:00:00', NULL),
(20, 'San Antonio Pajonal', 1, 2, '2021-08-09 12:00:00', NULL),
(21, 'San Sebastián Salitrillo', 1, 2, '2021-08-09 12:00:00', NULL),
(22, 'Santa Ana', 1, 2, '2021-08-09 12:00:00', NULL),
(23, 'Santa Rosa Guachipilín', 1, 2, '2021-08-09 12:00:00', NULL),
(24, 'Santiago de la Frontera', 1, 2, '2021-08-09 12:00:00', NULL),
(25, 'Texistepeque', 1, 2, '2021-08-09 12:00:00', NULL),
(26, 'Acajutla', 1, 3, '2021-08-09 12:00:00', NULL),
(27, 'Armenia', 1, 3, '2021-08-09 12:00:00', NULL),
(28, 'Caluco', 1, 3, '2021-08-09 12:00:00', NULL),
(29, 'Cuisnahuat', 1, 3, '2021-08-09 12:00:00', NULL),
(30, 'Izalco', 1, 3, '2021-08-09 12:00:00', NULL),
(31, 'Juayúa', 1, 3, '2021-08-09 12:00:00', NULL),
(32, 'Nahuizalco', 1, 3, '2021-08-09 12:00:00', NULL),
(33, 'Nahulingo', 1, 3, '2021-08-09 12:00:00', NULL),
(34, 'Salcoatitán', 1, 3, '2021-08-09 12:00:00', NULL),
(35, 'San Antonio del Monte', 1, 3, '2021-08-09 12:00:00', NULL),
(36, 'San Julián', 1, 3, '2021-08-09 12:00:00', NULL),
(37, 'Santa Catarina Masahuat', 1, 3, '2021-08-09 12:00:00', NULL),
(38, 'Santa Isabel Ishuatán', 1, 3, '2021-08-09 12:00:00', NULL),
(39, 'Santo Domingo de Guzmán', 1, 3, '2021-08-09 12:00:00', NULL),
(40, 'Sonsonate', 1, 3, '2021-08-09 12:00:00', NULL),
(41, 'Sonzacate', 1, 3, '2021-08-09 12:00:00', NULL),
(42, 'Alegría', 1, 11, '2021-08-09 12:00:00', NULL),
(43, 'Berlín', 1, 11, '2021-08-09 12:00:00', NULL),
(44, 'California', 1, 11, '2021-08-09 12:00:00', NULL),
(45, 'Concepción Batres', 1, 11, '2021-08-09 12:00:00', NULL),
(46, 'El Triunfo', 1, 11, '2021-08-09 12:00:00', NULL),
(47, 'Ereguayquín', 1, 11, '2021-08-09 12:00:00', NULL),
(48, 'Estanzuelas', 1, 11, '2021-08-09 12:00:00', NULL),
(49, 'Jiquilisco', 1, 11, '2021-08-09 12:00:00', NULL),
(50, 'Jucuapa', 1, 11, '2021-08-09 12:00:00', NULL),
(51, 'Jucuarán', 1, 11, '2021-08-09 12:00:00', NULL),
(52, 'Mercedes Umaña', 1, 11, '2021-08-09 12:00:00', NULL),
(53, 'Nueva Granada', 1, 11, '2021-08-09 12:00:00', NULL),
(54, 'Ozatlán', 1, 11, '2021-08-09 12:00:00', NULL),
(55, 'Puerto El Triunfo', 1, 11, '2021-08-09 12:00:00', NULL),
(56, 'San Agustín', 1, 11, '2021-08-09 12:00:00', NULL),
(57, 'San Buenaventura', 1, 11, '2021-08-09 12:00:00', NULL),
(58, 'San Dionisio', 1, 11, '2021-08-09 12:00:00', NULL),
(59, 'San Francisco Javier', 1, 11, '2021-08-09 12:00:00', NULL),
(60, 'Santa Elena', 1, 11, '2021-08-09 12:00:00', NULL),
(61, 'Santa María', 1, 11, '2021-08-09 12:00:00', NULL),
(62, 'Santiago de María', 1, 11, '2021-08-09 12:00:00', NULL),
(63, 'Tecapán', 1, 11, '2021-08-09 12:00:00', NULL),
(64, 'Usulután', 1, 11, '2021-08-09 12:00:00', NULL),
(65, 'Carolina', 1, 13, '2021-08-09 12:00:00', NULL),
(66, 'Chapeltique', 1, 13, '2021-08-09 12:00:00', NULL),
(67, 'Chinameca', 1, 13, '2021-08-09 12:00:00', NULL),
(68, 'Chirilagua', 1, 13, '2021-08-09 12:00:00', NULL),
(69, 'Ciudad Barrios', 1, 13, '2021-08-09 12:00:00', NULL),
(70, 'Comacarán', 1, 13, '2021-08-09 12:00:00', NULL),
(71, 'El Tránsito', 1, 13, '2021-08-09 12:00:00', NULL),
(72, 'Lolotique', 1, 13, '2021-08-09 12:00:00', NULL),
(73, 'Moncagua', 1, 13, '2021-08-09 12:00:00', NULL),
(74, 'Nueva Guadalupe', 1, 13, '2021-08-09 12:00:00', NULL),
(75, 'Nuevo Edén de San Juan', 1, 13, '2021-08-09 12:00:00', NULL),
(76, 'Quelepa', 1, 13, '2021-08-09 12:00:00', NULL),
(77, 'San Antonio del Mosco', 1, 13, '2021-08-09 12:00:00', NULL),
(78, 'San Gerardo', 1, 13, '2021-08-09 12:00:00', NULL),
(79, 'San Jorge', 1, 13, '2021-08-09 12:00:00', NULL),
(80, 'San Luis de la Reina', 1, 13, '2021-08-09 12:00:00', NULL),
(81, 'San Miguel', 1, 13, '2021-08-09 12:00:00', NULL),
(82, 'San Rafael Oriente', 1, 13, '2021-08-09 12:00:00', NULL),
(83, 'Sesori', 1, 13, '2021-08-09 12:00:00', NULL),
(84, 'Uluazapa', 1, 13, '2021-08-09 12:00:00', NULL),
(85, 'Arambala', 1, 12, '2021-08-09 12:00:00', NULL),
(86, 'Cacaopera', 1, 12, '2021-08-09 12:00:00', NULL),
(87, 'Chilanga', 1, 12, '2021-08-09 12:00:00', NULL),
(88, 'Corinto', 1, 12, '2021-08-09 12:00:00', NULL),
(89, 'Delicias de Concepción', 1, 12, '2021-08-09 12:00:00', NULL),
(90, 'El Divisadero', 1, 12, '2021-08-09 12:00:00', NULL),
(91, 'El Rosario (Morazán)', 1, 12, '2021-08-09 12:00:00', NULL),
(92, 'Gualococti', 1, 12, '2021-08-09 12:00:00', NULL),
(93, 'Guatajiagua', 1, 12, '2021-08-09 12:00:00', NULL),
(94, 'Joateca', 1, 12, '2021-08-09 12:00:00', NULL),
(95, 'Jocoaitique', 1, 12, '2021-08-09 12:00:00', NULL),
(96, 'Jocoro', 1, 12, '2021-08-09 12:00:00', NULL),
(97, 'Lolotiquillo', 1, 12, '2021-08-09 12:00:00', NULL),
(98, 'Meanguera', 1, 12, '2021-08-09 12:00:00', NULL),
(99, 'Osicala', 1, 12, '2021-08-09 12:00:00', NULL),
(100, 'Perquín', 1, 12, '2021-08-09 12:00:00', NULL),
(101, 'San Carlos', 1, 12, '2021-08-09 12:00:00', NULL),
(102, 'San Fernando (Morazán)', 1, 12, '2021-08-09 12:00:00', NULL),
(103, 'San Francisco Gotera', 1, 12, '2021-08-09 12:00:00', NULL),
(104, 'San Isidro (Morazán)', 1, 12, '2021-08-09 12:00:00', NULL),
(105, 'San Simón', 1, 12, '2021-08-09 12:00:00', NULL),
(106, 'Sensembra', 1, 12, '2021-08-09 12:00:00', NULL),
(107, 'Sociedad', 1, 12, '2021-08-09 12:00:00', NULL),
(108, 'Torola', 1, 12, '2021-08-09 12:00:00', NULL),
(109, 'Yamabal', 1, 12, '2021-08-09 12:00:00', NULL),
(110, 'Yoloaiquín', 1, 12, '2021-08-09 12:00:00', NULL),
(111, 'La Unión', 1, 14, '2021-08-09 12:00:00', NULL),
(112, 'San Alejo', 1, 14, '2021-08-09 12:00:00', NULL),
(113, 'Yucuaiquín', 1, 14, '2021-08-09 12:00:00', NULL),
(114, 'Conchagua', 1, 14, '2021-08-09 12:00:00', NULL),
(115, 'Intipucá', 1, 14, '2021-08-09 12:00:00', NULL),
(116, 'San José', 1, 14, '2021-08-09 12:00:00', NULL),
(117, 'El Carmen (La Unión)', 1, 14, '2021-08-09 12:00:00', NULL),
(118, 'Yayantique', 1, 14, '2021-08-09 12:00:00', NULL),
(119, 'Bolívar', 1, 14, '2021-08-09 12:00:00', NULL),
(120, 'Meanguera del Golfo', 1, 14, '2021-08-09 12:00:00', NULL),
(121, 'Santa Rosa de Lima', 1, 14, '2021-08-09 12:00:00', NULL),
(122, 'Pasaquina', 1, 14, '2021-08-09 12:00:00', NULL),
(123, 'Anamoros', 1, 14, '2021-08-09 12:00:00', NULL),
(124, 'Nueva Esparta', 1, 14, '2021-08-09 12:00:00', NULL),
(125, 'El Sauce', 1, 14, '2021-08-09 12:00:00', NULL),
(126, 'Concepción de Oriente', 1, 14, '2021-08-09 12:00:00', NULL),
(127, 'Polorós', 1, 14, '2021-08-09 12:00:00', NULL),
(128, 'Lislique', 1, 14, '2021-08-09 12:00:00', NULL),
(129, 'Antiguo Cuscatlán', 1, 4, '2021-08-09 12:00:00', NULL),
(130, 'Chiltiupán', 1, 4, '2021-08-09 12:00:00', NULL),
(131, 'Ciudad Arce', 1, 4, '2021-08-09 12:00:00', NULL),
(132, 'Colón', 1, 4, '2021-08-09 12:00:00', NULL),
(133, 'Comasagua', 1, 4, '2021-08-09 12:00:00', NULL),
(134, 'Huizúcar', 1, 4, '2021-08-09 12:00:00', NULL),
(135, 'Jayaque', 1, 4, '2021-08-09 12:00:00', NULL),
(136, 'Jicalapa', 1, 4, '2021-08-09 12:00:00', NULL),
(137, 'La Libertad', 1, 4, '2021-08-09 12:00:00', NULL),
(138, 'Santa Tecla', 1, 4, '2021-08-09 12:00:00', NULL),
(139, 'Nuevo Cuscatlán', 1, 4, '2021-08-09 12:00:00', NULL),
(140, 'San Juan Opico', 1, 4, '2021-08-09 12:00:00', NULL),
(141, 'Quezaltepeque', 1, 4, '2021-08-09 12:00:00', NULL),
(142, 'Sacacoyo', 1, 4, '2021-08-09 12:00:00', NULL),
(143, 'San José Villanueva', 1, 4, '2021-08-09 12:00:00', NULL),
(144, 'San Matías', 1, 4, '2021-08-09 12:00:00', NULL),
(145, 'San Pablo Tacachico', 1, 4, '2021-08-09 12:00:00', NULL),
(146, 'Talnique', 1, 4, '2021-08-09 12:00:00', NULL),
(147, 'Tamanique', 1, 4, '2021-08-09 12:00:00', NULL),
(148, 'Teotepeque', 1, 4, '2021-08-09 12:00:00', NULL),
(149, 'Tepecoyo', 1, 4, '2021-08-09 12:00:00', NULL),
(150, 'Zaragoza', 1, 4, '2021-08-09 12:00:00', NULL),
(151, 'Agua Caliente', 1, 5, '2021-08-09 12:00:00', NULL),
(152, 'Arcatao', 1, 5, '2021-08-09 12:00:00', NULL),
(153, 'Azacualpa', 1, 5, '2021-08-09 12:00:00', NULL),
(154, 'Cancasque', 1, 5, '2021-08-09 12:00:00', NULL),
(155, 'Chalatenango', 1, 5, '2021-08-09 12:00:00', NULL),
(156, 'Citalá', 1, 5, '2021-08-09 12:00:00', NULL),
(157, 'Comapala', 1, 5, '2021-08-09 12:00:00', NULL),
(158, 'Concepción Quezaltepeque', 1, 5, '2021-08-09 12:00:00', NULL),
(159, 'Dulce Nombre de María', 1, 5, '2021-08-09 12:00:00', NULL),
(160, 'El Carrizal', 1, 5, '2021-08-09 12:00:00', NULL),
(161, 'El Paraíso', 1, 5, '2021-08-09 12:00:00', NULL),
(162, 'La Laguna', 1, 5, '2021-08-09 12:00:00', NULL),
(163, 'La Palma', 1, 5, '2021-08-09 12:00:00', NULL),
(164, 'La Reina', 1, 5, '2021-08-09 12:00:00', NULL),
(165, 'Las Vueltas', 1, 5, '2021-08-09 12:00:00', NULL),
(166, 'Nueva Concepción', 1, 5, '2021-08-09 12:00:00', NULL),
(167, 'Nueva Trinidad', 1, 5, '2021-08-09 12:00:00', NULL),
(168, 'Nombre de Jesús', 1, 5, '2021-08-09 12:00:00', NULL),
(169, 'Ojos de Agua', 1, 5, '2021-08-09 12:00:00', NULL),
(170, 'Potonico', 1, 5, '2021-08-09 12:00:00', NULL),
(171, 'San Antonio de la Cruz', 1, 5, '2021-08-09 12:00:00', NULL),
(172, 'San Antonio Los Ranchos', 1, 5, '2021-08-09 12:00:00', NULL),
(173, 'San Fernando (Chalatenango)', 1, 5, '2021-08-09 12:00:00', NULL),
(174, 'San Francisco Lempa', 1, 5, '2021-08-09 12:00:00', NULL),
(175, 'San Francisco Morazán', 1, 5, '2021-08-09 12:00:00', NULL),
(176, 'San Ignacio', 1, 5, '2021-08-09 12:00:00', NULL),
(177, 'San Isidro Labrador', 1, 5, '2021-08-09 12:00:00', NULL),
(178, 'Las Flores', 1, 5, '2021-08-09 12:00:00', NULL),
(179, 'San Luis del Carmen', 1, 5, '2021-08-09 12:00:00', NULL),
(180, 'San Miguel de Mercedes', 1, 5, '2021-08-09 12:00:00', NULL),
(181, 'San Rafael', 1, 5, '2021-08-09 12:00:00', NULL),
(182, 'Santa Rita', 1, 5, '2021-08-09 12:00:00', NULL),
(183, 'Tejutla', 1, 5, '2021-08-09 12:00:00', NULL),
(184, 'Cojutepeque', 1, 7, '2021-08-09 12:00:00', NULL),
(185, 'Candelaria', 1, 7, '2021-08-09 12:00:00', NULL),
(186, 'El Carmen (Cuscatlán)', 1, 7, '2021-08-09 12:00:00', NULL),
(187, 'El Rosario (Cuscatlán)', 1, 7, '2021-08-09 12:00:00', NULL),
(188, 'Monte San Juan', 1, 7, '2021-08-09 12:00:00', NULL),
(189, 'Oratorio de Concepción', 1, 7, '2021-08-09 12:00:00', NULL),
(190, 'San Bartolomé Perulapía', 1, 7, '2021-08-09 12:00:00', NULL),
(191, 'San Cristóbal', 1, 7, '2021-08-09 12:00:00', NULL),
(192, 'San José Guayabal', 1, 7, '2021-08-09 12:00:00', NULL),
(193, 'San Pedro Perulapán', 1, 7, '2021-08-09 12:00:00', NULL),
(194, 'San Rafael Cedros', 1, 7, '2021-08-09 12:00:00', NULL),
(195, 'San Ramón', 1, 7, '2021-08-09 12:00:00', NULL),
(196, 'Santa Cruz Analquito', 1, 7, '2021-08-09 12:00:00', NULL),
(197, 'Santa Cruz Michapa', 1, 7, '2021-08-09 12:00:00', NULL),
(198, 'Suchitoto', 1, 7, '2021-08-09 12:00:00', NULL),
(199, 'Tenancingo', 1, 7, '2021-08-09 12:00:00', NULL),
(200, 'Aguilares', 1, 6, '2021-08-09 12:00:00', NULL),
(201, 'Apopa', 1, 6, '2021-08-09 12:00:00', NULL),
(202, 'Ayutuxtepeque', 1, 6, '2021-08-09 12:00:00', NULL),
(203, 'Cuscatancingo', 1, 6, '2021-08-09 12:00:00', NULL),
(204, 'Ciudad Delgado', 1, 6, '2021-08-09 12:00:00', NULL),
(205, 'El Paisnal', 1, 6, '2021-08-09 12:00:00', NULL),
(206, 'Guazapa', 1, 6, '2021-08-09 12:00:00', NULL),
(207, 'Ilopango', 1, 6, '2021-08-09 12:00:00', NULL),
(208, 'Mejicanos', 1, 6, '2021-08-09 12:00:00', NULL),
(209, 'Nejapa', 1, 6, '2021-08-09 12:00:00', NULL),
(210, 'Panchimalco', 1, 6, '2021-08-09 12:00:00', NULL),
(211, 'Rosario de Mora', 1, 6, '2021-08-09 12:00:00', NULL),
(212, 'San Marcos', 1, 6, '2021-08-09 12:00:00', NULL),
(213, 'San Martín', 1, 6, '2021-08-09 12:00:00', NULL),
(214, 'San Salvador', 1, 6, '2021-08-09 12:00:00', NULL),
(215, 'Santiago Texacuangos', 1, 6, '2021-08-09 12:00:00', NULL),
(216, 'Santo Tomás', 1, 6, '2021-08-09 12:00:00', NULL),
(217, 'Soyapango', 1, 6, '2021-08-09 12:00:00', NULL),
(218, 'Tonacatepeque', 1, 6, '2021-08-09 12:00:00', NULL),
(219, 'Zacatecoluca', 1, 8, '2021-08-09 12:00:00', NULL),
(220, 'Cuyultitán', 1, 8, '2021-08-09 12:00:00', NULL),
(221, 'El Rosario (La Paz)', 1, 8, '2021-08-09 12:00:00', NULL),
(222, 'Jerusalén', 1, 8, '2021-08-09 12:00:00', NULL),
(223, 'Mercedes La Ceiba', 1, 8, '2021-08-09 12:00:00', NULL),
(224, 'Olocuilta', 1, 8, '2021-08-09 12:00:00', NULL),
(225, 'Paraíso de Osorio', 1, 8, '2021-08-09 12:00:00', NULL),
(226, 'San Antonio Masahuat', 1, 8, '2021-08-09 12:00:00', NULL),
(227, 'San Emigdio', 1, 8, '2021-08-09 12:00:00', NULL),
(228, 'San Francisco Chinameca', 1, 8, '2021-08-09 12:00:00', NULL),
(229, 'San Pedro Masahuat', 1, 8, '2021-08-09 12:00:00', NULL),
(230, 'San Juan Nonualco', 1, 8, '2021-08-09 12:00:00', NULL),
(231, 'San Juan Talpa', 1, 8, '2021-08-09 12:00:00', NULL),
(232, 'San Juan Tepezontes', 1, 8, '2021-08-09 12:00:00', NULL),
(233, 'San Luis La Herradura', 1, 8, '2021-08-09 12:00:00', NULL),
(234, 'San Luis Talpa', 1, 8, '2021-08-09 12:00:00', NULL),
(235, 'San Miguel Tepezontes', 1, 8, '2021-08-09 12:00:00', NULL),
(236, 'San Pedro Nonualco', 1, 8, '2021-08-09 12:00:00', NULL),
(237, 'San Rafael Obrajuelo', 1, 8, '2021-08-09 12:00:00', NULL),
(238, 'Santa María Ostuma', 1, 8, '2021-08-09 12:00:00', NULL),
(239, 'Santiago Nonualco', 1, 8, '2021-08-09 12:00:00', NULL),
(240, 'Tapalhuaca', 1, 8, '2021-08-09 12:00:00', NULL),
(241, 'Cinquera', 1, 9, '2021-08-09 12:00:00', NULL),
(242, 'Dolores', 1, 9, '2021-08-09 12:00:00', NULL),
(243, 'Guacotecti', 1, 9, '2021-08-09 12:00:00', NULL),
(244, 'Ilobasco', 1, 9, '2021-08-09 12:00:00', NULL),
(245, 'Jutiapa', 1, 9, '2021-08-09 12:00:00', NULL),
(246, 'San Isidro (Cabañas)', 1, 9, '2021-08-09 12:00:00', NULL),
(247, 'Sensuntepeque', 1, 9, '2021-08-09 12:00:00', NULL),
(248, 'Tejutepeque', 1, 9, '2021-08-09 12:00:00', NULL),
(249, 'Victoria', 1, 9, '2021-08-09 12:00:00', NULL),
(250, 'Apastepeque', 1, 10, '2021-08-09 12:00:00', NULL),
(251, 'Guadalupe', 1, 10, '2021-08-09 12:00:00', NULL),
(252, 'San Cayetano Istepeque', 1, 10, '2021-08-09 12:00:00', NULL),
(253, 'San Esteban Catarina', 1, 10, '2021-08-09 12:00:00', NULL),
(254, 'San Ildefonso', 1, 10, '2021-08-09 12:00:00', NULL),
(255, 'San Lorenzo', 1, 10, '2021-08-09 12:00:00', NULL),
(256, 'San Sebastián', 1, 10, '2021-08-09 12:00:00', NULL),
(257, 'San Vicente', 1, 10, '2021-08-09 12:00:00', NULL),
(258, 'Santa Clara', 1, 10, '2021-08-09 12:00:00', NULL),
(259, 'Santo Domingo', 1, 10, '2021-08-09 12:00:00', NULL),
(260, 'Tecoluca', 1, 10, '2021-08-09 12:00:00', NULL),
(261, 'Tepetitán', 1, 10, '2021-08-09 12:00:00', NULL),
(262, 'Verapaz', 1, 10, '2021-08-09 12:00:00', NULL);

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
-- Table structure for table `programas`
--

CREATE TABLE `programas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programas`
--

INSERT INTO `programas` (`id`, `nombre`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Programa Principiantes', 1, '2021-08-09 12:00:00', NULL),
(2, 'Programa Básico', 1, '2021-08-09 12:00:00', NULL),
(3, 'Programa Intermedio', 1, '2021-08-09 12:00:00', NULL),
(4, 'Programa Avanzado', 1, '2021-08-09 12:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tipo_costos`
--

CREATE TABLE `tipo_costos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tipo_costos`
--

INSERT INTO `tipo_costos` (`id`, `nombre`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Financiado', 1, '2021-08-09 12:00:00', NULL),
(2, 'Cotizante', 1, '2021-08-09 12:00:00', NULL),
(3, 'Becado', 1, '2021-08-09 12:00:00', NULL),
(4, 'Gratis/Voluntario', 1, '2021-08-09 12:00:00', NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `zonas`
--

CREATE TABLE `zonas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zonas`
--

INSERT INTO `zonas` (`id`, `nombre`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Occidental', 1, '2021-08-09 12:00:00', NULL),
(2, 'Central', 1, '2021-08-09 12:00:00', NULL),
(3, 'Paracentral', 1, '2021-08-09 12:00:00', NULL),
(4, 'Oriental', 1, '2021-08-09 12:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departamentos_zona_id_foreign` (`zona_id`);

--
-- Indexes for table `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventos_departamento_id_foreign` (`departamento_id`),
  ADD KEY `eventos_municipio_id_foreign` (`municipio_id`),
  ADD KEY `eventos_modalidad_id_foreign` (`modalidad_id`),
  ADD KEY `eventos_tipo_costo_id_foreign` (`tipo_costo_id`),
  ADD KEY `eventos_programa_id_foreign` (`programa_id`),
  ADD KEY `eventos_facilitador_id_foreign` (`facilitador_id`);

--
-- Indexes for table `facilitadors`
--
ALTER TABLE `facilitadors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `horarios_evento_id_foreign` (`evento_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modalidads`
--
ALTER TABLE `modalidads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `municipios_departamento_id_foreign` (`departamento_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `programas`
--
ALTER TABLE `programas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipo_costos`
--
ALTER TABLE `tipo_costos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilitadors`
--
ALTER TABLE `facilitadors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `modalidads`
--
ALTER TABLE `modalidads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `programas`
--
ALTER TABLE `programas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tipo_costos`
--
ALTER TABLE `tipo_costos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zonas`
--
ALTER TABLE `zonas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `departamentos`
--
ALTER TABLE `departamentos`
  ADD CONSTRAINT `departamentos_zona_id_foreign` FOREIGN KEY (`zona_id`) REFERENCES `zonas` (`id`);

--
-- Constraints for table `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_departamento_id_foreign` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`),
  ADD CONSTRAINT `eventos_facilitador_id_foreign` FOREIGN KEY (`facilitador_id`) REFERENCES `facilitadors` (`id`),
  ADD CONSTRAINT `eventos_modalidad_id_foreign` FOREIGN KEY (`modalidad_id`) REFERENCES `modalidads` (`id`),
  ADD CONSTRAINT `eventos_municipio_id_foreign` FOREIGN KEY (`municipio_id`) REFERENCES `municipios` (`id`),
  ADD CONSTRAINT `eventos_programa_id_foreign` FOREIGN KEY (`programa_id`) REFERENCES `programas` (`id`),
  ADD CONSTRAINT `eventos_tipo_costo_id_foreign` FOREIGN KEY (`tipo_costo_id`) REFERENCES `tipo_costos` (`id`);

--
-- Constraints for table `horarios`
--
ALTER TABLE `horarios`
  ADD CONSTRAINT `horarios_evento_id_foreign` FOREIGN KEY (`evento_id`) REFERENCES `eventos` (`id`);

--
-- Constraints for table `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `municipios_departamento_id_foreign` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
