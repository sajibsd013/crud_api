-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2022 at 10:01 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_api_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add events', 7, 'add_events'),
(26, 'Can change events', 7, 'change_events'),
(27, 'Can delete events', 7, 'delete_events'),
(28, 'Can view events', 7, 'view_events');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$6PVddm8wFS23A94t16GnCO$jGOmzH/K+KXRt5MMCFtaCGFKz8GLcSS1TzAqpcIy2ks=', '2022-04-19 13:17:31.954370', 1, 'admin', '', '', '', 1, 1, '2022-04-19 13:17:19.825474');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-04-19 13:17:49.264433', '1', 'Events object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-04-20 11:53:03.050810', '150', 'Events object (150)', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(3, '2022-04-20 11:53:09.769871', '149', 'Events object (149)', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(4, '2022-04-20 11:53:22.302944', '148', 'Events object (148)', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(5, '2022-04-20 11:53:29.133771', '145', 'Events object (145)', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(6, '2022-04-20 11:53:36.171463', '142', 'Events object (142)', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(7, '2022-04-20 11:53:43.502833', '139', 'Events object (139)', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(8, '2022-04-20 11:53:50.373400', '136', 'Events object (136)', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(9, '2022-04-20 11:53:55.547805', '133', 'Events object (133)', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(10, '2022-04-20 11:54:02.248393', '129', 'Events object (129)', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'events', 'events'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-04-19 13:07:14.871687'),
(2, 'auth', '0001_initial', '2022-04-19 13:07:22.212338'),
(3, 'admin', '0001_initial', '2022-04-19 13:07:23.261613'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-04-19 13:07:23.286131'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-19 13:07:23.308117'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-04-19 13:07:23.789374'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-04-19 13:07:25.451086'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-04-19 13:07:25.545054'),
(9, 'auth', '0004_alter_user_username_opts', '2022-04-19 13:07:25.585005'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-04-19 13:07:25.942520'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-04-19 13:07:25.961821'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-04-19 13:07:26.000997'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-04-19 13:07:26.058140'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-04-19 13:07:26.112500'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-04-19 13:07:26.351540'),
(16, 'auth', '0011_update_proxy_permissions', '2022-04-19 13:07:26.480042'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-04-19 13:07:26.679200'),
(18, 'events', '0001_initial', '2022-04-19 13:07:26.834040'),
(19, 'sessions', '0001_initial', '2022-04-19 13:07:27.041453'),
(20, 'events', '0002_alter_events_table', '2022-04-19 13:08:37.509625');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('6n31uq1d3lv242ydl5ah0br9djkskxem', '.eJxVjM0OwiAQhN-FsyE0_HU9evcZyLILUjWQlPZkfHcl6UFPk8z3zbxEwH0rYe9pDQuLs5jE6beLSI9UB-A71luT1Oq2LlEORR60y2vj9Lwc7t9BwV6-a9IKktfOWFCGM42YPICeo0cAn53NboacvWFOROzIKogcE6JH48T7A813ODI:1ngnjY:NF1Nhs5iqj7auZNeQr6Jb3weNQ9vnyV1DZdkRS03nXA', '2022-05-03 13:17:32.153605');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Location` varchar(60) NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `Name`, `Location`, `Date`) VALUES
(221, 'User-centric contant-based nerual-net', 'Russia', '2021-05-19 22:52:00'),
(222, 'Lorem ipsum dolor sit amet consectetur adipisicing', 'United States', '2022-04-07 22:53:00'),
(223, 'Dolor sit amet consectetur adipisicing', 'Macedonia', '2022-04-06 22:53:00'),
(224, 'Ispum dolor sit amet consectetur', 'China', '2022-04-01 22:54:00'),
(225, 'Lorem ipsum dolor sit amet', 'Russia', '2022-04-14 22:59:00'),
(226, 'labore distinctio maxime', 'United States', '2022-04-19 23:00:00'),
(227, 'itaque blanditiis nihil praesen', 'Macedonia', '2022-04-20 23:00:00'),
(229, 'soluta recusandae hic iste nulla corporis', 'United States', '2022-04-05 23:01:00'),
(230, 'litia accusamus magnam ex quisquam simi', 'United States', '2022-04-21 23:02:00'),
(231, 'Maiores reiciendis vel', 'Russia', '2022-01-12 23:02:00'),
(236, 'Aagnam ex quisquam', 'Russia', '2022-04-14 21:37:00'),
(237, 'Ispum dolor sit amet consectetur', 'El Salvador', '2022-04-20 21:43:00'),
(238, 'cteturIspum dolor sit amet consectetur', 'El Salvador', '2022-04-10 01:19:00'),
(239, 'dolor sit amet consectetur', 'Macedonia', '2022-04-17 01:21:00'),
(240, 'Ispum dolor sit amet consectetur', 'Macedonia', '2022-04-16 01:21:00'),
(241, 'Ispuor sit amet consectetur', 'Russia', '2022-04-15 01:22:00'),
(242, 'nsectetur nsectetur', 'China', '2022-04-24 01:23:00'),
(243, 'TF g asx dxsds', 'Macedonia', '2022-04-20 01:24:00'),
(245, 'Abns jasm sdx jscsf', 'Macedonia', '2022-04-12 01:29:00'),
(246, 'cshcks dcks', 'El Salvador', '2022-03-23 01:30:00'),
(247, 'Lotejh msbd cshcks dcks', 'United States', '2022-04-27 01:31:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
