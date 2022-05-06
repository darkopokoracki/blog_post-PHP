-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2022 at 10:42 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogpost`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategorija`
--

CREATE TABLE `kategorija` (
  `id` int(11) NOT NULL,
  `naziv` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategorija`
--

INSERT INTO `kategorija` (`id`, `naziv`) VALUES
(1, 'Frontend'),
(2, 'Backend'),
(3, 'Fullstack');

-- --------------------------------------------------------

--
-- Table structure for table `vest`
--

CREATE TABLE `vest` (
  `id` int(11) NOT NULL,
  `naslov` varchar(80) NOT NULL,
  `sadrzaj` text NOT NULL,
  `kategorija_id` int(11) NOT NULL,
  `slika` varchar(200) DEFAULT NULL,
  `objavljeno` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vest`
--

INSERT INTO `vest` (`id`, `naslov`, `sadrzaj`, `kategorija_id`, `slika`, `objavljeno`) VALUES
(1, 'Da li je Vue.js Najlaksi za ucenje?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae orci feugiat, blandit sapien et, maximus elit. Phasellus dignissim euismod justo eu maximus. Donec sed fermentum libero. Phasellus facilisis ut nunc at fermentum. Praesent efficitur pulvinar molestie. Morbi vitae purus consequat, malesuada ipsum ultricies, facilisis justo. Sed ut tristique nisl, euismod blandit odio. Duis sed condimentum nibh, vel pretium orci. Sed mollis ipsum ac quam egestas varius. Nunc porta risus sit amet urna fermentum, in suscipit tellus dapibus. Ut porttitor semper tempus.', 1, 'vue.jpg', '2022-03-01'),
(2, 'React ili Angular?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae orci feugiat, blandit sapien et, maximus elit. Phasellus dignissim euismod justo eu maximus. Donec sed fermentum libero. Phasellus facilisis ut nunc at fermentum. Praesent efficitur pulvinar molestie. Morbi vitae purus consequat, malesuada ipsum ultricies, facilisis justo. Sed ut tristique nisl, euismod blandit odio. Duis sed condimentum nibh, vel pretium orci. Sed mollis ipsum ac quam egestas varius. Nunc porta risus sit amet urna fermentum, in suscipit tellus dapibus. Ut porttitor semper tempus.', 1, 'react_angular.jpg', '2022-04-02'),
(3, 'Pored Reacta naucite i React Native!!!', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae orci feugiat, blandit sapien et, maximus elit. Phasellus dignissim euismod justo eu maximus. Donec sed fermentum libero. Phasellus facilisis ut nunc at fermentum. Praesent efficitur pulvinar molestie. Morbi vitae purus consequat, malesuada ipsum ultricies, facilisis justo. Sed ut tristique nisl, euismod blandit odio. Duis sed condimentum nibh, vel pretium orci. Sed mollis ipsum ac quam egestas varius. Nunc porta risus sit amet urna fermentum, in suscipit tellus dapibus. Ut porttitor semper tempus.', 1, 'react_native.jpg', '2022-03-22'),
(4, 'Php i Laravel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae orci feugiat, blandit sapien et, maximus elit. Phasellus dignissim euismod justo eu maximus. Donec sed fermentum libero. Phasellus facilisis ut nunc at fermentum. Praesent efficitur pulvinar molestie. Morbi vitae purus consequat, malesuada ipsum ultricies, facilisis justo. Sed ut tristique nisl, euismod blandit odio. Duis sed condimentum nibh, vel pretium orci. Sed mollis ipsum ac quam egestas varius. Nunc porta risus sit amet urna fermentum, in suscipit tellus dapibus. Ut porttitor semper tempus.', 2, 'php_laravel.jpg', '2022-03-23'),
(5, 'Node.js je predobar!!!', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae orci feugiat, blandit sapien et, maximus elit. Phasellus dignissim euismod justo eu maximus. Donec sed fermentum libero. Phasellus facilisis ut nunc at fermentum. Praesent efficitur pulvinar molestie. Morbi vitae purus consequat, malesuada ipsum ultricies, facilisis justo. Sed ut tristique nisl, euismod blandit odio. Duis sed condimentum nibh, vel pretium orci. Sed mollis ipsum ac quam egestas varius. Nunc porta risus sit amet urna fermentum, in suscipit tellus dapibus. Ut porttitor semper tempus.', 2, 'node.jpg', '2022-04-03'),
(6, 'Kakv je GO zapravo jezik?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae orci feugiat, blandit sapien et, maximus elit. Phasellus dignissim euismod justo eu maximus. Donec sed fermentum libero. Phasellus facilisis ut nunc at fermentum. Praesent efficitur pulvinar molestie. Morbi vitae purus consequat, malesuada ipsum ultricies, facilisis justo. Sed ut tristique nisl, euismod blandit odio. Duis sed condimentum nibh, vel pretium orci. Sed mollis ipsum ac quam egestas varius. Nunc porta risus sit amet urna fermentum, in suscipit tellus dapibus. Ut porttitor semper tempus.', 2, 'go.jpg', '2022-02-23'),
(7, 'MEVN', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae orci feugiat, blandit sapien et, maximus elit. Phasellus dignissim euismod justo eu maximus. Donec sed fermentum libero. Phasellus facilisis ut nunc at fermentum. Praesent efficitur pulvinar molestie. Morbi vitae purus consequat, malesuada ipsum ultricies, facilisis justo. Sed ut tristique nisl, euismod blandit odio. Duis sed condimentum nibh, vel pretium orci. Sed mollis ipsum ac quam egestas varius. Nunc porta risus sit amet urna fermentum, in suscipit tellus dapibus. Ut porttitor semper tempus.', 3, 'mevn.jpg', '2022-04-04'),
(8, 'Koje tehnologije koristiti za fullstack development?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae orci feugiat, blandit sapien et, maximus elit. Phasellus dignissim euismod justo eu maximus. Donec sed fermentum libero. Phasellus facilisis ut nunc at fermentum. Praesent efficitur pulvinar molestie. Morbi vitae purus consequat, malesuada ipsum ultricies, facilisis justo. Sed ut tristique nisl, euismod blandit odio. Duis sed condimentum nibh, vel pretium orci. Sed mollis ipsum ac quam egestas varius. Nunc porta risus sit amet urna fermentum, in suscipit tellus dapibus. Ut porttitor semper tempus.', 3, 'tehnologije.jpg', '2022-01-04'),
(9, 'Fullstack i SPA', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae orci feugiat, blandit sapien et, maximus elit. Phasellus dignissim euismod justo eu maximus. Donec sed fermentum libero. Phasellus facilisis ut nunc at fermentum. Praesent efficitur pulvinar molestie. Morbi vitae purus consequat, malesuada ipsum ultricies, facilisis justo. Sed ut tristique nisl, euismod blandit odio. Duis sed condimentum nibh, vel pretium orci. Sed mollis ipsum ac quam egestas varius. Nunc porta risus sit amet urna fermentum, in suscipit tellus dapibus. Ut porttitor semper tempus.', 3, 'spa.jpg', '2022-04-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategorija`
--
ALTER TABLE `kategorija`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vest`
--
ALTER TABLE `vest`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategorija`
--
ALTER TABLE `kategorija`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vest`
--
ALTER TABLE `vest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
