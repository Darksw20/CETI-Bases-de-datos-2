-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-09-2017 a las 19:47:46
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ceti`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `academia`
--

CREATE TABLE `academia` (
  `Codigo` tinyint(4) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `division` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `registro` bigint(6) NOT NULL,
  `A_Paterno` varchar(20) DEFAULT NULL,
  `A_Materno` varchar(20) DEFAULT NULL,
  `colonia` varchar(50) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `domicilio` varchar(90) DEFAULT NULL,
  `celular` bigint(20) DEFAULT NULL,
  `cumpleaños` date DEFAULT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `municipio` tinyint(4) DEFAULT NULL,
  `carrera` smallint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`registro`, `A_Paterno`, `A_Materno`, `colonia`, `sexo`, `domicilio`, `celular`, `cumpleaños`, `nombre`, `municipio`, `carrera`) VALUES
(14100070, 'Delgadillo', 'Hernandez', 'Fraccionamiento Rinconadas del valle', 'H', 'Calle Rinconadas de los Alamos #48', 3331595286, '1998-01-02', 'Ricardo Alexander', 2, 200),
(14100206, 'Partida', 'Rincon', 'Fraccionamiento los Molinos', 'H', 'Av. Molino de viento #8', 3321604389, '1998-12-22', 'Santiago', 2, 200),
(14300113, 'de Santiago', 'Plascencia', 'Santa Margarita', 'H', 'San Inocencio #1838', 3311308954, '1999-05-23', 'Carlos Ivan', 4, 200),
(14300292, 'Navarro', 'Viña', 'La Calma', 'H', 'Orion #3455 int B-4', 3312824894, '1999-05-20', 'Ricardo Gabriel', 2, 200),
(14300354, 'Rodriguez', 'Olmos', 'Jardines del Eden', 'H', 'Calle Elisa #374', 3312609860, '1999-07-18', 'Alam Giovanni', 3, 200),
(14300843, 'Elguera', 'Mora', 'Santa Margarita', 'H', 'Santa Lucrecia #289', 3311012305, '1998-11-30', 'Pedro Miguel', 2, 200),
(15100002, 'Aceves', 'Blanco', 'La antigua penal', 'H', '12 de octubre #771', 3313608727, '1999-05-29', 'Moises Isaac', 4, 200),
(15100028, 'Angulo', 'Sanchez', 'Bugambilias Country', 'H', 'Avenida Guadalupe #2110 - 6', 3320094441, '1999-08-02', 'Danae', 2, 200),
(15100029, 'Antolin', 'Chavarin', 'Ladron de Guevara', 'H', 'Bernardo de Balbuena #595', 3338466513, '1999-06-26', 'Mauro Alejandro', 4, 200),
(15100068, 'Casillas', 'Cervantes', 'Parques de Santa Maria', 'H', 'Bahia de los Lobos 2831 int 60', 3317624716, '1999-03-12', 'Aldo Ernesto', 2, 200),
(15100104, 'Enriquez', 'Ascencio', 'Paraisos del Colli', 'H', 'Volcan Quinceo #892', 3339738809, '1999-11-23', 'Owen Jesus', 2, 200),
(15100115, 'Fernandez', 'Calleja', 'Villa de los Belenes', 'M', 'Dr. Diego Aranda y Carpintero #570', 3316955957, '1998-12-19', 'Ana Carolina', 2, 200),
(15100208, 'Mariscal', 'Pesqueda', 'Oblatos', 'H', 'Hacienda de Tala #2382', 3313218233, '1998-09-06', 'Ruben Alejandro', 4, 200),
(15100240, 'Moreno', 'Rubio', 'Parques de la primavera', 'H', 'Parques de la primavera 209 int 25', 0, '1998-09-02', 'Itsvan', 2, 200),
(15100256, 'Nuño', 'Aguila', 'El Briseño', 'H', 'Juan Aldama #10', 0, '1999-05-24', 'Pedro Antonio', 2, 200),
(15100336, 'Santillan', 'Cuellar', 'Linda Vista', 'H', 'Naranjos #496', 3334021572, '1999-06-03', 'Yesua Alexandro', 2, 200),
(15100346, 'Torres', 'Aceves', 'Lagos del Countri', 'H', 'Avenida Patria #3000 Torre 2 Depa E', 3331777920, '1999-04-21', 'Sergio Alejandro', 2, 200),
(15100352, 'Trujillo', 'Rivera', 'Independencia', 'H', 'Fidel Velazquez A36 int 12', 3333939633, '1998-09-23', 'Jesus Alberto', 4, 200),
(15100359, 'Vazquez', 'Cruz', 'Santa Elena de la Cruz', 'H', 'Calle evora #1804', 3318046539, '1998-12-15', 'Ernesto Benjamin', 4, 200),
(15100717, 'Lopez', 'Dimas', 'Jardines de los Belenes', 'H', 'Privada Deportes #24-A', 3319270276, '1998-04-11', 'Bryan Osbaldo', 2, 200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `Codigo` tinyint(4) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `carrera` smallint(4) DEFAULT NULL,
  `academia` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `ID_Carrera` smallint(4) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `division` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`ID_Carrera`, `nombre`, `division`) VALUES
(200, 'Desarrollo de Software', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `division`
--

CREATE TABLE `division` (
  `ID_division` tinyint(4) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion`
