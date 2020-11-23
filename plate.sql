-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 23 nov. 2020 à 14:38
-- Version du serveur :  10.4.16-MariaDB
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `plate`
--

-- --------------------------------------------------------

--
-- Structure de la table `plate`
--

CREATE TABLE `plate` (
  `id` int(11) NOT NULL,
  `name_plate` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `plate`
--

INSERT INTO `plate` (`id`, `name_plate`, `image`) VALUES
(1, 'Taqueria El Asadero', 'https://cdn.vox-cdn.com/thumbor/juRbsMVKJclKHjD2gClWxiw0L6w=/0x0:1080x810/1270x953/filters:focal(454x319:626x491):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_image/image/62551177/taqueria_el_asadero.0.0.0.jpg'),
(2, 'L\' Patron', 'https://i.ytimg.com/vi/nR-RHoo6Mio/maxresdefault.jpg'),
(3, 'Del Seoul\r\n', 'https://cdn.vox-cdn.com/uploads/chorus_image/image/62551166/del_seoul.12.jpg'),
(4, 'Mi Tocaya Antojería\r\n', 'https://media.timeout.com/images/103867890/image.jpg'),
(5, 'Big Star\r\n', 'https://images.squarespace-cdn.com/content/v1/5776a34de3df287ed67bced2/1588018270163-M6KQH1NSCCAVIRXGFCTY/ke17ZwdGBToddI8pDm48kOmST5JmRz6JwLJSJeb17u8UqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcUO2RFeMirnFEOjbR_dJv0'),
(6, 'Antique Taco', 'https://cdn.vox-cdn.com/thumbor/WAwl3yIpyMwA3xTVXevwtF_ssFA=/0x0:750x750/1270x953/filters:focal(315x315:435x435):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_image/image/63729431/antique_taco.0.jpg'),
(7, 'BIG & little\'s\r\n', 'https://cdn.vox-cdn.com/thumbor/yNyYfbSRDEUKb92ahaOqwwpWXgY=/0x0:1080x1080/1270x953/filters:focal(454x454:626x626):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_image/image/62551163/big_and_littles.0.0.0.jpeg'),
(8, 'La Lagartija Taqueria', 'https://scontent.fcmn1-1.fna.fbcdn.net/v/t31.0-8/1278813_578610032193242_1087809291_o.jpg?_nc_cat=111&ccb=2&_nc_sid=19026a&_nc_ohc=r2l7jQyIWKsAX-lQHJH&_nc_ht=scontent.fcmn1-1.fna&oh=7d007a2b2d723a3c0ee6805341746f6b&oe=5FDDE5E7'),
(9, 'Rubi\'s at the New Maxwell Street Market\r\n', 'https://scontent.fcmn1-1.fna.fbcdn.net/v/t1.0-9/29261471_1662664047103582_849780058565378048_n.jpg?_nc_cat=106&ccb=2&_nc_sid=8bfeb9&_nc_ohc=taR2fedA9TYAX_wZCF1&_nc_ht=scontent.fcmn1-1.fna&oh=49c4e48f3cb593c8e6a28331df4eb1dd&oe=5FDD7140'),
(10, '5 Rabanitos\r\n', 'https://cdn.vox-cdn.com/thumbor/2Iz7wFk6ZaPp33RFflTDa6cbeVw=/0x0:720x901/1270x953/filters:focal(269x557:383x671):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_image/image/62551174/5_rabanitos.12.png');

-- --------------------------------------------------------

--
-- Structure de la table `plate_day`
--

CREATE TABLE `plate_day` (
  `id` int(11) NOT NULL,
  `plate_day` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `plate`
--
ALTER TABLE `plate`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `plate`
--
ALTER TABLE `plate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
