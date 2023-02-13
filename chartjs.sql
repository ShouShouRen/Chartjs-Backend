-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2023 年 02 月 13 日 07:01
-- 伺服器版本： 10.4.27-MariaDB
-- PHP 版本： 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `chartjs`
--

-- --------------------------------------------------------

--
-- 資料表結構 `barchart`
--

CREATE TABLE `barchart` (
  `id` int(10) NOT NULL,
  `revenue` int(10) NOT NULL,
  `profit` int(10) NOT NULL,
  `cost` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `barchart`
--

INSERT INTO `barchart` (`id`, `revenue`, `profit`, `cost`) VALUES
(1, 12, 6, 6),
(2, 9, 3, 6),
(3, 8, 3, 5),
(4, 7, 2, 5),
(5, 6, 1, 5),
(6, 10, 5, 5),
(7, 14, 9, 5),
(8, 20, 15, 5),
(9, 30, 22, 8),
(10, 25, 15, 10);

-- --------------------------------------------------------

--
-- 資料表結構 `datapoints`
--

CREATE TABLE `datapoints` (
  `id` int(11) NOT NULL,
  `datapoint` int(11) NOT NULL,
  `descriptionlabelid` int(11) NOT NULL,
  `labelaxis` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `datapoints`
--

INSERT INTO `datapoints` (`id`, `datapoint`, `descriptionlabelid`, `labelaxis`) VALUES
(1, 33, 1, 'Standard'),
(2, 6, 1, 'Deiuxe'),
(3, 7, 1, 'Pro'),
(4, 8, 1, 'Plus'),
(5, 9, 1, 'Green'),
(6, 12, 1, 'Gold Package'),
(7, 15, 1, 'Diamond Package'),
(8, 18, 1, 'Asia'),
(9, 22, 1, 'North America'),
(10, 25, 1, 'Europe');

-- --------------------------------------------------------

--
-- 資料表結構 `descriptionlabels`
--

CREATE TABLE `descriptionlabels` (
  `id` int(11) NOT NULL,
  `descriptionlabel` varchar(20) NOT NULL,
  `bgcolor` varchar(25) NOT NULL,
  `bordercolor` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `descriptionlabels`
--

INSERT INTO `descriptionlabels` (`id`, `descriptionlabel`, `bgcolor`, `bordercolor`) VALUES
(1, 'revenue', 'rgba(54,162,253,0.2)', 'rgba(54,162,235,1)');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `barchart`
--
ALTER TABLE `barchart`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `datapoints`
--
ALTER TABLE `datapoints`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `descriptionlabels`
--
ALTER TABLE `descriptionlabels`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `barchart`
--
ALTER TABLE `barchart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `datapoints`
--
ALTER TABLE `datapoints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `descriptionlabels`
--
ALTER TABLE `descriptionlabels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
