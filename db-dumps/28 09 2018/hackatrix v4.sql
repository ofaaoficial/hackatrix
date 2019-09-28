-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2019 a las 20:55:39
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hackatrix`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cities`
--

INSERT INTO `cities` (`id`, `name`, `department_id`, `country_id`) VALUES
(1, 'Leticia', 1, 48),
(2, 'Puerto Nariño', 1, 48),
(3, 'Abejorral', 2, 48),
(4, 'Abriaquí', 2, 48),
(5, 'Alejandría', 2, 48),
(6, 'Amagá', 2, 48),
(7, 'Amalfi', 2, 48),
(8, 'Andes', 2, 48),
(9, 'Angelópolis', 2, 48),
(10, 'Angostura', 2, 48),
(11, 'Anorí', 2, 48),
(12, 'Anzá', 2, 48),
(13, 'Apartadó', 2, 48),
(14, 'Arboletes', 2, 48),
(15, 'Argelia', 2, 48),
(16, 'Armenia', 2, 48),
(17, 'Barbosa', 2, 48),
(18, 'Bello', 2, 48),
(19, 'Belmira', 2, 48),
(20, 'Betania', 2, 48),
(21, 'Betulia', 2, 48),
(22, 'Briceño', 2, 48),
(23, 'Buriticá', 2, 48),
(24, 'Cáceres', 2, 48),
(25, 'Caicedo', 2, 48),
(26, 'Caldas', 2, 48),
(27, 'Campamento', 2, 48),
(28, 'Cañasgordas', 2, 48),
(29, 'Caracolí', 2, 48),
(30, 'Caramanta', 2, 48),
(31, 'Carepa', 2, 48),
(32, 'Carolina del Príncipe', 2, 48),
(33, 'Caucasia', 2, 48),
(34, 'Chigorodó', 2, 48),
(35, 'Cisneros', 2, 48),
(36, 'Ciudad Bolívar', 2, 48),
(37, 'Cocorná', 2, 48),
(38, 'Concepción', 2, 48),
(39, 'Concordia', 2, 48),
(40, 'Copacabana', 2, 48),
(41, 'Dabeiba', 2, 48),
(42, 'Donmatías', 2, 48),
(43, 'Ebéjico', 2, 48),
(44, 'El Bagre', 2, 48),
(45, 'El Carmen de Viboral', 2, 48),
(46, 'El Peñol', 2, 48),
(47, 'El Retiro', 2, 48),
(48, 'El Santuario', 2, 48),
(49, 'Entrerríos', 2, 48),
(50, 'Envigado', 2, 48),
(51, 'Fredonia', 2, 48),
(52, 'Frontino', 2, 48),
(53, 'Giraldo', 2, 48),
(54, 'Girardota', 2, 48),
(55, 'Gómez Plata', 2, 48),
(56, 'Granada', 2, 48),
(57, 'Guadalupe', 2, 48),
(58, 'Guarne', 2, 48),
(59, 'Guatapé', 2, 48),
(60, 'Heliconia', 2, 48),
(61, 'Hispania', 2, 48),
(62, 'Itagüí', 2, 48),
(63, 'Ituango', 2, 48),
(64, 'Jardín', 2, 48),
(65, 'Jericó', 2, 48),
(66, 'La Ceja', 2, 48),
(67, 'La Estrella', 2, 48),
(68, 'La Pintada', 2, 48),
(69, 'La Unión', 2, 48),
(70, 'Liborina', 2, 48),
(71, 'Maceo', 2, 48),
(72, 'Marinilla', 2, 48),
(73, 'Medellín', 2, 48),
(74, 'Montebello', 2, 48),
(75, 'Murindó', 2, 48),
(76, 'Mutatá', 2, 48),
(77, 'Nariño', 2, 48),
(78, 'Nechí', 2, 48),
(79, 'Necoclí', 2, 48),
(80, 'Olaya', 2, 48),
(81, 'Peque', 2, 48),
(82, 'Pueblorrico', 2, 48),
(83, 'Puerto Berrío', 2, 48),
(84, 'Puerto Nare', 2, 48),
(85, 'Puerto Triunfo', 2, 48),
(86, 'Remedios', 2, 48),
(87, 'Rionegro', 2, 48),
(88, 'Sabanalarga', 2, 48),
(89, 'Sabaneta', 2, 48),
(90, 'Salgar', 2, 48),
(91, 'San Andrés de Cuerquia', 2, 48),
(92, 'San Carlos', 2, 48),
(93, 'San Francisco', 2, 48),
(94, 'San Jerónimo', 2, 48),
(95, 'San José de la Montaña', 2, 48),
(96, 'San Juan de Urabá', 2, 48),
(97, 'San Luis', 2, 48),
(98, 'San Pedro de Urabá', 2, 48),
(99, 'San Pedro de los Milagros', 2, 48),
(100, 'San Rafael', 2, 48),
(101, 'San Roque', 2, 48),
(102, 'San Vicente', 2, 48),
(103, 'Santa Bárbara', 2, 48),
(104, 'Santa Fe de Antioquia', 2, 48),
(105, 'Santa Rosa de Osos', 2, 48),
(106, 'Santo Domingo', 2, 48),
(107, 'Segovia', 2, 48),
(108, 'Sonsón', 2, 48),
(109, 'Sopetrán', 2, 48),
(110, 'Támesis', 2, 48),
(111, 'Tarazá', 2, 48),
(112, 'Tarso', 2, 48),
(113, 'Titiribí', 2, 48),
(114, 'Toledo', 2, 48),
(115, 'Turbo', 2, 48),
(116, 'Uramita', 2, 48),
(117, 'Urrao', 2, 48),
(118, 'Valdivia', 2, 48),
(119, 'Valparaíso', 2, 48),
(120, 'Vegachí', 2, 48),
(121, 'Venecia', 2, 48),
(122, 'Vigía del Fuerte', 2, 48),
(123, 'Yalí', 2, 48),
(124, 'Yarumal', 2, 48),
(125, 'Yolombó', 2, 48),
(126, 'Yondó', 2, 48),
(127, 'Zaragoza', 2, 48),
(128, 'Arauca', 3, 48),
(129, 'Arauquita', 3, 48),
(130, 'Cravo Norte', 3, 48),
(131, 'Fortul', 3, 48),
(132, 'Puerto Rondón', 3, 48),
(133, 'Saravena', 3, 48),
(134, 'Tame', 3, 48),
(135, 'Baranoa', 4, 48),
(136, 'Barranquilla', 4, 48),
(137, 'Campo de la Cruz', 4, 48),
(138, 'Candelaria', 4, 48),
(139, 'Galapa', 4, 48),
(140, 'Juan de Acosta', 4, 48),
(141, 'Luruaco', 4, 48),
(142, 'Malambo', 4, 48),
(143, 'Manatí', 4, 48),
(144, 'Palmar de Varela', 4, 48),
(145, 'Piojó', 4, 48),
(146, 'Polonuevo', 4, 48),
(147, 'Ponedera', 4, 48),
(148, 'Puerto Colombia', 4, 48),
(149, 'Repelón', 4, 48),
(150, 'Sabanagrande', 4, 48),
(151, 'Sabanalarga', 4, 48),
(152, 'Santa Lucía', 4, 48),
(153, 'Santo Tomás', 4, 48),
(154, 'Soledad', 4, 48),
(155, 'Suán', 4, 48),
(156, 'Tubará', 4, 48),
(157, 'Usiacurí', 4, 48),
(158, 'Achí', 5, 48),
(159, 'Altos del Rosario', 5, 48),
(160, 'Arenal', 5, 48),
(161, 'Arjona', 5, 48),
(162, 'Arroyohondo', 5, 48),
(163, 'Barranco de Loba', 5, 48),
(164, 'Brazuelo de Papayal', 5, 48),
(165, 'Calamar', 5, 48),
(166, 'Cantagallo', 5, 48),
(167, 'Cartagena de Indias', 5, 48),
(168, 'Cicuco', 5, 48),
(169, 'Clemencia', 5, 48),
(170, 'Córdoba', 5, 48),
(171, 'El Carmen de Bolívar', 5, 48),
(172, 'El Guamo', 5, 48),
(173, 'El Peñón', 5, 48),
(174, 'Hatillo de Loba', 5, 48),
(175, 'Magangué', 5, 48),
(176, 'Mahates', 5, 48),
(177, 'Margarita', 5, 48),
(178, 'María la Baja', 5, 48),
(179, 'Mompós', 5, 48),
(180, 'Montecristo', 5, 48),
(181, 'Morales', 5, 48),
(182, 'Norosí', 5, 48),
(183, 'Pinillos', 5, 48),
(184, 'Regidor', 5, 48),
(185, 'Río Viejo', 5, 48),
(186, 'San Cristóbal', 5, 48),
(187, 'San Estanislao', 5, 48),
(188, 'San Fernando', 5, 48),
(189, 'San Jacinto del Cauca', 5, 48),
(190, 'San Jacinto', 5, 48),
(191, 'San Juan Nepomuceno', 5, 48),
(192, 'San Martín de Loba', 5, 48),
(193, 'San Pablo', 5, 48),
(194, 'Santa Catalina', 5, 48),
(195, 'Santa Rosa', 5, 48),
(196, 'Santa Rosa del Sur', 5, 48),
(197, 'Simití', 5, 48),
(198, 'Soplaviento', 5, 48),
(199, 'Talaigua Nuevo', 5, 48),
(200, 'Tiquisio', 5, 48),
(201, 'Turbaco', 5, 48),
(202, 'Turbaná', 5, 48),
(203, 'Villanueva', 5, 48),
(204, 'Zambrano', 5, 48),
(205, 'Almeida', 6, 48),
(206, 'Aquitania', 6, 48),
(207, 'Arcabuco', 6, 48),
(208, 'Belén', 6, 48),
(209, 'Berbeo', 6, 48),
(210, 'Betéitiva', 6, 48),
(211, 'Boavita', 6, 48),
(212, 'Boyacá', 6, 48),
(213, 'Briceño', 6, 48),
(214, 'Buenavista', 6, 48),
(215, 'Busbanzá', 6, 48),
(216, 'Caldas', 6, 48),
(217, 'Campohermoso', 6, 48),
(218, 'Cerinza', 6, 48),
(219, 'Chinavita', 6, 48),
(220, 'Chiquinquirá', 6, 48),
(221, 'Chíquiza', 6, 48),
(222, 'Chiscas', 6, 48),
(223, 'Chita', 6, 48),
(224, 'Chitaraque', 6, 48),
(225, 'Chivatá', 6, 48),
(226, 'Chivor', 6, 48),
(227, 'Ciénega', 6, 48),
(228, 'Cómbita', 6, 48),
(229, 'Coper', 6, 48),
(230, 'Corrales', 6, 48),
(231, 'Covarachía', 6, 48),
(232, 'Cubará', 6, 48),
(233, 'Cucaita', 6, 48),
(234, 'Cuítiva', 6, 48),
(235, 'Duitama', 6, 48),
(236, 'El Cocuy', 6, 48),
(237, 'El Espino', 6, 48),
(238, 'Firavitoba', 6, 48),
(239, 'Floresta', 6, 48),
(240, 'Gachantivá', 6, 48),
(241, 'Gámeza', 6, 48),
(242, 'Garagoa', 6, 48),
(243, 'Guacamayas', 6, 48),
(244, 'Guateque', 6, 48),
(245, 'Guayatá', 6, 48),
(246, 'Güicán', 6, 48),
(247, 'Iza', 6, 48),
(248, 'Jenesano', 6, 48),
(249, 'Jericó', 6, 48),
(250, 'La Capilla', 6, 48),
(251, 'La Uvita', 6, 48),
(252, 'La Victoria', 6, 48),
(253, 'Labranzagrande', 6, 48),
(254, 'Macanal', 6, 48),
(255, 'Maripí', 6, 48),
(256, 'Miraflores', 6, 48),
(257, 'Mongua', 6, 48),
(258, 'Monguí', 6, 48),
(259, 'Moniquirá', 6, 48),
(260, 'Motavita', 6, 48),
(261, 'Muzo', 6, 48),
(262, 'Nobsa', 6, 48),
(263, 'Nuevo Colón', 6, 48),
(264, 'Oicatá', 6, 48),
(265, 'Otanche', 6, 48),
(266, 'Pachavita', 6, 48),
(267, 'Páez', 6, 48),
(268, 'Paipa', 6, 48),
(269, 'Pajarito', 6, 48),
(270, 'Panqueba', 6, 48),
(271, 'Pauna', 6, 48),
(272, 'Paya', 6, 48),
(273, 'Paz del Río', 6, 48),
(274, 'Pesca', 6, 48),
(275, 'Pisba', 6, 48),
(276, 'Puerto Boyacá', 6, 48),
(277, 'Quípama', 6, 48),
(278, 'Ramiriquí', 6, 48),
(279, 'Ráquira', 6, 48),
(280, 'Rondón', 6, 48),
(281, 'Saboyá', 6, 48),
(282, 'Sáchica', 6, 48),
(283, 'Samacá', 6, 48),
(284, 'San Eduardo', 6, 48),
(285, 'San José de Pare', 6, 48),
(286, 'San Luis de Gaceno', 6, 48),
(287, 'San Mateo', 6, 48),
(288, 'San Miguel de Sema', 6, 48),
(289, 'San Pablo de Borbur', 6, 48),
(290, 'Santa María', 6, 48),
(291, 'Santa Rosa de Viterbo', 6, 48),
(292, 'Santa Sofía', 6, 48),
(293, 'Santana', 6, 48),
(294, 'Sativanorte', 6, 48),
(295, 'Sativasur', 6, 48),
(296, 'Siachoque', 6, 48),
(297, 'Soatá', 6, 48),
(298, 'Socha', 6, 48),
(299, 'Socotá', 6, 48),
(300, 'Sogamoso', 6, 48),
(301, 'Somondoco', 6, 48),
(302, 'Sora', 6, 48),
(303, 'Soracá', 6, 48),
(304, 'Sotaquirá', 6, 48),
(305, 'Susacón', 6, 48),
(306, 'Sutamarchán', 6, 48),
(307, 'Sutatenza', 6, 48),
(308, 'Tasco', 6, 48),
(309, 'Tenza', 6, 48),
(310, 'Tibaná', 6, 48),
(311, 'Tibasosa', 6, 48),
(312, 'Tinjacá', 6, 48),
(313, 'Tipacoque', 6, 48),
(314, 'Toca', 6, 48),
(315, 'Togüí', 6, 48),
(316, 'Tópaga', 6, 48),
(317, 'Tota', 6, 48),
(318, 'Tunja', 6, 48),
(319, 'Tununguá', 6, 48),
(320, 'Turmequé', 6, 48),
(321, 'Tuta', 6, 48),
(322, 'Tutazá', 6, 48),
(323, 'Úmbita', 6, 48),
(324, 'Ventaquemada', 6, 48),
(325, 'Villa de Leyva', 6, 48),
(326, 'Viracachá', 6, 48),
(327, 'Zetaquira', 6, 48),
(328, 'Aguadas', 7, 48),
(329, 'Anserma', 7, 48),
(330, 'Aranzazu', 7, 48),
(331, 'Belalcázar', 7, 48),
(332, 'Chinchiná', 7, 48),
(333, 'Filadelfia', 7, 48),
(334, 'La Dorada', 7, 48),
(335, 'La Merced', 7, 48),
(336, 'Manizales', 7, 48),
(337, 'Manzanares', 7, 48),
(338, 'Marmato', 7, 48),
(339, 'Marquetalia', 7, 48),
(340, 'Marulanda', 7, 48),
(341, 'Neira', 7, 48),
(342, 'Norcasia', 7, 48),
(343, 'Pácora', 7, 48),
(344, 'Palestina', 7, 48),
(345, 'Pensilvania', 7, 48),
(346, 'Riosucio', 7, 48),
(347, 'Risaralda', 7, 48),
(348, 'Salamina', 7, 48),
(349, 'Samaná', 7, 48),
(350, 'San José', 7, 48),
(351, 'Supía', 7, 48),
(352, 'Victoria', 7, 48),
(353, 'Villamaría', 7, 48),
(354, 'Viterbo', 7, 48),
(355, 'Albania', 8, 48),
(356, 'Belén de los Andaquíes', 8, 48),
(357, 'Cartagena del Chairá', 8, 48),
(358, 'Curillo', 8, 48),
(359, 'El Doncello', 8, 48),
(360, 'El Paujil', 8, 48),
(361, 'Florencia', 8, 48),
(362, 'La Montañita', 8, 48),
(363, 'Milán', 8, 48),
(364, 'Morelia', 8, 48),
(365, 'Puerto Rico', 8, 48),
(366, 'San José del Fragua', 8, 48),
(367, 'San Vicente del Caguán', 8, 48),
(368, 'Solano', 8, 48),
(369, 'Solita', 8, 48),
(370, 'Valparaíso', 8, 48),
(371, 'Aguazul', 9, 48),
(372, 'Chámeza', 9, 48),
(373, 'Hato Corozal', 9, 48),
(374, 'La Salina', 9, 48),
(375, 'Maní', 9, 48),
(376, 'Monterrey', 9, 48),
(377, 'Nunchía', 9, 48),
(378, 'Orocué', 9, 48),
(379, 'Paz de Ariporo', 9, 48),
(380, 'Pore', 9, 48),
(381, 'Recetor', 9, 48),
(382, 'Sabanalarga', 9, 48),
(383, 'Sácama', 9, 48),
(384, 'San Luis de Palenque', 9, 48),
(385, 'Támara', 9, 48),
(386, 'Tauramena', 9, 48),
(387, 'Trinidad', 9, 48),
(388, 'Villanueva', 9, 48),
(389, 'Yopal', 9, 48),
(390, 'Almaguer', 10, 48),
(391, 'Argelia', 10, 48),
(392, 'Balboa', 10, 48),
(393, 'Bolívar', 10, 48),
(394, 'Buenos Aires', 10, 48),
(395, 'Cajibío', 10, 48),
(396, 'Caldono', 10, 48),
(397, 'Caloto', 10, 48),
(398, 'Corinto', 10, 48),
(399, 'El Tambo', 10, 48),
(400, 'Florencia', 10, 48),
(401, 'Guachené', 10, 48),
(402, 'Guapí', 10, 48),
(403, 'Inzá', 10, 48),
(404, 'Jambaló', 10, 48),
(405, 'La Sierra', 10, 48),
(406, 'La Vega', 10, 48),
(407, 'López de Micay', 10, 48),
(408, 'Mercaderes', 10, 48),
(409, 'Miranda', 10, 48),
(410, 'Morales', 10, 48),
(411, 'Padilla', 10, 48),
(412, 'Páez', 10, 48),
(413, 'Patía', 10, 48),
(414, 'Piamonte', 10, 48),
(415, 'Piendamó', 10, 48),
(416, 'Popayán', 10, 48),
(417, 'Puerto Tejada', 10, 48),
(418, 'Puracé', 10, 48),
(419, 'Rosas', 10, 48),
(420, 'San Sebastián', 10, 48),
(421, 'Santa Rosa', 10, 48),
(422, 'Santander de Quilichao', 10, 48),
(423, 'Silvia', 10, 48),
(424, 'Sotará', 10, 48),
(425, 'Suárez', 10, 48),
(426, 'Sucre', 10, 48),
(427, 'Timbío', 10, 48),
(428, 'Timbiquí', 10, 48),
(429, 'Toribío', 10, 48),
(430, 'Totoró', 10, 48),
(431, 'Villa Rica', 10, 48),
(432, 'Aguachica', 11, 48),
(433, 'Agustín Codazzi', 11, 48),
(434, 'Astrea', 11, 48),
(435, 'Becerril', 11, 48),
(436, 'Bosconia', 11, 48),
(437, 'Chimichagua', 11, 48),
(438, 'Chiriguaná', 11, 48),
(439, 'Curumaní', 11, 48),
(440, 'El Copey', 11, 48),
(441, 'El Paso', 11, 48),
(442, 'Gamarra', 11, 48),
(443, 'González', 11, 48),
(444, 'La Gloria (Cesar)', 11, 48),
(445, 'La Jagua de Ibirico', 11, 48),
(446, 'La Paz', 11, 48),
(447, 'Manaure Balcón del Cesar', 11, 48),
(448, 'Pailitas', 11, 48),
(449, 'Pelaya', 11, 48),
(450, 'Pueblo Bello', 11, 48),
(451, 'Río de Oro', 11, 48),
(452, 'San Alberto', 11, 48),
(453, 'San Diego', 11, 48),
(454, 'San Martín', 11, 48),
(455, 'Tamalameque', 11, 48),
(456, 'Valledupar', 11, 48),
(457, 'Acandí', 12, 48),
(458, 'Alto Baudó', 12, 48),
(459, 'Bagadó', 12, 48),
(460, 'Bahía Solano', 12, 48),
(461, 'Bajo Baudó', 12, 48),
(462, 'Bojayá', 12, 48),
(463, 'Cantón de San Pablo', 12, 48),
(464, 'Cértegui', 12, 48),
(465, 'Condoto', 12, 48),
(466, 'El Atrato', 12, 48),
(467, 'El Carmen de Atrato', 12, 48),
(468, 'El Carmen del Darién', 12, 48),
(469, 'Istmina', 12, 48),
(470, 'Juradó', 12, 48),
(471, 'Litoral de San Juan', 12, 48),
(472, 'Lloró', 12, 48),
(473, 'Medio Atrato', 12, 48),
(474, 'Medio Baudó', 12, 48),
(475, 'Medio San Juan', 12, 48),
(476, 'Nóvita', 12, 48),
(477, 'Nuquí', 12, 48),
(478, 'Quibdó', 12, 48),
(479, 'Río Iró', 12, 48),
(480, 'Río Quito', 12, 48),
(481, 'Riosucio', 12, 48),
(482, 'San José del Palmar', 12, 48),
(483, 'Sipí', 12, 48),
(484, 'Tadó', 12, 48),
(485, 'Unión Panamericana', 12, 48),
(486, 'Unguía', 12, 48),
(487, 'Agua de Dios', 13, 48),
(488, 'Albán', 13, 48),
(489, 'Anapoima', 13, 48),
(490, 'Anolaima', 13, 48),
(491, 'Apulo', 13, 48),
(492, 'Arbeláez', 13, 48),
(493, 'Beltrán', 13, 48),
(494, 'Bituima', 13, 48),
(495, 'Bogotá', 13, 48),
(496, 'Bojacá', 13, 48),
(497, 'Cabrera', 13, 48),
(498, 'Cachipay', 13, 48),
(499, 'Cajicá', 13, 48),
(500, 'Caparrapí', 13, 48),
(501, 'Cáqueza', 13, 48),
(502, 'Carmen de Carupa', 13, 48),
(503, 'Chaguaní', 13, 48),
(504, 'Chía', 13, 48),
(505, 'Chipaque', 13, 48),
(506, 'Choachí', 13, 48),
(507, 'Chocontá', 13, 48),
(508, 'Cogua', 13, 48),
(509, 'Cota', 13, 48),
(510, 'Cucunubá', 13, 48),
(511, 'El Colegio', 13, 48),
(512, 'El Peñón', 13, 48),
(513, 'El Rosal', 13, 48),
(514, 'Facatativá', 13, 48),
(515, 'Fómeque', 13, 48),
(516, 'Fosca', 13, 48),
(517, 'Funza', 13, 48),
(518, 'Fúquene', 13, 48),
(519, 'Fusagasugá', 13, 48),
(520, 'Gachalá', 13, 48),
(521, 'Gachancipá', 13, 48),
(522, 'Gachetá', 13, 48),
(523, 'Gama', 13, 48),
(524, 'Girardot', 13, 48),
(525, 'Granada', 13, 48),
(526, 'Guachetá', 13, 48),
(527, 'Guaduas', 13, 48),
(528, 'Guasca', 13, 48),
(529, 'Guataquí', 13, 48),
(530, 'Guatavita', 13, 48),
(531, 'Guayabal de Síquima', 13, 48),
(532, 'Guayabetal', 13, 48),
(533, 'Gutiérrez', 13, 48),
(534, 'Jerusalén', 13, 48),
(535, 'Junín', 13, 48),
(536, 'La Calera', 13, 48),
(537, 'La Mesa', 13, 48),
(538, 'La Palma', 13, 48),
(539, 'La Peña', 13, 48),
(540, 'La Vega', 13, 48),
(541, 'Lenguazaque', 13, 48),
(542, 'Machetá', 13, 48),
(543, 'Madrid', 13, 48),
(544, 'Manta', 13, 48),
(545, 'Medina', 13, 48),
(546, 'Mosquera', 13, 48),
(547, 'Nariño', 13, 48),
(548, 'Nemocón', 13, 48),
(549, 'Nilo', 13, 48),
(550, 'Nimaima', 13, 48),
(551, 'Nocaima', 13, 48),
(552, 'Pacho', 13, 48),
(553, 'Paime', 13, 48),
(554, 'Pandi', 13, 48),
(555, 'Paratebueno', 13, 48),
(556, 'Pasca', 13, 48),
(557, 'Puerto Salgar', 13, 48),
(558, 'Pulí', 13, 48),
(559, 'Quebradanegra', 13, 48),
(560, 'Quetame', 13, 48),
(561, 'Quipile', 13, 48),
(562, 'Ricaurte', 13, 48),
(563, 'San Antonio del Tequendama', 13, 48),
(564, 'San Bernardo', 13, 48),
(565, 'San Cayetano', 13, 48),
(566, 'San Francisco', 13, 48),
(567, 'San Juan de Rioseco', 13, 48),
(568, 'Sasaima', 13, 48),
(569, 'Sesquilé', 13, 48),
(570, 'Sibaté', 13, 48),
(571, 'Silvania', 13, 48),
(572, 'Simijaca', 13, 48),
(573, 'Soacha', 13, 48),
(574, 'Sopó', 13, 48),
(575, 'Subachoque', 13, 48),
(576, 'Suesca', 13, 48),
(577, 'Supatá', 13, 48),
(578, 'Susa', 13, 48),
(579, 'Sutatausa', 13, 48),
(580, 'Tabio', 13, 48),
(581, 'Tausa', 13, 48),
(582, 'Tena', 13, 48),
(583, 'Tenjo', 13, 48),
(584, 'Tibacuy', 13, 48),
(585, 'Tibirita', 13, 48),
(586, 'Tocaima', 13, 48),
(587, 'Tocancipá', 13, 48),
(588, 'Topaipí', 13, 48),
(589, 'Ubalá', 13, 48),
(590, 'Ubaque', 13, 48),
(591, 'Ubaté', 13, 48),
(592, 'Une', 13, 48),
(593, 'Útica', 13, 48),
(594, 'Venecia', 13, 48),
(595, 'Vergara', 13, 48),
(596, 'Vianí', 13, 48),
(597, 'Villagómez', 13, 48),
(598, 'Villapinzón', 13, 48),
(599, 'Villeta', 13, 48),
(600, 'Viotá', 13, 48),
(601, 'Yacopí', 13, 48),
(602, 'Zipacón', 13, 48),
(603, 'Zipaquirá', 13, 48),
(604, 'Ayapel', 14, 48),
(605, 'Buenavista', 14, 48),
(606, 'Canalete', 14, 48),
(607, 'Cereté', 14, 48),
(608, 'Chimá', 14, 48),
(609, 'Chinú', 14, 48),
(610, 'Ciénaga de Oro', 14, 48),
(611, 'Cotorra', 14, 48),
(612, 'La Apartada', 14, 48),
(613, 'Lorica', 14, 48),
(614, 'Los Córdobas', 14, 48),
(615, 'Momil', 14, 48),
(616, 'Montelíbano', 14, 48),
(617, 'Montería', 14, 48),
(618, 'Moñitos', 14, 48),
(619, 'Planeta Rica', 14, 48),
(620, 'Pueblo Nuevo', 14, 48),
(621, 'Puerto Escondido', 14, 48),
(622, 'Puerto Libertador', 14, 48),
(623, 'Purísima', 14, 48),
(624, 'Sahagún', 14, 48),
(625, 'San Andrés de Sotavento', 14, 48),
(626, 'San Antero', 14, 48),
(627, 'San Bernardo del Viento', 14, 48),
(628, 'San Carlos', 14, 48),
(629, 'San José de Uré', 14, 48),
(630, 'San Pelayo', 14, 48),
(631, 'Tierralta', 14, 48),
(632, 'Tuchín', 14, 48),
(633, 'Valencia', 14, 48),
(634, 'Inírida', 15, 48),
(635, 'Calamar', 16, 48),
(636, 'El Retorno', 16, 48),
(637, 'Miraflores', 16, 48),
(638, 'San José del Guaviare', 16, 48),
(639, 'Acevedo', 17, 48),
(640, 'Agrado', 17, 48),
(641, 'Aipe', 17, 48),
(642, 'Algeciras', 17, 48),
(643, 'Altamira', 17, 48),
(644, 'Baraya', 17, 48),
(645, 'Campoalegre', 17, 48),
(646, 'Colombia', 17, 48),
(647, 'El Pital', 17, 48),
(648, 'Elías', 17, 48),
(649, 'Garzón', 17, 48),
(650, 'Gigante', 17, 48),
(651, 'Guadalupe', 17, 48),
(652, 'Hobo', 17, 48),
(653, 'Íquira', 17, 48),
(654, 'Isnos', 17, 48),
(655, 'La Argentina', 17, 48),
(656, 'La Plata', 17, 48),
(657, 'Nátaga', 17, 48),
(658, 'Neiva', 17, 48),
(659, 'Oporapa', 17, 48),
(660, 'Paicol', 17, 48),
(661, 'Palermo', 17, 48),
(662, 'Palestina', 17, 48),
(663, 'Pitalito', 17, 48),
(664, 'Rivera', 17, 48),
(665, 'Saladoblanco', 17, 48),
(666, 'San Agustín', 17, 48),
(667, 'Santa María', 17, 48),
(668, 'Suaza', 17, 48),
(669, 'Tarqui', 17, 48),
(670, 'Tello', 17, 48),
(671, 'Teruel', 17, 48),
(672, 'Tesalia', 17, 48),
(673, 'Timaná', 17, 48),
(674, 'Villavieja', 17, 48),
(675, 'Yaguará', 17, 48),
(676, 'Albania', 18, 48),
(677, 'Barrancas', 18, 48),
(678, 'Dibulla', 18, 48),
(679, 'Distracción', 18, 48),
(680, 'El Molino', 18, 48),
(681, 'Fonseca', 18, 48),
(682, 'Hatonuevo', 18, 48),
(683, 'La Jagua del Pilar', 18, 48),
(684, 'Maicao', 18, 48),
(685, 'Manaure', 18, 48),
(686, 'Riohacha', 18, 48),
(687, 'San Juan del Cesar', 18, 48),
(688, 'Uribia', 18, 48),
(689, 'Urumita', 18, 48),
(690, 'Villanueva', 18, 48),
(691, 'Algarrobo', 19, 48),
(692, 'Aracataca', 19, 48),
(693, 'Ariguaní', 19, 48),
(694, 'Cerro de San Antonio', 19, 48),
(695, 'Chibolo', 19, 48),
(696, 'Chibolo', 19, 48),
(697, 'Ciénaga', 19, 48),
(698, 'Concordia', 19, 48),
(699, 'El Banco', 19, 48),
(700, 'El Piñón', 19, 48),
(701, 'El Retén', 19, 48),
(702, 'Fundación', 19, 48),
(703, 'Guamal', 19, 48),
(704, 'Nueva Granada', 19, 48),
(705, 'Pedraza', 19, 48),
(706, 'Pijiño del Carmen', 19, 48),
(707, 'Pivijay', 19, 48),
(708, 'Plato', 19, 48),
(709, 'Pueblo Viejo', 19, 48),
(710, 'Remolino', 19, 48),
(711, 'Sabanas de San Ángel', 19, 48),
(712, 'Salamina', 19, 48),
(713, 'San Sebastián de Buenavista', 19, 48),
(714, 'San Zenón', 19, 48),
(715, 'Santa Ana', 19, 48),
(716, 'Santa Bárbara de Pinto', 19, 48),
(717, 'Santa Marta', 19, 48),
(718, 'Sitionuevo', 19, 48),
(719, 'Tenerife', 19, 48),
(720, 'Zapayán', 19, 48),
(721, 'Zona Bananera', 19, 48),
(722, 'Acacías', 20, 48),
(723, 'Barranca de Upía', 20, 48),
(724, 'Cabuyaro', 20, 48),
(725, 'Castilla la Nueva', 20, 48),
(726, 'Cubarral', 20, 48),
(727, 'Cumaral', 20, 48),
(728, 'El Calvario', 20, 48),
(729, 'El Castillo', 20, 48),
(730, 'El Dorado', 20, 48),
(731, 'Fuente de Oro', 20, 48),
(732, 'Granada', 20, 48),
(733, 'Guamal', 20, 48),
(734, 'La Macarena', 20, 48),
(735, 'La Uribe', 20, 48),
(736, 'Lejanías', 20, 48),
(737, 'Mapiripán', 20, 48),
(738, 'Mesetas', 20, 48),
(739, 'Puerto Concordia', 20, 48),
(740, 'Puerto Gaitán', 20, 48),
(741, 'Puerto Lleras', 20, 48),
(742, 'Puerto López', 20, 48),
(743, 'Puerto Rico', 20, 48),
(744, 'Restrepo', 20, 48),
(745, 'San Carlos de Guaroa', 20, 48),
(746, 'San Juan de Arama', 20, 48),
(747, 'San Juanito', 20, 48),
(748, 'San Martín', 20, 48),
(749, 'Villavicencio', 20, 48),
(750, 'Vista Hermosa', 20, 48),
(751, 'Aldana', 21, 48),
(752, 'Ancuyá', 21, 48),
(753, 'Arboleda', 21, 48),
(754, 'Barbacoas', 21, 48),
(755, 'Belén', 21, 48),
(756, 'Buesaco', 21, 48),
(757, 'Chachagüí', 21, 48),
(758, 'Colón', 21, 48),
(759, 'Consacá', 21, 48),
(760, 'Contadero', 21, 48),
(761, 'Córdoba', 21, 48),
(762, 'Cuaspud', 21, 48),
(763, 'Cumbal', 21, 48),
(764, 'Cumbitara', 21, 48),
(765, 'El Charco', 21, 48),
(766, 'El Peñol', 21, 48),
(767, 'El Rosario', 21, 48),
(768, 'El Tablón', 21, 48),
(769, 'El Tambo', 21, 48),
(770, 'Francisco Pizarro', 21, 48),
(771, 'Funes', 21, 48),
(772, 'Guachucal', 21, 48),
(773, 'Guaitarilla', 21, 48),
(774, 'Gualmatán', 21, 48),
(775, 'Iles', 21, 48),
(776, 'Imués', 21, 48),
(777, 'Ipiales', 21, 48),
(778, 'La Cruz', 21, 48),
(779, 'La Florida', 21, 48),
(780, 'La Llanada', 21, 48),
(781, 'La Tola', 21, 48),
(782, 'La Unión', 21, 48),
(783, 'Leiva', 21, 48),
(784, 'Linares', 21, 48),
(785, 'Los Andes', 21, 48),
(786, 'Magüí Payán', 21, 48),
(787, 'Mallama', 21, 48),
(788, 'Mosquera', 21, 48),
(789, 'Nariño', 21, 48),
(790, 'Olaya Herrera', 21, 48),
(791, 'Ospina', 21, 48),
(792, 'Pasto', 21, 48),
(793, 'Policarpa', 21, 48),
(794, 'Potosí', 21, 48),
(795, 'Providencia', 21, 48),
(796, 'Puerres', 21, 48),
(797, 'Pupiales', 21, 48),
(798, 'Ricaurte', 21, 48),
(799, 'Roberto Payán', 21, 48),
(800, 'Samaniego', 21, 48),
(801, 'San Bernardo', 21, 48),
(802, 'San José de Albán', 21, 48),
(803, 'San Lorenzo', 21, 48),
(804, 'San Pablo', 21, 48),
(805, 'San Pedro de Cartago', 21, 48),
(806, 'Sandoná', 21, 48),
(807, 'Santa Bárbara', 21, 48),
(808, 'Santacruz', 21, 48),
(809, 'Sapuyes', 21, 48),
(810, 'Taminango', 21, 48),
(811, 'Tangua', 21, 48),
(812, 'Tumaco', 21, 48),
(813, 'Túquerres', 21, 48),
(814, 'Yacuanquer', 21, 48),
(815, 'Ábrego', 22, 48),
(816, 'Arboledas', 22, 48),
(817, 'Bochalema', 22, 48),
(818, 'Bucarasica', 22, 48),
(819, 'Cáchira', 22, 48),
(820, 'Cácota', 22, 48),
(821, 'Chinácota', 22, 48),
(822, 'Chitagá', 22, 48),
(823, 'Convención', 22, 48),
(824, 'Cúcuta', 22, 48),
(825, 'Cucutilla', 22, 48),
(826, 'Duranía', 22, 48),
(827, 'El Carmen', 22, 48),
(828, 'El Tarra', 22, 48),
(829, 'El Zulia', 22, 48),
(830, 'Gramalote', 22, 48),
(831, 'Hacarí', 22, 48),
(832, 'Herrán', 22, 48),
(833, 'La Esperanza', 22, 48),
(834, 'La Playa de Belén', 22, 48),
(835, 'Labateca', 22, 48),
(836, 'Los Patios', 22, 48),
(837, 'Lourdes', 22, 48),
(838, 'Mutiscua', 22, 48),
(839, 'Ocaña', 22, 48),
(840, 'Pamplona', 22, 48),
(841, 'Pamplonita', 22, 48),
(842, 'Puerto Santander', 22, 48),
(843, 'Ragonvalia', 22, 48),
(844, 'Salazar de Las Palmas', 22, 48),
(845, 'San Calixto', 22, 48),
(846, 'San Cayetano', 22, 48),
(847, 'Santiago', 22, 48),
(848, 'Santo Domingo de Silos', 22, 48),
(849, 'Sardinata', 22, 48),
(850, 'Teorama', 22, 48),
(851, 'Tibú', 22, 48),
(852, 'Toledo', 22, 48),
(853, 'Villa Caro', 22, 48),
(854, 'Villa del Rosario', 22, 48),
(855, 'Colón', 23, 48),
(856, 'Mocoa', 23, 48),
(857, 'Orito', 23, 48),
(858, 'Puerto Asís', 23, 48),
(859, 'Puerto Caicedo', 23, 48),
(860, 'Puerto Guzmán', 23, 48),
(861, 'Puerto Leguízamo', 23, 48),
(862, 'San Francisco', 23, 48),
(863, 'San Miguel', 23, 48),
(864, 'Santiago', 23, 48),
(865, 'Sibundoy', 23, 48),
(866, 'Valle del Guamuez', 23, 48),
(867, 'Villagarzón', 23, 48),
(868, 'Armenia', 24, 48),
(869, 'Buenavista', 24, 48),
(870, 'Calarcá', 24, 48),
(871, 'Circasia', 24, 48),
(872, 'Córdoba', 24, 48),
(873, 'Filandia', 24, 48),
(874, 'Génova', 24, 48),
(875, 'La Tebaida', 24, 48),
(876, 'Montenegro', 24, 48),
(877, 'Pijao', 24, 48),
(878, 'Quimbaya', 24, 48),
(879, 'Salento', 24, 48),
(880, 'Apía', 25, 48),
(881, 'Balboa', 25, 48),
(882, 'Belén de Umbría', 25, 48),
(883, 'Dosquebradas', 25, 48),
(884, 'Guática', 25, 48),
(885, 'La Celia', 25, 48),
(886, 'La Virginia', 25, 48),
(887, 'Marsella', 25, 48),
(888, 'Mistrató', 25, 48),
(889, 'Pereira', 25, 48),
(890, 'Pueblo Rico', 25, 48),
(891, 'Quinchía', 25, 48),
(892, 'Santa Rosa de Cabal', 25, 48),
(893, 'Santuario', 25, 48),
(894, 'Providencia y Santa Catalina Islas', 26, 48),
(895, 'San Andrés', 26, 48),
(896, 'Aguada', 27, 48),
(897, 'Albania', 27, 48),
(898, 'Aratoca', 27, 48),
(899, 'Barbosa', 27, 48),
(900, 'Barichara', 27, 48),
(901, 'Barrancabermeja', 27, 48),
(902, 'Betulia', 27, 48),
(903, 'Bolívar', 27, 48),
(904, 'Bucaramanga', 27, 48),
(905, 'Cabrera', 27, 48),
(906, 'California', 27, 48),
(907, 'Capitanejo', 27, 48),
(908, 'Carcasí', 27, 48),
(909, 'Cepitá', 27, 48),
(910, 'Cerrito', 27, 48),
(911, 'Charalá', 27, 48),
(912, 'Charta', 27, 48),
(913, 'Chima', 27, 48),
(914, 'Chipatá', 27, 48),
(915, 'Cimitarra', 27, 48),
(916, 'Concepción', 27, 48),
(917, 'Confines', 27, 48),
(918, 'Contratación', 27, 48),
(919, 'Coromoro', 27, 48),
(920, 'Curití', 27, 48),
(921, 'El Carmen de Chucurí', 27, 48),
(922, 'El Guacamayo', 27, 48),
(923, 'El Peñón', 27, 48),
(924, 'El Playón', 27, 48),
(925, 'El Socorro', 27, 48),
(926, 'Encino', 27, 48),
(927, 'Enciso', 27, 48),
(928, 'Florián', 27, 48),
(929, 'Floridablanca', 27, 48),
(930, 'Galán', 27, 48),
(931, 'Gámbita', 27, 48),
(932, 'Girón', 27, 48),
(933, 'Guaca', 27, 48),
(934, 'Guadalupe', 27, 48),
(935, 'Guapotá', 27, 48),
(936, 'Guavatá', 27, 48),
(937, 'Güepsa', 27, 48),
(938, 'Hato', 27, 48),
(939, 'Jesús María', 27, 48),
(940, 'Jordán', 27, 48),
(941, 'La Belleza', 27, 48),
(942, 'La Paz', 27, 48),
(943, 'Landázuri', 27, 48),
(944, 'Lebrija', 27, 48),
(945, 'Los Santos', 27, 48),
(946, 'Macaravita', 27, 48),
(947, 'Málaga', 27, 48),
(948, 'Matanza', 27, 48),
(949, 'Mogotes', 27, 48),
(950, 'Molagavita', 27, 48),
(951, 'Ocamonte', 27, 48),
(952, 'Oiba', 27, 48),
(953, 'Onzaga', 27, 48),
(954, 'Palmar', 27, 48),
(955, 'Palmas del Socorro', 27, 48),
(956, 'Páramo', 27, 48),
(957, 'Piedecuesta', 27, 48),
(958, 'Pinchote', 27, 48),
(959, 'Puente Nacional', 27, 48),
(960, 'Puerto Parra', 27, 48),
(961, 'Puerto Wilches', 27, 48),
(962, 'Rionegro', 27, 48),
(963, 'Sabana de Torres', 27, 48),
(964, 'San Andrés', 27, 48),
(965, 'San Benito', 27, 48),
(966, 'San Gil', 27, 48),
(967, 'San Joaquín', 27, 48),
(968, 'San José de Miranda', 27, 48),
(969, 'San Miguel', 27, 48),
(970, 'San Vicente de Chucurí', 27, 48),
(971, 'Santa Bárbara', 27, 48),
(972, 'Santa Helena del Opón', 27, 48),
(973, 'Simacota', 27, 48),
(974, 'Suaita', 27, 48),
(975, 'Sucre', 27, 48),
(976, 'Suratá', 27, 48),
(977, 'Tona', 27, 48),
(978, 'Valle de San José', 27, 48),
(979, 'Vélez', 27, 48),
(980, 'Vetas', 27, 48),
(981, 'Villanueva', 27, 48),
(982, 'Zapatoca', 27, 48),
(983, 'Buenavista', 28, 48),
(984, 'Caimito', 28, 48),
(985, 'Chalán', 28, 48),
(986, 'Colosó', 28, 48),
(987, 'Corozal', 28, 48),
(988, 'Coveñas', 28, 48),
(989, 'El Roble', 28, 48),
(990, 'Galeras', 28, 48),
(991, 'Guaranda', 28, 48),
(992, 'La Unión', 28, 48),
(993, 'Los Palmitos', 28, 48),
(994, 'Majagual', 28, 48),
(995, 'Morroa', 28, 48),
(996, 'Ovejas', 28, 48),
(997, 'Sampués', 28, 48),
(998, 'San Antonio de Palmito', 28, 48),
(999, 'San Benito Abad', 28, 48),
(1000, 'San Juan de Betulia', 28, 48),
(1001, 'San Marcos', 28, 48),
(1002, 'San Onofre', 28, 48),
(1003, 'San Pedro', 28, 48),
(1004, 'Sincé', 28, 48),
(1005, 'Sincelejo', 28, 48),
(1006, 'Sucre', 28, 48),
(1007, 'Tolú', 28, 48),
(1008, 'Tolú Viejo', 28, 48),
(1009, 'Alpujarra', 29, 48),
(1010, 'Alvarado', 29, 48),
(1011, 'Ambalema', 29, 48),
(1012, 'Anzoátegui', 29, 48),
(1013, 'Armero', 29, 48),
(1014, 'Ataco', 29, 48),
(1015, 'Cajamarca', 29, 48),
(1016, 'Carmen de Apicalá', 29, 48),
(1017, 'Casabianca', 29, 48),
(1018, 'Chaparral', 29, 48),
(1019, 'Coello', 29, 48),
(1020, 'Coyaima', 29, 48),
(1021, 'Cunday', 29, 48),
(1022, 'Dolores', 29, 48),
(1023, 'El Espinal', 29, 48),
(1024, 'Falán', 29, 48),
(1025, 'Flandes', 29, 48),
(1026, 'Fresno', 29, 48),
(1027, 'Guamo', 29, 48),
(1028, 'Herveo', 29, 48),
(1029, 'Honda', 29, 48),
(1030, 'Ibagué', 29, 48),
(1031, 'Icononzo', 29, 48),
(1032, 'Lérida', 29, 48),
(1033, 'Líbano', 29, 48),
(1034, 'Mariquita', 29, 48),
(1035, 'Melgar', 29, 48),
(1036, 'Murillo', 29, 48),
(1037, 'Natagaima', 29, 48),
(1038, 'Ortega', 29, 48),
(1039, 'Palocabildo', 29, 48),
(1040, 'Piedras', 29, 48),
(1041, 'Planadas', 29, 48),
(1042, 'Prado', 29, 48),
(1043, 'Purificación', 29, 48),
(1044, 'Rioblanco', 29, 48),
(1045, 'Roncesvalles', 29, 48),
(1046, 'Rovira', 29, 48),
(1047, 'Saldaña', 29, 48),
(1048, 'San Antonio', 29, 48),
(1049, 'San Luis', 29, 48),
(1050, 'Santa Isabel', 29, 48),
(1051, 'Suárez', 29, 48),
(1052, 'Valle de San Juan', 29, 48),
(1053, 'Venadillo', 29, 48),
(1054, 'Villahermosa', 29, 48),
(1055, 'Villarrica', 29, 48),
(1056, 'Alcalá', 30, 48),
(1057, 'Andalucía', 30, 48),
(1058, 'Ansermanuevo', 30, 48),
(1059, 'Argelia', 30, 48),
(1060, 'Bolívar', 30, 48),
(1061, 'Buenaventura', 30, 48),
(1062, 'Buga', 30, 48),
(1063, 'Bugalagrande', 30, 48),
(1064, 'Caicedonia', 30, 48),
(1065, 'Cali', 30, 48),
(1066, 'Calima', 30, 48),
(1067, 'Candelaria', 30, 48),
(1068, 'Cartago', 30, 48),
(1069, 'Dagua', 30, 48),
(1070, 'El Águila', 30, 48),
(1071, 'El Cairo', 30, 48),
(1072, 'El Cerrito', 30, 48),
(1073, 'El Dovio', 30, 48),
(1074, 'Florida', 30, 48),
(1075, 'Ginebra', 30, 48),
(1076, 'Guacarí', 30, 48),
(1077, 'Jamundí', 30, 48),
(1078, 'La Cumbre', 30, 48),
(1079, 'La Unión', 30, 48),
(1080, 'La Victoria', 30, 48),
(1081, 'Obando', 30, 48),
(1082, 'Palmira', 30, 48),
(1083, 'Pradera', 30, 48),
(1084, 'Restrepo', 30, 48),
(1085, 'Riofrío', 30, 48),
(1086, 'Roldanillo', 30, 48),
(1087, 'San Pedro', 30, 48),
(1088, 'Sevilla', 30, 48),
(1089, 'Toro', 30, 48),
(1090, 'Trujillo', 30, 48),
(1091, 'Tuluá', 30, 48),
(1092, 'Ulloa', 30, 48),
(1093, 'Versalles', 30, 48),
(1094, 'Vijes', 30, 48),
(1095, 'Yotoco', 30, 48),
(1096, 'Yumbo', 30, 48),
(1097, 'Zarzal', 30, 48),
(1098, 'Carurú', 31, 48),
(1099, 'Mitú', 31, 48),
(1100, 'Taraira', 31, 48),
(1101, 'Cumaribo', 32, 48),
(1102, 'La Primavera', 32, 48),
(1103, 'Puerto Carreño', 32, 48),
(1104, 'Santa Rosalía', 32, 48);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `constructions`
--

