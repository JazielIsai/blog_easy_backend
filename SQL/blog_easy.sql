-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 02-09-2022 a las 00:00:08
-- Versión del servidor: 8.0.30-0ubuntu0.22.04.1
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog_easy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `article`
--

CREATE TABLE `article` (
  `id_article` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `article`
--

INSERT INTO `article` (`id_article`, `title`, `content`, `img`, `date`) VALUES
(1, '¿Qué son las redes convergentes?', 'Una red convergente es por donde se pasa media, como vos, datos y video por una misma red', '', '2022-09-01 20:19:19'),
(2, '¿Qué es la progración?', 'Computer programming is the process of performing a particular computation, usually by designing and building an executable computer program. Programming involves tasks such as analysis, generating algorithms, profiling algorithms\'\' accuracy and resource consumption, and the implementation of algorithms.', '', '2022-09-01 21:45:30'),
(3, '¿Qué es React?', 'React is a free and open-source front-end JavaScript library for building user interfaces based on UI components. It is maintained by Meta and a community of individual developers and companies.', '', '2022-09-01 21:55:20'),
(4, '¿Qué es JS', 'JavaScript, often abbreviated JS, is a programming language that is one of the core technologies of the World Wide Web, alongside HTML and CSS. As of 2022, 98% of websites use JavaScript on the client side for webpage behavior, often incorporating third-party libraries', '', '2022-09-01 21:55:20'),
(5, 'Top lenguajes de programación', 'Python, Java, C, C++, JavaScript', '', '2022-09-01 21:55:20'),
(6, 'Python - version 3.0', 'Python es uno de los lenguajes de programación más usados actualmente y su uso sigue creciendo. Posee unas características muy potentes: es de código abierto, tiene una sintaxis sencilla y es fácil de entender, por lo que ahorra tiempo y recursos. Python es un lenguaje versátil que puede tener múltiples aplicaciones. Una de ellas, es la Inteligencia Artificial, gracias a bibliotecas como Keras o TensorFlow.', '', '2022-09-01 21:55:20'),
(7, 'Java', 'Java es un lenguaje de propósito general, orientado a objetos y diseñado para tener las dependencias de implementación mínimas posibles. Con Java se pueden crear aplicaciones y procesos en múltiples dispositivos, por lo que es una muy buena opción si te preguntas qué lenguaje de programación aprender en 2022.', '', '2022-09-01 21:55:20'),
(8, 'C#', 'C# es otro de los mejores lenguajes de programación. Fue creado por Microsoft y está presente en entornos empresariales, como instituciones gubernamentales, entidades bancarias o médicas, entre otros.', '', '2022-09-01 21:55:20'),
(9, 'JavaScript', 'JavaScript es uno de los lenguajes de programación más usados para crear páginas web dinámicas. Permite a los programadores implementar funciones complejas en las páginas web para añadirles más interactividad. Una página dinámica es aquella que incorpora efectos, como texto que aparece y desaparece, animaciones, acciones que se activan al pulsar botones y ventanas con mensajes de aviso al usuario.', '', '2022-09-01 21:55:20'),
(10, 'Qué es mysql', 'MySQL is an open-source relational database management system. Its name is a combination of My, the name of co-founder Michael Widenius\'\'s daughter My, and SQL, the abbreviation for Structured Query Language.', '', '2022-09-01 21:55:20'),
(11, 'Ciencia de datos', 'La ciencia de datos combina múltiples campos, entre los que se incluyen estadísticas, métodos científicos, inteligencia artificial (IA) y análisis de datos, para extraer valor de los datos. Los profesionales que utilizan la ciencia de datos se conocen como científicos de datos y aplican una combinación de diversas competencias para analizar los datos recopilados en la web, los teléfonos inteligentes, los clientes, los sensores y otras fuentes para generar conocimientos prácticos.', '', '2022-09-01 21:55:20'),
(12, 'Deep learning', 'Deep learning is a type of machine learning and artificial intelligence (AI) that imitates the way humans gain certain types of knowledge. Deep learning is an important element of data science, which includes statistics and predictive modeling. It is extremely beneficial to data scientists who are tasked with collecting, analyzing and interpreting large amounts of data; deep learning makes this process faster and easier.', '', '2022-09-01 21:55:20'),
(13, 'Test Article', 'Test Article 32', NULL, '2022-09-01 22:29:16');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id_article`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `article`
--
ALTER TABLE `article`
  MODIFY `id_article` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
