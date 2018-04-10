-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-04-2018 a las 03:59:39
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecomerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bo_usuarios`
--

CREATE TABLE `bo_usuarios` (
  `bo_usuarios` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `habilitado`) VALUES
(1, 'Televisores', 1),
(2, 'Notebooks', 1),
(3, 'Lavarropas', 1),
(4, 'Consolas', 1),
(6, 'Heladeras', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `monto` decimal(10,0) NOT NULL,
  `fecha` datetime NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `estado_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `monto`, `fecha`, `producto_id`, `cantidad`, `usuario_id`, `estado_id`) VALUES
(1, '20000', '2018-04-09 22:39:37', 3, 4, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras_estados`
--

CREATE TABLE `compras_estados` (
  `id` int(11) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compras_estados`
--

INSERT INTO `compras_estados` (`id`, `estado`, `habilitado`) VALUES
(1, 'En Curso', 1),
(2, 'Finalizada', 1),
(3, 'Cancelada', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descuento` varchar(50) NOT NULL,
  `codigo` varchar(30) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `precio_descuento` decimal(10,0) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT '1',
  `estado_id` int(11) NOT NULL,
  `destacado` tinyint(1) DEFAULT NULL,
  `imagen_ruta` varchar(200) NOT NULL,
  `Detalle` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descuento`, `codigo`, `precio`, `precio_descuento`, `categoria_id`, `habilitado`, `estado_id`, `destacado`, `imagen_ruta`, `Detalle`) VALUES
(1, 'Sony Modelo 1', '', 'COD-TV-1', '3000', '0', 1, 1, 1, NULL, 'tv.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(2, 'Sony Modelo 2', '', 'COD-TV-2', '4000', '0', 1, 1, 1, NULL, 'tv.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(3, 'Sony Modelo 3', '', 'COD-TV-3', '5000', '0', 1, 1, 1, 1, 'tv.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(4, 'Sony Modelo 4', '', 'COD-TV-4', '6000', '0', 1, 1, 1, NULL, 'tv.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(5, 'Philips Modelo 1', '', 'COD-TV-5', '4500', '0', 1, 1, 1, NULL, 'tv.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(6, 'Philips Modelo 2', '', 'COD-TV-6', '3500', '0', 1, 1, 1, 1, 'tv.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(7, 'Philips Modelo 3', '', 'COD-TV-7', '2750', '0', 1, 1, 1, NULL, 'tv.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(8, 'Hitachi Modelo 1', '', 'COD-TV-8', '4600', '0', 1, 1, 1, NULL, 'tv.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(9, 'Hitachi Modelo 2', '', 'COD-TV-9', '6000', '0', 1, 1, 1, 1, 'tv.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(10, 'Hitachi Modelo 3', '', 'COD-TV-10', '1500', '0', 1, 1, 1, NULL, 'tv.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(11, 'Whirpool Modelo 1', '', 'COD-LAV-11', '3000', '0', 3, 1, 1, 1, 'lavarropas.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(12, 'Whirpool Modelo 2', '', 'COD-LAV-12', '4000', '0', 3, 1, 1, 1, 'lavarropas.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(13, 'Whirpool Modelo 3', '', 'COD-LAV-13', '5000', '0', 3, 1, 1, 1, 'lavarropas.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(14, 'Whirpool Modelo 4', '', 'COD-LAV-14', '6000', '0', 3, 1, 1, NULL, 'lavarropas.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(15, 'Drean Modelo 1', '', 'COD-LAV-15', '4500', '0', 3, 1, 1, NULL, 'lavarropas.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(16, 'Drean Modelo 2', '', 'COD-LAV-16', '3500', '0', 3, 1, 1, NULL, 'lavarropas.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(17, 'Drean Modelo 3', '', 'COD-LAV-17', '2750', '0', 3, 1, 1, NULL, 'lavarropas.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(18, 'Samsung Modelo 1', '', 'COD-LAV-18', '4600', '0', 3, 1, 1, NULL, 'lavarropas.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(19, 'Samsung Modelo 2', '', 'COD-LAV-19', '6000', '0', 3, 1, 1, 1, 'lavarropas.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(20, 'Samsung Modelo 3', '', 'COD-LAV-20', '1500', '0', 3, 1, 1, NULL, 'lavarropas.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(21, 'PlayStation 4', '', 'COD-CON-21', '3000', '0', 4, 1, 1, NULL, 'consola.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(22, 'Xbox One', '', 'COD-CON-22', '4000', '0', 4, 1, 1, NULL, 'consola.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(23, 'Nintendo Switch', '', 'COD-CON-23', '5000', '0', 4, 1, 1, 1, 'consola.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(24, 'Heladera Samsung 1', '', 'COD-HEL-24', '6000', '0', 6, 1, 1, 1, 'heladera.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(25, 'Heladera Gafa 1', '', 'COD-HEL-25', '4500', '0', 6, 1, 1, NULL, 'heladera.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(26, 'Notebook Bagoo 1', '', 'COD-LAP-26', '3500', '0', 2, 1, 1, NULL, 'notebook.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(27, 'Notebook Sony 1', '', 'COD-LAP-27', '8000', '0', 2, 1, 1, 1, 'notebook.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(28, 'Notebook HP 1', '', 'COD-LAP-28', '4600', '0', 2, 1, 1, NULL, 'notebook.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(29, 'Notebook HP 2', '', 'COD-LAV-29', '6000', '0', 3, 1, 1, NULL, 'lavarropas.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(34, 'Notebook HP 2', '', 'COD-LAP-34', '6000', '0', 2, 1, 1, 1, 'notebook.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto '),
(35, 'Notebook HP 3', '', 'COD-LAP-35', '1500', '0', 2, 1, 1, NULL, 'notebook.jpg', 'Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto Detalle del producto ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_estados`
--

CREATE TABLE `productos_estados` (
  `id` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos_estados`
--

INSERT INTO `productos_estados` (`id`, `estado`, `habilitado`) VALUES
(1, 'En Stock', 1),
(2, 'Sin Stock', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `habilitado` tinyint(1) DEFAULT '1',
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `password`, `habilitado`, `nombre`) VALUES
(1, 'usuario1@mail.com', 'password1', 1, 'andres'),
(2, 'usuario2@mail.com', 'password2', 1, 'sofia'),
(3, 'usuario3@mail.com', 'password3', 1, 'veronica'),
(4, 'usuario4@mail.com', 'password4', 1, 'julio'),
(5, 'usuario5@mail.com', 'password5', 1, 'alejandro'),
(6, 'usuarionuevo@mail.com', 'pass1', 1, 'usuarionuevo1'),
(8, 'usuarionuevo2@mail.com', 'pass2', 1, 'usuarionuevo2'),
(9, 'usuarionuevo3@mail.com', 'pass3', 1, 'usuarionuevo3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bo_usuarios`
--
ALTER TABLE `bo_usuarios`
  ADD PRIMARY KEY (`bo_usuarios`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estado_id` (`estado_id`);

--
-- Indices de la tabla `compras_estados`
--
ALTER TABLE `compras_estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`),
  ADD KEY `estado_id` (`estado_id`);

--
-- Indices de la tabla `productos_estados`
--
ALTER TABLE `productos_estados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `productos_estados`
--
ALTER TABLE `productos_estados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`estado_id`) REFERENCES `compras_estados` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`estado_id`) REFERENCES `productos_estados` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
