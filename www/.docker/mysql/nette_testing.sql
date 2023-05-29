-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 04 2022 г., 16:44
-- Версия сервера: 10.4.14-MariaDB
-- Версия PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `nette_testing`
--

-- --------------------------------------------------------

--
-- Структура таблицы `epic_prices`
--

CREATE TABLE `epic_prices` (
  `id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`) VALUES
(1, 'Статья первая', 'Lorem ipusm dolor one', '2022-07-05 17:18:00'),
(2, 'Статья вторая', 'Lorem ipsum dolor two', '2022-07-05 17:18:00'),
(3, 'Статья третья', 'Lorem ipsum dolor three', '2022-07-05 17:18:00');

-- --------------------------------------------------------

--
-- Структура таблицы `steam`
--

CREATE TABLE `steam` (
  `ID` char(5) NOT NULL,
  `free_game` varchar(20) NOT NULL,
  `discount_game` varchar(20) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `steam_prices`
--

CREATE TABLE `steam_prices` (
  `id` int(11) DEFAULT NULL,
  `name` text NOT NULL,
  `price` int(11) DEFAULT NULL,
  `discount_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `steam_prices`
--

INSERT INTO `steam_prices` (`id`, `name`, `price`, `discount_price`) VALUES
(0, 'Red Dead Redemption 2', 59, 19),
(1, 'The Witcher® 3: Wild Hunt', 29, 6),
(2, 'The Witcher 3: Wild Hunt - Game of the Year Edition', 49, 10),
(3, 'Cyberpunk 2077', 59, 30),
(4, 'EA SPORTS™ FIFA 23', 69, 41),
(5, 'God of War', 49, 37),
(6, 'Forza Horizon 5', 59, 38),
(7, 'Grand Theft Auto V: Premium Edition', 39, 14),
(8, 'The Forest', 16, 4),
(9, 'Battlefield™ V', 49, 5),
(10, 'DOOM Eternal', 39, 10),
(11, 'Horizon Zero Dawn™ Complete Edition', 49, 20),
(12, 'Grand Theft Auto V', 39, 26),
(13, 'Rust', 19, 5),
(14, 'Euro Truck Simulator 2', 39, 10),
(15, 'The Elder Scrolls V: Skyrim Special Edition', 59, 47),
(16, 'Total War: WARHAMMER III', 39, 6),
(17, 'STAR WARS Jedi: Fallen Order™', 129, 13),
(18, 'Battlefield Bundle', 19, 8),
(19, 'Dead by Daylight', 59, 6),
(20, 'Sid Meier’s Civilization® VI', 44, 13),
(21, 'Planet Zoo', 59, 30),
(22, 'Dying Light 2 Stay Human', 39, 26),
(23, 'Age of Empires IV: Anniversary Edition', 39, 29),
(24, 'Grounded', 59, 44),
(25, 'Marvel’s Spider-Man Remastered', 19, 13),
(26, 'Raft', 19, 13),
(27, 'Valheim', 39, 5),
(28, 'Battlefield™ 1', 133, 5),
(29, 'Valve Complete Pack', 39, 20),
(30, 'Kena: Bridge of Spirits', 39, 10),
(31, 'Hearts of Iron IV', 19, 8),
(32, 'Tom Clancy\'s Rainbow Six® Siege', 89, 29),
(33, ' Crysis Remastered Trilogy', 19, 6),
(34, 'The Elder Scrolls® Online', 29, 16),
(35, 'SnowRunner', 59, 30),
(36, 'Tiny Tina\'s Wonderlands', 35, 30),
(37, 'Ready or Not', 59, 15),
(38, 'Assassin\'s Creed® Odyssey', 69, 23),
(39, 'Forza Horizon 4', 59, 41),
(40, 'Persona 5 Royal', 39, 14),
(41, 'Mafia: Definitive Edition', 58, 23),
(42, 'Half-Life: Alyx', 39, 16),
(43, 'It Takes Two', 19, 5),
(44, 'theHunter: Call of the Wild™', 19, 5),
(45, 'American Truck Simulator', 59, 20),
(46, 'Total War: WARHAMMER II', 26, 21),
(47, 'Stray', 19, 7),
(48, 'Age of Empires II: Definitive Edition', 39, 10),
(0, 'Red Dead Redemption 2', 59, 19),
(1, 'The Witcher 3: Wild Hunt - Game of the Year Edition', 49, 10),
(2, 'The Witcher® 3: Wild Hunt', 29, 6),
(3, 'Cyberpunk 2077', 59, 30),
(4, 'EA SPORTS™ FIFA 23', 69, 41),
(5, 'God of War', 49, 37),
(6, 'Forza Horizon 5', 59, 38),
(7, 'Battlefield™ V', 49, 5),
(8, 'The Forest', 16, 4),
(9, 'Battlefield Bundle', 129, 13),
(10, 'Grand Theft Auto V: Premium Edition', 39, 14),
(11, 'DOOM Eternal', 39, 10),
(12, 'Valve Complete Pack', 133, 5),
(13, 'Grand Theft Auto V', 39, 26),
(14, 'Rust', 49, 20),
(15, 'Horizon Zero Dawn™ Complete Edition', 59, 6),
(16, 'Sid Meier’s Civilization® VI', 19, 5),
(17, 'Euro Truck Simulator 2', 39, 10),
(18, 'The Elder Scrolls V: Skyrim Special Edition', 59, 47),
(19, 'Total War: WARHAMMER III', 19, 8),
(20, 'Dead by Daylight', 39, 20),
(21, 'Kena: Bridge of Spirits', 39, 6),
(22, 'STAR WARS Jedi: Fallen Order™', 19, 13),
(23, 'Valheim', 39, 5),
(24, 'Battlefield™ 1', 39, 26),
(25, 'Age of Empires IV: Anniversary Edition', 44, 13),
(26, 'Planet Zoo', 59, 30),
(27, 'Dying Light 2 Stay Human', 59, 30),
(28, 'Tiny Tina\'s Wonderlands', 89, 29),
(29, ' Crysis Remastered Trilogy', 59, 44),
(30, 'Marvel’s Spider-Man Remastered', 29, 16),
(31, 'SnowRunner', 39, 29),
(32, 'Grounded', 19, 13),
(33, 'Raft', 35, 30),
(34, 'Ready or Not', 19, 8),
(35, 'Tom Clancy\'s Rainbow Six® Siege', 59, 15),
(36, 'Assassin\'s Creed® Odyssey', 59, 41),
(37, 'Persona 5 Royal', 19, 6),
(38, 'The Elder Scrolls® Online', 39, 14),
(39, 'Mafia: Definitive Edition', 39, 10),
(40, 'Hearts of Iron IV', 69, 23),
(41, 'Forza Horizon 4', 19, 5),
(42, 'theHunter: Call of the Wild™', 19, 5),
(43, 'American Truck Simulator', 39, 16),
(44, 'It Takes Two', 59, 20),
(45, 'Total War: WARHAMMER II', 26, 21),
(46, 'Stray', 19, 7),
(47, 'Age of Empires II: Definitive Edition', 29, 10),
(48, 'Metro Exodus', 29, 17),
(0, 'Red Dead Redemption 2', 59, 19),
(1, 'The Witcher® 3: Wild Hunt', 29, 6),
(2, 'The Witcher 3: Wild Hunt - Game of the Year Edition', 49, 10),
(3, 'Valve Complete Pack', 133, 5),
(4, 'Cyberpunk 2077', 59, 30),
(5, 'EA SPORTS™ FIFA 23', 69, 41),
(6, 'Forza Horizon 5', 59, 38),
(7, 'The Forest', 16, 4),
(8, 'God of War', 49, 37),
(9, 'Battlefield™ V', 49, 5),
(10, 'Grand Theft Auto V: Premium Edition', 39, 14),
(11, 'Dead by Daylight', 19, 8),
(12, 'Grand Theft Auto V', 19, 5),
(13, 'Euro Truck Simulator 2', 39, 10),
(14, 'DOOM Eternal', 59, 30),
(15, 'Dying Light 2 Stay Human', 39, 26),
(16, 'Rust', 129, 13),
(17, 'Battlefield Bundle', 39, 26),
(18, 'Age of Empires IV: Anniversary Edition', 59, 44),
(19, 'Marvel’s Spider-Man Remastered', 89, 29),
(20, ' Crysis Remastered Trilogy', 39, 10),
(21, 'The Elder Scrolls V: Skyrim Special Edition', 19, 13),
(22, 'Raft', 59, 6),
(23, 'Sid Meier’s Civilization® VI', 44, 13),
(24, 'Planet Zoo', 29, 16),
(25, 'SnowRunner', 59, 47),
(26, 'Total War: WARHAMMER III', 19, 8),
(27, 'Tom Clancy\'s Rainbow Six® Siege', 39, 29),
(28, 'Grounded', 59, 20),
(29, 'Total War: WARHAMMER II', 39, 10),
(30, 'Hearts of Iron IV', 39, 5),
(31, 'Battlefield™ 1', 39, 6),
(32, 'STAR WARS Jedi: Fallen Order™', 59, 15),
(33, 'Assassin\'s Creed® Odyssey', 19, 13),
(34, 'Valheim', 49, 20),
(35, 'Horizon Zero Dawn™ Complete Edition', 39, 20),
(36, 'Sea of Thieves', 19, 5),
(37, 'theHunter: Call of the Wild™', 19, 6),
(38, 'The Elder Scrolls® Online', 39, 16),
(39, 'It Takes Two', 39, 14),
(40, 'Mafia: Definitive Edition', 69, 23),
(41, 'Forza Horizon 4', 19, 7),
(42, 'Age of Empires II: Definitive Edition', 29, 10),
(43, 'Metro Exodus', 29, 15),
(44, 'Subnautica', 59, 12),
(45, 'Far Cry® 5', 59, 30),
(46, 'Tiny Tina\'s Wonderlands', 35, 30),
(47, 'Ready or Not', 9, 5),
(48, 'Terraria', 39, 23),
(0, 'Red Dead Redemption 2', 59, 19),
(1, 'Valve Complete Pack', 133, 5),
(2, 'EA SPORTS™ FIFA 23', 69, 41),
(3, 'The Witcher® 3: Wild Hunt', 29, 6),
(4, 'Cyberpunk 2077', 59, 30),
(5, 'The Witcher 3: Wild Hunt - Game of the Year Edition', 49, 10),
(6, 'Euro Truck Simulator 2', 19, 5),
(7, 'The Forest', 16, 4),
(8, 'Forza Horizon 5', 59, 38),
(9, 'God of War', 49, 37),
(10, 'Battlefield Bundle', 129, 13),
(11, 'Battlefield™ V', 49, 5),
(12, 'Grand Theft Auto V', 39, 26),
(13, 'Age of Empires IV: Anniversary Edition', 39, 14),
(14, 'Grand Theft Auto V: Premium Edition', 44, 13),
(15, 'Planet Zoo', 39, 20),
(16, 'Sea of Thieves', 39, 10),
(17, 'DOOM Eternal', 39, 10),
(18, 'The Elder Scrolls V: Skyrim Special Edition', 39, 26),
(19, 'Rust', 19, 5),
(20, 'American Truck Simulator', 19, 13),
(21, 'Raft', 19, 8),
(22, 'Tom Clancy\'s Rainbow Six® Siege', 29, 16),
(23, 'SnowRunner', 49, 20),
(24, 'Horizon Zero Dawn™ Complete Edition', 59, 6),
(25, 'Sid Meier’s Civilization® VI', 69, 23),
(26, 'Forza Horizon 4', 39, 29),
(27, 'Grounded', 19, 6),
(28, 'The Elder Scrolls® Online', 59, 44),
(29, 'Marvel’s Spider-Man Remastered', 39, 6),
(30, 'STAR WARS Jedi: Fallen Order™', 35, 30),
(31, 'Ready or Not', 59, 30),
(32, 'Dying Light 2 Stay Human', 19, 7),
(33, 'Age of Empires II: Definitive Edition', 27, 7),
(34, 'Arma 3', 27, 8),
(35, 'Cities: Skylines', 19, 5),
(36, 'theHunter: Call of the Wild™', 39, 5),
(37, 'Battlefield™ 1', 39, 10),
(38, 'Hearts of Iron IV', 59, 30),
(39, 'Tiny Tina\'s Wonderlands', 29, 9),
(40, 'Kingdom Come: Deliverance', 39, 14),
(41, 'Mafia: Definitive Edition', 39, 20),
(42, 'New World', 59, 47),
(43, 'Total War: WARHAMMER III', 29, 17),
(44, 'Satisfactory', 49, 20),
(45, 'Days Gone', 19, 8),
(46, 'Dead by Daylight', 29, 10),
(47, 'Deep Rock Galactic', 29, 10),
(48, 'Metro Exodus', 58, 23),
(0, 'Red Dead Redemption 2', 59, 19),
(1, 'Valve Complete Pack', 133, 5),
(2, 'The Witcher® 3: Wild Hunt', 29, 6),
(3, 'EA SPORTS™ FIFA 23', 69, 41),
(4, 'Cyberpunk 2077', 59, 30),
(5, 'The Witcher 3: Wild Hunt - Game of the Year Edition', 49, 10),
(6, 'The Forest', 16, 4),
(7, 'God of War', 49, 37),
(8, 'Forza Horizon 5', 59, 38),
(9, 'Euro Truck Simulator 2', 19, 5),
(10, 'Grand Theft Auto V', 39, 20),
(11, 'Sea of Thieves', 19, 6),
(12, 'The Elder Scrolls® Online', 49, 5),
(13, 'Battlefield™ V', 39, 14),
(14, 'Grand Theft Auto V: Premium Edition', 59, 6),
(15, 'Sid Meier’s Civilization® VI', 19, 8),
(16, 'Tom Clancy\'s Rainbow Six® Siege', 44, 13),
(17, 'Planet Zoo', 39, 26),
(18, 'Rust', 39, 10),
(19, 'The Elder Scrolls V: Skyrim Special Edition', 19, 5),
(20, 'theHunter: Call of the Wild™', 19, 13),
(21, 'Raft', 129, 13),
(22, 'Battlefield Bundle', 39, 10),
(23, 'DOOM Eternal', 39, 6),
(24, 'STAR WARS Jedi: Fallen Order™', 69, 23),
(25, 'Forza Horizon 4', 39, 5),
(26, 'Battlefield™ 1', 59, 30),
(27, 'Dying Light 2 Stay Human', 19, 7),
(28, 'Age of Empires II: Definitive Edition', 39, 26),
(29, 'Age of Empires IV: Anniversary Edition', 39, 14),
(30, 'Mafia: Definitive Edition', 49, 20),
(31, 'Horizon Zero Dawn™ Complete Edition', 29, 9),
(32, 'Kingdom Come: Deliverance', 19, 5),
(33, 'American Truck Simulator', 59, 12),
(34, 'Far Cry® 5', 19, 13),
(35, 'Valheim', 59, 15),
(36, 'Assassin\'s Creed® Odyssey', 39, 10),
(37, 'Fallout 76: The Pitt', 39, 20),
(38, 'New World', 29, 16),
(39, 'SnowRunner', 59, 47),
(40, 'Total War: WARHAMMER III', 39, 16),
(41, 'It Takes Two', 9, 1),
(42, 'Left 4 Dead 2', 27, 7),
(43, 'Arma 3', 59, 20),
(44, 'Total War: WARHAMMER II', 58, 23),
(45, 'Half-Life: Alyx', 209, 29),
(46, 'Sid Meier’s Civilization® VI Anthology', 39, 29),
(47, 'Grounded', 29, 17),
(48, 'Satisfactory', 39, 16),
(0, 'Red Dead Redemption 2', 59, 19),
(1, 'Valve Complete Pack', 133, 5),
(2, 'The Witcher® 3: Wild Hunt', 29, 6),
(3, 'EA SPORTS™ FIFA 23', 69, 41),
(4, 'Cyberpunk 2077', 59, 30),
(5, 'The Forest', 16, 4),
(6, 'The Witcher 3: Wild Hunt - Game of the Year Edition', 49, 10),
(7, 'Grand Theft Auto V: Premium Edition', 39, 14),
(8, 'Euro Truck Simulator 2', 19, 5),
(9, 'God of War', 49, 37),
(10, 'Forza Horizon 5', 59, 38),
(11, 'Grand Theft Auto V', 19, 8),
(12, 'Tom Clancy\'s Rainbow Six® Siege', 39, 20),
(13, 'Sea of Thieves', 49, 5),
(14, 'Battlefield™ V', 44, 13),
(15, 'Planet Zoo', 39, 26),
(16, 'Rust', 39, 10),
(17, 'DOOM Eternal', 19, 5),
(18, 'theHunter: Call of the Wild™', 59, 6),
(19, 'Sid Meier’s Civilization® VI', 39, 10),
(20, 'The Elder Scrolls V: Skyrim Special Edition', 19, 6),
(21, 'The Elder Scrolls® Online', 69, 23),
(22, 'Forza Horizon 4', 19, 13),
(23, 'Raft', 129, 13),
(24, 'Battlefield Bundle', 39, 5),
(25, 'Battlefield™ 1', 39, 6),
(26, 'STAR WARS Jedi: Fallen Order™', 59, 30),
(27, 'Dying Light 2 Stay Human', 59, 15),
(28, 'Assassin\'s Creed® Odyssey', 19, 7),
(29, 'Age of Empires II: Definitive Edition', 19, 13),
(30, 'Valheim', 39, 10),
(31, 'Hearts of Iron IV', 59, 47),
(32, 'Total War: WARHAMMER III', 39, 26),
(33, 'Age of Empires IV: Anniversary Edition', 59, 12),
(34, 'Far Cry® 5', 49, 20),
(35, 'Horizon Zero Dawn™ Complete Edition', 29, 9),
(36, 'Kingdom Come: Deliverance', 29, 16),
(37, 'SnowRunner', 39, 14),
(38, 'Mafia: Definitive Edition', 49, 10),
(39, 'Warhammer 40,000: Inquisitor - Martyr', 59, 20),
(40, 'Total War: WARHAMMER II', 9, 1),
(41, 'Left 4 Dead 2', 39, 20),
(42, 'New World', 29, 17),
(43, 'Satisfactory', 39, 16),
(44, 'It Takes Two', 19, 5),
(45, 'American Truck Simulator', 59, 21),
(46, 'HITMAN 3', 19, 8),
(47, 'Dead by Daylight', 39, 16),
(48, 'Hunt: Showdown', 27, 7),
(0, 'Red Dead Redemption 2', 59, 19),
(1, 'Valve Complete Pack', 133, 5),
(2, 'The Witcher® 3: Wild Hunt', 29, 6),
(3, 'EA SPORTS™ FIFA 23', 69, 41),
(4, 'Cyberpunk 2077', 59, 30),
(5, 'Grand Theft Auto V: Premium Edition', 39, 14),
(6, 'The Forest', 16, 4),
(7, 'Euro Truck Simulator 2', 19, 5),
(8, 'The Witcher 3: Wild Hunt - Game of the Year Edition', 49, 10),
(9, 'Grand Theft Auto V', 49, 37),
(10, 'God of War', 59, 38),
(11, 'Forza Horizon 5', 39, 20),
(12, 'Sea of Thieves', 49, 5),
(13, 'Battlefield™ V', 19, 8),
(14, 'Tom Clancy\'s Rainbow Six® Siege', 39, 26),
(15, 'Rust', 39, 10),
(16, 'DOOM Eternal', 19, 5),
(17, 'theHunter: Call of the Wild™', 49, 10),
(18, 'Warhammer 40,000: Inquisitor - Martyr', 44, 13),
(19, 'Planet Zoo', 19, 13),
(20, 'Raft', 59, 30),
(21, 'Dying Light 2 Stay Human', 19, 6),
(22, 'The Elder Scrolls® Online', 39, 10),
(23, 'The Elder Scrolls V: Skyrim Special Edition', 69, 23),
(24, 'Forza Horizon 4', 59, 6),
(25, 'Sid Meier’s Civilization® VI', 39, 6),
(26, 'STAR WARS Jedi: Fallen Order™', 39, 26),
(27, 'Age of Empires IV: Anniversary Edition', 19, 13),
(28, 'Valheim', 39, 20),
(29, 'New World', 129, 13),
(30, 'Battlefield Bundle', 29, 16),
(31, 'SnowRunner', 59, 15),
(32, 'Assassin\'s Creed® Odyssey', 59, 12),
(33, 'Far Cry® 5', 39, 5),
(34, 'Battlefield™ 1', 39, 14),
(35, 'Mafia: Definitive Edition', 29, 9),
(36, 'Kingdom Come: Deliverance', 39, 10),
(37, 'Hearts of Iron IV', 19, 7),
(38, 'Age of Empires II: Definitive Edition', 39, 16),
(39, 'It Takes Two', 19, 5),
(40, 'American Truck Simulator', 35, 30),
(41, 'Ready or Not', 59, 21),
(42, 'HITMAN 3', 59, 47),
(43, 'Total War: WARHAMMER III', 49, 20),
(44, 'Horizon Zero Dawn™ Complete Edition', 9, 1),
(45, 'Left 4 Dead 2', 49, 20),
(46, 'Days Gone', 19, 8),
(47, 'Dead by Daylight', 39, 29),
(48, 'Grounded', 27, 7),
(0, 'Red Dead Redemption 2', 59, 19),
(1, 'Valve Complete Pack', 133, 5),
(2, 'The Witcher® 3: Wild Hunt', 29, 6),
(3, 'The Witcher 3: Wild Hunt - Game of the Year Edition', 49, 10),
(4, 'Cyberpunk 2077', 59, 30),
(5, 'EA SPORTS™ FIFA 23', 69, 41),
(6, 'The Forest', 16, 4),
(7, 'Grand Theft Auto V: Premium Edition', 39, 14),
(8, 'Forza Horizon 5', 59, 38),
(9, 'God of War', 49, 37),
(10, 'Euro Truck Simulator 2', 19, 5),
(11, 'Warhammer 40,000: Inquisitor - Martyr', 49, 10),
(12, 'Grand Theft Auto V', 39, 10),
(13, 'DOOM Eternal', 39, 26),
(14, 'Rust', 19, 13),
(15, 'Raft', 49, 5),
(16, 'Battlefield™ V', 39, 20),
(17, 'Sea of Thieves', 39, 26),
(18, 'Age of Empires IV: Anniversary Edition', 39, 6),
(19, 'STAR WARS Jedi: Fallen Order™', 59, 6),
(20, 'Sid Meier’s Civilization® VI', 39, 10),
(21, 'The Elder Scrolls V: Skyrim Special Edition', 19, 5),
(22, 'theHunter: Call of the Wild™', 44, 13),
(23, 'Planet Zoo', 129, 13),
(24, 'Battlefield Bundle', 19, 7),
(25, 'Age of Empires II: Definitive Edition', 19, 6),
(26, 'The Elder Scrolls® Online', 19, 8),
(27, 'Tom Clancy\'s Rainbow Six® Siege', 39, 14),
(28, 'Mafia: Definitive Edition', 59, 12),
(29, 'Far Cry® 5', 19, 13),
(30, 'Valheim', 29, 16),
(31, 'SnowRunner', 59, 15),
(32, 'Assassin\'s Creed® Odyssey', 19, 5),
(33, 'American Truck Simulator', 39, 16),
(34, 'It Takes Two', 29, 9),
(35, 'Kingdom Come: Deliverance', 14, 13),
(36, 'Warhammer 40,000: Inquisitor - Martyr - Sororitas Class', 39, 5),
(37, 'Battlefield™ 1', 59, 30),
(38, 'Dying Light 2 Stay Human', 19, 8),
(39, 'Dead by Daylight', 39, 20),
(40, 'New World', 49, 20),
(41, 'Horizon Zero Dawn™ Complete Edition', 39, 10),
(42, 'Hearts of Iron IV', 69, 23),
(43, 'Forza Horizon 4', 49, 20),
(44, 'Days Gone', 59, 30),
(45, 'F1® 22', 19, 4),
(46, 'Assetto Corsa', 26, 21),
(47, 'Stray', 59, 44),
(48, 'Marvel’s Spider-Man Remastered', 27, 7);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `steam`
--
ALTER TABLE `steam`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