--

CREATE TABLE `evaluacion` (
  `clave` tinyint(4) NOT NULL,
  `calificacion` tinyint(4) DEFAULT NULL,
  `periodo` date DEFAULT NULL,
  `alumn` bigint(6) DEFAULT NULL,
  `profesor` tinyint(4) DEFAULT NULL,
  `asignatura` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `codigo` tinyint(4) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`codigo`, `nombre`) VALUES
(1, 'Guadalajara'),
(2, 'Zapopan'),
(3, 'Tlajomulco de Zuñiga'),
(4, 'Puerto Vallarta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `nomina` tinyint(4) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `A_Paterno` varchar(20) DEFAULT NULL,
  `A_Materno` varchar(20) DEFAULT NULL,
  `carrera` smallint(4) DEFAULT NULL,
  `academia` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `academia`
--
ALTER TABLE `academia`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `division` (`division`);

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`registro`),
  ADD KEY `alumno_ibfk_1` (`municipio`),
  ADD KEY `carrera` (`carrera`);

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `asignatura_ibfk_2` (`academia`),
  ADD KEY `carrera` (`carrera`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`ID_Carrera`),
  ADD KEY `division` (`division`);

--
-- Indices de la tabla `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`ID_division`);

--
-- Indices de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD PRIMARY KEY (`clave`),
  ADD KEY `profesor` (`profesor`),
  ADD KEY `alumn` (`alumn`),
  ADD KEY `asignatura` (`asignatura`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`nomina`),
  ADD KEY `profesor_ibfk_2` (`academia`),
  ADD KEY `carrera` (`carrera`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `academia`
--
ALTER TABLE `academia`
  ADD CONSTRAINT `academia_ibfk_1` FOREIGN KEY (`division`) REFERENCES `division` (`ID_division`);

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`municipio`) REFERENCES `municipio` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `alumno_ibfk_2` FOREIGN KEY (`carrera`) REFERENCES `carrera` (`ID_Carrera`);

--
-- Filtros para la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD CONSTRAINT `asignatura_ibfk_2` FOREIGN KEY (`academia`) REFERENCES `academia` (`Codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asignatura_ibfk_3` FOREIGN KEY (`carrera`) REFERENCES `carrera` (`ID_Carrera`);

--
-- Filtros para la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD CONSTRAINT `carrera_ibfk_1` FOREIGN KEY (`division`) REFERENCES `division` (`ID_division`);

--
-- Filtros para la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD CONSTRAINT `evaluacion_ibfk_1` FOREIGN KEY (`profesor`) REFERENCES `profesor` (`nomina`),
  ADD CONSTRAINT `evaluacion_ibfk_2` FOREIGN KEY (`alumn`) REFERENCES `alumno` (`registro`),
  ADD CONSTRAINT `evaluacion_ibfk_3` FOREIGN KEY (`asignatura`) REFERENCES `asignatura` (`Codigo`);

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `profesor_ibfk_2` FOREIGN KEY (`academia`) REFERENCES `academia` (`Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `profesor_ibfk_3` FOREIGN KEY (`carrera`) REFERENCES `carrera` (`ID_Carrera`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
