-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 07-05-2017 a las 22:43:22
-- Versión del servidor: 5.1.41
-- Versión de PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `encuesta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE IF NOT EXISTS `opciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `tipo` bit(1) NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcar la base de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`id`, `nombre`, `descripcion`, `tipo`, `id_pregunta`, `fecha_creacion`) VALUES
(1, 'Menos de un año', '', b'0', 1, '2017-05-07 21:49:51'),
(2, 'Entre 1 y 3 años', '', b'0', 1, '2017-05-07 21:49:51'),
(3, 'Entre 4 y 8 años', '', b'0', 1, '2017-05-07 21:54:15'),
(4, 'Más de 9 años', '', b'0', 1, '2017-05-07 21:54:15'),
(5, 'Internet', '', b'0', 2, '2017-05-07 22:14:06'),
(6, 'Prensa o Revistas', '', b'0', 2, '2017-05-07 22:14:06'),
(7, 'Contactos Empresariales', '', b'0', 2, '2017-05-07 22:14:40'),
(8, 'Amistades', '', b'0', 2, '2017-05-07 22:14:40'),
(9, 'Envió de Información (Publicidad directa)', '', b'0', 2, '2017-05-07 22:15:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE IF NOT EXISTS `pregunta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id`, `nombre`, `descripcion`, `fecha_creacion`) VALUES
(1, '¿Desde cuando es usted cliente?', '', '2017-05-07 21:49:03'),
(2, '¿Cómo nos conoció?', '', '2017-05-07 21:49:03');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
