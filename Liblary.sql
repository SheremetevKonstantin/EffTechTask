-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 12 2019 г., 19:10
-- Версия сервера: 5.5.53
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Liblary`
--
CREATE DATABASE IF NOT EXISTS `Liblary` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `Liblary`;

-- --------------------------------------------------------

--
-- Структура таблицы `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(100) NOT NULL,
  `author_book_id` varchar(500) NOT NULL,
  `author_book_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `author`
--

INSERT INTO `author` (`author_id`, `author_name`, `author_book_id`, `author_book_count`) VALUES
(1, 'Джон Рональд Руэл Толкин', '1,2', 2),
(2, 'Джоан Роулинг', '3,4,5,6,7,8,9,10', 8),
(3, 'Кристофер Толкин', '1', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  `book_author` varchar(500) NOT NULL,
  `book_year` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `book`
--

INSERT INTO `book` (`book_id`, `book_name`, `book_author`, `book_year`) VALUES
(1, 'Сильмариллион', '1,3', '1977'),
(2, 'Хоббит', '1', '1937'),
(3, 'Гарри Поттер и философский камень', '2', '1997'),
(4, 'Гарри Поттер и Тайная комната', '2', '1998'),
(5, 'Гарри Поттер и узник Азкабана', '2', '1999'),
(6, 'Гарри Поттер и Кубок огня', '2', '2000'),
(7, 'Гарри Поттер и Орден Феникса', '2', '2003'),
(8, 'Гарри Поттер и Принц-полукровка', '2', '2005'),
(9, 'Гарри Поттер и Дары Смерти', '2', '2007'),
(10, 'Гарри Поттер и Проклятое дитя', '2', '2016');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Индексы таблицы `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
