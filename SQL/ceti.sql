-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2017 a las 18:46:54
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
  `ID_Academia` tinyint(4) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `Division` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `academia`
--

INSERT INTO `academia` (`ID_Academia`, `nombre`, `Division`) VALUES
(1, 'Informática', 1),
(2, 'Computación', 1),
(3, 'ITI', 1),
(4, 'Digitales', 1),
(5, 'Analógica', 1),
(6, 'Matemáticas', 3),
(7, 'Física', 3),
(8, 'Química', 3),
(9, 'Dibujo', 3),
(10, 'Metodología', 4),
(11, 'Inglés', 4),
(12, 'Industrial', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `Registro` int(11) NOT NULL,
  `Apellido_Paterno` varchar(20) DEFAULT NULL,
  `Apellido_Materno` varchar(20) DEFAULT NULL,
  `Nombre` varchar(40) DEFAULT NULL,
  `Celular` bigint(20) DEFAULT NULL,
  `Domicilio` varchar(40) DEFAULT NULL,
  `Colonia` varchar(40) DEFAULT NULL,
  `Sexo` char(1) DEFAULT NULL,
  `Fecha_de_Nacimiento` date DEFAULT NULL,
  `Carrera` smallint(6) DEFAULT NULL,
  `Municipio` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`Registro`, `Apellido_Paterno`, `Apellido_Materno`, `Nombre`, `Celular`, `Domicilio`, `Colonia`, `Sexo`, `Fecha_de_Nacimiento`, `Carrera`, `Municipio`) VALUES
(14100070, 'Delgadillo', 'Hernández', 'Ricardo Alexander', 3331595286, 'Calle Rinconadas de los álamos #48', 'Fraccionamiento Rinconadas del Valle', 'M', '1998-02-01', 200, 2),
(14100206, 'Partida', 'Rincon', 'Santiago', 3318046539, 'Av. Molino de viento #8', 'Fraccionamiento de los molinos', 'M', '1998-12-22', 200, 2),
(14300113, 'De Santiago', 'Plascencia', 'Carlos Ivan', 3311308954, 'San Inocencio #1838', 'Talpita', 'M', '1999-05-23', 200, 1),
(14300292, 'Navarro', 'Viña', 'Ricardo Gabriel', 3312824894, 'Orion #3455 int B-4', 'La calma', 'M', '1999-05-20', 200, 2),
(14300354, 'Rodríguez', 'Olmos', 'Alam Giovanni', 3312609860, 'Calle Elisa #374', 'Jardines del Edén', 'M', '1999-07-18', 200, 3),
(14300843, 'Elguera', 'Mora', 'Pedro Miguel', 3311012305, 'Santa Lucrecia #289', 'Santa Margarita', 'M', '1998-11-30', 200, 2),
(15100002, 'Aceves', 'Blanco', 'Moises Isaac', 3313608727, '12 de Octubre #771', 'La antigua penal', 'M', '1999-05-29', 200, 1),
(15100028, 'Angulo', 'Sánchez', 'Danae', 3320094441, 'Av. Guadalupe #2110 - 6', 'Bugambilias Country', 'M', '1999-08-02', 200, 2),
(15100029, 'Antolin', 'Chavarin', 'Mauro Alejandro', 3338466513, 'Bernardo de Balbuena #595', 'Ladron de Guevara', 'M', '1999-06-26', 200, 1),
(15100068, 'Casillas', 'Cervantes', 'Aldo Ernesto', 3317624716, 'Bahía de los Lobos #2831 int 60', 'Parques de Sta Maria', 'M', '1999-03-12', 200, 1),
(15100104, 'Enríquez', 'Ascencio', 'Owen Jesús', 3339738809, 'Volcan Quinceo', 'Paraisos del Colli', 'M', '1999-11-23', 200, 2),
(15100115, 'Fernandez', 'Calleja', 'Ana Carolina', 3316955957, 'Dr. Diego Aranda y Carpintero #570', 'Villa de los belenes', 'F', '1998-12-19', 200, 1),
(15100208, 'Mariscal', 'Pesqueda', 'Ruben Alejandro', 3313218233, 'Hacienda de Tala \"2382', 'Oblatos', 'M', '1998-09-06', 200, 1),
(15100240, 'Moreno', 'Rubio', 'Itsvan', 0, 'Parque de la Primavera 209 int 25', 'Parques de la Primavera', 'M', '1998-09-02', 200, 1),
(15100256, 'Nuño', 'Aguila', 'Pedro Antonio', 0, 'Juan Aldama #10', 'El Briseño', 'M', '1999-05-24', 200, 2),
(15100336, 'Santillan', 'Cuellar', 'Yesua Alexandro', 3334021572, 'Naranjos #496', 'Linda vista', 'M', '1998-06-03', 200, 2),
(15100346, 'Torres', 'Aceves', 'Sergio Alejandro', 3331777920, 'Av. Patria #3000 Torre 2 Departamento E', 'Lagos del Countri', 'M', '1999-04-21', 200, 2),
(15100352, 'Trujillo', 'Rivera', 'Jesús Alberto', 3333939633, 'Fidel Velazquez A36 int 12', 'Independencia', 'M', '1998-09-23', 200, 1),
(15100717, 'Lopez', 'Dimas', 'Bryan Osbaldo', 3319270276, 'Privada Deportes #24-A', 'Jardines de los Belenes', 'M', '1998-04-11', 200, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `ID_Asignatura` varchar(15) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `Carrera` smallint(4) DEFAULT NULL,
  `Academia` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`ID_Asignatura`, `nombre`, `Carrera`, `Academia`) VALUES
