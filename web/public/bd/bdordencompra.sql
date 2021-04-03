-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-04-2021 a las 03:14:42
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdordencompra`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condiciones_entrega`
--

CREATE TABLE `condiciones_entrega` (
  `id_en` int(11) NOT NULL,
  `Lugar` varchar(30) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condiciones_pago`
--

CREATE TABLE `condiciones_pago` (
  `id_en` int(11) NOT NULL,
  `Forma_pago` varchar(10) DEFAULT NULL,
  `Anticipo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuerpo`
--

CREATE TABLE `cuerpo` (
  `id_cu` int(11) NOT NULL,
  `Cantidad_u` int(11) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Precio_u` int(11) DEFAULT NULL,
  `Referencia` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_comprador`
--

CREATE TABLE `datos_comprador` (
  `id_daco` int(11) NOT NULL,
  `Razon_social` varchar(20) DEFAULT NULL,
  `Direccion` varchar(30) DEFAULT NULL,
  `Telefono` varchar(11) DEFAULT NULL,
  `Correo_Electronico` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datos_comprador`
--

INSERT INTO `datos_comprador` (`id_daco`, `Razon_social`, `Direccion`, `Telefono`, `Correo_Electronico`) VALUES
(1, 'TEEN', 'Cll 12132', '121213', '32323@asassa'),
(3, 'TEEN', 'Cll 12132', '121213', '32323@asassa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_vendedor`
--

CREATE TABLE `datos_vendedor` (
  `id_dave` int(11) NOT NULL,
  `Razon_social` varchar(20) DEFAULT NULL,
  `Direccion` varchar(30) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `Correo_Electronico` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datos_vendedor`
--

INSERT INTO `datos_vendedor` (`id_dave`, `Razon_social`, `Direccion`, `Telefono`, `Correo_Electronico`) VALUES
(1, 'Ecopetrol', '2', 2, '222@4554'),
(6, 'TEEN', 'cll 11 # 9990', 321131314, 'TEEN@gmail'),
(18, 'Faca', 'Cra 1272 ', 11213224, 'Facasas@asa'),
(22, 'Grupo Bimbo', 'Cundinamarca', 1233454, 'servicioalcliente@grupobimbo.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encabezado`
--

CREATE TABLE `encabezado` (
  `id_en` int(11) NOT NULL,
  `Lugar_exp` varchar(30) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Nota` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promociones`
--

CREATE TABLE `promociones` (
  `id_pro` int(11) NOT NULL,
  `Descuento` int(11) DEFAULT NULL,
  `Referencia` varchar(20) DEFAULT NULL,
  `Precio_u` int(11) DEFAULT NULL,
  `Total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `total`
--

CREATE TABLE `total` (
  `id_to` int(11) NOT NULL,
  `Precio_sin_iva` int(11) DEFAULT NULL,
  `Iva_aplicado` int(11) DEFAULT NULL,
  `Total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `condiciones_entrega`
--
ALTER TABLE `condiciones_entrega`
  ADD PRIMARY KEY (`id_en`);

--
-- Indices de la tabla `condiciones_pago`
--
ALTER TABLE `condiciones_pago`
  ADD PRIMARY KEY (`id_en`);

--
-- Indices de la tabla `cuerpo`
--
ALTER TABLE `cuerpo`
  ADD PRIMARY KEY (`id_cu`);

--
-- Indices de la tabla `datos_comprador`
--
ALTER TABLE `datos_comprador`
  ADD PRIMARY KEY (`id_daco`);

--
-- Indices de la tabla `datos_vendedor`
--
ALTER TABLE `datos_vendedor`
  ADD PRIMARY KEY (`id_dave`);

--
-- Indices de la tabla `encabezado`
--
ALTER TABLE `encabezado`
  ADD PRIMARY KEY (`id_en`);

--
-- Indices de la tabla `promociones`
--
ALTER TABLE `promociones`
  ADD PRIMARY KEY (`id_pro`);

--
-- Indices de la tabla `total`
--
ALTER TABLE `total`
  ADD PRIMARY KEY (`id_to`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos_comprador`
--
ALTER TABLE `datos_comprador`
  MODIFY `id_daco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `datos_vendedor`
--
ALTER TABLE `datos_vendedor`
  MODIFY `id_dave` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
