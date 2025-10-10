-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-10-2025 a las 06:38:12
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectosemestral`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casereportform`
--

CREATE TABLE `casereportform` (
  `codigo` varchar(10) NOT NULL,
  `rut_usuario` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `casereportform`
--

INSERT INTO `casereportform` (`codigo`, `rut_usuario`) VALUES
('X00', '11111111-1'),
('Y01', '22222222-2'),
('X02', '33333333-3'),
('Y03', '44444444-4'),
('X04', '55555555-5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE `log` (
  `id_log` int(11) NOT NULL,
  `detalle` text DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `rut_usuario` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `log`
--

INSERT INTO `log` (`id_log`, `detalle`, `fecha`, `rut_usuario`) VALUES
(1, 'Ingreso de participante X00', '2025-10-10 00:36:22', '11111111-1'),
(2, 'Ingreso de participante Y01', '2025-10-10 00:36:22', '22222222-2'),
(3, 'Revisión de datos de X02', '2025-10-10 00:36:22', '33333333-3'),
(4, 'Validación de participante Y03', '2025-10-10 00:36:22', '44444444-4'),
(5, 'Actualización de variables en X04', '2025-10-10 00:36:22', '55555555-5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participante`
--

CREATE TABLE `participante` (
  `codigo` varchar(10) NOT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `grupo` varchar(10) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `participante`
--

INSERT INTO `participante` (`codigo`, `nombres`, `apellidos`, `grupo`, `numero`) VALUES
('X00', 'Pedro', 'López', 'X', 1),
('X02', 'Diego', 'Ramírez', 'X', 3),
('X04', 'Tomás', 'Silva', 'X', 5),
('Y01', 'Carla', 'Méndez', 'Y', 2),
('Y03', 'Fernanda', 'Salas', 'Y', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `rut` varchar(12) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`rut`, `nombre`, `apellido`, `telefono`, `rol`) VALUES
('11111111-1', 'Ana', 'Gómez', '912345678', 1),
('22222222-2', 'Luis', 'Torres', '923456789', 2),
('33333333-3', 'María', 'Rojas', '934567890', 3),
('44444444-4', 'Javier', 'Pérez', '945678901', 2),
('55555555-5', 'Camila', 'Fuentes', '956789012', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `variables`
--

CREATE TABLE `variables` (
  `id_var` int(11) NOT NULL,
  `variable` varchar(100) DEFAULT NULL,
  `valor` varchar(100) DEFAULT NULL,
  `codigo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `variables`
--

INSERT INTO `variables` (`id_var`, `variable`, `valor`, `codigo`) VALUES
(1, 'Edad', '28', 'X00'),
(2, 'Peso', '70', 'X00'),
(3, 'Altura', '172', 'X00'),
(4, 'Edad', '34', 'Y01'),
(5, 'Peso', '60', 'Y01'),
(6, 'Altura', '160', 'Y01'),
(7, 'Edad', '45', 'X02'),
(8, 'Peso', '82', 'X02'),
(9, 'Altura', '180', 'X02'),
(10, 'Edad', '22', 'Y03'),
(11, 'Peso', '55', 'Y03'),
(12, 'Altura', '158', 'Y03'),
(13, 'Edad', '30', 'X04'),
(14, 'Peso', '75', 'X04'),
(15, 'Altura', '176', 'X04');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `casereportform`
--
ALTER TABLE `casereportform`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `rut_usuario` (`rut_usuario`);

--
-- Indices de la tabla `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `rut_usuario` (`rut_usuario`);

--
-- Indices de la tabla `participante`
--
ALTER TABLE `participante`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`rut`);

--
-- Indices de la tabla `variables`
--
ALTER TABLE `variables`
  ADD PRIMARY KEY (`id_var`),
  ADD KEY `codigo` (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `variables`
--
ALTER TABLE `variables`
  MODIFY `id_var` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `casereportform`
--
ALTER TABLE `casereportform`
  ADD CONSTRAINT `casereportform_ibfk_1` FOREIGN KEY (`codigo`) REFERENCES `participante` (`codigo`),
  ADD CONSTRAINT `casereportform_ibfk_2` FOREIGN KEY (`rut_usuario`) REFERENCES `usuario` (`rut`);

--
-- Filtros para la tabla `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`rut_usuario`) REFERENCES `usuario` (`rut`);

--
-- Filtros para la tabla `variables`
--
ALTER TABLE `variables`
  ADD CONSTRAINT `variables_ibfk_1` FOREIGN KEY (`codigo`) REFERENCES `casereportform` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
