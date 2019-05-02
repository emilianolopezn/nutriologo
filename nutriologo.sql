-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 02, 2019 at 07:44 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `nutriologo`
--

-- --------------------------------------------------------

--
-- Table structure for table `comidas_dieta`
--

CREATE TABLE `comidas_dieta` (
  `id` int(11) NOT NULL,
  `id_dieta` int(11) NOT NULL,
  `id_dia_semana` int(11) NOT NULL,
  `id_tiempo_alimentacion` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comidas_dieta`
--

INSERT INTO `comidas_dieta` (`id`, `id_dieta`, `id_dia_semana`, `id_tiempo_alimentacion`, `titulo`, `descripcion`, `created_at`, `updated_at`) VALUES
(3, 3, 1, 1, 'q', 'w', '2019-04-30 08:38:39', '2019-04-30 08:38:39'),
(4, 3, 1, 2, 'r', 't', '2019-04-30 08:38:39', '2019-04-30 08:38:39'),
(5, 3, 1, 3, 'y', 'u', '2019-04-30 08:38:39', '2019-04-30 08:38:39'),
(6, 3, 2, 1, 'i', 'o', '2019-04-30 08:38:39', '2019-04-30 08:38:39'),
(7, 3, 2, 2, 'p', 'a', '2019-04-30 08:38:39', '2019-04-30 08:38:39'),
(8, 3, 2, 3, 's', 'd', '2019-04-30 08:38:39', '2019-04-30 08:38:39'),
(9, 3, 3, 1, 'f', 'g', '2019-04-30 08:38:39', '2019-04-30 08:38:39'),
(10, 3, 3, 2, 'h', 'j', '2019-04-30 08:38:39', '2019-04-30 08:38:39'),
(11, 3, 3, 3, 'k', 'l', '2019-04-30 08:38:39', '2019-04-30 08:38:39'),
(12, 3, 4, 1, 'z', 'x', '2019-04-30 08:38:39', '2019-04-30 08:38:39'),
(13, 3, 4, 2, 'c', 'v', '2019-04-30 08:38:39', '2019-04-30 08:38:39'),
(14, 3, 4, 3, 'b', 'n', '2019-04-30 08:38:39', '2019-04-30 08:38:39'),
(15, 3, 5, 1, 'm', 'g', '2019-04-30 08:38:39', '2019-04-30 08:38:39'),
(16, 3, 5, 2, 'f', 'd', '2019-04-30 08:38:39', '2019-04-30 08:38:39'),
(17, 3, 5, 3, 'r', 'tg', '2019-04-30 08:38:39', '2019-04-30 08:38:39'),
(18, 3, 6, 1, 'h', 'k', '2019-04-30 08:38:39', '2019-04-30 08:38:39'),
(19, 3, 6, 2, 'b', 'v', '2019-04-30 08:38:39', '2019-04-30 08:38:39'),
(20, 3, 6, 3, 'g', 'j', '2019-04-30 08:38:39', '2019-04-30 08:38:39'),
(21, 3, 7, 1, 'j', 'vg', '2019-04-30 08:38:39', '2019-04-30 08:38:39'),
(22, 3, 7, 2, 'h', 'k', '2019-04-30 08:38:39', '2019-04-30 08:38:39'),
(23, 3, 7, 3, 'h', 'b', '2019-04-30 08:38:39', '2019-04-30 08:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `dias_semana`
--

CREATE TABLE `dias_semana` (
  `id` int(11) NOT NULL,
  `nombre` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dias_semana`
--

INSERT INTO `dias_semana` (`id`, `nombre`) VALUES
(1, 'Lunes'),
(2, 'Martes'),
(3, 'Miércoles'),
(4, 'Jueves'),
(5, 'Viernes'),
(6, 'Sábado'),
(7, 'Domingo');

-- --------------------------------------------------------

--
-- Table structure for table `dietas`
--

CREATE TABLE `dietas` (
  `id` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `inicio_semana` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dietas`
--

INSERT INTO `dietas` (`id`, `id_paciente`, `inicio_semana`, `created_at`, `updated_at`) VALUES
(3, 4, '2019-04-29', '2019-04-30 08:38:39', '2019-04-30 08:38:39');

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
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pacientes`
--

CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `nacimiento` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pacientes`
--

INSERT INTO `pacientes` (`id`, `nombre`, `apellidos`, `nacimiento`, `created_at`, `updated_at`) VALUES
(4, 'Maria', 'Garcia', '1988-04-08 00:00:00', '2019-04-02 08:09:24', '2019-04-02 08:09:24'),
(5, 'Jose', 'Gutierrez', '2019-04-04 00:00:00', '2019-04-05 02:22:41', '2019-04-05 02:22:41');

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
-- Table structure for table `tiempos_alimentacion`
--

CREATE TABLE `tiempos_alimentacion` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tiempos_alimentacion`
--

INSERT INTO `tiempos_alimentacion` (`id`, `descripcion`) VALUES
(1, 'Desayuno'),
(2, 'Comida'),
(3, 'Cena');

-- --------------------------------------------------------

--
-- Table structure for table `tipos_usuario`
--

CREATE TABLE `tipos_usuario` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tipos_usuario`
--

INSERT INTO `tipos_usuario` (`id`, `descripcion`) VALUES
(1, 'Nutriólogo'),
(2, 'Paciente');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `foto`, `id_tipo_usuario`, `id_paciente`) VALUES
(1, 'Emiliano', 'emiliano@correo.com', NULL, '$2y$10$0PsNHxCUW3Y6fPgdqTaY3OEYon3kXFUiZoB/bgJbp79jQbkg1u9nm', '6OFIHHWHF0SVUEMgcDTGbchbDOyjUGZm2uu5fAKxz0NDfIqsNTdaytw40ZfN', '2019-02-22 02:04:17', '2019-03-12 06:58:35', 'p11552348715images.jpeg', 1, NULL),
(4, 'Maria', 'maria@correo.com', NULL, '$2y$10$wNoB9nOvtkakEo//JXRtc.91BMjT0Bmk4LW3BDqj2I0A85cYSr50q', NULL, '2019-04-02 08:09:24', '2019-04-02 08:09:24', NULL, 2, 4),
(5, 'Jose', 'jose@correo.com', NULL, '$2y$10$I40SW/cIKdLvhh.neiATXuPuh2qnjWIlSouULjspp0nMuo4mlqz86', NULL, '2019-04-05 02:22:41', '2019-04-05 02:22:41', NULL, 2, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comidas_dieta`
--
ALTER TABLE `comidas_dieta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_dieta` (`id_dieta`,`id_dia_semana`,`id_tiempo_alimentacion`),
  ADD KEY `id_dia_semana` (`id_dia_semana`),
  ADD KEY `id_tiempo_alimentacion` (`id_tiempo_alimentacion`);

--
-- Indexes for table `dias_semana`
--
ALTER TABLE `dias_semana`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dietas`
--
ALTER TABLE `dietas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_paciente` (`id_paciente`,`inicio_semana`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tiempos_alimentacion`
--
ALTER TABLE `tiempos_alimentacion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipos_usuario`
--
ALTER TABLE `tipos_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_tipo_usuario` (`id_tipo_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comidas_dieta`
--
ALTER TABLE `comidas_dieta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `dias_semana`
--
ALTER TABLE `dias_semana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dietas`
--
ALTER TABLE `dietas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tiempos_alimentacion`
--
ALTER TABLE `tiempos_alimentacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tipos_usuario`
--
ALTER TABLE `tipos_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comidas_dieta`
--
ALTER TABLE `comidas_dieta`
  ADD CONSTRAINT `comidas_dieta_ibfk_1` FOREIGN KEY (`id_dia_semana`) REFERENCES `dias_semana` (`id`),
  ADD CONSTRAINT `comidas_dieta_ibfk_2` FOREIGN KEY (`id_dieta`) REFERENCES `dietas` (`id`),
  ADD CONSTRAINT `comidas_dieta_ibfk_3` FOREIGN KEY (`id_tiempo_alimentacion`) REFERENCES `tiempos_alimentacion` (`id`);

--
-- Constraints for table `dietas`
--
ALTER TABLE `dietas`
  ADD CONSTRAINT `dietas_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipos_usuario` (`id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id`);
