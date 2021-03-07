-- Adminer 4.8.0 MySQL 8.0.23 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `countryOfBirth` varchar(255) NOT NULL,
  `yearOfBirth` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `authors` (`id`, `name`, `countryOfBirth`, `yearOfBirth`) VALUES
(1,	'Paulo Coelho',	'Brazil',	1947),
(2,	'Kahlil Gibran',	'Lebanon',	1883),
(3,	'Timothy Zahn',	'United States of America',	1951);

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `books` (`id`, `title`, `author`, `year`) VALUES
(1,	'The Alchemist',	'Paulo Coelho',	1988),
(2,	'The Prophet',	'Kahlil Gibran',	1923),
(3,	'Heir to the Empire',	'Timothy Zahn',	1991);

-- 2021-03-07 22:36:47
