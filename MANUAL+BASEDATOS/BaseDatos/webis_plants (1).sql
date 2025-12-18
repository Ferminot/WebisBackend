-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-12-2025 a las 02:55:00
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `webis_plants`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `macetas`
--

CREATE TABLE `macetas` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `valor` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `img_principal` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `macetas`
--

INSERT INTO `macetas` (`id`, `nombre`, `valor`, `stock`, `img_principal`) VALUES
(1, 'Moderno', 14000, 10, 'src/assets/img/Maceteromoderno.png'),
(2, 'Rustico', 12000, 10, 'src/assets/img/Maceterorustico.png'),
(3, 'Comun', 17000, 10, 'https://huertosalma.cl/wp-content/uploads/2021/02/Macetero-Terracota-HUertos-Alma-600x559.png'),
(4, 'Arido', 20000, 10, 'src/assets/img/maceta4.webp'),
(5, 'Coca 3l', 17000, 10, 'src/assets/img/maceta5.webp'),
(6, 'Coquette', 14000, 10, 'src/assets/img/maceta6.webp'),
(7, 'Pomaire', 16000, 10, 'src/assets/img/maceta7.webp'),
(8, 'Marron', 19000, 10, 'src/assets/img/maceta8.webp'),
(9, 'Casero ', 49999, 10, 'src/assets/img/maceta9.png'),
(10, 'Serpentino', 15000, 10, 'src/assets/img/maceta10.webp'),
(11, 'Cubico', 17000, 10, 'src/assets/img/maceta11.webp'),
(12, 'Primal', 20000, 10, 'src/assets/img/maceta12.webp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` bigint(20) NOT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `total` int(11) NOT NULL,
  `notas_adicionales` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `correo`, `direccion`, `nombre`, `telefono`, `total`, `notas_adicionales`) VALUES
