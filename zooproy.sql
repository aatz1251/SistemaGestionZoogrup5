-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-01-2025 a las 05:49:20
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `zooproy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animales`
--

CREATE TABLE `animales` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `especie` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `peso` double NOT NULL,
  `estadoSalud` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `animales`
--

INSERT INTO `animales` (`id`, `nombre`, `especie`, `edad`, `peso`, `estadoSalud`) VALUES
(1, 'pepillo', 'kakatua', 5, 12, 'bueno'),
(2, 'coco', 'reptil', 21, 120, 'bueno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aves`
--

CREATE TABLE `aves` (
  `id` int(11) NOT NULL,
  `id_animal` int(11) DEFAULT NULL,
  `tipoVuelo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aves`
--

INSERT INTO `aves` (`id`, `id_animal`, `tipoVuelo`) VALUES
(1, 1, 'sdawf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuidadores`
--

CREATE TABLE `cuidadores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `ci` varchar(20) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `especialidad` varchar(50) NOT NULL,
  `turno` varchar(20) NOT NULL,
  `sueldo` double NOT NULL,
  `especialidadAnimal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuidadores`
--

INSERT INTO `cuidadores` (`id`, `nombre`, `edad`, `ci`, `sexo`, `especialidad`, `turno`, `sueldo`, `especialidadAnimal`) VALUES
(8, 'simon', 21, '3534', 'masculino', 'veterinaria', 'tarde', 5000, 'mamiferos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `ci` varchar(20) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `especialidad` varchar(50) DEFAULT NULL,
  `turno` varchar(20) DEFAULT NULL,
  `sueldo` double NOT NULL,
  `puesto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `edad`, `ci`, `sexo`, `especialidad`, `turno`, `sueldo`, `puesto`) VALUES
(1, 'aasdda', 21, '2345', 'masculino', 'sadaw', 'tarde', 2312, 'Cuidador'),
(2, 'aasdda', 21, '2345', 'masculino', 'sadaw', 'tarde', 2312, 'Cuidador'),
(3, 'asaw', 21, '2311', 'dfaa', 'dawcas', 'asad', 2310, 'Cuidador'),
(4, 'dfsefsdf', 21, '34532', 'gdrgd', 'sdfsef', 'hfhfghg', 3435, 'Cuidador'),
(5, 'aasdda', 21, '2345', 'masculino', 'sadaw', 'tarde', 2312, 'Cuidador'),
(6, 'juanito', 54, '342', 'faa', 'sdasd', 'asdas', 4567, 'Cuidador'),
(7, 'kick', 21, '43323', 'aerasa', 'sdawdaw', 'sdawd', 1234, 'Encargado'),
(8, 'simon', 21, '3534', 'masculino', 'veterinaria', 'tarde', 5000, 'Cuidador'),
(9, 'Aramis', 34, '34231', 'masculino', 'reptiles', 'mañana', 6000, 'Encargado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encargados`
--

CREATE TABLE `encargados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `ci` varchar(20) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `especialidad` varchar(50) NOT NULL,
  `turno` varchar(20) NOT NULL,
  `sueldo` double NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `tipoEmpleado` varchar(20) DEFAULT 'Encargado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `encargados`
--

INSERT INTO `encargados` (`id`, `nombre`, `edad`, `ci`, `sexo`, `especialidad`, `turno`, `sueldo`, `cargo`, `tipoEmpleado`) VALUES
(9, 'Aramis', 34, '34231', 'masculino', 'reptiles', 'mañana', 6000, 'gerente', 'Encargado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mamiferos`
--

CREATE TABLE `mamiferos` (
  `id` int(11) NOT NULL,
  `id_animal` int(11) DEFAULT NULL,
  `tipoAlimentacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peces`
--

CREATE TABLE `peces` (
  `id` int(11) NOT NULL,
  `id_animal` int(11) DEFAULT NULL,
  `tipoAgua` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reptiles`
--

CREATE TABLE `reptiles` (
  `id` int(11) NOT NULL,
  `id_animal` int(11) DEFAULT NULL,
  `tipoPiel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reptiles`
--

INSERT INTO `reptiles` (`id`, `id_animal`, `tipoPiel`) VALUES
(1, 2, 'escamoso');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `animales`
--
ALTER TABLE `animales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aves`
--
ALTER TABLE `aves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_animal` (`id_animal`);

--
-- Indices de la tabla `cuidadores`
--
ALTER TABLE `cuidadores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `encargados`
--
ALTER TABLE `encargados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mamiferos`
--
ALTER TABLE `mamiferos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_animal` (`id_animal`);

--
-- Indices de la tabla `peces`
--
ALTER TABLE `peces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_animal` (`id_animal`);

--
-- Indices de la tabla `reptiles`
--
ALTER TABLE `reptiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_animal` (`id_animal`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `animales`
--
ALTER TABLE `animales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `aves`
--
ALTER TABLE `aves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cuidadores`
--
ALTER TABLE `cuidadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `encargados`
--
ALTER TABLE `encargados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `mamiferos`
--
ALTER TABLE `mamiferos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `peces`
--
ALTER TABLE `peces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reptiles`
--
ALTER TABLE `reptiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aves`
--
ALTER TABLE `aves`
  ADD CONSTRAINT `aves_ibfk_1` FOREIGN KEY (`id_animal`) REFERENCES `animales` (`id`);

--
-- Filtros para la tabla `mamiferos`
--
ALTER TABLE `mamiferos`
  ADD CONSTRAINT `mamiferos_ibfk_1` FOREIGN KEY (`id_animal`) REFERENCES `animales` (`id`);

--
-- Filtros para la tabla `peces`
--
ALTER TABLE `peces`
  ADD CONSTRAINT `peces_ibfk_1` FOREIGN KEY (`id_animal`) REFERENCES `animales` (`id`);

--
-- Filtros para la tabla `reptiles`
--
ALTER TABLE `reptiles`
  ADD CONSTRAINT `reptiles_ibfk_1` FOREIGN KEY (`id_animal`) REFERENCES `animales` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
