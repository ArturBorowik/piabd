-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 13, 2026 at 10:18 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nauka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `adres`
--

CREATE TABLE `adres` (
  `id` int(11) NOT NULL,
  `miejscowosc` varchar(50) DEFAULT NULL,
  `ludnosc` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adres`
--

INSERT INTO `adres` (`id`, `miejscowosc`, `ludnosc`) VALUES
(1, 'Krakow', 500000),
(2, 'Warszawa', 1200000),
(3, 'Poznan', 450000),
(4, 'Sopot', 31000),
(5, 'Bochnia', 28000),
(6, 'Przedborz', 5000),
(7, 'Rzeszow', 187000);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dzialy`
--

CREATE TABLE `dzialy` (
  `numer` int(11) NOT NULL,
  `nazwa` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dzialy`
--

INSERT INTO `dzialy` (`numer`, `nazwa`) VALUES
(1, 'produkcja'),
(2, 'marketing'),
(3, 'HR'),
(4, 'Starszy kadrowy'),
(5, 'Programista'),
(6, 'Informatyk');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pesel`
--

CREATE TABLE `pesel` (
  `id` int(10) NOT NULL,
  `pesel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesel`
--

INSERT INTO `pesel` (`id`, `pesel`) VALUES
(1, 2147483647),
(2, 2147483647),
(3, 2147483647),
(4, 2147483647),
(5, 2147483647),
(6, 1231178957),
(7, 2147483647);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id` int(11) NOT NULL,
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(30) DEFAULT NULL,
  `dzial` int(11) DEFAULT NULL,
  `zarobki` int(11) DEFAULT NULL,
  `pesel` int(11) DEFAULT NULL,
  `adres` int(11) DEFAULT NULL,
  `szkola` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pracownicy`
--

INSERT INTO `pracownicy` (`id`, `imie`, `nazwisko`, `dzial`, `zarobki`, `pesel`, `adres`, `szkola`) VALUES
(1, 'Jan', 'Nowak', 1, 2500, 2, 1, 1),
(2, 'Adam', 'Kowalski', 1, 3500, 3, 3, 2),
(3, 'Marcin', 'Kaczmarek', 6, 7500, 4, 4, 3),
(4, 'Robert', 'Brzozowski', 2, 1500, 1, 2, 3),
(5, 'Kamil', 'Matecki', 6, 5500, 4, 5, 2),
(6, 'Lukasz', 'Piszczek', 4, 4700, 7, 6, 1),
(7, 'Tomasz', 'Perla', 3, 3250, 5, 5, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `szkola`
--

CREATE TABLE `szkola` (
  `id` int(11) NOT NULL,
  `rodzaj_szkoly` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `szkola`
--

INSERT INTO `szkola` (`id`, `rodzaj_szkoly`) VALUES
(1, 'technikum'),
(2, 'liceum'),
(3, 'zawodowa'),
(4, 'nie uczy sie');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `adres`
--
ALTER TABLE `adres`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `dzialy`
--
ALTER TABLE `dzialy`
  ADD PRIMARY KEY (`numer`);

--
-- Indeksy dla tabeli `pesel`
--
ALTER TABLE `pesel`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `szkola`
--
ALTER TABLE `szkola`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adres`
--
ALTER TABLE `adres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pesel`
--
ALTER TABLE `pesel`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `szkola`
--
ALTER TABLE `szkola`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