(1, 'sdfsd@gmail.com', 'fsdfsdf', 'Benjamin', '942736416', 5000, 'sdfsd'),
(2, '12@gmail.com', 'ssssss', 'Benjamin', '942736416', 6500, 'tengoaaa'),
(3, 'hola@gmail.com', '14', 'croacio', '6126123', 60000, 'aadf'),
(4, '12@gmailfafa', 'Los guindos 344', 'Benjamin', '6126123', 10000, 'fff'),
(5, 'wgq2g@gmail.com', '12412', 'fafasf', '75646', 7000, 'dfasfaf'),
(6, 'gjqewegkl@gmail.com', 'gg', 'gwgwweg', '634626', 6500, 'wegwegw'),
(7, 'sdfsd@gmail.com', '12412', 'Benjamin', '942736416', 6500, 'afaf'),
(8, '12@gmail.com', 'Los guindos 344', 'fsdfs', '6126123', 4500, 'faf'),
(9, 'sdfsd@gmail.com', '12412', 'manolo', '151123', 10000, 'fag'),
(10, 'ruperto@gmail.com', 'juebes 23 ', 'TestPruebas', '218978304', 97000, 'aa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantas`
--

CREATE TABLE `plantas` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `img_principal` varchar(255) NOT NULL,
  `img_hover` varchar(255) DEFAULT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `valor` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `plantas`
--

INSERT INTO `plantas` (`id`, `nombre`, `img_principal`, `img_hover`, `descripcion`, `valor`, `stock`) VALUES
(1, 'girasol\r\n', '/plantas/girasol.png', 'https://images.unsplash.com/photo-1689067316514-4618c01c2e4c?fm=jpg&q=60&w=3000', 'Planta que necesita mucho sol y crece rápido.', 3700, 10),
(4, 'Guisantes', 'src/assets/plantas/im-peashooter-ask-me-anything-v0-jo9i03as70je1.png', 'https://rkd.es/blog/wp-content/uploads/2021/08/Como-cultivar-guisantes-600x321.jpg', 'Planta vigorosa y fácil de cultivar, ideal para huertos urbanos. Florece en primavera.', 5000, 10),
(5, 'Nuez', 'src/assets/img/Nuez.webp', 'https://media.admagazine.com/photos/62286e22818965ae9b8974e8/master/w_1600%2Cc_limit/GettyImages-929200940.jpg', 'Árbol robusto que produce nueces nutritivas, perfecto para climas templados.', 5000, 10),
(6, 'Cactus', 'src/assets/img/Cactus.webp', 'src/assets/img/saguaro-cacti-in-the-desert-imaginegolf.jpg', 'Planta suculenta resistente y de bajo mantenimiento, ideal para decorar espacios con un toque natural y moderno.', 1500, 10),
(7, 'Planta Carnivora', 'src/assets/img/Plsnts_Carro%3FivoraHD.webp', 'https://cloudfront-us-east-1.images.arcpublishing.com/infobae/L5SHHQWIN5AUJHUTFD7OM7U4SQ.jpg', 'Planta fascinante, atrapa insectos para obtener nutrientes, perfecta para amantes de la naturaleza exótica.', 25000, 10),
(8, 'Calabaza', 'https://preview.redd.it/squash-pvz-v0-gamdf9o00f0d1.png?width=511&format=png&auto=webp&s=a632d48fef15fc8fc3658a2c291a34c3e414b9fb', 'https://tb-static.uber.com/prod/image-proc/processed_images/207d19cb4f911e085ffeba8aa3c451e2/f9586c36ab7db84d09b777cee8c829b1.jpeg', 'Planta trepadora que ofrece frutos grandes y nutritivos, ideal para jardines y recetas tradicionales.', 3500, 10),
(9, 'Cebollin', 'src/assets/img/Hd_bonk.webp', 'https://i0.wp.com/foodandwineespanol.com/wp-content/uploads/2024/07/Cebollin.webp?w=600&ssl=1', 'Hierba aromática de sabor suave a cebolla, perfecta para realzar platos frescos y cocinar con estilo.', 3000, 10),
(10, 'Repollo', 'https://i.redd.it/what-cabbage-pult-design-do-you-like-more-v0-di1t41ofhp7f1.png?width=1200&format=png&auto=webp&s=67f9df2be7dc4b8ca43c52ba45778615873df961', 'https://upload.wikimedia.org/wikipedia/commons/2/2c/Kalkar_-_Wei%C3%9Fkohl_01_ies.jpg', 'Verdura crujiente y nutritiva, ideal para ensaladas frescas y guisos tradicionales.', 4500, 10),
(11, 'Sandia', 'https://i.pinimg.com/originals/a4/ca/46/a4ca4638b8ce9ec26bf6fed9410f3b65.png', 'https://huertafamiliar.cl/wp-content/uploads/2024/10/SANDIA-CRIMSON-SWEET-2-w.jpg', 'Fruta refrescante y jugosa, perfecta para los días calurosos y como un dulce natural lleno de sabor.', 6000, 10),
(12, 'Cereza', 'src/assets/img/Cherry_Bomb.webp', 'https://cdn.blueberriesconsulting.com/2024/02/Exportacion-de-cerezas-chilenas-casi-se-triplica-en-enero-2024-Chinos-compran-el-93.jpg', 'Pequeña fruta dulce y vibrante, ideal para disfrutar fresca o en postres deliciosos.', 10000, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`) VALUES
(2, 'ADMIN'),
(1, 'CLIENTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `valor` int(11) NOT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `img_principal` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `nombre`, `valor`, `descripcion`, `img_principal`) VALUES
(2, 'Pala de la noche', 5000, 'Remueve y reubica plantas sin despertar a los zombies.', 'src/assets/img/pala.png'),
(3, 'Regadera de Luna', 6500, 'Nutre tus plantas con agua encantada bajo la luz nocturna.', 'src/assets/img/WateringCan.webp'),
(4, 'Acelerador de crecimiento Maxium 5000', 5000, 'Proporciona un impulso de poder cuando más lo necesitan.', 'https://static.wikia.nocookie.net/plantsvszombies/images/0/0e/Plant_Food2.png'),
(5, 'Podadora Fantasma', 60000, 'Actúa automáticamente ante cualquier amenaza zombie.', 'src/assets/img/Lawnmower2.webp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `contrasena`, `correo`, `usuario`, `role_id`) VALUES
(1, '$2a$10$Vz11p9gZbQEGkfTAJRBFluveG10DxWVsGRv1l5n0jbOx2svuyeEc6', 'usuario1@ejemplo.com', 'usuario1', 1),
(2, '$2a$10$ZM1kuPm2eTjrrftiBJo9UuV5DreAecgrk55TjhNlHJh9rT84iaYiu', 'usuario2@ejemplo.com', 'usuario2', 1),
(3, '$2a$10$2Qpy5JZ3hAdlNg6uYrzN9.YrVb0T3nbcL1X/tPtzSIaOfgZW105xa', 'usuarioTest@ejemplo.com', 'usuarioTest', 1),
(4, '$2a$10$CFKcpKfcpGrJkWPdqFLWB.TB75QKJcbRtboif6cQ6ebM7LCdkEaTK', 'juan@email.com', 'juan', 1),
(5, '$2a$10$vyDwqzYfFgZ59IC.WbD5zOzpwQ7/3e2oTstwcs8NRO1O.TIbkewJK', 'Manolo@gmail.com', 'Manolo', 1),
(6, '$2a$10$qnHzDsb1t4YBW65nSd6NxecYve2Dz.vHx3WRoqnWm/adjFFZ2tRrW', 'Benjacorn1@gmail.com', 'Benjamin', 1),
(9, '$2a$10$WRF/XatrGVtEyGUwuQXk3O9Dl1w5HA232edcUYWn0/sPrdeHAByZK', 'Pedro@gmail.com', 'Pedro', NULL),
(10, '$2a$10$VsVfAdQwvjTw1Lb8RYE1.OWWYZh54aLvkX1hVxOnXaSW7RZAHVLHS', 'admin@admin.CL', 'ADMIN', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `macetas`
--
ALTER TABLE `macetas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plantas`
--
ALTER TABLE `plantas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario_rol` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `macetas`
--
ALTER TABLE `macetas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `plantas`
--
ALTER TABLE `plantas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `FKeljjw3mx8n5ngoe7fbqbjwusp` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `fk_usuario_rol` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
