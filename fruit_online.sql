-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-05-2023 a las 03:17:19
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fruit_online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add fruit', 7, 'add_fruit'),
(26, 'Can change fruit', 7, 'change_fruit'),
(27, 'Can delete fruit', 7, 'delete_fruit'),
(28, 'Can view fruit', 7, 'view_fruit'),
(29, 'Can add purchase cart', 8, 'add_purchasecart'),
(30, 'Can change purchase cart', 8, 'change_purchasecart'),
(31, 'Can delete purchase cart', 8, 'delete_purchasecart'),
(32, 'Can view purchase cart', 8, 'view_purchasecart'),
(33, 'Can add avatar', 9, 'add_avatar'),
(34, 'Can change avatar', 9, 'change_avatar'),
(35, 'Can delete avatar', 9, 'delete_avatar'),
(36, 'Can view avatar', 9, 'view_avatar'),
(37, 'Can add avatar', 10, 'add_avatar'),
(38, 'Can change avatar', 10, 'change_avatar'),
(39, 'Can delete avatar', 10, 'delete_avatar'),
(40, 'Can view avatar', 10, 'view_avatar'),
(41, 'Can add fruit', 11, 'add_fruit'),
(42, 'Can change fruit', 11, 'change_fruit'),
(43, 'Can delete fruit', 11, 'delete_fruit'),
(44, 'Can view fruit', 11, 'view_fruit'),
(45, 'Can add purchase cart', 12, 'add_purchasecart'),
(46, 'Can change purchase cart', 12, 'change_purchasecart'),
(47, 'Can delete purchase cart', 12, 'delete_purchasecart'),
(48, 'Can view purchase cart', 12, 'view_purchasecart');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$u0TrQpbqHEbqiGQxIEt6Xc$vurfQWZ3rtP3ePAVXeKxq6NAdBC8U+791EzLK0AjRws=', '2023-05-17 22:43:08.276640', 1, 'admin', 'Juan', 'Rago', 'juan1234@gmail.com', 1, 1, '2023-05-03 01:44:04.000000'),
(2, 'pbkdf2_sha256$600000$EEo2dTKG4loafG8tJ8m3Bd$IIDAvn3Fk4C40qGUq3QWQX1oABxRa6q5jX8PEChZQAE=', NULL, 0, 'Maxi1989', 'Maximiliano', 'Rago', 'maxi1989@gmail.com', 0, 1, '2023-05-03 11:07:09.000000'),
(3, 'pbkdf2_sha256$600000$LWgj8Ioc9FJD6iiXVoCgNI$o7w+KBwPwwwsq0f549ZS4x+LlVX2fbp5aFSZL5bU5eU=', NULL, 0, 'pedro1', 'Pedro', 'Lupo', 'pedro@gmail.com', 0, 1, '2023-05-12 10:55:43.820545'),
(4, 'pbkdf2_sha256$600000$4oJkLNtO2dJdOq9h0U5ATa$s05cl9FRWhYzO49VsNV/6pHgfJdnu9aGMiq+OKpCgzY=', '2023-05-17 22:41:27.747062', 0, 'messi10', 'Messi', 'Leonel', 'messi@gmail.com', 0, 1, '2023-05-12 11:57:37.349502'),
(5, 'pbkdf2_sha256$600000$T9oner8xDO2IcnLJ5eyJUB$h5MSZUcC2ALuMcD17PyVaJGp/oNT18f+HWTZWdaXnYM=', '2023-05-17 22:42:37.359859', 0, 'rene', 'faba', 'ren', 'h@gmail.com', 0, 1, '2023-05-17 03:09:41.163820');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-05-03 07:41:43.196729', '2', 'Manzana Verde | Granny Smith | $250', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-05-03 07:50:36.299548', '2', 'Manzana Verde | Granny Smith | $250.00', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(3, '2023-05-03 07:52:18.142531', '3', 'Manzana Roja | Starking | $220', 1, '[{\"added\": {}}]', 7, 1),
(4, '2023-05-03 07:53:01.333247', '4', 'Manzana Amarilla | Manzana Golden | $140', 1, '[{\"added\": {}}]', 7, 1),
(5, '2023-05-03 07:53:55.568802', '5', 'Banana Amarilla | Plátano Cavendish | $300', 1, '[{\"added\": {}}]', 7, 1),
(6, '2023-05-03 07:54:36.531273', '6', 'Naranja | Naranja Blanca | $170', 1, '[{\"added\": {}}]', 7, 1),
(7, '2023-05-03 07:55:26.538237', '7', 'Naranaja Grajera | Navelina | $170', 1, '[{\"added\": {}}]', 7, 1),
(8, '2023-05-03 08:15:53.935691', '5', 'Banana Amarilla | Plátano Cavendish | $300.00', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(9, '2023-05-03 08:16:26.901182', '5', 'Banana Amarilla | Plátano Cavendish | $300.00', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(10, '2023-05-03 09:27:07.061527', '8', 'Banana Verde | Plátano Macho | $150', 1, '[{\"added\": {}}]', 7, 1),
(11, '2023-05-03 09:27:52.266733', '9', 'Mandarina | Citrux | $220', 1, '[{\"added\": {}}]', 7, 1),
(12, '2023-05-03 11:07:09.814649', '2', 'Maxi1989', 1, '[{\"added\": {}}]', 4, 1),
(13, '2023-05-03 11:08:14.373369', '2', 'Maxi1989', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1),
(14, '2023-05-03 11:08:37.180042', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 4, 1),
(15, '2023-05-07 07:56:42.654929', '10', 'Ananá | Ananá Cumana | $200 Kg', 1, '[{\"added\": {}}]', 7, 1),
(16, '2023-05-07 07:57:39.504071', '11', 'Frutilla | Fresa Camarosa | $350 Kg', 1, '[{\"added\": {}}]', 7, 1),
(17, '2023-05-07 07:58:29.047004', '12', 'Sandia | Sandia Riojana | $110 Kg', 1, '[{\"added\": {}}]', 7, 1),
(18, '2023-05-07 08:16:44.491995', '13', 'Durazno | Durazno Peruano | $400 Kg', 1, '[{\"added\": {}}]', 7, 1),
(19, '2023-05-07 08:17:56.514047', '14', 'Uva | Uva Malbec | $230 Kg', 1, '[{\"added\": {}}]', 7, 1),
(20, '2023-05-07 08:18:32.763119', '15', 'Pera | Pera Santiagueña | $170 Kg', 1, '[{\"added\": {}}]', 7, 1),
(21, '2023-05-07 08:22:37.613742', '2', 'Manzana Verde | Granny Smith | $250.00 Kg', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(22, '2023-05-07 08:57:48.585538', '1', 'Manzana Roja | Red delicious Jamaiquina | $180.00 Kg', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(23, '2023-05-07 09:00:56.280103', '4', 'Manzana Amarilla | Manzana Reineta | $140.00 Kg', 2, '[{\"changed\": {\"fields\": [\"Detail\", \"Description\"]}}]', 7, 1),
(24, '2023-05-07 09:01:52.247073', '3', 'Manzana Roja | Starking | $220.00 Kg', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(25, '2023-05-07 09:04:20.733091', '5', 'Banana Amarilla | Plátano Cavendish | $300.00 Kg', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(26, '2023-05-07 09:05:20.271899', '7', 'Naranaja Grajera | Navelina | $170.00 Kg', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(27, '2023-05-07 09:06:23.287250', '6', 'Naranja | Naranja Blanca | $170.00 Kg', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(28, '2023-05-07 09:07:33.815284', '8', 'Banana Verde | Plátano Macho | $150.00 Kg', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(29, '2023-05-07 09:09:38.195800', '9', 'Mandarina | Clementinas | $220.00 Kg', 2, '[{\"changed\": {\"fields\": [\"Detail\", \"Description\"]}}]', 7, 1),
(30, '2023-05-07 09:15:13.240543', '10', 'Ananá | Cayena Lisa | $200.00 Kg', 2, '[{\"changed\": {\"fields\": [\"Detail\", \"Description\"]}}]', 7, 1),
(31, '2023-05-07 09:20:18.359913', '11', 'Frutilla | Fresa Camarosa | $350.00 Kg', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(32, '2023-05-07 09:23:40.245871', '12', 'Sandia | Sandia Riojana | $110.00 Kg', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(33, '2023-05-07 09:26:25.420966', '13', 'Durazno | Durazno Argentino | $400.00 Kg', 2, '[{\"changed\": {\"fields\": [\"Detail\", \"Description\"]}}]', 7, 1),
(34, '2023-05-07 09:28:43.845410', '14', 'Uva | Uva Malbec | $230.00 Kg', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(35, '2023-05-07 09:30:12.935643', '15', 'Pera | Pera Bartlett | $170.00 Kg', 2, '[{\"changed\": {\"fields\": [\"Detail\", \"Description\"]}}]', 7, 1),
(36, '2023-05-08 11:07:47.692575', '11', 'admin | Manzana Verde | Granny Smith | cant= 8', 3, '', 8, 1),
(37, '2023-05-08 11:07:47.699584', '10', 'admin | Manzana Verde | Granny Smith | cant= 8', 3, '', 8, 1),
(38, '2023-05-08 11:07:47.702577', '9', 'admin | Manzana Verde | Granny Smith | cant= 8', 3, '', 8, 1),
(39, '2023-05-08 11:07:47.704574', '8', 'admin | Uva | Uva Malbec | cant= 20', 3, '', 8, 1),
(40, '2023-05-08 11:07:47.706564', '7', 'admin | Frutilla | Fresa Camarosa | cant= 10', 3, '', 8, 1),
(41, '2023-05-08 11:07:47.709583', '6', 'admin | Manzana Verde | Granny Smith | cant= 1', 3, '', 8, 1),
(42, '2023-05-08 11:07:47.712578', '4', 'admin | Manzana Roja | Starking | cant= 1', 3, '', 8, 1),
(43, '2023-05-08 11:07:47.715577', '2', 'admin | Manzana Roja | Red delicious Jamaiquina | cant= 1', 3, '', 8, 1),
(44, '2023-05-11 18:00:45.669643', '20', 'admin | Uva | Uva Malbec | cant= 9', 3, '', 8, 1),
(45, '2023-05-11 18:00:45.673617', '14', 'admin | Frutilla | Fresa Camarosa | cant= 5', 3, '', 8, 1),
(46, '2023-05-17 03:05:39.944986', '1', 'Avatar de: messi10', 1, '[{\"added\": {}}]', 9, 1),
(47, '2023-05-17 03:38:46.461072', '1', 'Avatar de: messi10', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 9, 1),
(48, '2023-05-17 03:40:34.006887', '2', 'Avatar de: rene', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 9, 1),
(49, '2023-05-17 19:34:38.186158', '7', 'Avatar de: None', 3, '', 10, 1),
(50, '2023-05-17 19:34:38.189922', '6', 'Avatar de: None', 3, '', 10, 1),
(51, '2023-05-17 19:34:38.191910', '5', 'Avatar de: None', 3, '', 10, 1),
(52, '2023-05-17 19:34:38.194935', '4', 'Avatar de: None', 3, '', 10, 1),
(53, '2023-05-17 19:37:33.804727', '1', 'Manzana Roja | Red delicious Jamaiquina | $180.00 Kg', 1, '[{\"added\": {}}]', 11, 1),
(54, '2023-05-17 19:40:15.154906', '2', 'Manzana Verde | Granny Smith | $250.00 Kg', 1, '[{\"added\": {}}]', 11, 1),
(55, '2023-05-17 19:41:19.656758', '3', 'Manzana Roja | Starking | $220.00 Kg', 1, '[{\"added\": {}}]', 11, 1),
(56, '2023-05-17 22:08:03.100564', '4', 'Manzana Amarilla | Manzana Reineta | $140.00 Kg', 1, '[{\"added\": {}}]', 11, 1),
(57, '2023-05-17 22:09:05.664122', '5', 'Banana Amarilla | Plátano Cavendish | $300.00 Kg', 1, '[{\"added\": {}}]', 11, 1),
(58, '2023-05-17 22:10:38.347275', '6', 'Naranja | Naranja Blanca | $170.00 Kg', 1, '[{\"added\": {}}]', 11, 1),
(59, '2023-05-17 22:12:28.931024', '7', 'Naranja Grajera | Navelina | $170.00 Kg', 1, '[{\"added\": {}}]', 11, 1),
(60, '2023-05-17 22:24:09.696976', '8', 'Banana Verde | Plátano Macho | $150.00 Kg', 1, '[{\"added\": {}}]', 11, 1),
(61, '2023-05-17 22:25:09.577880', '9', 'Mandarina | Clementinas | $220.00 Kg', 1, '[{\"added\": {}}]', 11, 1),
(62, '2023-05-17 22:25:54.492251', '10', 'Ananá | Cayena Lisa | $200.00 Kg', 1, '[{\"added\": {}}]', 11, 1),
(63, '2023-05-17 22:28:59.944600', '11', 'Frutilla | Fresa Camarosa | $350.00 Kg', 1, '[{\"added\": {}}]', 11, 1),
(64, '2023-05-17 22:32:57.265700', '12', 'Sandia | Sandia Riojana | $110.00 Kg', 1, '[{\"added\": {}}]', 11, 1),
(65, '2023-05-17 22:33:55.095258', '13', 'Durazno | Durazno Argentino | $400.00 Kg', 1, '[{\"added\": {}}]', 11, 1),
(66, '2023-05-17 22:34:41.369301', '14', 'Uva | Uva Malbec | $230.00 Kg', 1, '[{\"added\": {}}]', 11, 1),
(67, '2023-05-17 22:35:20.687595', '15', 'Pera | Pera Bartlett | $170.00 Kg', 1, '[{\"added\": {}}]', 11, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'fruit_shop', 'fruit'),
(12, 'fruit_shop', 'purchasecart'),
(7, 'fruteria', 'fruit'),
(8, 'fruteria', 'purchasecart'),
(9, 'perfiles', 'avatar'),
(10, 'profiles', 'avatar'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-04-30 05:21:08.684952'),
(2, 'auth', '0001_initial', '2023-04-30 05:21:09.211954'),
(3, 'admin', '0001_initial', '2023-04-30 05:21:09.334961'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-04-30 05:21:09.378962'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-30 05:21:09.391951'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-04-30 05:21:09.479953'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-04-30 05:21:09.537956'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-04-30 05:21:09.563973'),
(9, 'auth', '0004_alter_user_username_opts', '2023-04-30 05:21:09.576963'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-04-30 05:21:09.681950'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-04-30 05:21:09.685955'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-04-30 05:21:09.700975'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-04-30 05:21:09.726984'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-04-30 05:21:09.750960'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-04-30 05:21:09.778962'),
(16, 'auth', '0011_update_proxy_permissions', '2023-04-30 05:21:09.794989'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-04-30 05:21:09.818953'),
(18, 'sessions', '0001_initial', '2023-04-30 05:21:09.858962'),
(19, 'fruteria', '0001_initial', '2023-05-03 01:36:24.209057'),
(20, 'fruteria', '0002_purchasecart', '2023-05-03 13:00:49.921708'),
(21, 'fruteria', '0003_rename_estado_purchasecart_state', '2023-05-07 06:28:45.958530'),
(22, 'perfiles', '0001_initial', '2023-05-17 02:40:24.039574'),
(23, 'profiles', '0001_initial', '2023-05-17 15:51:39.038004'),
(24, 'profiles', '0002_rename_imagen_avatar_image', '2023-05-17 17:24:19.220876'),
(25, 'fruit_shop', '0001_initial', '2023-05-17 19:25:24.580460'),
(26, 'fruit_shop', '0002_purchasecart', '2023-05-17 19:25:24.743467'),
(27, 'fruit_shop', '0003_rename_estado_purchasecart_state', '2023-05-17 19:25:24.781473');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0n96ev3f9j827t46aegkaxtwbljidhz1', '.eJxVjEsOAiEQBe_C2hBp5OfSvWcgDd3IqIFkmFkZ766TzEK3r6reS0RclxrXwXOcSJyFEoffLWF-cNsA3bHdusy9LfOU5KbInQ557cTPy-7-HVQc9VubkwkQwGUIDhJa7xRoLAohF5UVc9YE7AtSSdoYbZWzngNpm9DB0Yj3B9DlN6Q:1pxTue:R6iVrYOT37YPjnAFfmRpPyzyrKscR7ElMRYpto7Ul_E', '2023-05-26 14:38:28.495322'),
('0zi5i54htj68lz7i30y5nu7h9wb1t447', '.eJxVjEsOAiEQBe_C2hBp5OfSvWcgDd3IqIFkmFkZ766TzEK3r6reS0RclxrXwXOcSJyFEoffLWF-cNsA3bHdusy9LfOU5KbInQ557cTPy-7-HVQc9VubkwkQwGUIDhJa7xRoLAohF5UVc9YE7AtSSdoYbZWzngNpm9DB0Yj3B9DlN6Q:1pzPrQ:FCjNzRA2t-yhzq5jcJnN2vCvmLV2wyt2y0DsxHt4iSM', '2023-05-31 22:43:08.279655'),
('51srdh52anablukm2c53sleewexik5o7', '.eJxVjEsOAiEQBe_C2hBp5OfSvWcgDd3IqIFkmFkZ766TzEK3r6reS0RclxrXwXOcSJyFEoffLWF-cNsA3bHdusy9LfOU5KbInQ557cTPy-7-HVQc9VubkwkQwGUIDhJa7xRoLAohF5UVc9YE7AtSSdoYbZWzngNpm9DB0Yj3B9DlN6Q:1pxTcq:-XXydA4pLoTGwFZ6ZyicVfMKAtJNzMrvGHVn7qeK6g0', '2023-05-26 14:20:04.540392'),
('5dzrdzbhfbvqj8x9xiq7x1rux52q1e1n', '.eJxVjEsOAiEQBe_C2hBp5OfSvWcgDd3IqIFkmFkZ766TzEK3r6reS0RclxrXwXOcSJyFEoffLWF-cNsA3bHdusy9LfOU5KbInQ557cTPy-7-HVQc9VubkwkQwGUIDhJa7xRoLAohF5UVc9YE7AtSSdoYbZWzngNpm9DB0Yj3B9DlN6Q:1pxTgI:b7D35XDNjqmKYGu9SmPc2CybsqKyaCWWJTRberJzwuY', '2023-05-26 14:23:38.363380'),
('fseu1bb5nohg08pmfzq8xg3m0tbdntpa', '.eJxVjEsOAiEQBe_C2hBp5OfSvWcgDd3IqIFkmFkZ766TzEK3r6reS0RclxrXwXOcSJyFEoffLWF-cNsA3bHdusy9LfOU5KbInQ557cTPy-7-HVQc9VubkwkQwGUIDhJa7xRoLAohF5UVc9YE7AtSSdoYbZWzngNpm9DB0Yj3B9DlN6Q:1pu1lZ:ow8-CawYHJXsLAHhEuYmre509zRtBEWoJa-fvNKlmLU', '2023-05-17 01:58:49.249350'),
('le81tptgfm7nufjegpkwtegwi9l8p6gs', '.eJxVjEsOAiEQBe_C2hBp5OfSvWcgDd3IqIFkmFkZ766TzEK3r6reS0RclxrXwXOcSJyFEoffLWF-cNsA3bHdusy9LfOU5KbInQ557cTPy-7-HVQc9VubkwkQwGUIDhJa7xRoLAohF5UVc9YE7AtSSdoYbZWzngNpm9DB0Yj3B9DlN6Q:1pxTRF:RjBGaHGPEuxGpZwxZQ_Jd0gci6UnyDnDd0yREDfhmPY', '2023-05-26 14:08:05.351837'),
('otkabm43flcvjmle836r50pwc5yf4ag0', '.eJxVjEsOAiEQBe_C2hBp5OfSvWcgDd3IqIFkmFkZ766TzEK3r6reS0RclxrXwXOcSJyFEoffLWF-cNsA3bHdusy9LfOU5KbInQ557cTPy-7-HVQc9VubkwkQwGUIDhJa7xRoLAohF5UVc9YE7AtSSdoYbZWzngNpm9DB0Yj3B9DlN6Q:1pvYya:uuVxMHNNo1MiCq4-BsCtAsfA2ErbS3ds0m5TvxzJVIY', '2023-05-21 07:38:36.042464'),
('w34v1br456qi1z2165sr77gs5e9xny2a', '.eJxVjDEOwjAMRe-SGUVOiOOGkZ0zVE5sSAG1UtNOiLtDpQ6w_vfef5me16X2a9O5H8ScTDCH3y1zeei4AbnzeJtsmcZlHrLdFLvTZi-T6PO8u38HlVv91l5ycpk0dz4DYERwgL74QogxKXR8LSygUSkkSh6QogjxMThSLMG8P9AfN0I:1pxVMX:5I04iQ0Q8q8BbUh8A24_IEvUAgtCZ9JEn8DftF503sg', '2023-05-26 16:11:21.661909'),
('y4c9nu9965l949veb550xgfij2d4pbgi', '.eJxVjEsOAiEQBe_C2hBp5OfSvWcgDd3IqIFkmFkZ766TzEK3r6reS0RclxrXwXOcSJyFEoffLWF-cNsA3bHdusy9LfOU5KbInQ557cTPy-7-HVQc9VubkwkQwGUIDhJa7xRoLAohF5UVc9YE7AtSSdoYbZWzngNpm9DB0Yj3B9DlN6Q:1pxVhu:qvhgfFvq3WpDTGqDX6RNB20-ww33k9hdIa17Z2acWqk', '2023-05-26 16:33:26.263681'),
('y4dyuevm9myy5tblasn6difv2nxlnu2t', '.eJxVjEsOAiEQBe_C2hBp5OfSvWcgDd3IqIFkmFkZ766TzEK3r6reS0RclxrXwXOcSJyFEoffLWF-cNsA3bHdusy9LfOU5KbInQ557cTPy-7-HVQc9VubkwkQwGUIDhJa7xRoLAohF5UVc9YE7AtSSdoYbZWzngNpm9DB0Yj3B9DlN6Q:1pxTue:R6iVrYOT37YPjnAFfmRpPyzyrKscR7ElMRYpto7Ul_E', '2023-05-26 14:38:28.412343');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fruit_shop_fruit`
--

CREATE TABLE `fruit_shop_fruit` (
  `id` bigint(20) NOT NULL,
  `name` varchar(256) NOT NULL,
  `photo` longtext NOT NULL,
  `detail` varchar(256) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `max_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fruit_shop_fruit`
--

INSERT INTO `fruit_shop_fruit` (`id`, `name`, `photo`, `detail`, `description`, `price`, `max_quantity`) VALUES
(1, 'Manzana Roja', 'https://www.lavanguardia.com/files/image_948_465/uploads/2019/12/23/5e9982c14df30.jpeg', 'Red delicious Jamaiquina', 'Originaria de Estados Unidos, esta manzana es dulce, fresca y delicada. Se utiliza principalmente para la preparación de jugos y otro tipo de dulces y destaca sobre todo por su piel roja y muy brillante.', 180.00, 10),
(2, 'Manzana Verde', 'https://www.lavanguardia.com/files/image_544_267/uploads/2021/11/26/61a0b6ad56e61.jpeg', 'Granny Smith', 'Es la manzana verde por excelencia. De origen australiano, es muy ácida y muy refrescante.', 250.00, 8),
(3, 'Manzana Roja', 'https://t1.uc.ltmcdn.com/es/posts/6/6/4/que_vitaminas_tiene_la_manzana_51466_orig.jpg', 'Starking', 'Esta variedad de manzana es muy popular por su dulzura y por ser bastante crujiente. Una de sus peculiaridades son las tonalidades rojizas: esto quiere decir que ha estado bien expuesta al sol. Es muy apreciada en la cocina por su versatilidad, ideal tanto en platos dulces como salados.', 220.00, 12),
(4, 'Manzana Amarilla', 'https://www.lavanguardia.com/files/image_544_267/uploads/2021/11/26/61a0b349a54f0.jpeg', 'Manzana Reineta', 'Esta es quizás la «reina» de las manzanas (no en vano su nombre deriva de rein , «reina» en francés) . Su piel es amarilla con muchas vetas oscuras, se conserva durante mucho tiempo y es la manzana más utilizada para preparar todo tipo de postres.', 140.00, 3),
(5, 'Banana Amarilla', 'https://www.sembrar100.com/wp-content/uploads/platano_1661798502.jpg', 'Plátano Cavendish', 'El Plátano Cavendish es uno de los alimentos con mayor valor nutritivo, ya que es rico en nutrientes, especialmente potasio, vitamina B6 y Ácido fólico.', 300.00, 7),
(6, 'Naranja', 'https://farm9.staticflickr.com/8302/7976454214_b12994895f_o.jpg', 'Naranja Blanca', 'Este tipo de naranjas tienen un tamaño medio-grande y, a diferencias de las Navel, carecen de “ombligo”. Su sabor es muy intenso, quizá un poco ácido, y tienen mucha pulpa. De ahí que sea una de las variedades de naranja más utilizadas en la producción de zumo.', 170.00, 8),
(7, 'Naranja Grajera', 'https://farm9.staticflickr.com/8299/7976295663_277dfa7841_o.jpg', 'Navelina', 'La naranja Navelina tiene el \"ombligo\" característico de las variedades de naranja navel pero éste es generalmente mas pequeño y abierto. Es una naranja de excelente calidad, su pulpa es suave y sabrosa y posee una considerable cantidad de jugo, por lo que también se utiliza coma naranja de zumo.', 170.00, 45),
(8, 'Banana Verde', 'https://www.revistainternos.com.ar/v2/wp-content/uploads/2021/06/InterNos-Maqueta-Foto-Portada-Notas-banana.jpg', 'Plátano Macho', 'Los plátanos verdes son más difíciles de digerir, pero tienen un índice glucémico menor y prebióticos; los plátanos muy maduros tienen un índice glucémico más elevado, pero aún así no son peligrosos, se digieren mejor y más rápido y pueden ser interesantes después del ejercicio físico.', 150.00, 14),
(9, 'Mandarina', 'https://estag.fimagenes.com/img/v2/7e5/1100858_537920_900.jpg', 'Clementinas', 'La clementina se puede tanto consumir en mesa como en forma de zumo, y por lo general está libre de semillas, es muy jugosa, tiene un sabor más dulce y luce un color naranja bastante fuerte, independientemente de su estado.', 220.00, 6),
(10, 'Ananá', 'https://www.mdzol.com/u/fotografias/m/2022/1/5/f1456x819-1161092_1331462_5050.jpg', 'Cayena Lisa', 'La Cayena es de color naranja amarillento oscuro y posee una pulpa amarilla clara o con una bonita tonalidad dorada.', 200.00, 25),
(11, 'Frutilla', 'https://bolcereales.com.ar/wp-content/uploads/2020/05/222-6-930x620.jpg', 'Fresa Camarosa', 'Es el fresón de verano, la encontramos de julio a septiembre en el mercado. Necesita de clima templado para crecer. Muy dulce. Se la considera la fresa de las tartas, salsas, compotas y mermeladas.', 350.00, 5),
(12, 'Sandia', 'https://elpoderdelconsumidor.org/wp-content/uploads/2021/08/sandia.jpg', 'Sandia Riojana', 'Variedad novedosa en el mercado de sandías sin semillas, piel rayada, carne amarilla brillante, con textura fibrosa y alto contenido de azúcar. Peso medio de 5 kg. Se le conoce también como sandía melón.', 110.00, 4),
(13, 'Durazno', 'https://www.gob.mx/cms/uploads/article/main_image/77906/durazno_secundaria.jpg', 'Durazno Argentino', 'Fruta muy deseada por la gran mayoría de personas, gracias a su característica forma, piel aterciopelada, delicado aroma y dulce sabor. Muchos consideran al durazno como su fruta favorita por las múltiples propiedades que tiene ya que es una fruta con pocas calorías, contiene fibra, agua, vitaminas, minerales y nutrientes que el cuerpo necesita para su correcto funcionamiento.', 400.00, 30),
(14, 'Uva', 'https://4.bp.blogspot.com/-nFZDMCBCxEQ/XLY8tJp4PjI/AAAAAAAAz9o/M4qSxPoUmPs2G4NCn8oV9mOwtv6Xn1WSgCLcBGAs/s1600/Portada%2B5%2BDatos%2BCuriosos%2BUva%2BMalbec%2B01.jpg', 'Uva Malbec', 'Uvas pequeñas y de color morado muy intenso y oscuro. La producción es muy abundante. El sabor de las uvas es intenso, y suele ser usado para elaborar jugos o vinos tintos conocidos como Bordeaux. Es una planta muy resistente a las plagas y enfermedades, que puede ser cultivada en invernaderos o al exterior. Las uvas maduran a finales de verano o comienzos de otoño.', 230.00, 20),
(15, 'Pera', 'https://www.gob.mx/cms/uploads/article/main_image/71887/Peras.jpg', 'Pera Bartlett', 'Las peras Bartlett tienen una textura carnosa. Además de comerlas frescas, se puede disfrutar de su delicioso sabor y suave textura en una gran variedad de platos. Las Bartlett cortadas en rodajas son el complemento perfecto para una ensalada verde. O puedes servir simplemente trozos de Bartlett recién cortados con queso para un aperitivo elegante.', 170.00, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fruit_shop_purchasecart`
--

CREATE TABLE `fruit_shop_purchasecart` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `state` varchar(256) NOT NULL,
  `purchase_code` varchar(256) DEFAULT NULL,
  `fruit_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fruit_shop_purchasecart`
--

INSERT INTO `fruit_shop_purchasecart` (`id`, `quantity`, `state`, `purchase_code`, `fruit_id`, `user_id`) VALUES
(1, 3, 'en_proceso_de_compra', 'OXSJHLJP6MSDCQ4', 1, 1),
(2, 8, 'en_proceso_de_compra', 'OXSJHLJP6MSDCQ4', 2, 1),
(3, 6, 'en_proceso_de_compra', '5A9KDN2XOVI5XKR', 3, 1),
(6, 4, 'en_proceso_de_compra', '96H420D2OS26ANB', 2, 1),
(7, 3, 'en_carrito', NULL, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profiles_avatar`
--

CREATE TABLE `profiles_avatar` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profiles_avatar`
--

INSERT INTO `profiles_avatar` (`id`, `image`, `user_id`) VALUES
(1, 'avatares/avatar1_Yd6jrMF.png', 1),
(2, 'avatares/avatar2_1YUJTgl.png', 4),
(3, 'avatares/avatar3_qLUhKhD.png', 5),
(8, 'avatares/avatar2_UVZHT3u.png', NULL),
(9, 'avatares/avatar1_GQx3s9u.png', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `fruit_shop_fruit`
--
ALTER TABLE `fruit_shop_fruit`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fruit_shop_purchasecart`
--
ALTER TABLE `fruit_shop_purchasecart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fruit_shop_purchasecart_fruit_id_e70851e2_fk_fruit_shop_fruit_id` (`fruit_id`),
  ADD KEY `fruit_shop_purchasecart_user_id_79524af9_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `profiles_avatar`
--
ALTER TABLE `profiles_avatar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `fruit_shop_fruit`
--
ALTER TABLE `fruit_shop_fruit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `fruit_shop_purchasecart`
--
ALTER TABLE `fruit_shop_purchasecart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `profiles_avatar`
--
ALTER TABLE `profiles_avatar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `fruit_shop_purchasecart`
--
ALTER TABLE `fruit_shop_purchasecart`
  ADD CONSTRAINT `fruit_shop_purchasecart_fruit_id_e70851e2_fk_fruit_shop_fruit_id` FOREIGN KEY (`fruit_id`) REFERENCES `fruit_shop_fruit` (`id`),
  ADD CONSTRAINT `fruit_shop_purchasecart_user_id_79524af9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `profiles_avatar`
--
ALTER TABLE `profiles_avatar`
  ADD CONSTRAINT `profiles_avatar_user_id_e042d12c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
