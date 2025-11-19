-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Лис 19 2025 р., 18:43
-- Версія сервера: 10.4.32-MariaDB
-- Версія PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `notat`
--

-- --------------------------------------------------------

--
-- Структура таблиці `notatki`
--

CREATE TABLE `notatki` (
  `id` int(11) NOT NULL,
  `osoby_id` int(11) NOT NULL,
  `nazwa` varchar(20) NOT NULL,
  `tresc` text NOT NULL,
  `priorytet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `notatki`
--

INSERT INTO `notatki` (`id`, `osoby_id`, `nazwa`, `tresc`, `priorytet`) VALUES
(1, 1, 'Zakupy', 'FFFFFFFFFFF', 3),
(2, 1, 'Zakupy', 'gggggggggg', 5),
(3, 3, 'Projekt szkolny', 'jjjjjjjjjjj', 4),
(4, 2, 'Na jutro praca', 'bbbbbbbbbbbb', 5),
(5, 3, 'Nauka JS', 'nnnnnnnnnnnn', 2),
(6, 3, 'Na basen', 'jkkkkkkkkkkkk', 1);

-- --------------------------------------------------------

--
-- Структура таблиці `osoby`
--

CREATE TABLE `osoby` (
  `id` int(11) NOT NULL,
  `imie` varchar(20) NOT NULL,
  `nazwisko` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `osoby`
--

INSERT INTO `osoby` (`id`, `imie`, `nazwisko`) VALUES
(1, 'Anna', 'Nooooooooooo'),
(2, 'Mark', 'JJJJJJJ'),
(3, 'Nina', 'KKKKKKKK');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `notatki`
--
ALTER TABLE `notatki`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `osoby`
--
ALTER TABLE `osoby`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `notatki`
--
ALTER TABLE `notatki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблиці `osoby`
--
ALTER TABLE `osoby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
