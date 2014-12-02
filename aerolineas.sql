-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2014 a las 02:22:48
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `aerolineas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aeropuertos`
--

CREATE TABLE IF NOT EXISTS `aeropuertos` (
`id` int(11) NOT NULL,
  `c_oaci` varchar(10) NOT NULL,
  `ciudad` varchar(40) NOT NULL,
  `provincia` varchar(40) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=99 ;

--
-- Volcado de datos para la tabla `aeropuertos`
--

INSERT INTO `aeropuertos` (`id`, `c_oaci`, `ciudad`, `provincia`, `nombre`) VALUES
(1, 'SAVR', 'Alto Río Senguer', 'Chubut', 'Aeropuerto Alto Río Senguer'),
(2, 'SAZA', 'Azul', 'Buenos Aires', 'Aeropuerto de Azul'),
(3, 'SAZB', 'Bahía Blanca', 'Buenos Aires', 'Aeropuerto Comandante Espora'),
(4, 'SAZS', 'Bariloche', 'Río Negro', 'Aeropuerto Internacional Teniente Luis Candelaria'),
(5, 'SAZI', 'Bolívar', 'Buenos Aires', 'Aeropuerto de Bolívar'),
(6, 'SABE', 'Buenos Aires', 'CABA', 'Aeroparque Jorge Newbery'),
(7, 'SADO', 'Campo de Mayo', 'Buenos Aires', 'Aeródromo de Campo de Mayo'),
(8, 'SAHE', 'Caviahue', 'Neuquén', 'Aeropuerto de Caviahue'),
(9, 'SANW', 'Ceres', 'Santa Fe', 'Aeropuerto Ceres'),
(10, 'SACT', 'Chamical', 'La Rioja', 'Aeropuerto Gobernador Gordillo'),
(11, 'SACP', 'Chepes', 'La Rioja', 'Aeropuerto Chepes'),
(12, 'SANO', 'Chilecito', 'La Rioja', 'Aeropuerto Chilecito'),
(13, 'SATC', 'Clorinda', 'Formosa', 'Aeropuerto Clorinda'),
(14, 'SAVC', 'Comodoro Rivadavia', 'Chubut', 'Aeropuerto Internacional General Enrique Mosconi'),
(15, 'SACO', 'Córdoba', 'Córdoba', 'Aeropuerto Internacional Ingeniero Ambrosio Tarave'),
(16, 'SAAC', 'Concordia', 'Entre Ríos', 'Aeropuerto Comodoro Pierrestegui'),
(17, 'SAZC', 'Coronel Suárez', 'Buenos Aires', 'Aeropuerto Brigadier Hector Eduardo Ruiz'),
(18, 'SARC', 'Corrientes', 'Corrientes', 'Aeropuerto Internacional Doctor Fernando Piragine '),
(19, 'SATU', 'Curuzú Cuatiá', 'Corrientes', 'Aeropuerto de Curuzú Cuatiá'),
(20, 'SAZW', 'Cutral-Co', 'Neuquén', 'Aeropuerto de Cutral-Co'),
(21, 'SAZD', 'Dolores', 'Buenos Aires', 'Aeródromo de Dolores'),
(22, 'SADD', 'Don Torcuato', 'Buenos Aires', 'Aeródromo de Don Torcuato (Cerrado)'),
(23, 'SAVB', 'El Bolsón', 'Rio Negro', 'Aeropuerto de El Bolson'),
(24, 'SAWC', 'El Calafate', 'Santa Cruz', 'Aeropuerto Comandante Armando Tola'),
(25, 'SAWA', 'El Calafate', 'Santa Cruz', 'Aeropuerto de Lago Argentino (Cerrado)'),
(26, 'SADP', 'El Palomar', 'Buenos Aires', 'Aeropuerto El Palomar'),
(27, 'SAVE', 'Esquel', 'Chubut', 'Aeropuerto Brigadier General Antonio Parodi'),
(28, 'SAEZ', 'Ezeiza', 'Buenos Aires', 'Aeropuerto Internacional Ministro Pistarini'),
(29, 'SARF', 'Formosa', 'Formosa', 'Aeropuerto Internacional de Formosa'),
(30, 'SAMA', 'General Alvear', 'Mendoza', 'Aeropuerto de General Alvear'),
(31, 'SAZG', 'General Pico', 'La Pampa', 'Aeropuerto de General Pico'),
(32, 'SAHR', 'General Roca', 'Rio Negro', 'Aeropuerto de General Roca'),
(33, 'SAVJ', 'Ingeniero Jacobacci', 'Río Negro', 'Aeropuerto de Ingeniero Jacobacci'),
(34, 'SAAK', 'Isla Martín García', 'Buenos Aires', 'Aeropuerto Isla Martín García'),
(35, 'SADJ', 'José C. Paz', 'Buenos Aires', 'Aeropuerto Mariano Moreno'),
(36, 'SAAJ', 'Junín', 'Buenos Aires', 'Aeropuerto de Junín'),
(37, 'SAOL', 'Laboulaye', 'Córdoba', 'Aeródromo de Laboulaye'),
(38, 'SACC', 'La Cumbre', 'Córdoba', 'Aeropuerto La Cumbre'),
(39, 'SADL', 'La Plata', 'Buenos Aires', 'Aeropuerto de La Plata'),
(40, 'SANL', 'La Rioja', 'La Rioja', 'Aeropuerto Capitán Vicente Almandos Amonacide'),
(41, 'SAVH', 'Las Heras', 'Santa Cruz', 'Aeropuerto Las Heras'),
(42, 'SATK', 'Las Lomitas', 'Formosa', 'Aeródromo Alferez Armando Rodríguez'),
(43, 'SAMM', 'Malargüe', 'Mendoza', 'Aeropuerto Internacional Comodoro Ricardo Salomón'),
(44, 'SAZM', 'Mar del Plata', 'Buenos Aires', 'Aeropuerto Internacional Astor Piazolla'),
(45, 'SAME', 'Mendoza', 'Mendoza', 'Aeropuerto Internacional El Plumerillo'),
(46, 'SAOS', 'Merlo', 'San Luis', 'Aeropuerto Internacional Valle del Conlara'),
(47, 'SAEM', 'Miramar', 'Buenos Aires', 'Aeródromo Juan Domingo Perón'),
(48, 'SARM', 'Monte Caseros', 'Corrientes', 'Aeropuerto de Monte Caseros'),
(49, 'SADM', 'Morón', 'Buenos Aires', 'Aeropuerto de Morón'),
(50, 'SAZO', 'Necochea', 'Buenos Aires', 'Aeropuerto Edgardo Hugo Yelpo'),
(51, 'SAZN', 'Neuquén', 'Neuquén', 'Aeropuerto Internacional Presidente Perón'),
(52, 'SAZF', 'Olavarría', 'Buenos Aires', 'Aeropuerto de Olavarría'),
(53, 'SAAP', 'Paraná', 'Entre Ríos', 'Aeropuerto General Justo José de Urquiza'),
(54, 'SARL', 'Paso de los Libres', 'Corrientes', 'Aeropuerto Internacional de Paso de los Libres'),
(55, 'SAZP', 'Pehuajó', 'Buenos Aires', 'Aeropuerto Comodoro P. Zanni'),
(56, 'SASJ', 'Perico', 'Jujuy', 'Aeropuerto Internacional Gobernador Horacio Guzmán'),
(57, 'SAWP', 'Perito Moreno', 'Santa Cruz', 'Aeropuerto Perito Moreno'),
(58, 'SARP', 'Posadas', 'Misiones', 'Aeropuerto Internacional Libertador General José d'),
(59, 'SAWD', 'Puerto Deseado', 'Santa Cruz', 'Aeropuerto Puerto Deseado'),
(60, 'SARI', 'Puerto Iguazú', 'Misiones', 'Aeropuerto Internacional de Puerto Iguazú'),
(61, 'SAVY', 'Puerto Madryn', 'Chubut', 'Aeropuerto El Tehuelche'),
(62, 'SAWJ', 'Puerto San Julián', 'Santa Cruz', 'Aeropuerto Capitán José Daniel Vázquez'),
(63, 'SAWU', 'Puerto Santa Cruz', 'Santa Cruz', 'Aeropuerto de Puerto Santa Cruz'),
(64, 'SASA', 'Presidencia Roque Saenz Peña', 'Chaco', 'Aeropuerto de Presidencia Roque Sáenz Peña'),
(65, 'SATR', 'Reconquista', 'Santa Fe', 'Aeropuerto Daniel Jurkic'),
(66, 'SARE', 'Resistencia', 'Chaco', 'Aeropuerto Internacional de Resistencia'),
(67, 'SAOC', 'Río Cuarto', 'Córdoba', 'Aeropuerto de Río Cuarto'),
(68, 'SAWG', 'Río Gallegos', 'Santa Cruz', 'Aeropuerto Internacional Piloto Civil Norberto Fer'),
(69, 'SAWE', 'Río Grande', 'Tierra del Fuego', 'Aeropuerto Internacional Gob. Ramón Trejo Noel'),
(70, 'SAWT', 'Río Turbio', 'Santa Cruz', 'Aeropuerto Río Turbio'),
(71, 'SAAR', 'Rosario', 'Santa Fe', 'Aeropuerto Internacional Rosario Islas Malvinas'),
(72, 'SASA', 'Salta', 'Salta', 'Aeropuerto Internacional Martín Miguel de Güemes'),
(73, 'SADF', 'San Fernando', 'Buenos Aires', 'Aeropuerto Internacional de San Fernando'),
(74, 'SANC', 'San Fernando del Valle de Catamarca', 'Catamarca', 'Aeropuerto Coronel Felipe Varela'),
(75, 'SANU', 'San Juan', 'San Juan', 'Aeropuerto Domingo Faustino Sarmiento'),
(76, 'SAOU', 'San Luis', 'San Luis', 'Aeropuerto Brigadier Mayor Cesar Raúl Ojeda'),
(77, 'SAMR', 'San Rafael', 'Mendoza', 'Aeropuerto Internacional Suboficial Ayudante Santi'),
(78, 'SASO', 'San Ramón de la Nueva Orán', 'Salta', 'Aero Club Orán'),
(79, 'SADS', 'San Justo', 'Buenos Aires', 'Aeropuerto de San Justo'),
(80, 'SANT', 'San Miguel de Tucumán', 'Tucumán', 'Aeropuerto Internacional Teniente General Benjamín'),
(81, 'SAZR', 'Santa Rosa', 'La Pampa', 'Aeropuerto de Santa Rosa'),
(82, 'SAZL', 'Santa Teresita', 'Buenos Aires', 'Aeropuerto de Santa Teresita'),
(83, 'SANE', 'Santiago del Estero', 'Santiago del Estero', 'Aeropuerto Vicecomodoro Ángel de la Paz Aragonés'),
(84, 'SAZY', 'San Martín de los Andes', 'Neuquén', 'Aeropuerto Aviador Carlos Campos'),
(85, 'SAAV', 'Sauce Viejo', 'Santa Fe', 'Aeropuerto de Sauce Viejo'),
(86, 'SAFS', 'Sunchales', 'Santa Fe', 'Aeropuerto de Sunchales'),
(87, 'SAZT', 'Tandil', 'Buenos Aires', 'Aeropuerto de Tandil'),
(88, 'SAST', 'Tartagal', 'Salta', 'Aeropuerto de Tartagal'),
(89, 'SANR', 'Termas de Río Hondo', 'Santiago del Estero', 'Aeropuerto Internacional Termas de Río Hondo'),
(90, 'SAVT', 'Trelew', 'Chubut', 'Aeropuerto Almirante Marco Andrés Zar'),
(91, 'SAZH', 'Tres Arroyos', 'Buenos Aires', 'Aeropuerto Municipal Primer Teniente Héctor Ricard'),
(92, 'SAWH', 'Ushuaia', 'Tierra del Fuego', 'Aeropuerto de Ushuaia'),
(93, 'SAVV', 'Viedma', 'Río Negro', 'Aeropuerto Gobernador Edgardo Castello'),
(94, 'SAOD', 'Villa Dolores', 'Córdoba', 'Aeropuerto de Villa Dolores'),
(95, 'SAZV', 'Villa Gesell', 'Buenos Aires', 'Aeropuerto de Villa Gesell'),
(96, 'SAOR', 'Villa Reynolds', 'San Luis', 'Aeropuerto de Villa Reynolds'),
(97, 'SAAU', 'Villaguay', 'Entre Ríos', 'Aeropuerto de Villaguay'),
(98, 'SAHZ', 'Zapala', 'Neuquén', 'Aeropuerto de Zapala');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aviones`
--

CREATE TABLE IF NOT EXISTS `aviones` (
  `c_avion` int(11) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `modelo` varchar(30) NOT NULL,
  `total_pasajes` int(11) NOT NULL,
  `economy` int(11) NOT NULL,
  `filas_eco` int(11) NOT NULL,
  `columnas_eco` int(11) NOT NULL,
  `primera` int(11) NOT NULL,
  `filas_prim` int(11) NOT NULL,
  `columnas_prim` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `aviones`
--

INSERT INTO `aviones` (`c_avion`, `marca`, `modelo`, `total_pasajes`, `economy`, `filas_eco`, `columnas_eco`, `primera`, `filas_prim`, `columnas_prim`) VALUES
(1, 'Embraer', 'EMB-120', 30, 30, 10, 3, 0, 0, 0),
(2, 'Embraer', 'ER-145', 80, 70, 14, 5, 10, 5, 2),
(3, 'Embraer', 'ER-145', 125, 105, 21, 5, 20, 10, 2),
(4, 'Embraer', 'ER-170', 150, 120, 30, 4, 30, 10, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
`id` int(11) NOT NULL,
  `descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `descripcion`) VALUES