('MBCS2405BT', 'CTSV', 100, 10),
('MPF1605DSO', 'ARQUITECTURA DE COMPUTADORAS', 200, 4),
('MPF1705DSO', 'BD1', 200, 1),
('MPF1805DSO', 'REDES WAN', 200, 3),
('MPF1905DSO', 'ESTRUCTURA DE DATOS', 200, 2),
('MPF2005DSO', 'INTERFACES', 200, 5),
('MPF2106DSO', 'ORGANIZACION DE COMPUTADORAS', 200, 4),
('MPF2206DSO', 'BD2', 200, 1),
('MPF2306DSO', 'SISTEMAS OPERATIVOS', 200, 3),
('MPF2406DSO', 'PROGRA MOVIL', 200, 2),
('MPF2505MCC', 'ADMINISTRACION', 150, 10),
('MPF2506DSO', 'SMC', 200, 5),
('MPF2806MCC', 'METODOLOGIA', 150, 10),
('MPF3006MCC', 'INGLES Vl', 150, 11),
('MPPCO2605BT', 'INGLES V', 150, 11),
('MPPHU2906BT', 'FILOSOFIA', 100, 10),
('MPPMT2305BT', 'MATE V', 100, 6),
('MPPMT2706BT', 'MATE Vl', 100, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `ID_Carrera` smallint(6) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `Division` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`ID_Carrera`, `nombre`, `Division`) VALUES
(100, 'Ciencias_Básicas', 3),
(150, 'Ciencias_Administrativas', 4),
(200, 'Desarrollo_de_Software', 1),
(300, 'Control', 2),
(400, 'Electronica', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `division`
--

CREATE TABLE `division` (
  `ID_Division` tinyint(4) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `division`
--

INSERT INTO `division` (`ID_Division`, `nombre`) VALUES
(1, 'Información y Computación'),
(2, 'Control Automático'),
(3, 'Ciencias Básica'),
(4, 'Ciencias Administrativas'),
(5, 'Electrónica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluaciones`
--

CREATE TABLE `evaluaciones` (
  `clave` int(10) UNSIGNED NOT NULL,
  `calificacion` tinyint(4) DEFAULT NULL,
  `Periodo` varchar(15) DEFAULT NULL,
  `Alumno` int(4) DEFAULT NULL,
  `Profesor` bigint(4) DEFAULT NULL,
  `Asignatura` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `evaluaciones`
--

INSERT INTO `evaluaciones` (`clave`, `calificacion`, `Periodo`, `Alumno`, `Profesor`, `Asignatura`) VALUES
(1, 96, 'Feb - Jun', 15100028, 1000, 'MBCS2405BT'),
(2, 82, 'Feb - Jun', 15100028, 1001, 'MPF1605DSO'),
(3, 90, 'Feb - Jun', 15100028, 1002, 'MPF1705DSO'),
(4, 97, 'Feb - Jun', 15100028, 1005, 'MPF1805DSO'),
(5, 81, 'Feb - Jun', 15100028, 1003, 'MPF1905DSO'),
(6, 99, 'Feb - Jun', 15100028, 1004, 'MPF2005DSO'),
(7, 78, 'Feb - Jun', 15100028, 1007, 'MPF2505MCC'),
(8, 94, 'Feb - Jun', 15100028, 1008, 'MPPCO2605BT'),
(9, 99, 'Feb - Jun', 15100028, 1006, 'MPPMT2305BT'),
(10, 61, 'Ago - Dic', 15100028, 1015, 'MPF2106DSO'),
(11, 83, 'Ago - Dic', 15100028, 1003, 'MPF2206DSO'),
(12, 85, 'Ago - Dic', 15100028, 1012, 'MPF2306DSO'),
(13, 100, 'Ago - Dic', 15100028, 1014, 'MPF2406DSO'),
(14, 86, 'Ago - Dic', 15100028, 1013, 'MPF2506DSO'),
(15, 94, 'Ago - Dic', 15100028, 1011, 'MPF2806MCC'),
(16, 85, 'Ago - Dic', 15100028, 1016, 'MPF3006MCC'),
(17, 91, 'Ago - Dic', 15100028, 1010, 'MPPHU2906BT'),
(18, 100, 'Ago - Dic', 15100028, 1019, 'MPPMT2706BT'),
(19, 100, 'Feb - Jun', 15100002, 1000, 'MBCS2405BT'),
(20, 78, 'Feb - Jun', 15100002, 1001, 'MPF1605DSO'),
(21, 98, 'Feb - Jun', 15100002, 1002, 'MPF1705DSO'),
(22, 95, 'Feb - Jun', 15100002, 1005, 'MPF1805DSO'),
(23, 73, 'Feb - Jun', 15100002, 1003, 'MPF1905DSO'),
(24, 100, 'Feb - Jun', 15100002, 1004, 'MPF2005DSO'),
(25, 83, 'Feb - Jun', 15100002, 1007, 'MPF2505MCC'),
(26, 94, 'Feb - Jun', 15100002, 1008, 'MPPCO2605BT'),
(27, 88, 'Feb - Jun', 15100002, 1006, 'MPPMT2305BT'),
(28, 53, 'Ago - Dic', 15100002, 1015, 'MPF2106DSO'),
(29, 80, 'Ago - Dic', 15100002, 1003, 'MPF2206DSO'),
(30, 86, 'Ago - Dic', 15100002, 1012, 'MPF2306DSO'),
(31, 100, 'Ago - Dic', 15100002, 1014, 'MPF2406DSO'),
(32, 84, 'Ago - Dic', 15100002, 1013, 'MPF2506DSO'),
(33, 65, 'Ago - Dic', 15100002, 1011, 'MPF2806MCC'),
(34, 85, 'Ago - Dic', 15100002, 1016, 'MPF3006MCC'),
(35, 91, 'Ago - Dic', 15100002, 1010, 'MPPHU2906BT'),
(36, 95, 'Ago - Dic', 15100002, 1019, 'MPPMT2706BT'),
(37, 100, 'Feb - Jun', 15100068, 1000, 'MBCS2405BT'),
(38, 82, 'Feb - Jun', 15100068, 1001, 'MPF1605DSO'),
(39, 98, 'Feb - Jun', 15100068, 1002, 'MPF1705DSO'),
(40, 94, 'Feb - Jun', 15100068, 1005, 'MPF1805DSO'),
(41, 81, 'Feb - Jun', 15100068, 1003, 'MPF1905DSO'),
(42, 100, 'Feb - Jun', 15100068, 1004, 'MPF2005DSO'),
(43, 87, 'Feb - Jun', 15100068, 1007, 'MPF2505MCC'),
(44, 96, 'Feb - Jun', 15100068, 1008, 'MPPCO2605BT'),
(45, 100, 'Feb - Jun', 15100068, 1006, 'MPPMT2305BT'),
(46, 83, 'Ago - Dic', 15100068, 1015, 'MPF2106DSO'),
(47, 95, 'Ago - Dic', 15100068, 1003, 'MPF2206DSO'),
(48, 82, 'Ago - Dic', 15100068, 1012, 'MPF2306DSO'),
(49, 86, 'Ago - Dic', 15100068, 1014, 'MPF2406DSO'),
(50, 79, 'Ago - Dic', 15100068, 1013, 'MPF2506DSO'),
(51, 79, 'Ago - Dic', 15100068, 1011, 'MPF2806MCC'),
(52, 94, 'Ago - Dic', 15100068, 1016, 'MPF3006MCC'),
(53, 75, 'Ago - Dic', 15100068, 1010, 'MPPHU2906BT'),
(54, 93, 'Ago - Dic', 15100068, 1019, 'MPPMT2706BT'),
(55, 100, 'Feb - Jun', 15100104, 1000, 'MBCS2405BT'),
(56, 73, 'Feb - Jun', 15100104, 1001, 'MPF1605DSO'),
(57, 99, 'Feb - Jun', 15100104, 1002, 'MPF1705DSO'),
(58, 92, 'Feb - Jun', 15100104, 1005, 'MPF1805DSO'),
(59, 78, 'Feb - Jun', 15100104, 1003, 'MPF1905DSO'),
(60, 89, 'Feb - Jun', 15100104, 1004, 'MPF2005DSO'),
(61, 76, 'Feb - Jun', 15100104, 1007, 'MPF2505MCC'),
(62, 93, 'Feb - Jun', 15100104, 1008, 'MPPCO2605BT'),
(63, 85, 'Feb - Jun', 15100104, 1018, 'MPPMT2305BT'),
(64, 56, 'Ago - Dic', 15100104, 1015, 'MPF2106DSO'),
(65, 70, 'Ago - Dic', 15100104, 1003, 'MPF2206DSO'),
(66, 86, 'Ago - Dic', 15100104, 1012, 'MPF2306DSO'),
(67, 69, 'Ago - Dic', 15100104, 1014, 'MPF2406DSO'),
(68, 77, 'Ago - Dic', 15100104, 1013, 'MPF2506DSO'),
(69, 84, 'Ago - Dic', 15100104, 1011, 'MPF2806MCC'),
(70, 89, 'Ago - Dic', 15100104, 1016, 'MPF3006MCC'),
(71, 100, 'Ago - Dic', 15100104, 1010, 'MPPHU2906BT'),
(72, 100, 'Ago - Dic', 15100104, 1019, 'MPPMT2706BT'),
(73, 89, 'Feb - Jun', 15100352, 1000, 'MBCS2405BT'),
(74, 78, 'Feb - Jun', 15100352, 1001, 'MPF1605DSO'),
(75, 94, 'Feb - Jun', 15100352, 1002, 'MPF1705DSO'),
(76, 95, 'Feb - Jun', 15100352, 1005, 'MPF1805DSO'),
(77, 72, 'Feb - Jun', 15100352, 1003, 'MPF1905DSO'),
(78, 79, 'Feb - Jun', 15100352, 1004, 'MPF2005DSO'),
(79, 74, 'Feb - Jun', 15100352, 1007, 'MPF2505MCC'),
(80, 87, 'Feb - Jun', 15100352, 1008, 'MPPCO2605BT'),
(81, 81, 'Feb - Jun', 15100352, 1006, 'MPPMT2305BT'),
(82, 50, 'Ago - Dic', 15100352, 1015, 'MPF2106DSO'),
(83, 84, 'Ago - Dic', 15100352, 1003, 'MPF2206DSO'),
(84, 86, 'Ago - Dic', 15100352, 1012, 'MPF2306DSO'),
(85, 85, 'Ago - Dic', 15100352, 1014, 'MPF2406DSO'),
(86, 53, 'Ago - Dic', 15100352, 1013, 'MPF2506DSO'),
(87, 70, 'Ago - Dic', 15100352, 1011, 'MPF2806MCC'),
(88, 85, 'Ago - Dic', 15100352, 1016, 'MPF3006MCC'),
(89, 93, 'Ago - Dic', 15100352, 1010, 'MPPHU2906BT'),
(90, 82, 'Ago - Dic', 15100352, 1009, 'MPPMT2706BT'),
(91, 100, 'Feb - Jun', 15100717, 1000, 'MBCS2405BT'),
(92, 70, 'Feb - Jun', 15100717, 1001, 'MPF1605DSO'),
(93, 94, 'Feb - Jun', 15100717, 1002, 'MPF1705DSO'),
(94, 95, 'Feb - Jun', 15100717, 1005, 'MPF1805DSO'),
(95, 71, 'Feb - Jun', 15100717, 1003, 'MPF1905DSO'),
(96, 84, 'Feb - Jun', 15100717, 1004, 'MPF2005DSO'),
(97, 82, 'Feb - Jun', 15100717, 1007, 'MPF2505MCC'),
(98, 85, 'Feb - Jun', 15100717, 1008, 'MPPCO2605BT'),
(99, 84, 'Feb - Jun', 15100717, 1006, 'MPPMT2305BT'),
(100, 53, 'Ago - Dic', 15100717, 1015, 'MPF2106DSO'),
(101, 78, 'Ago - Dic', 15100717, 1003, 'MPF2206DSO'),
(102, 86, 'Ago - Dic', 15100717, 1012, 'MPF2306DSO'),
(103, 94, 'Ago - Dic', 15100717, 1014, 'MPF2406DSO'),
(104, 70, 'Ago - Dic', 15100717, 1013, 'MPF2506DSO'),
(105, 73, 'Ago - Dic', 15100717, 1011, 'MPF2806MCC'),
(106, 90, 'Ago - Dic', 15100717, 1016, 'MPF3006MCC'),
(107, 90, 'Ago - Dic', 15100717, 1010, 'MPPHU2906BT'),
(108, 95, 'Ago - Dic', 15100717, 1009, 'MPPMT2706BT'),
(109, 100, 'Feb - Jun', 15100256, 1000, 'MBCS2405BT'),
(110, 86, 'Feb - Jun', 15100256, 1001, 'MPF1605DSO'),
(111, 100, 'Feb - Jun', 15100256, 1002, 'MPF1705DSO'),
(112, 90, 'Feb - Jun', 15100256, 1005, 'MPF1805DSO'),
(113, 86, 'Feb - Jun', 15100256, 1003, 'MPF1905DSO'),
(114, 89, 'Feb - Jun', 15100256, 1004, 'MPF2005DSO'),
(115, 87, 'Feb - Jun', 15100256, 1007, 'MPF2505MCC'),
(116, 98, 'Feb - Jun', 15100256, 1008, 'MPPCO2605BT'),
(117, 94, 'Feb - Jun', 15100256, 1017, 'MPPMT2305BT'),
(118, 80, 'Ago - Dic', 15100256, 1015, 'MPF2106DSO'),
(119, 84, 'Ago - Dic', 15100256, 1003, 'MPF2206DSO'),
(120, 86, 'Ago - Dic', 15100256, 1012, 'MPF2306DSO'),
(121, 78, 'Ago - Dic', 15100256, 1014, 'MPF2406DSO'),
(122, 89, 'Ago - Dic', 15100256, 1013, 'MPF2506DSO'),
(123, 80, 'Ago - Dic', 15100256, 1011, 'MPF2806MCC'),
(124, 95, 'Ago - Dic', 15100256, 1016, 'MPF3006MCC'),
(125, 94, 'Ago - Dic', 15100256, 1010, 'MPPHU2906BT'),
(126, 94, 'Ago - Dic', 15100256, 1019, 'MPPMT2706BT'),
(127, 96, 'Feb - Jun', 14300843, 1000, 'MBCS2405BT'),
(128, 41, 'Feb - Jun', 14300843, 1001, 'MPF1605DSO'),
(129, 93, 'Feb - Jun', 14300843, 1002, 'MPF1705DSO'),
(130, 90, 'Feb - Jun', 14300843, 1005, 'MPF1805DSO'),
(131, 70, 'Feb - Jun', 14300843, 1003, 'MPF1905DSO'),
(132, 76, 'Feb - Jun', 14300843, 1004, 'MPF2005DSO'),
(133, 70, 'Feb - Jun', 14300843, 1007, 'MPF2505MCC'),
(134, 85, 'Feb - Jun', 14300843, 1008, 'MPPCO2605BT'),
(135, 81, 'Feb - Jun', 14300843, 1017, 'MPPMT2305BT'),
(136, 50, 'Ago - Dic', 14300843, 1015, 'MPF2106DSO'),
(137, 72, 'Ago - Dic', 14300843, 1003, 'MPF2206DSO'),
(138, 86, 'Ago - Dic', 14300843, 1012, 'MPF2306DSO'),
(139, 84, 'Ago - Dic', 14300843, 1014, 'MPF2406DSO'),
(140, 55, 'Ago - Dic', 14300843, 1013, 'MPF2506DSO'),
(141, 60, 'Ago - Dic', 14300843, 1011, 'MPF2806MCC'),
(142, 76, 'Ago - Dic', 14300843, 1016, 'MPF3006MCC'),
(143, 81, 'Ago - Dic', 14300843, 1010, 'MPPHU2906BT'),
(144, 87, 'Ago - Dic', 14300843, 1019, 'MPPMT2706BT'),
(145, 92, 'Feb - Jun', 14100070, 1000, 'MBCS2405BT'),
(146, 75, 'Feb - Jun', 14100070, 1001, 'MPF1605DSO'),
(147, 87, 'Feb - Jun', 14100070, 1002, 'MPF1705DSO'),
(148, 80, 'Feb - Jun', 14100070, 1003, 'MPF1805DSO'),
(149, 76, 'Feb - Jun', 14100070, 1004, 'MPF1905DSO'),
(150, 83, 'Feb - Jun', 14100070, 1005, 'MPF2005DSO'),
(151, 73, 'Feb - Jun', 14100070, 1006, 'MPF2505MCC'),
(152, 75, 'Feb - Jun', 14100070, 1007, 'MPPCO2605BT'),
(153, 85, 'Feb - Jun', 14100070, 1008, 'MPPMT2305BT'),
(154, 50, 'Ago - Dic', 14100070, 1009, 'MPPMT2706BT'),
(155, 72, 'Ago - Dic', 14100070, 1010, 'MPPHU2906BT'),
(156, 86, 'Ago - Dic', 14100070, 1011, 'MPF2806MCC'),
(157, 81, 'Ago - Dic', 14100070, 1012, 'MPF2306DSO'),
(158, 53, 'Ago - Dic', 14100070, 1013, 'MPF2506DSO'),
(159, 50, 'Ago - Dic', 14100070, 1014, 'MPF2406DSO'),
(160, 89, 'Ago - Dic', 14100070, 1015, 'MPF2106DSO'),
(161, 80, 'Ago - Dic', 14100070, 1016, 'MPF3006MCC'),
(162, 69, 'Ago - Dic', 14100070, 1017, 'MPPMT2305BT'),
(163, 99, 'Feb - Jun', 15100115, 1000, 'MBCS2405BT'),
(164, 71, 'Feb - Jun', 15100115, 1001, 'MPF1605DSO'),
(165, 95, 'Feb - Jun', 15100115, 1002, 'MPF1705DSO'),
(166, 92, 'Feb - Jun', 15100115, 1005, 'MPF1805DSO'),
(167, 77, 'Feb - Jun', 15100115, 1003, 'MPF1905DSO'),
(168, 86, 'Feb - Jun', 15100115, 1004, 'MPF2005DSO'),
(169, 81, 'Feb - Jun', 15100115, 1007, 'MPF2505MCC'),
(170, 100, 'Feb - Jun', 15100115, NULL, 'MPPCO2605BT'),
(171, 95, 'Feb - Jun', 15100115, 1006, 'MPPMT2305BT'),
(172, 50, 'Ago - Dic', 15100115, 1015, 'MPF2106DSO'),
(173, 60, 'Ago - Dic', 15100115, 1003, 'MPF2206DSO'),
(174, 86, 'Ago - Dic', 15100115, 1012, 'MPF2306DSO'),
(175, 64, 'Ago - Dic', 15100115, 1014, 'MPF2406DSO'),
(176, 53, 'Ago - Dic', 15100115, 1013, 'MPF2506DSO'),
(177, 80, 'Ago - Dic', 15100115, 1011, 'MPF2806MCC'),
(178, 100, 'Ago - Dic', 15100115, NULL, 'MPF3006MCC'),
(179, 82, 'Ago - Dic', 15100115, 1010, 'MPPHU2906BT'),
(180, 79, 'Ago - Dic', 15100115, 1017, 'MPPMT2706BT'),
(181, 100, 'Feb - Jun', 15100346, 1000, 'MBCS2405BT'),
(182, 75, 'Feb - Jun', 15100346, 1001, 'MPF1605DSO'),
(183, 96, 'Feb - Jun', 15100346, 1002, 'MPF1705DSO'),
(184, 95, 'Feb - Jun', 15100346, 1005, 'MPF1805DSO'),
(185, 75, 'Feb - Jun', 15100346, 1003, 'MPF1905DSO'),
(186, 87, 'Feb - Jun', 15100346, 1004, 'MPF2005DSO'),
(187, 84, 'Feb - Jun', 15100346, 1007, 'MPF2505MCC'),
(188, 91, 'Feb - Jun', 15100346, 1008, 'MPPCO2605BT'),
(189, 88, 'Feb - Jun', 15100346, 1018, 'MPPMT2305BT'),
(190, 56, 'Ago - Dic', 15100346, 1015, 'MPF2106DSO'),
(191, 76, 'Ago - Dic', 15100346, 1003, 'MPF2206DSO'),
(192, 86, 'Ago - Dic', 15100346, 1012, 'MPF2306DSO'),
(193, 97, 'Ago - Dic', 15100346, 1014, 'MPF2406DSO'),
(194, 70, 'Ago - Dic', 15100346, 1013, 'MPF2506DSO'),
(195, 67, 'Ago - Dic', 15100346, 1011, 'MPF2806MCC'),
(196, 88, 'Ago - Dic', 15100346, 1016, 'MPF3006MCC'),
(197, 90, 'Ago - Dic', 15100346, 1010, 'MPPHU2906BT'),
(198, 78, 'Ago - Dic', 15100346, 1009, 'MPPMT2706BT'),
(199, 89, 'Feb - Jun', 15100029, 1000, 'MBCS2405BT'),
(200, 70, 'Feb - Jun', 15100029, 1001, 'MPF1605DSO'),
(201, 93, 'Feb - Jun', 15100029, 1002, 'MPF1705DSO'),
(202, 92, 'Feb - Jun', 15100029, 1005, 'MPF1805DSO'),
(203, 70, 'Feb - Jun', 15100029, 1003, 'MPF1905DSO'),
(204, 70, 'Feb - Jun', 15100029, 1004, 'MPF2005DSO'),
(205, 87, 'Feb - Jun', 15100029, 1007, 'MPF2505MCC'),
(206, 76, 'Feb - Jun', 15100029, 1008, 'MPPCO2605BT'),
(207, 92, 'Feb - Jun', 15100029, 1017, 'MPPMT2305BT'),
(208, 77, 'Ago - Dic', 15100029, 1015, 'MPF2106DSO'),
(209, 58, 'Ago - Dic', 15100029, 1003, 'MPF2206DSO'),
(210, 85, 'Ago - Dic', 15100029, 1012, 'MPF2306DSO'),
(211, 76, 'Ago - Dic', 15100029, 1014, 'MPF2406DSO'),
(212, 55, 'Ago - Dic', 15100029, 1013, 'MPF2506DSO'),
(213, 79, 'Ago - Dic', 15100029, 1011, 'MPF2806MCC'),
(214, 84, 'Ago - Dic', 15100029, 1016, 'MPF3006MCC'),
(215, 82, 'Ago - Dic', 15100029, 1010, 'MPPHU2906BT'),
(216, 68, 'Ago - Dic', 15100029, 1009, 'MPPMT2706BT'),
(217, 91, 'Feb - Jun', 14300113, 1000, 'MBCS2405BT'),
(218, 56, 'Feb - Jun', 14300113, 1001, 'MPF1605DSO'),
(219, 96, 'Feb - Jun', 14300113, 1002, 'MPF1705DSO'),
(220, 93, 'Feb - Jun', 14300113, 1005, 'MPF1805DSO'),
(221, 74, 'Feb - Jun', 14300113, 1003, 'MPF1905DSO'),
(222, 75, 'Feb - Jun', 14300113, 1004, 'MPF2005DSO'),
(223, 83, 'Feb - Jun', 14300113, 1007, 'MPF2505MCC'),
(224, 100, 'Feb - Jun', 14300113, 1008, 'MPPCO2605BT'),
(225, 83, 'Feb - Jun', 14300113, 1017, 'MPPMT2305BT'),
(226, 79, 'Ago - Dic', 14300113, 1015, 'MPF2106DSO'),
(227, 90, 'Ago - Dic', 14300113, 1003, 'MPF2206DSO'),
(228, 88, 'Ago - Dic', 14300113, 1012, 'MPF2306DSO'),
(229, 79, 'Ago - Dic', 14300113, 1014, 'MPF2406DSO'),
(230, 90, 'Ago - Dic', 14300113, 1013, 'MPF2506DSO'),
(231, 40, 'Ago - Dic', 14300113, 1011, 'MPF2806MCC'),
(232, 75, 'Ago - Dic', 14300113, 1016, 'MPF3006MCC'),
(233, 89, 'Ago - Dic', 14300113, 1010, 'MPPHU2906BT'),
(234, 50, 'Ago - Dic', 14300113, 1019, 'MPPMT2706BT'),
(255, 80, 'Feb - Jun', 15100208, 1000, 'MBCS2405BT'),
(256, 70, 'Feb - Jun', 15100208, 1001, 'MPF1605DSO'),
(257, 89, 'Feb - Jun', 15100208, 1002, 'MPF1705DSO'),
(258, 95, 'Feb - Jun', 15100208, 1005, 'MPF1805DSO'),
(259, 50, 'Feb - Jun', 15100208, 1003, 'MPF1905DSO'),
(260, 97, 'Feb - Jun', 15100208, 1004, 'MPF2005DSO'),
(261, 70, 'Feb - Jun', 15100208, 1007, 'MPF2505MCC'),
(262, 90, 'Feb - Jun', 15100028, 1008, 'MPPCO2605BT'),
(263, 95, 'Feb - Jun', 15100208, 1006, 'MPPMT2305BT'),
(264, 55, 'Ago - Dic', 15100208, 1015, 'MPF2106DSO'),
(265, 58, 'Ago - Dic', 15100208, 1003, 'MPF2206DSO'),
(266, 63, 'Ago - Dic', 15100208, 1012, 'MPF2306DSO'),
(267, 69, 'Ago - Dic', 15100208, 1014, 'MPF2406DSO'),
(268, 75, 'Ago - Dic', 15100208, 1013, 'MPF2506DSO'),
(269, 87, 'Ago - Dic', 15100208, 1011, 'MPF2806MCC'),
(270, 80, 'Ago - Dic', 15100208, 1016, 'MPF3006MCC'),
(271, 98, 'Ago - Dic', 15100208, 1010, 'MPPHU2906BT'),
(272, 67, 'Ago - Dic', 15100208, 1019, 'MPPMT2706BT'),
(273, 85, 'Feb - Jun', 15100336, 1000, 'MBCS2405BT'),
(274, 80, 'Feb - Jun', 15100336, 1001, 'MPF1605DSO'),
(275, 95, 'Feb - Jun', 15100336, 1002, 'MPF1705DSO'),
(276, 98, 'Feb - Jun', 15100336, 1005, 'MPF1805DSO'),
(277, 75, 'Feb - Jun', 15100336, 1003, 'MPF1905DSO'),
(278, 83, 'Feb - Jun', 15100336, 1004, 'MPF2005DSO'),
(279, 72, 'Feb - Jun', 15100336, 1007, 'MPF2505MCC'),
(280, 84, 'Feb - Jun', 15100336, 1008, 'MPPCO2605BT'),
(281, 94, 'Feb - Jun', 15100336, 1006, 'MPPMT2305BT'),
(282, 56, 'Ago - Dic', 15100336, 1015, 'MPF2106DSO'),
(283, 63, 'Ago - Dic', 15100336, 1003, 'MPF2206DSO'),
(284, 86, 'Ago - Dic', 15100336, 1012, 'MPF2306DSO'),
(285, 88, 'Ago - Dic', 15100336, 1014, 'MPF2406DSO'),
(286, 60, 'Ago - Dic', 15100336, 1013, 'MPF2506DSO'),
(287, 52, 'Ago - Dic', 15100336, 1011, 'MPF2806MCC'),
(288, 83, 'Ago - Dic', 15100336, 1016, 'MPF3006MCC'),
(289, 80, 'Ago - Dic', 15100336, 1010, 'MPPHU2906BT'),
(290, 77, 'Ago - Dic', 15100336, 1009, 'MPPMT2706BT'),
(291, 72, 'Feb - Jun', 15100240, 1000, 'MBCS2405BT'),
(292, 70, 'Feb - Jun', 15100240, 1001, 'MPF1605DSO'),
(293, 88, 'Feb - Jun', 15100240, 1002, 'MPF1705DSO'),
(294, 93, 'Feb - Jun', 15100240, 1005, 'MPF1805DSO'),
(295, 71, 'Feb - Jun', 15100240, 1003, 'MPF1905DSO'),
(296, 77, 'Feb - Jun', 15100240, 1004, 'MPF2005DSO'),
(297, 70, 'Feb - Jun', 15100240, 1007, 'MPF2505MCC'),
(298, 75, 'Feb - Jun', 15100240, 1008, 'MPPCO2605BT'),
(299, 75, 'Feb - Jun', 15100240, 1006, 'MPPMT2305BT'),
(300, 37, 'Ago - Dic', 15100240, 1015, 'MPF2106DSO'),
(301, 70, 'Ago - Dic', 15100240, 1003, 'MPF2206DSO'),
(302, 60, 'Ago - Dic', 15100240, 1012, 'MPF2306DSO'),
(303, 22, 'Ago - Dic', 15100240, 1014, 'MPF2406DSO'),
(304, 30, 'Ago - Dic', 15100240, 1013, 'MPF2506DSO'),
(305, 66, 'Ago - Dic', 15100240, 1011, 'MPF2806MCC'),
(306, 61, 'Ago - Dic', 15100240, 1016, 'MPF3006MCC'),
(307, 81, 'Ago - Dic', 15100240, 1010, 'MPPHU2906BT'),
(308, 50, 'Ago - Dic', 15100240, 1019, 'MPPMT2706BT'),
(309, 81, 'Feb - Jun', 14100206, 1000, 'MBCS2405BT'),
(310, 71, 'Feb - Jun', 14100206, 1001, 'MPF1605DSO'),
(311, 94, 'Feb - Jun', 14100206, 1002, 'MPF1705DSO'),
(312, 90, 'Feb - Jun', 14100206, 1005, 'MPF1805DSO'),
(313, 86, 'Feb - Jun', 14100206, 1003, 'MPF1905DSO'),
(314, 78, 'Feb - Jun', 14100206, 1004, 'MPF2005DSO'),
(315, 76, 'Feb - Jun', 14100206, 1007, 'MPF2505MCC'),
(316, 79, 'Feb - Jun', 14100206, 1008, 'MPPCO2605BT'),
(317, 96, 'Feb - Jun', 14100206, 1018, 'MPPMT2305BT'),
(318, 56, 'Ago - Dic', 14100206, 1015, 'MPF2106DSO'),
(319, 81, 'Ago - Dic', 14100206, 1003, 'MPF2206DSO'),
(320, 78, 'Ago - Dic', 14100206, 1012, 'MPF2306DSO'),
(321, 70, 'Ago - Dic', 14100206, 1014, 'MPF2406DSO'),
(322, 86, 'Ago - Dic', 14100206, 1013, 'MPF2506DSO'),
(323, 83, 'Ago - Dic', 14100206, 1011, 'MPF2806MCC'),
(324, 79, 'Ago - Dic', 14100206, 1016, 'MPF3006MCC'),
(325, 70, 'Ago - Dic', 14100206, 1010, 'MPPHU2906BT'),
(326, 82, 'Ago - Dic', 14100206, 1009, 'MPPMT2706BT'),
(327, 75, 'Feb - Jun', 14300292, 1000, 'MBCS2405BT'),
(328, 70, 'Feb - Jun', 14300292, 1001, 'MPF1605DSO'),
(329, 87, 'Feb - Jun', 14300292, 1002, 'MPF1705DSO'),
(330, 89, 'Feb - Jun', 14300292, 1005, 'MPF1805DSO'),
(331, 54, 'Feb - Jun', 14300292, 1003, 'MPF1905DSO'),
(332, 76, 'Feb - Jun', 14300292, 1004, 'MPF2005DSO'),
(333, 76, 'Feb - Jun', 14300292, 1007, 'MPF2505MCC'),
(334, 80, 'Feb - Jun', 14300292, 1008, 'MPPCO2605BT'),
(335, 78, 'Feb - Jun', 14300292, 1018, 'MPPMT2305BT'),
(336, 54, 'Ago - Dic', 14300292, 1015, 'MPF2106DSO'),
(337, 60, 'Ago - Dic', 14300292, 1003, 'MPF2206DSO'),
(338, 90, 'Ago - Dic', 14300292, 1012, 'MPF2306DSO'),
(339, 78, 'Ago - Dic', 14300292, 1014, 'MPF2406DSO'),
(340, 40, 'Ago - Dic', 14300292, 1013, 'MPF2506DSO'),
(341, 21, 'Ago - Dic', 14300292, 1011, 'MPF2806MCC'),
(342, 80, 'Ago - Dic', 14300292, 1016, 'MPF3006MCC'),
(343, 93, 'Ago - Dic', 14300292, 1010, 'MPPHU2906BT'),
(344, 40, 'Ago - Dic', 14300292, 1009, 'MPPMT2706BT'),
(345, 80, 'Feb - Jun', 14300354, 1000, 'MBCS2405BT'),
(346, 60, 'Feb - Jun', 14300354, 1001, 'MPF1605DSO'),
(347, 84, 'Feb - Jun', 14300354, 1002, 'MPF1705DSO'),
(348, 73, 'Feb - Jun', 14300354, 1003, 'MPF1805DSO'),
(349, 74, 'Feb - Jun', 14300354, 1004, 'MPF1905DSO'),
(350, 94, 'Feb - Jun', 14300354, 1005, 'MPF2005DSO'),
(351, 71, 'Feb - Jun', 14300354, 1006, 'MPF2505MCC'),
(352, 86, 'Feb - Jun', 14300354, 1007, 'MPPCO2605BT'),
(353, 72, 'Feb - Jun', 14300354, 1008, 'MPPMT2305BT'),
(354, 60, 'Ago - Dic', 14300354, 1009, 'MPF2106DSO'),
(355, 63, 'Ago - Dic', 14300354, 1010, 'MPF2206DSO'),
(356, 72, 'Ago - Dic', 14300354, 1011, 'MPF2306DSO'),
(357, 84, 'Ago - Dic', 14300354, 1012, 'MPF2406DSO'),
(358, 70, 'Ago - Dic', 14300354, 1013, 'MPF2506DSO'),
(359, 81, 'Ago - Dic', 14300354, 1014, 'MPF2806MCC'),
(360, 71, 'Ago - Dic', 14300354, 1015, 'MPF3006MCC'),
(361, 95, 'Ago - Dic', 14300354, 1016, 'MPPHU2906BT'),
(362, 71, 'Ago - Dic', 14300354, 1017, 'MPPMT2706BT');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `ID_Municipio` tinyint(4) NOT NULL,
  `Nombre` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`ID_Municipio`, `Nombre`) VALUES
(1, 'Guadalajara'),
(2, 'Zapopan'),
(3, 'Tlajomulco de Zuñiga');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `Nomina` bigint(20) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `Apellido_Paterno` varchar(40) DEFAULT NULL,
  `Apellido_Materno` varchar(40) DEFAULT NULL,
  `Carrera` smallint(4) DEFAULT NULL,
  `Academia` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`Nomina`, `nombre`, `Apellido_Paterno`, `Apellido_Materno`, `Carrera`, `Academia`) VALUES
(1000, 'Ma. De Lourdes', 'Guerrero', 'Martinez', 100, 10),
(1001, 'Carlos Alberto', 'Ramirez', 'Garcia', 200, 4),
(1002, 'Erika', 'Lorenzana', 'Chávez', 200, 1),
(1003, 'Karla Areli', 'Isaac', 'Rodriguez', 200, 2),
(1004, 'Juan Manuel', 'García', 'Leon', 200, 5),
(1005, 'Ulysses', 'Don', 'Cisco', 200, 3),
(1006, 'Lourdes', 'Cantú', 'Gandada', 100, 6),
(1007, 'Claudia Bethzabe', 'Pardo', 'Rosales', 150, 10),
(1008, 'José Victor', 'Ramos', 'Martinez', 100, 11),
(1009, 'Teresita', 'Betancourt', 'Pérez', 100, 6),
(1010, 'Juan', 'Olmeda', 'Gonzalez', 100, 10),
(1011, 'Maricela Alicia', 'Loredo', 'Guzman', 150, 10),
(1012, 'Luis Rene', 'Duran', 'Hernandez', 200, 3),
(1013, 'Dianita Marisol', 'Figueroa', 'Flores', 200, 5),
(1014, 'Coco', 'López', 'Buenrostro', 200, 2),
(1015, 'Carlos', 'Molina', 'Martinez', 200, 4),
(1016, 'Esmeralda', 'Pizano', 'Ortiz', 150, 11),
(1017, 'Luis Manuel', 'Salas', 'Guerra', 100, 6),
(1018, 'Marina Bianki', 'Dobrova', '-', 100, 6),
(1019, 'Patricia Alejandra', 'Lamas', 'Huerta', 100, 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `academia`
--
ALTER TABLE `academia`
  ADD PRIMARY KEY (`ID_Academia`),
  ADD KEY `Division` (`Division`);

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`Registro`),
  ADD KEY `Carrera` (`Carrera`),
  ADD KEY `alumno_ibfk_1` (`Municipio`);

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`ID_Asignatura`),
  ADD KEY `Carrera` (`Carrera`),
  ADD KEY `Academia` (`Academia`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`ID_Carrera`),
  ADD KEY `Division` (`Division`);

--
-- Indices de la tabla `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`ID_Division`);

--
-- Indices de la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  ADD PRIMARY KEY (`clave`),
  ADD KEY `evaluaciones_ibfk_2` (`Alumno`),
  ADD KEY `evaluaciones_ibfk_3` (`Profesor`),
  ADD KEY `Asignatura` (`Asignatura`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`ID_Municipio`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`Nomina`),
  ADD KEY `profesor_ibfk_1` (`Carrera`),
  ADD KEY `profesor_ibfk_2` (`Academia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  MODIFY `clave` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `academia`
--
ALTER TABLE `academia`
  ADD CONSTRAINT `academia_ibfk_1` FOREIGN KEY (`Division`) REFERENCES `division` (`ID_Division`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`Municipio`) REFERENCES `municipio` (`ID_Municipio`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `alumno_ibfk_2` FOREIGN KEY (`Carrera`) REFERENCES `carrera` (`ID_Carrera`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD CONSTRAINT `asignatura_ibfk_1` FOREIGN KEY (`Carrera`) REFERENCES `carrera` (`ID_Carrera`),
  ADD CONSTRAINT `asignatura_ibfk_2` FOREIGN KEY (`Academia`) REFERENCES `academia` (`ID_Academia`);

--
-- Filtros para la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD CONSTRAINT `carrera_ibfk_1` FOREIGN KEY (`Division`) REFERENCES `division` (`ID_Division`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  ADD CONSTRAINT `evaluaciones_ibfk_2` FOREIGN KEY (`Alumno`) REFERENCES `alumno` (`Registro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `evaluaciones_ibfk_3` FOREIGN KEY (`Profesor`) REFERENCES `profesor` (`Nomina`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `evaluaciones_ibfk_4` FOREIGN KEY (`Asignatura`) REFERENCES `asignatura` (`ID_Asignatura`);

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `profesor_ibfk_1` FOREIGN KEY (`Carrera`) REFERENCES `carrera` (`ID_Carrera`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `profesor_ibfk_2` FOREIGN KEY (`Academia`) REFERENCES `academia` (`ID_Academia`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
