-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-01-2022 a las 06:22:29
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `konecta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID` int(11) NOT NULL,
  `NOMBRE_PRODUCTO` varchar(255) NOT NULL,
  `REFERENCIA` varchar(255) NOT NULL,
  `PRECIO` int(11) NOT NULL,
  `PESO` int(11) NOT NULL,
  `CATEGORIA` varchar(100) NOT NULL,
  `STOCK` int(11) NOT NULL,
  `FECHA_CREACION` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID`, `NOMBRE_PRODUCTO`, `REFERENCIA`, `PRECIO`, `PESO`, `CATEGORIA`, `STOCK`, `FECHA_CREACION`) VALUES
(1, 'Ejemplo', '12', 2000, 500, 'eeee', 10, '2022-01-11 01:20:40'),
(2, 'Ejemplo', '12', 12, 12, '12', 89, '2022-01-11 01:20:48'),
(4, 'Proyecto', 'ref', 234223, 3442, '34', 1, '2022-01-11 04:48:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `ID` int(11) NOT NULL,
  `ID_PRODUCTO` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`ID`, `ID_PRODUCTO`, `CANTIDAD`) VALUES
(1, 2, 0),
(4, 4, 4),
(5, 4, 4),
(6, 4, 4),
(7, 4, 4),
(8, 4, 4),
(9, 4, 4),
(10, 4, 4),
(11, 4, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_ID_PRODUCTO` (`ID_PRODUCTO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `relacion` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