(1, 'economy'),
(2, 'primera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dias_vuelo`
--

CREATE TABLE IF NOT EXISTS `dias_vuelo` (
  `id_vuelo` int(11) NOT NULL,
  `dia` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dias_vuelo`
--

INSERT INTO `dias_vuelo` (`id_vuelo`, `dia`) VALUES
(1, 'Lu'),
(1, 'Ma'),
(1, 'Mi'),
(2, 'Ma'),
(2, 'Mi'),
(2, 'Do');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajero`
--

CREATE TABLE IF NOT EXISTS `pasajero` (
  `Dni` int(8) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Fecha_nac` date NOT NULL,
  `Email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE IF NOT EXISTS `reservas` (
  `c_reserva` int(11) NOT NULL,
  `c_pasajero` int(11) NOT NULL,
  `c_vuelo` int(11) NOT NULL,
  `c_categoria` int(11) NOT NULL,
  `c_estado_reserva` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `fecha_reserva` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelos`
--

CREATE TABLE IF NOT EXISTS `vuelos` (
`id` int(11) NOT NULL,
  `c_oaci_origen` varchar(10) NOT NULL,
  `c_oaci_destino` varchar(10) NOT NULL,
  `id_avion` int(11) NOT NULL,
  `precio_econ` float NOT NULL,
  `precio_prim` float NOT NULL,
  `dia_vuelo_lun` int(11) NOT NULL,
  `dia_vuelo_mar` int(11) NOT NULL,
  `dia_vuelo_mie` int(11) NOT NULL,
  `dia_vuelo_jue` int(11) NOT NULL,
  `dia_vuelo_vie` int(11) NOT NULL,
  `dia_vuelo_sab` int(11) NOT NULL,
  `dia_vuelo_dom` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=261 ;

--
-- Volcado de datos para la tabla `vuelos`
--

INSERT INTO `vuelos` (`id`, `c_oaci_origen`, `c_oaci_destino`, `id_avion`, `precio_econ`, `precio_prim`, `dia_vuelo_lun`, `dia_vuelo_mar`, `dia_vuelo_mie`, `dia_vuelo_jue`, `dia_vuelo_vie`, `dia_vuelo_sab`, `dia_vuelo_dom`) VALUES
(1, 'SAVR', 'SAZY', 3, 1191, 1464.93, 1, 1, 1, 0, 0, 0, 0),
(2, 'SAZA', 'SAZW', 2, 1836, 2258.28, 0, 1, 1, 0, 0, 0, 1),
(3, 'SAZB', 'SAZV', 1, 2497, 3071.31, 0, 1, 1, 0, 1, 1, 1),
(4, 'SAZS', 'SAZT', 4, 2161, 2658.03, 0, 0, 0, 0, 0, 1, 0),
(5, 'SAZI', 'SAZS', 3, 1228, 1510.44, 0, 0, 0, 1, 1, 0, 1),
(6, 'SADO', 'SAZP', 2, 968, 1190.64, 0, 0, 0, 0, 1, 1, 0),
(7, 'SAHE', 'SAZO', 3, 1281, 1575.63, 0, 1, 0, 0, 1, 0, 0),
(8, 'SANW', 'SAZN', 2, 2085, 2564.55, 1, 1, 0, 1, 0, 0, 0),
(9, 'SACT', 'SAZM', 3, 1656, 2036.88, 0, 1, 1, 1, 0, 0, 1),
(10, 'SACP', 'SAZL', 2, 1982, 2437.86, 0, 1, 1, 0, 0, 1, 0),
(11, 'SANO', 'SAZI', 1, 924, 1136.52, 0, 1, 1, 0, 0, 0, 0),
(12, 'SATC', 'SAZH', 4, 2108, 2592.84, 1, 0, 0, 0, 1, 0, 1),
(13, 'SAVC', 'SAZG', 2, 915, 1125.45, 1, 1, 1, 0, 0, 1, 1),
(14, 'SACO', 'SAZF', 2, 1182, 1453.86, 1, 1, 1, 1, 1, 0, 1),
(15, 'SAAC', 'SAZD', 2, 1587, 1952.01, 1, 0, 1, 1, 1, 1, 0),
(16, 'SAZC', 'SAZC', 2, 1564, 1923.72, 0, 1, 1, 1, 1, 0, 1),
(17, 'SARC', 'SAZB', 3, 2477, 3046.71, 1, 1, 1, 0, 0, 1, 1),
(18, 'SATU', 'SAZA', 4, 2491, 3063.93, 1, 1, 1, 1, 1, 0, 0),
(19, 'SAZW', 'SAWU', 1, 1555, 1912.65, 1, 0, 0, 1, 1, 1, 1),
(20, 'SAZD', 'SAWT', 3, 2451, 3014.73, 0, 1, 1, 0, 0, 0, 0),
(21, 'SADD', 'SAWP', 3, 1762, 2167.26, 1, 0, 0, 1, 1, 0, 1),
(22, 'SAVB', 'SAWJ', 2, 2314, 2846.22, 0, 1, 1, 0, 0, 0, 1),
(23, 'SAWC', 'SAWH', 4, 1661, 2043.03, 1, 0, 0, 1, 0, 1, 1),
(24, 'SAWA', 'SAWG', 3, 1317, 1619.91, 1, 0, 0, 0, 1, 1, 1),
(25, 'SADP', 'SAWE', 1, 2257, 2776.11, 0, 0, 1, 1, 1, 1, 0),
(26, 'SAVE', 'SAWD', 3, 2021, 2485.83, 1, 0, 0, 1, 1, 0, 0),
(27, 'SAEZ', 'SAWC', 1, 1933, 2377.59, 0, 1, 1, 1, 0, 1, 1),
(28, 'SARF', 'SAWA', 3, 950, 1168.5, 0, 0, 1, 0, 1, 1, 0),
(29, 'SAMA', 'SAVY', 1, 1216, 1495.68, 0, 1, 0, 0, 0, 1, 0),
(30, 'SAZG', 'SAVV', 2, 1946, 2393.58, 1, 0, 1, 1, 0, 1, 1),
(31, 'SAHR', 'SAVT', 2, 1889, 2323.47, 1, 1, 0, 1, 0, 0, 1),
(32, 'SAVJ', 'SAVR', 2, 887, 1091.01, 0, 0, 1, 0, 1, 1, 1),
(33, 'SAAK', 'SAVJ', 4, 1131, 1391.13, 1, 1, 1, 0, 0, 1, 0),
(34, 'SADJ', 'SAVH', 1, 913, 1122.99, 1, 0, 0, 0, 0, 0, 1),
(35, 'SAAJ', 'SAVE', 4, 2326, 2860.98, 0, 0, 0, 1, 0, 1, 1),
(36, 'SAOL', 'SAVC', 4, 1306, 1606.38, 0, 1, 1, 1, 0, 1, 0),
(37, 'SACC', 'SAVB', 2, 1721, 2116.83, 0, 0, 0, 1, 1, 0, 0),
(38, 'SADL', 'SATU', 3, 2181, 2682.63, 1, 0, 0, 0, 0, 1, 1),
(39, 'SANL', 'SATR', 2, 1821, 2239.83, 1, 1, 0, 1, 1, 0, 1),
(40, 'SAVH', 'SATK', 2, 1956, 2405.88, 1, 0, 1, 1, 0, 1, 1),
(41, 'SATK', 'SATC', 4, 2209, 2717.07, 1, 1, 1, 0, 1, 1, 0),
(42, 'SAMM', 'SAST', 1, 2197, 2702.31, 1, 0, 1, 1, 1, 1, 1),
(43, 'SAZM', 'SASO', 1, 1358, 1670.34, 0, 1, 0, 0, 0, 0, 0),
(44, 'SAME', 'SASJ', 4, 895, 1100.85, 0, 0, 0, 1, 1, 1, 0),
(45, 'SAOS', 'SASA', 4, 847, 1041.81, 0, 0, 1, 0, 0, 0, 1),
(46, 'SAEM', 'SASA', 2, 2045, 2515.35, 1, 0, 1, 0, 1, 0, 1),
(47, 'SARM', 'SARP', 3, 1109, 1364.07, 0, 1, 0, 0, 1, 1, 0),
(48, 'SADM', 'SARM', 2, 1763, 2168.49, 1, 1, 0, 1, 1, 1, 1),
(49, 'SAZO', 'SARL', 1, 1665, 2047.95, 0, 1, 0, 1, 1, 0, 1),
(50, 'SAZN', 'SARI', 2, 1809, 2225.07, 0, 0, 0, 0, 0, 1, 0),
(51, 'SAZF', 'SARF', 2, 1841, 2264.43, 0, 0, 0, 0, 1, 0, 0),
(52, 'SAAP', 'SARE', 3, 1079, 1327.17, 0, 0, 0, 1, 1, 0, 1),
(53, 'SARL', 'SARC', 4, 1108, 1362.84, 1, 1, 1, 1, 1, 0, 1),
(54, 'SAZP', 'SAOU', 2, 2112, 2597.76, 1, 1, 0, 0, 0, 0, 1),
(55, 'SASJ', 'SAOS', 2, 2412, 2966.76, 0, 1, 0, 0, 1, 0, 0),
(56, 'SAWP', 'SAOR', 1, 1980, 2435.4, 0, 0, 1, 0, 0, 0, 1),
(57, 'SARP', 'SAOL', 4, 862, 1060.26, 1, 1, 1, 1, 1, 1, 1),
(58, 'SAWD', 'SAOD', 1, 1525, 1875.75, 1, 0, 0, 0, 0, 0, 1),
(59, 'SARI', 'SAOC', 3, 2229, 2741.67, 1, 0, 0, 1, 1, 1, 1),
(60, 'SAVY', 'SANW', 4, 870, 1070.1, 0, 0, 0, 0, 1, 0, 0),
(61, 'SAWJ', 'SANU', 2, 2166, 2664.18, 0, 0, 0, 1, 0, 0, 0),
(62, 'SAWU', 'SANT', 3, 1173, 1442.79, 1, 0, 0, 0, 0, 1, 0),
(63, 'SASA', 'SANR', 2, 2001, 2461.23, 1, 0, 1, 1, 1, 1, 1),
(64, 'SATR', 'SANO', 1, 2217, 2726.91, 0, 1, 0, 1, 1, 1, 1),
(65, 'SARE', 'SANL', 1, 2334, 2870.82, 1, 0, 0, 0, 1, 0, 0),
(66, 'SAOC', 'SANE', 1, 2014, 2477.22, 0, 1, 1, 0, 0, 1, 0),
(67, 'SAWG', 'SANC', 1, 1462, 1798.26, 0, 1, 0, 1, 1, 0, 1),
(68, 'SAWE', 'SAMR', 1, 2269, 2790.87, 0, 0, 0, 0, 1, 1, 1),
(69, 'SAWT', 'SAMM', 2, 2205, 2712.15, 1, 0, 1, 1, 0, 1, 0),
(70, 'SAAR', 'SAME', 1, 1097, 1349.31, 0, 0, 1, 0, 0, 0, 1),
(71, 'SASA', 'SAMA', 1, 989, 1216.47, 0, 0, 1, 0, 0, 1, 1),
(72, 'SADF', 'SAHZ', 3, 2357, 2899.11, 0, 0, 0, 0, 0, 0, 1),
(73, 'SANC', 'SAHR', 4, 1716, 2110.68, 1, 0, 0, 1, 0, 1, 0),
(74, 'SANU', 'SAHE', 4, 1387, 1706.01, 0, 1, 1, 1, 1, 0, 1),
(75, 'SAOU', 'SAFS', 2, 1032, 1269.36, 0, 0, 1, 1, 1, 0, 1),
(76, 'SAMR', 'SAEZ', 3, 1577, 1939.71, 1, 1, 1, 1, 1, 1, 0),
(77, 'SASO', 'SAEM', 2, 1456, 1790.88, 1, 0, 0, 0, 1, 0, 1),
(78, 'SADS', 'SADS', 1, 1342, 1650.66, 1, 0, 1, 0, 1, 0, 0),
(79, 'SANT', 'SADP', 3, 1632, 2007.36, 1, 1, 1, 0, 1, 0, 0),
(80, 'SAZR', 'SADO', 3, 2414, 2969.22, 0, 0, 0, 1, 1, 0, 0),
(81, 'SAZL', 'SADM', 2, 2350, 2890.5, 1, 1, 0, 1, 1, 0, 1),
(82, 'SANE', 'SADL', 3, 1840, 2263.2, 0, 1, 0, 1, 0, 0, 1),
(83, 'SAZY', 'SADJ', 3, 2095, 2576.85, 0, 1, 1, 0, 0, 0, 1),
(84, 'SAAV', 'SADF', 1, 1763, 2168.49, 0, 0, 1, 0, 1, 0, 0),
(85, 'SAFS', 'SADD', 2, 2284, 2809.32, 0, 1, 0, 0, 1, 1, 0),
(86, 'SAZT', 'SACT', 3, 2272, 2794.56, 1, 0, 0, 0, 1, 0, 0),
(87, 'SAST', 'SACP', 4, 1849, 2274.27, 1, 0, 0, 0, 0, 0, 1),
(88, 'SANR', 'SACO', 2, 1552, 1908.96, 0, 0, 1, 1, 1, 1, 0),
(89, 'SAVT', 'SACC', 2, 2472, 3040.56, 0, 1, 0, 1, 1, 1, 0),
(90, 'SAZH', 'SABE', 2, 2390, 2939.7, 1, 1, 1, 1, 1, 0, 1),
(91, 'SAWH', 'SAAV', 3, 1498, 1842.54, 0, 0, 1, 0, 1, 1, 0),
(92, 'SAVV', 'SAAU', 4, 1183, 1455.09, 1, 0, 1, 1, 0, 1, 0),
(93, 'SAOD', 'SAAR', 2, 1322, 1626.06, 1, 0, 0, 0, 1, 1, 1),
(94, 'SAZV', 'SAAP', 2, 1227, 1509.21, 0, 1, 0, 1, 0, 1, 0),
(95, 'SAOR', 'SAAK', 3, 1546, 1901.58, 0, 1, 0, 1, 0, 0, 0),
(96, 'SAAU', 'SAAJ', 2, 830, 1020.9, 0, 1, 1, 0, 1, 1, 1),
(97, 'SAHZ', 'SAAC', 2, 1973, 2426.79, 1, 1, 1, 1, 0, 1, 0),
(98, 'SABE', 'SADO', 2, 2477, 3046.71, 1, 0, 0, 1, 1, 1, 1),
(99, 'SABE', 'SAHE', 1, 2327, 2862.21, 0, 1, 0, 1, 0, 1, 1),
(100, 'SABE', 'SANW', 1, 1071, 1317.33, 0, 0, 0, 0, 1, 1, 1),
(101, 'SABE', 'SACT', 4, 2312, 2843.76, 0, 1, 1, 1, 0, 0, 1),
(102, 'SABE', 'SACP', 3, 980, 1205.4, 0, 1, 0, 1, 0, 1, 0),
(103, 'SABE', 'SANO', 4, 2138, 2629.74, 0, 1, 1, 1, 1, 0, 0),
(104, 'SABE', 'SATC', 1, 1947, 2394.81, 1, 0, 1, 1, 0, 0, 1),
(105, 'SABE', 'SAVC', 1, 958, 1178.34, 0, 1, 1, 0, 1, 1, 1),
(106, 'SABE', 'SACO', 1, 2083, 2562.09, 1, 0, 1, 1, 1, 1, 1),
(107, 'SABE', 'SAAC', 3, 2093, 2574.39, 1, 1, 1, 1, 0, 0, 1),
(108, 'SABE', 'SAZC', 3, 1062, 1306.26, 1, 0, 0, 0, 0, 1, 0),
(109, 'SABE', 'SARC', 3, 1376, 1692.48, 1, 1, 0, 0, 0, 1, 1),
(110, 'SABE', 'SATU', 1, 1429, 1757.67, 1, 0, 0, 0, 0, 1, 1),
(111, 'SABE', 'SAZW', 4, 1159, 1425.57, 0, 1, 0, 1, 0, 0, 1),
(112, 'SABE', 'SAZD', 1, 1741, 2141.43, 0, 0, 1, 1, 0, 1, 1),
(113, 'SABE', 'SADD', 3, 2395, 2945.85, 0, 1, 1, 0, 0, 0, 1),
(114, 'SABE', 'SAVB', 3, 1159, 1425.57, 1, 0, 0, 0, 1, 0, 0),
(115, 'SABE', 'SAWC', 1, 1334, 1640.82, 1, 0, 1, 0, 1, 0, 0),
(116, 'SABE', 'SAWA', 3, 1792, 2204.16, 0, 1, 1, 1, 1, 0, 1),
(117, 'SABE', 'SADP', 3, 1234, 1517.82, 1, 0, 1, 0, 0, 1, 0),
(118, 'SABE', 'SAVE', 3, 1954, 2403.42, 1, 1, 1, 1, 0, 0, 1),
(119, 'SABE', 'SAEZ', 1, 1237, 1521.51, 1, 1, 1, 1, 1, 0, 1),
(120, 'SABE', 'SARF', 2, 1163, 1430.49, 1, 0, 0, 1, 1, 1, 1),
(121, 'SABE', 'SAMA', 3, 1653, 2033.19, 1, 0, 1, 0, 0, 0, 1),
(122, 'SABE', 'SAZG', 2, 1757, 2161.11, 0, 0, 0, 1, 1, 0, 1),
(123, 'SABE', 'SAHR', 2, 2321, 2854.83, 0, 1, 0, 1, 1, 0, 0),
(124, 'SABE', 'SAVJ', 1, 1237, 1521.51, 1, 0, 0, 0, 1, 1, 1),
(125, 'SABE', 'SAAK', 3, 1846, 2270.58, 0, 1, 1, 0, 1, 0, 0),
(126, 'SABE', 'SADJ', 4, 2188, 2691.24, 1, 0, 1, 0, 1, 1, 0),
(127, 'SABE', 'SAAJ', 2, 1617, 1988.91, 1, 1, 0, 1, 0, 1, 1),
(128, 'SABE', 'SAOL', 4, 1105, 1359.15, 1, 1, 1, 1, 1, 0, 0),
(129, 'SABE', 'SACC', 3, 1610, 1980.3, 0, 1, 1, 0, 0, 0, 0),
(130, 'SABE', 'SADL', 4, 1871, 2301.33, 1, 1, 1, 1, 0, 1, 1),
(131, 'SABE', 'SANL', 1, 1369, 1683.87, 1, 0, 0, 1, 1, 0, 0),
(132, 'SABE', 'SAVH', 2, 1995, 2453.85, 0, 1, 0, 0, 0, 1, 1),
(133, 'SABE', 'SATK', 1, 2139, 2630.97, 0, 1, 0, 1, 1, 1, 1),
(134, 'SABE', 'SAMM', 3, 2236, 2750.28, 0, 0, 0, 0, 1, 1, 0),
(135, 'SABE', 'SAZM', 4, 1275, 1568.25, 0, 1, 0, 1, 1, 0, 0),
(136, 'SABE', 'SAME', 3, 1515, 1863.45, 0, 1, 1, 0, 0, 1, 0),
(137, 'SABE', 'SAOS', 4, 2487, 3059.01, 0, 1, 0, 0, 0, 1, 0),
(138, 'SABE', 'SAEM', 4, 2163, 2660.49, 1, 0, 1, 1, 1, 1, 1),
(139, 'SABE', 'SARM', 1, 2414, 2969.22, 1, 0, 1, 1, 0, 1, 1),
(140, 'SABE', 'SADM', 4, 2399, 2950.77, 1, 1, 0, 0, 0, 1, 1),
(141, 'SABE', 'SAZO', 2, 1905, 2343.15, 0, 1, 1, 1, 0, 1, 1),
(142, 'SABE', 'SAZN', 1, 2457, 3022.11, 1, 1, 1, 0, 1, 0, 0),
(143, 'SABE', 'SAZF', 2, 1366, 1680.18, 1, 0, 0, 0, 1, 0, 1),
(144, 'SABE', 'SAAP', 3, 2474, 3043.02, 0, 0, 1, 0, 0, 0, 1),
(145, 'SABE', 'SARL', 2, 1201, 1477.23, 0, 0, 1, 0, 1, 0, 1),
(146, 'SABE', 'SAZP', 3, 2197, 2702.31, 0, 0, 1, 1, 1, 1, 1),
(147, 'SABE', 'SASJ', 1, 1228, 1510.44, 0, 1, 0, 1, 1, 0, 0),
(148, 'SABE', 'SAWP', 3, 1796, 2209.08, 1, 1, 1, 0, 0, 0, 0),
(149, 'SABE', 'SARP', 1, 2469, 3036.87, 1, 0, 1, 1, 0, 0, 0),
(150, 'SABE', 'SAWD', 1, 1629, 2003.67, 1, 1, 1, 0, 1, 1, 1),
(151, 'SABE', 'SARI', 2, 1856, 2282.88, 0, 0, 0, 1, 0, 0, 0),
(152, 'SABE', 'SAVY', 1, 952, 1170.96, 1, 0, 0, 1, 0, 0, 0),
(153, 'SABE', 'SAWJ', 4, 834, 1025.82, 0, 1, 1, 0, 0, 0, 0),
(154, 'SABE', 'SAWU', 3, 2372, 2917.56, 0, 1, 0, 0, 0, 0, 1),
(155, 'SABE', 'SASA', 1, 1249, 1536.27, 1, 0, 1, 1, 0, 0, 0),
(156, 'SABE', 'SATR', 2, 1951, 2399.73, 1, 1, 1, 1, 0, 0, 0),
(157, 'SABE', 'SARE', 3, 1767, 2173.41, 1, 0, 0, 0, 1, 1, 1),
(158, 'SABE', 'SAOC', 2, 918, 1129.14, 1, 1, 1, 0, 1, 1, 1),
(159, 'SABE', 'SAWG', 4, 2014, 2477.22, 0, 1, 1, 0, 1, 1, 1),
(160, 'SABE', 'SAWE', 3, 1437, 1767.51, 1, 0, 1, 1, 0, 1, 0),
(161, 'SABE', 'SAWT', 4, 1450, 1783.5, 1, 1, 0, 0, 0, 1, 1),
(162, 'SABE', 'SAAR', 2, 933, 1147.59, 0, 0, 1, 0, 1, 1, 0),
(163, 'SABE', 'SASA', 1, 1140, 1402.2, 1, 1, 1, 1, 0, 0, 0),
(164, 'SABE', 'SADF', 4, 2264, 2784.72, 1, 0, 1, 0, 1, 0, 1),
(165, 'SABE', 'SANC', 1, 2404, 2956.92, 0, 1, 1, 1, 0, 0, 1),
(166, 'SABE', 'SANU', 1, 1166, 1434.18, 0, 0, 1, 1, 0, 0, 1),
(167, 'SABE', 'SAOU', 2, 1519, 1868.37, 1, 1, 0, 1, 1, 1, 0),
(168, 'SABE', 'SAMR', 3, 1784, 2194.32, 1, 1, 0, 0, 0, 1, 0),
(169, 'SABE', 'SASO', 1, 2445, 3007.35, 0, 1, 0, 1, 0, 1, 1),
(170, 'SABE', 'SADS', 4, 1734, 2132.82, 1, 0, 1, 1, 0, 0, 0),
(171, 'SABE', 'SANT', 3, 1955, 2404.65, 1, 1, 1, 0, 1, 1, 0),
(172, 'SABE', 'SAZR', 2, 2158, 2654.34, 1, 0, 1, 0, 0, 1, 0),
(173, 'SABE', 'SAZL', 2, 2236, 2750.28, 0, 1, 0, 0, 0, 0, 0),
(174, 'SABE', 'SANE', 3, 1966, 2418.18, 1, 1, 1, 0, 1, 1, 0),
(175, 'SABE', 'SAZY', 3, 2121, 2608.83, 1, 1, 0, 0, 1, 0, 0),
(176, 'SABE', 'SAAV', 3, 1606, 1975.38, 0, 1, 0, 1, 0, 1, 1),
(177, 'SABE', 'SAFS', 3, 1710, 2103.3, 0, 1, 0, 0, 0, 0, 1),
(178, 'SABE', 'SAZT', 2, 1285, 1580.55, 1, 1, 0, 0, 1, 0, 0),
(179, 'SABE', 'SAST', 2, 1273, 1565.79, 1, 0, 0, 1, 1, 1, 0),
(180, 'SABE', 'SANR', 2, 2308, 2838.84, 0, 1, 0, 1, 0, 1, 0),
(181, 'SABE', 'SAVT', 1, 1934, 2378.82, 0, 1, 1, 0, 0, 0, 1),
(182, 'SABE', 'SAZH', 2, 1573, 1934.79, 0, 0, 0, 0, 1, 1, 0),
(183, 'SABE', 'SAWH', 4, 827, 1017.21, 1, 0, 1, 1, 1, 1, 1),
(184, 'SABE', 'SAVV', 3, 1052, 1293.96, 1, 0, 1, 1, 0, 1, 1),
(185, 'SABE', 'SAOD', 3, 1030, 1266.9, 0, 0, 1, 1, 1, 1, 0),
(186, 'SABE', 'SAZV', 2, 1378, 1694.94, 0, 0, 1, 1, 1, 0, 0),
(187, 'SABE', 'SAOR', 4, 1286, 1581.78, 1, 0, 0, 0, 1, 0, 1),
(188, 'SABE', 'SAAU', 2, 2259, 2778.57, 0, 1, 1, 1, 1, 0, 1),
(189, 'SABE', 'SAHZ', 1, 1432, 1761.36, 0, 1, 0, 0, 0, 1, 1),
(190, 'SACO', 'SAEZ', 2, 1591, 1956.93, 1, 1, 0, 0, 1, 0, 0),
(191, 'SACO', 'SARF', 3, 884, 1087.32, 0, 1, 1, 1, 0, 0, 0),
(192, 'SACO', 'SAMA', 1, 2012, 2474.76, 1, 0, 1, 0, 1, 1, 0),
(193, 'SACO', 'SAZG', 2, 2432, 2991.36, 0, 1, 1, 0, 0, 1, 1),
(194, 'SACO', 'SAHR', 2, 817, 1004.91, 0, 1, 0, 0, 1, 1, 1),
(195, 'SACO', 'SAVJ', 4, 2160, 2656.8, 0, 0, 1, 1, 1, 0, 0),
(196, 'SACO', 'SAAK', 4, 985, 1211.55, 0, 1, 1, 1, 0, 0, 1),
(197, 'SACO', 'SADJ', 3, 1178, 1448.94, 0, 1, 1, 1, 1, 0, 0),
(198, 'SACO', 'SAAJ', 1, 2078, 2555.94, 1, 1, 1, 1, 0, 1, 1),
(199, 'SACO', 'SAOL', 2, 1153, 1418.19, 0, 1, 0, 1, 1, 1, 0),
(200, 'SACO', 'SACC', 3, 1585, 1949.55, 0, 0, 0, 0, 0, 0, 0),
(201, 'SACO', 'SADL', 2, 2128, 2617.44, 1, 0, 0, 0, 1, 1, 1),
(202, 'SACO', 'SANL', 4, 1729, 2126.67, 1, 1, 0, 1, 1, 0, 1),
(203, 'SACO', 'SAVH', 2, 1202, 1478.46, 0, 0, 1, 1, 1, 0, 1),
(204, 'SACO', 'SATK', 4, 2399, 2950.77, 1, 0, 1, 1, 0, 1, 0),
(205, 'SACO', 'SAMM', 1, 2277, 2800.71, 0, 0, 0, 1, 1, 0, 1),
(206, 'SACO', 'SAZM', 3, 1339, 1646.97, 0, 1, 0, 1, 1, 1, 1),
(207, 'SACO', 'SAME', 2, 2364, 2907.72, 1, 0, 1, 1, 0, 1, 1),
(208, 'SACO', 'SAOS', 1, 1305, 1605.15, 0, 1, 0, 1, 1, 0, 1),
(209, 'SACO', 'SAEM', 2, 2344, 2883.12, 1, 0, 1, 1, 1, 1, 1),
(210, 'SACO', 'SARM', 3, 817, 1004.91, 1, 0, 0, 1, 1, 1, 0),
(211, 'SACO', 'SADM', 1, 1728, 2125.44, 0, 1, 0, 1, 1, 0, 1),
(212, 'SACO', 'SAZO', 4, 1820, 2238.6, 0, 1, 0, 1, 1, 0, 0),
(213, 'SACO', 'SAZN', 1, 2174, 2674.02, 1, 0, 0, 0, 1, 0, 1),
(214, 'SACO', 'SAZF', 4, 839, 1031.97, 0, 0, 0, 0, 0, 1, 1),
(215, 'SACO', 'SAAP', 3, 927, 1140.21, 0, 0, 0, 0, 1, 0, 1),
(216, 'SACO', 'SARL', 2, 853, 1049.19, 1, 1, 0, 0, 1, 1, 0),
(217, 'SACO', 'SAZP', 1, 2189, 2692.47, 0, 0, 1, 0, 0, 1, 1),
(218, 'SACO', 'SASJ', 4, 1130, 1389.9, 1, 1, 1, 0, 1, 1, 0),
(219, 'SACO', 'SAWP', 1, 1039, 1277.97, 0, 1, 0, 1, 0, 0, 1),
(220, 'SACO', 'SARP', 3, 2038, 2506.74, 0, 1, 1, 1, 0, 0, 1),
(221, 'SACO', 'SAWD', 1, 2159, 2655.57, 1, 1, 0, 0, 1, 1, 0),
(222, 'SACO', 'SARI', 4, 2253, 2771.19, 0, 1, 0, 0, 1, 1, 0),
(223, 'SACO', 'SAVY', 4, 2374, 2920.02, 1, 1, 1, 1, 1, 0, 1),
(224, 'SACO', 'SAWJ', 3, 2477, 3046.71, 1, 0, 1, 1, 0, 1, 1),
(225, 'SACO', 'SAWU', 2, 1020, 1254.6, 1, 1, 1, 1, 0, 1, 1),
(226, 'SACO', 'SASA', 1, 1045, 1285.35, 0, 1, 0, 1, 0, 0, 0),
(227, 'SACO', 'SATR', 3, 1484, 1825.32, 1, 1, 0, 0, 0, 0, 0),
(228, 'SACO', 'SARE', 3, 1846, 2270.58, 1, 0, 0, 1, 0, 0, 0),
(229, 'SACO', 'SAOC', 2, 2054, 2526.42, 0, 1, 0, 1, 0, 1, 1),
(230, 'SACO', 'SAWG', 3, 2392, 2942.16, 1, 1, 1, 0, 0, 1, 1),
(231, 'SACO', 'SAWE', 4, 1687, 2075.01, 0, 1, 0, 0, 1, 1, 0),
(232, 'SACO', 'SAWT', 2, 959, 1179.57, 1, 1, 0, 0, 1, 1, 1),
(233, 'SACO', 'SAAR', 4, 1147, 1410.81, 0, 1, 1, 0, 0, 1, 0),
(234, 'SACO', 'SASA', 3, 2302, 2831.46, 0, 1, 1, 1, 0, 0, 1),
(235, 'SACO', 'SADF', 3, 2399, 2950.77, 0, 1, 0, 1, 0, 1, 1),
(236, 'SACO', 'SANC', 2, 1572, 1933.56, 1, 0, 0, 1, 0, 0, 1),
(237, 'SACO', 'SANU', 1, 1361, 1674.03, 0, 1, 1, 0, 0, 1, 1),
(238, 'SACO', 'SAOU', 2, 1982, 2437.86, 1, 0, 1, 0, 0, 1, 0),
(239, 'SACO', 'SAMR', 3, 2395, 2945.85, 1, 1, 1, 1, 1, 0, 1),
(240, 'SACO', 'SASO', 3, 2383, 2931.09, 0, 1, 1, 1, 1, 0, 1),
(241, 'SACO', 'SADS', 2, 1300, 1599, 1, 1, 0, 0, 1, 0, 1),
(242, 'SACO', 'SANT', 2, 2431, 2990.13, 1, 0, 1, 0, 1, 0, 1),
(243, 'SACO', 'SAZR', 4, 1653, 2033.19, 1, 0, 0, 1, 1, 0, 1),
(244, 'SACO', 'SAZL', 1, 1945, 2392.35, 1, 1, 1, 0, 1, 1, 0),
(245, 'SACO', 'SANE', 1, 1654, 2034.42, 1, 1, 1, 0, 0, 1, 1),
(246, 'SACO', 'SAZY', 2, 1778, 2186.94, 0, 1, 1, 0, 0, 1, 0),
(247, 'SACO', 'SAAV', 1, 2246, 2762.58, 1, 1, 0, 1, 1, 0, 0),
(248, 'SACO', 'SAFS', 1, 1985, 2441.55, 1, 0, 0, 0, 0, 0, 0),
(249, 'SACO', 'SAZT', 4, 2463, 3029.49, 0, 0, 1, 0, 1, 0, 0),
(250, 'SACO', 'SAST', 2, 1504, 1849.92, 1, 1, 1, 1, 1, 1, 0),
(251, 'SACO', 'SANR', 4, 1398, 1719.54, 1, 1, 0, 0, 0, 0, 0),
(252, 'SACO', 'SAVT', 4, 813, 999.99, 1, 1, 0, 0, 0, 1, 0),
(253, 'SACO', 'SAZH', 4, 2288, 2814.24, 0, 0, 1, 0, 1, 0, 1),
(254, 'SACO', 'SAWH', 2, 1916, 2356.68, 0, 1, 0, 1, 1, 0, 1),
(255, 'SACO', 'SAVV', 1, 1321, 1624.83, 0, 0, 1, 0, 0, 1, 0),
(256, 'SACO', 'SAOD', 2, 941, 1157.43, 1, 1, 0, 0, 1, 1, 0),
(257, 'SACO', 'SAZV', 2, 2049, 2520.27, 1, 1, 1, 0, 1, 0, 0),
(258, 'SACO', 'SAOR', 3, 2313, 2844.99, 0, 1, 1, 0, 0, 0, 1),
(259, 'SACO', 'SAAU', 2, 2400, 2952, 0, 1, 1, 1, 0, 1, 1),
(260, 'SACO', 'SAHZ', 2, 1347, 1656.81, 0, 0, 0, 1, 1, 1, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aeropuertos`
--
ALTER TABLE `aeropuertos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aviones`
--
ALTER TABLE `aviones`
 ADD PRIMARY KEY (`c_avion`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dias_vuelo`
--
ALTER TABLE `dias_vuelo`
 ADD KEY `fk_vuelo` (`id_vuelo`);

--
-- Indices de la tabla `pasajero`
--
ALTER TABLE `pasajero`
 ADD PRIMARY KEY (`Dni`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
 ADD PRIMARY KEY (`c_reserva`);

--
-- Indices de la tabla `vuelos`
--
ALTER TABLE `vuelos`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_oacidestino` (`c_oaci_destino`), ADD KEY `fk_oaciorigen` (`c_oaci_origen`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aeropuertos`
--
ALTER TABLE `aeropuertos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `vuelos`
--
ALTER TABLE `vuelos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=261;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `dias_vuelo`
--
ALTER TABLE `dias_vuelo`
ADD CONSTRAINT `fk_vuelo` FOREIGN KEY (`id_vuelo`) REFERENCES `vuelos` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