CREATE TABLE `constructions` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `start_date` datetime NOT NULL,
  `estimated_date_completion` datetime NOT NULL,
  `objetive` varchar(200) NOT NULL,
  `general_observations` varchar(200) DEFAULT NULL,
  `coordinates` varchar(50) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `construction_type_id` int(11) NOT NULL,
  `money_invested` varchar(45) NOT NULL,
  `locality_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `construction_type`
--

CREATE TABLE `construction_type` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`) VALUES
(1, 'Afghanistan', 'AF'),
(2, 'Åland Islands', 'AX'),
(3, 'Albania', 'AL'),
(4, 'Algeria', 'DZ'),
(5, 'American Samoa', 'AS'),
(6, 'AndorrA', 'AD'),
(7, 'Angola', 'AO'),
(8, 'Anguilla', 'AI'),
(9, 'Antarctica', 'AQ'),
(10, 'Antigua and Barbuda', 'AG'),
(11, 'Argentina', 'AR'),
(12, 'Armenia', 'AM'),
(13, 'Aruba', 'AW'),
(14, 'Australia', 'AU'),
(15, 'Austria', 'AT'),
(16, 'Azerbaijan', 'AZ'),
(17, 'Bahamas', 'BS'),
(18, 'Bahrain', 'BH'),
(19, 'Bangladesh', 'BD'),
(20, 'Barbados', 'BB'),
(21, 'Belarus', 'BY'),
(22, 'Belgium', 'BE'),
(23, 'Belize', 'BZ'),
(24, 'Benin', 'BJ'),
(25, 'Bermuda', 'BM'),
(26, 'Bhutan', 'BT'),
(27, 'Bolivia', 'BO'),
(28, 'Bosnia and Herzegovina', 'BA'),
(29, 'Botswana', 'BW'),
(30, 'Bouvet Island', 'BV'),
(31, 'Brazil', 'BR'),
(32, 'British Indian Ocean Territory', 'IO'),
(33, 'Brunei Darussalam', 'BN'),
(34, 'Bulgaria', 'BG'),
(35, 'Burkina Faso', 'BF'),
(36, 'Burundi', 'BI'),
(37, 'Cambodia', 'KH'),
(38, 'Cameroon', 'CM'),
(39, 'Canada', 'CA'),
(40, 'Cape Verde', 'CV'),
(41, 'Cayman Islands', 'KY'),
(42, 'Central African Republic', 'CF'),
(43, 'Chad', 'TD'),
(44, 'Chile', 'CL'),
(45, 'China', 'CN'),
(46, 'Christmas Island', 'CX'),
(47, 'Cocos (Keeling) Islands', 'CC'),
(48, 'Colombia', 'CO'),
(49, 'Comoros', 'KM'),
(50, 'Congo', 'CG'),
(51, 'Congo, The Democratic Republic of the', 'CD'),
(52, 'Cook Islands', 'CK'),
(53, 'Costa Rica', 'CR'),
(54, 'Cote D\'Ivoire', 'CI'),
(55, 'Croatia', 'HR'),
(56, 'Cuba', 'CU'),
(57, 'Cyprus', 'CY'),
(58, 'Czech Republic', 'CZ'),
(59, 'Denmark', 'DK'),
(60, 'Djibouti', 'DJ'),
(61, 'Dominica', 'DM'),
(62, 'Dominican Republic', 'DO'),
(63, 'Ecuador', 'EC'),
(64, 'Egypt', 'EG'),
(65, 'El Salvador', 'SV'),
(66, 'Equatorial Guinea', 'GQ'),
(67, 'Eritrea', 'ER'),
(68, 'Estonia', 'EE'),
(69, 'Ethiopia', 'ET'),
(70, 'Falkland Islands (Malvinas)', 'FK'),
(71, 'Faroe Islands', 'FO'),
(72, 'Fiji', 'FJ'),
(73, 'Finland', 'FI'),
(74, 'France', 'FR'),
(75, 'French Guiana', 'GF'),
(76, 'French Polynesia', 'PF'),
(77, 'French Southern Territories', 'TF'),
(78, 'Gabon', 'GA'),
(79, 'Gambia', 'GM'),
(80, 'Georgia', 'GE'),
(81, 'Germany', 'DE'),
(82, 'Ghana', 'GH'),
(83, 'Gibraltar', 'GI'),
(84, 'Greece', 'GR'),
(85, 'Greenland', 'GL'),
(86, 'Grenada', 'GD'),
(87, 'Guadeloupe', 'GP'),
(88, 'Guam', 'GU'),
(89, 'Guatemala', 'GT'),
(90, 'Guernsey', 'GG'),
(91, 'Guinea', 'GN'),
(92, 'Guinea-Bissau', 'GW'),
(93, 'Guyana', 'GY'),
(94, 'Haiti', 'HT'),
(95, 'Heard Island and Mcdonald Islands', 'HM'),
(96, 'Holy See (Vatican City State)', 'VA'),
(97, 'Honduras', 'HN'),
(98, 'Hong Kong', 'HK'),
(99, 'Hungary', 'HU'),
(100, 'Iceland', 'IS'),
(101, 'India', 'IN'),
(102, 'Indonesia', 'ID'),
(103, 'Iran, Islamic Republic Of', 'IR'),
(104, 'Iraq', 'IQ'),
(105, 'Ireland', 'IE'),
(106, 'Isle of Man', 'IM'),
(107, 'Israel', 'IL'),
(108, 'Italy', 'IT'),
(109, 'Jamaica', 'JM'),
(110, 'Japan', 'JP'),
(111, 'Jersey', 'JE'),
(112, 'Jordan', 'JO'),
(113, 'Kazakhstan', 'KZ'),
(114, 'Kenya', 'KE'),
(115, 'Kiribati', 'KI'),
(116, 'Korea, Democratic People\'S Republic of', 'KP'),
(117, 'Korea, Republic of', 'KR'),
(118, 'Kuwait', 'KW'),
(119, 'Kyrgyzstan', 'KG'),
(120, 'Lao People\'S Democratic Republic', 'LA'),
(121, 'Latvia', 'LV'),
(122, 'Lebanon', 'LB'),
(123, 'Lesotho', 'LS'),
(124, 'Liberia', 'LR'),
(125, 'Libyan Arab Jamahiriya', 'LY'),
(126, 'Liechtenstein', 'LI'),
(127, 'Lithuania', 'LT'),
(128, 'Luxembourg', 'LU'),
(129, 'Macao', 'MO'),
(130, 'Macedonia, The Former Yugoslav Republic of', 'MK'),
(131, 'Madagascar', 'MG'),
(132, 'Malawi', 'MW'),
(133, 'Malaysia', 'MY'),
(134, 'Maldives', 'MV'),
(135, 'Mali', 'ML'),
(136, 'Malta', 'MT'),
(137, 'Marshall Islands', 'MH'),
(138, 'Martinique', 'MQ'),
(139, 'Mauritania', 'MR'),
(140, 'Mauritius', 'MU'),
(141, 'Mayotte', 'YT'),
(142, 'Mexico', 'MX'),
(143, 'Micronesia, Federated States of', 'FM'),
(144, 'Moldova, Republic of', 'MD'),
(145, 'Monaco', 'MC'),
(146, 'Mongolia', 'MN'),
(147, 'Montserrat', 'MS'),
(148, 'Morocco', 'MA'),
(149, 'Mozambique', 'MZ'),
(150, 'Myanmar', 'MM'),
(151, 'Namibia', 'NA'),
(152, 'Nauru', 'NR'),
(153, 'Nepal', 'NP'),
(154, 'Netherlands', 'NL'),
(155, 'Netherlands Antilles', 'AN'),
(156, 'New Caledonia', 'NC'),
(157, 'New Zealand', 'NZ'),
(158, 'Nicaragua', 'NI'),
(159, 'Niger', 'NE'),
(160, 'Nigeria', 'NG'),
(161, 'Niue', 'NU'),
(162, 'Norfolk Island', 'NF'),
(163, 'Northern Mariana Islands', 'MP'),
(164, 'Norway', 'NO'),
(165, 'Oman', 'OM'),
(166, 'Pakistan', 'PK'),
(167, 'Palau', 'PW'),
(168, 'Palestinian Territory, Occupied', 'PS'),
(169, 'Panama', 'PA'),
(170, 'Papua New Guinea', 'PG'),
(171, 'Paraguay', 'PY'),
(172, 'Peru', 'PE'),
(173, 'Philippines', 'PH'),
(174, 'Pitcairn', 'PN'),
(175, 'Poland', 'PL'),
(176, 'Portugal', 'PT'),
(177, 'Puerto Rico', 'PR'),
(178, 'Qatar', 'QA'),
(179, 'Reunion', 'RE'),
(180, 'Romania', 'RO'),
(181, 'Russian Federation', 'RU'),
(182, 'RWANDA', 'RW'),
(183, 'Saint Helena', 'SH'),
(184, 'Saint Kitts and Nevis', 'KN'),
(185, 'Saint Lucia', 'LC'),
(186, 'Saint Pierre and Miquelon', 'PM'),
(187, 'Saint Vincent and the Grenadines', 'VC'),
(188, 'Samoa', 'WS'),
(189, 'San Marino', 'SM'),
(190, 'Sao Tome and Principe', 'ST'),
(191, 'Saudi Arabia', 'SA'),
(192, 'Senegal', 'SN'),
(193, 'Serbia and Montenegro', 'CS'),
(194, 'Seychelles', 'SC'),
(195, 'Sierra Leone', 'SL'),
(196, 'Singapore', 'SG'),
(197, 'Slovakia', 'SK'),
(198, 'Slovenia', 'SI'),
(199, 'Solomon Islands', 'SB'),
(200, 'Somalia', 'SO'),
(201, 'South Africa', 'ZA'),
(202, 'South Georgia and the South Sandwich Islands', 'GS'),
(203, 'Spain', 'ES'),
(204, 'Sri Lanka', 'LK'),
(205, 'Sudan', 'SD'),
(206, 'Suriname', 'SR'),
(207, 'Svalbard and Jan Mayen', 'SJ'),
(208, 'Swaziland', 'SZ'),
(209, 'Sweden', 'SE'),
(210, 'Switzerland', 'CH'),
(211, 'Syrian Arab Republic', 'SY'),
(212, 'Taiwan, Province of China', 'TW'),
(213, 'Tajikistan', 'TJ'),
(214, 'Tanzania, United Republic of', 'TZ'),
(215, 'Thailand', 'TH'),
(216, 'Timor-Leste', 'TL'),
(217, 'Togo', 'TG'),
(218, 'Tokelau', 'TK'),
(219, 'Tonga', 'TO'),
(220, 'Trinidad and Tobago', 'TT'),
(221, 'Tunisia', 'TN'),
(222, 'Turkey', 'TR'),
(223, 'Turkmenistan', 'TM'),
(224, 'Turks and Caicos Islands', 'TC'),
(225, 'Tuvalu', 'TV'),
(226, 'Uganda', 'UG'),
(227, 'Ukraine', 'UA'),
(228, 'United Arab Emirates', 'AE'),
(229, 'United Kingdom', 'GB'),
(230, 'United States', 'US'),
(231, 'United States Minor Outlying Islands', 'UM'),
(232, 'Uruguay', 'UY'),
(233, 'Uzbekistan', 'UZ'),
(234, 'Vanuatu', 'VU'),
(235, 'Venezuela', 'VE'),
(236, 'Viet Nam', 'VN'),
(237, 'Virgin Islands, British', 'VG'),
(238, 'Virgin Islands, U.S.', 'VI'),
(239, 'Wallis and Futuna', 'WF'),
(240, 'Western Sahara', 'EH'),
(241, 'Yemen', 'YE'),
(242, 'Zambia', 'ZM'),
(243, 'Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departments`
--

INSERT INTO `departments` (`id`, `name`) VALUES
(1, 'Amazonas'),
(2, 'Antioquia'),
(3, 'Arauca'),
(4, 'Atlántico'),
(5, 'Bolívar'),
(6, 'Boyacá'),
(7, 'Caldas'),
(8, 'Caquetá'),
(9, 'Casanare'),
(10, 'Cauca'),
(11, 'Cesar'),
(12, 'Chocó'),
(13, 'Cundinamarca'),
(14, 'Córdoba'),
(15, 'Guainía'),
(16, 'Guaviare'),
(17, 'Huila'),
(18, 'La Guajira'),
(19, 'Magdalena'),
(20, 'Meta'),
(21, 'Nariño'),
(22, 'Norte de Santander'),
(23, 'Putumayo'),
(24, 'Quindío'),
(25, 'Risaralda'),
(26, 'San Andrés y Providencia'),
(27, 'Santander'),
(28, 'Sucre'),
(29, 'Tolima'),
(30, 'Valle del Cauca'),
(31, 'Vaupés'),
(32, 'Vichada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entities`
--

CREATE TABLE `entities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone_contact` varchar(30) NOT NULL,
  `email` varchar(45) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `entities`
--

INSERT INTO `entities` (`id`, `name`, `phone_contact`, `email`, `country_id`) VALUES
(1, 'Entidad 1', '301301301', 'entidad@email.com', 48),
(2, 'Entidad 1', '301301301', 'entidad@email.com', 48),
(3, 'Administracion del sistema', '301301301', 'oscarfamado@email.com', 48),
(4, 'Entidad 1', '301301301', 'entidad@email.com', 48);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `ubication` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historical_constructions`
--

CREATE TABLE `historical_constructions` (
  `id` int(11) NOT NULL,
  `description` varchar(45) NOT NULL,
  `construction_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localities`
--

CREATE TABLE `localities` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `localities`
--

INSERT INTO `localities` (`id`, `name`, `city_id`) VALUES
(1, 'Puente Aranda', 495);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participations`
--

CREATE TABLE `participations` (
  `id` int(11) NOT NULL,
  `value` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `construction_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pqrs`
--

CREATE TABLE `pqrs` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  `file_id` int(11) DEFAULT NULL,
  `pqrs_type_request_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `state` enum('Responder','Sin Responder')
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pqrs_replies`
--

CREATE TABLE `pqrs_replies` (
  `id` int(11) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `files_id` int(11) DEFAULT NULL,
  `pqr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pqrs_types_request`
--

CREATE TABLE `pqrs_types_request` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`) VALUES
(1, 'Administrador', 'no se'),
(2, 'Edil', 'no se'),
(3, 'Ciudadano', 'no se');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `document` varchar(45) NOT NULL,
  `token` varchar(767) DEFAULT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `entity_id`, `rol_id`, `document`, `token`, `password`) VALUES
(3, 'Oscar', 'Amado', 'oscarfamado@gmail.com', 1, 1, '1022445546', 'JdVkHnUfzkpr1YppHg3Heuaft3SaJ2Jq81rcgr1G0AEEJVgEiCGhQZQLRLZGghpyuZifSAVfYyBfpd3ehGMNfeL7Phe976icdOi71909', '$2y$10$5EEJpiMewOnjZToV0Z.Ob.aVGa/kPy0ozMt7e2NmwkDWsshWqp.4u');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cities_departments1_idx` (`department_id`),
  ADD KEY `fk_cities_countries1_idx` (`country_id`);

--
-- Indices de la tabla `constructions`
--
ALTER TABLE `constructions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_constructions_entitys1_idx` (`entity_id`),
  ADD KEY `fk_constructions_cities1_idx` (`city_id`),
  ADD KEY `fk_constructions_construction_type1_idx` (`construction_type_id`);

--
-- Indices de la tabla `construction_type`
--
ALTER TABLE `construction_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entities`
--
ALTER TABLE `entities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_entitys_countries1_idx` (`country_id`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historical_constructions`
--
ALTER TABLE `historical_constructions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_historical_constructions_constructions1_idx` (`construction_id`),
  ADD KEY `fk_historical_constructions_files1_idx` (`file_id`);

--
-- Indices de la tabla `localities`
--
ALTER TABLE `localities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_localities_cities1_idx` (`city_id`);

--
-- Indices de la tabla `participations`
--
ALTER TABLE `participations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_participation_users1_idx` (`user_id`),
  ADD KEY `fk_participation_constructions1_idx` (`construction_id`);

--
-- Indices de la tabla `pqrs`
--
ALTER TABLE `pqrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pqrs_files1_idx` (`file_id`),
  ADD KEY `fk_pqrs_pqrs_type_request1_idx` (`pqrs_type_request_id`),
  ADD KEY `fk_pqrs_entitys1_idx` (`entity_id`);

--
-- Indices de la tabla `pqrs_replies`
--
ALTER TABLE `pqrs_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pqrs_reply_files1_idx` (`files_id`),
  ADD KEY `fk_pqrs_replies_pqrs1_idx` (`pqr_id`);

--
-- Indices de la tabla `pqrs_types_request`
--
ALTER TABLE `pqrs_types_request`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `document_UNIQUE` (`document`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `fk_users_entitys1_idx` (`entity_id`),
  ADD KEY `fk_users_roles1_idx` (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1105;

--
-- AUTO_INCREMENT de la tabla `constructions`
--
ALTER TABLE `constructions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `construction_type`
--
ALTER TABLE `construction_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT de la tabla `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `entities`
--
ALTER TABLE `entities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historical_constructions`
--
ALTER TABLE `historical_constructions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `localities`
--
ALTER TABLE `localities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `participations`
--
ALTER TABLE `participations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pqrs`
--
ALTER TABLE `pqrs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pqrs_replies`
--
ALTER TABLE `pqrs_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pqrs_types_request`
--
ALTER TABLE `pqrs_types_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `fk_cities_countries1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cities_departments1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `constructions`
--
ALTER TABLE `constructions`
  ADD CONSTRAINT `fk_constructions_cities1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_constructions_construction_type1` FOREIGN KEY (`construction_type_id`) REFERENCES `construction_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_constructions_entitys1` FOREIGN KEY (`entity_id`) REFERENCES `entities` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `entities`
--
ALTER TABLE `entities`
  ADD CONSTRAINT `fk_entities_countries` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `historical_constructions`
--
ALTER TABLE `historical_constructions`
  ADD CONSTRAINT `fk_historical_constructions_constructions1` FOREIGN KEY (`construction_id`) REFERENCES `constructions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_historical_constructions_files1` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `localities`
--
ALTER TABLE `localities`
  ADD CONSTRAINT `fk_localities_cities1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `participations`
--
ALTER TABLE `participations`
  ADD CONSTRAINT `fk_participation_constructions1` FOREIGN KEY (`construction_id`) REFERENCES `constructions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_participation_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pqrs`
--
ALTER TABLE `pqrs`
  ADD CONSTRAINT `fk_pqrs_entitys1` FOREIGN KEY (`entity_id`) REFERENCES `entities` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pqrs_files1` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pqrs_pqrs_type_request1` FOREIGN KEY (`pqrs_type_request_id`) REFERENCES `pqrs_types_request` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pqrs_replies`
--
ALTER TABLE `pqrs_replies`
  ADD CONSTRAINT `fk_pqrs_replies_pqrs1` FOREIGN KEY (`pqr_id`) REFERENCES `pqrs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pqrs_reply_files1` FOREIGN KEY (`files_id`) REFERENCES `files` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_entitys1` FOREIGN KEY (`entity_id`) REFERENCES `entities` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_roles1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
