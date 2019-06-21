-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 18-06-2019 a las 19:38:41
-- Versión del servidor: 5.7.26-0ubuntu0.18.04.1
-- Versión de PHP: 5.6.40-8+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `SivarCar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ALQUILER`
--

CREATE TABLE `ALQUILER` (
  `ID_ALQUILER` char(5) NOT NULL,
  `ID_VEHICULO` char(5) DEFAULT NULL,
  `ID_USUARIO` char(5) DEFAULT NULL,
  `ID_CLIENTE` char(5) DEFAULT NULL,
  `ID_EMPRESA` char(50) DEFAULT NULL,
  `FECHA_ALQUILADO` date NOT NULL,
  `FECHA_DEVOLUCION` date NOT NULL,
  `TOTAL_PAGAR` decimal(10,2) NOT NULL,
  `ESTADO_ALQUILER` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ALQUILER`
--

INSERT INTO `ALQUILER` (`ID_ALQUILER`, `ID_VEHICULO`, `ID_USUARIO`, `ID_CLIENTE`, `ID_EMPRESA`, `FECHA_ALQUILADO`, `FECHA_DEVOLUCION`, `TOTAL_PAGAR`, `ESTADO_ALQUILER`) VALUES
('01', '00001', '01', '01', '01', '2019-06-18', '2019-06-21', '75.00', 'Excelente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CLIENTE`
--

CREATE TABLE `CLIENTE` (
  `ID_CLIENTE` char(5) NOT NULL,
  `NOMBRE` char(100) NOT NULL,
  `APELLIDO` varchar(100) NOT NULL,
  `FECHA_NACIMIENTO` date NOT NULL,
  `DUI` char(9) NOT NULL,
  `DIRECCION` char(100) NOT NULL,
  `TELEFONO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `CLIENTE`
--

INSERT INTO `CLIENTE` (`ID_CLIENTE`, `NOMBRE`, `APELLIDO`, `FECHA_NACIMIENTO`, `DUI`, `DIRECCION`, `TELEFONO`) VALUES
('01', 'Gerardo', 'Peralta', '1999-05-18', '098767865', 'San Sebastian', 76689989);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MARCAVEHICULO`
--

CREATE TABLE `MARCAVEHICULO` (
  `ID_MARCA` char(5) NOT NULL,
  `MARCA_VEHICULO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `MARCAVEHICULO`
--

INSERT INTO `MARCAVEHICULO` (`ID_MARCA`, `MARCA_VEHICULO`) VALUES
('01', 'Hyundai'),
('02', 'Honda'),
('03', 'Audi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ROL`
--

CREATE TABLE `ROL` (
  `ID_ROL` char(5) NOT NULL,
  `NOMBRE_ROL` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ROL`
--

INSERT INTO `ROL` (`ID_ROL`, `NOMBRE_ROL`) VALUES
('01', 'Cliente'),
('02', 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SEGURO`
--

CREATE TABLE `SEGURO` (
  `ID_EMPRESA` char(50) NOT NULL,
  `PRECIO` decimal(10,2) NOT NULL,
  `DESCRIPCION` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `SEGURO`
--

INSERT INTO `SEGURO` (`ID_EMPRESA`, `PRECIO`, `DESCRIPCION`) VALUES
('01', '100.00', 'ACSA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TIPOCOMBUSTIBLE`
--

CREATE TABLE `TIPOCOMBUSTIBLE` (
  `ID_COMBUSTIBLE` char(5) NOT NULL,
  `TIPO_COMBUSTIBLE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `TIPOCOMBUSTIBLE`
--

INSERT INTO `TIPOCOMBUSTIBLE` (`ID_COMBUSTIBLE`, `TIPO_COMBUSTIBLE`) VALUES
('01', 'Automatico'),
('02', 'Manual');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TIPOVEHICULO`
--

CREATE TABLE `TIPOVEHICULO` (
  `ID_TIPO_VEHICULO` char(5) NOT NULL,
  `TIPO_VEHICULO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `TIPOVEHICULO`
--

INSERT INTO `TIPOVEHICULO` (`ID_TIPO_VEHICULO`, `TIPO_VEHICULO`) VALUES
('01', 'Camioneta'),
('02', 'Pick-up'),
('03', 'Todo terreno'),
('04', 'Sedan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TRANSMICION`
--

CREATE TABLE `TRANSMICION` (
  `ID_TRANSMICION` char(5) NOT NULL,
  `TIPO_TRANSMICION` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `TRANSMICION`
--

INSERT INTO `TRANSMICION` (`ID_TRANSMICION`, `TIPO_TRANSMICION`) VALUES
('01', 'Automatico'),
('02', 'Manual');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `USUARIO`
--

CREATE TABLE `USUARIO` (
  `ID_USUARIO` char(5) NOT NULL,
  `ID_ROL` char(5) NOT NULL,
  `NOMBRE_USUARIO` char(100) NOT NULL,
  `APELLIDO_USUARIO` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `USUARIO`
--

INSERT INTO `USUARIO` (`ID_USUARIO`, `ID_ROL`, `NOMBRE_USUARIO`, `APELLIDO_USUARIO`) VALUES
('01', '02', 'Daniel', 'Tennant'),
('02', '01', 'Gerardo', 'Pinto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `VEHICULO`
--

CREATE TABLE `VEHICULO` (
  `ID_VEHICULO` char(5) NOT NULL,
  `ID_MARCA` char(5) DEFAULT NULL,
  `ID_TIPO_VEHICULO` char(5) DEFAULT NULL,
  `ID_COMBUSTIBLE` char(5) DEFAULT NULL,
  `ID_TRANSMICION` char(5) DEFAULT NULL,
  `NUM_PUERTAS` int(11) NOT NULL,
  `CAPACIDAD_PERSONAS` int(11) NOT NULL,
  `COLOR` char(50) NOT NULL,
  `PLACA` char(50) NOT NULL,
  `FUNCIONES` varchar(1000) NOT NULL,
  `CAPACIDAD_MALETERO` char(30) NOT NULL,
  `ANO` int(11) NOT NULL,
  `ESTADO_VEHICULO` char(50) NOT NULL,
  `MODELO` char(50) NOT NULL,
  `PRECIO` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `VEHICULO`
--

INSERT INTO `VEHICULO` (`ID_VEHICULO`, `ID_MARCA`, `ID_TIPO_VEHICULO`, `ID_COMBUSTIBLE`, `ID_TRANSMICION`, `NUM_PUERTAS`, `CAPACIDAD_PERSONAS`, `COLOR`, `PLACA`, `FUNCIONES`, `CAPACIDAD_MALETERO`, `ANO`, `ESTADO_VEHICULO`, `MODELO`, `PRECIO`) VALUES
('00001', '01', '01', '01', '01', 4, 5, 'Gris', 'P123456', 'Vidrios electricos, aire acondicionado automatico de doble zona, gps', '513', 2015, 'Excelente', 'Tucson', '25.00'),
('00002', '02', '02', '02', '02', 4, 5, 'Rojo', 'P234567', 'Vidrios electricos, aire acondicionado automatico de doble zona,4x4 gps', '720', 2018, 'Excelente', 'CRV', '30.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ALQUILER`
--
ALTER TABLE `ALQUILER`
  ADD PRIMARY KEY (`ID_ALQUILER`),
  ADD KEY `FK_CONTIENE` (`ID_VEHICULO`),
  ADD KEY `FK_ES_REALIZADO_POR` (`ID_USUARIO`),
  ADD KEY `FK_POSEE_UN` (`ID_CLIENTE`),
  ADD KEY `FK_PUEDE_CONTRATAR` (`ID_EMPRESA`);

--
-- Indices de la tabla `CLIENTE`
--
ALTER TABLE `CLIENTE`
  ADD PRIMARY KEY (`ID_CLIENTE`);

--
-- Indices de la tabla `MARCAVEHICULO`
--
ALTER TABLE `MARCAVEHICULO`
  ADD PRIMARY KEY (`ID_MARCA`);

--
-- Indices de la tabla `ROL`
--
ALTER TABLE `ROL`
  ADD PRIMARY KEY (`ID_ROL`);

--
-- Indices de la tabla `SEGURO`
--
ALTER TABLE `SEGURO`
  ADD PRIMARY KEY (`ID_EMPRESA`);

--
-- Indices de la tabla `TIPOCOMBUSTIBLE`
--
ALTER TABLE `TIPOCOMBUSTIBLE`
  ADD PRIMARY KEY (`ID_COMBUSTIBLE`);

--
-- Indices de la tabla `TIPOVEHICULO`
--
ALTER TABLE `TIPOVEHICULO`
  ADD PRIMARY KEY (`ID_TIPO_VEHICULO`);

--
-- Indices de la tabla `TRANSMICION`
--
ALTER TABLE `TRANSMICION`
  ADD PRIMARY KEY (`ID_TRANSMICION`);

--
-- Indices de la tabla `USUARIO`
--
ALTER TABLE `USUARIO`
  ADD PRIMARY KEY (`ID_USUARIO`),
  ADD KEY `FK_CONTIENE_UN` (`ID_ROL`);

--
-- Indices de la tabla `VEHICULO`
--
ALTER TABLE `VEHICULO`
  ADD PRIMARY KEY (`ID_VEHICULO`),
  ADD KEY `FK_ES_UN` (`ID_TIPO_VEHICULO`),
  ADD KEY `FK_POSEE` (`ID_MARCA`),
  ADD KEY `FK_USA` (`ID_COMBUSTIBLE`),
  ADD KEY `FK_USA_UN_TIPO_DE` (`ID_TRANSMICION`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ALQUILER`
--
ALTER TABLE `ALQUILER`
  ADD CONSTRAINT `FK_CONTIENE` FOREIGN KEY (`ID_VEHICULO`) REFERENCES `VEHICULO` (`ID_VEHICULO`),
  ADD CONSTRAINT `FK_ES_REALIZADO_POR` FOREIGN KEY (`ID_USUARIO`) REFERENCES `USUARIO` (`ID_USUARIO`),
  ADD CONSTRAINT `FK_POSEE_UN` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `CLIENTE` (`ID_CLIENTE`),
  ADD CONSTRAINT `FK_PUEDE_CONTRATAR` FOREIGN KEY (`ID_EMPRESA`) REFERENCES `SEGURO` (`ID_EMPRESA`);

--
-- Filtros para la tabla `USUARIO`
--
ALTER TABLE `USUARIO`
  ADD CONSTRAINT `FK_CONTIENE_UN` FOREIGN KEY (`ID_ROL`) REFERENCES `ROL` (`ID_ROL`);

--
-- Filtros para la tabla `VEHICULO`
--
ALTER TABLE `VEHICULO`
  ADD CONSTRAINT `FK_ES_UN` FOREIGN KEY (`ID_TIPO_VEHICULO`) REFERENCES `TIPOVEHICULO` (`ID_TIPO_VEHICULO`),
  ADD CONSTRAINT `FK_POSEE` FOREIGN KEY (`ID_MARCA`) REFERENCES `MARCAVEHICULO` (`ID_MARCA`),
  ADD CONSTRAINT `FK_USA` FOREIGN KEY (`ID_COMBUSTIBLE`) REFERENCES `TIPOCOMBUSTIBLE` (`ID_COMBUSTIBLE`),
  ADD CONSTRAINT `FK_USA_UN_TIPO_DE` FOREIGN KEY (`ID_TRANSMICION`) REFERENCES `TRANSMICION` (`ID_TRANSMICION`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
