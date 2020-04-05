-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2017 a las 15:52:03
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
-- Base de datos: `huaro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancha`
--

CREATE TABLE `cancha` (
  `PK_Cancha` tinyint(4) NOT NULL,
  `Nombre_cancha` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `Cod_Equipo` varchar(4) NOT NULL,
  `Suerte` varchar(2) DEFAULT NULL,
  `N_integrantes` tinyint(4) DEFAULT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `Seccion` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organiza`
--

CREATE TABLE `organiza` (
  `PK_Admin` int(11) NOT NULL,
  `Status` tinyint(4) DEFAULT NULL,
  `Estado` tinyint(1) DEFAULT NULL,
  `FK_Equipo` varchar(4) DEFAULT NULL,
  `FK_Staff` varchar(11) DEFAULT NULL,
  `FK_Cancha` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participante`
--

CREATE TABLE `participante` (
  `CUM` varchar(11) NOT NULL,
  `Nombre` varchar(40) DEFAULT NULL,
  `F_naci` date DEFAULT NULL,
  `Sexo` tinyint(1) DEFAULT NULL,
  `Seccion` varchar(3) DEFAULT NULL,
  `Grupo_S` varchar(9) DEFAULT NULL,
  `vigencia` date DEFAULT NULL,
  `A_Pat` varchar(20) DEFAULT NULL,
  `A_Mat` varchar(20) DEFAULT NULL,
  `Password` varchar(25) DEFAULT NULL,
  `FK_Equipos` varchar(4) DEFAULT NULL,
  `FK_TabS` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidos`
--

CREATE TABLE `partidos` (
  `Codigo` varchar(4) NOT NULL,
  `Puntos` smallint(6) DEFAULT NULL,
  `Ronda` tinyint(4) DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  `FK_Equipos` tinyint(4) DEFAULT NULL,
  `FK_Cancha` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `staff`
--

CREATE TABLE `staff` (
  `CUM` varchar(11) NOT NULL,
  `Asistencia` tinyint(1) DEFAULT NULL,
  `Nombre` varchar(40) DEFAULT NULL,
  `Vigencia` date DEFAULT NULL,
  `A_Pat` varchar(20) DEFAULT NULL,
  `A_Mat` varchar(20) DEFAULT NULL,
  `Password` varchar(25) DEFAULT NULL,
  `FK_TablaS` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_s`
--

CREATE TABLE `tabla_s` (
  `CUM` varchar(11) NOT NULL,
  `Sexo` tinyint(1) DEFAULT NULL,
  `Nombre` varchar(40) DEFAULT NULL,
  `A_Pat` varchar(20) DEFAULT NULL,
  `A_Mat` varchar(20) DEFAULT NULL,
  `vigencia` date DEFAULT NULL,
  `F_Naci` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cancha`
--
ALTER TABLE `cancha`
  ADD PRIMARY KEY (`PK_Cancha`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`Cod_Equipo`);

--
-- Indices de la tabla `organiza`
--
ALTER TABLE `organiza`
  ADD PRIMARY KEY (`PK_Admin`),
  ADD KEY `FK_Equipo` (`FK_Equipo`),
  ADD KEY `FK_Staff` (`FK_Staff`),
  ADD KEY `FK_Cancha` (`FK_Cancha`);

--
-- Indices de la tabla `participante`
--
ALTER TABLE `participante`
  ADD PRIMARY KEY (`CUM`),
  ADD KEY `FK_Equipos` (`FK_Equipos`),
  ADD KEY `FK_TabS` (`FK_TabS`);

--
-- Indices de la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `FK_Cancha` (`FK_Cancha`);

--
-- Indices de la tabla `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`CUM`),
  ADD KEY `FK_TablaS` (`FK_TablaS`);

--
-- Indices de la tabla `tabla_s`
--
ALTER TABLE `tabla_s`
  ADD PRIMARY KEY (`CUM`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `organiza`
--
ALTER TABLE `organiza`
  ADD CONSTRAINT `organiza_ibfk_1` FOREIGN KEY (`FK_Equipo`) REFERENCES `equipos` (`Cod_Equipo`),
  ADD CONSTRAINT `organiza_ibfk_2` FOREIGN KEY (`FK_Staff`) REFERENCES `staff` (`CUM`),
  ADD CONSTRAINT `organiza_ibfk_3` FOREIGN KEY (`FK_Cancha`) REFERENCES `cancha` (`PK_Cancha`);

--
-- Filtros para la tabla `participante`
--
ALTER TABLE `participante`
  ADD CONSTRAINT `participante_ibfk_1` FOREIGN KEY (`FK_Equipos`) REFERENCES `equipos` (`Cod_Equipo`),
  ADD CONSTRAINT `participante_ibfk_2` FOREIGN KEY (`FK_TabS`) REFERENCES `tabla_s` (`CUM`);

--
-- Filtros para la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD CONSTRAINT `partidos_ibfk_1` FOREIGN KEY (`FK_Cancha`) REFERENCES `cancha` (`PK_Cancha`);

--
-- Filtros para la tabla `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`FK_TablaS`) REFERENCES `tabla_s` (`CUM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
