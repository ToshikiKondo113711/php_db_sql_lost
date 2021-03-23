-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2021-03-22 15:50:35
-- サーバのバージョン： 10.4.18-MariaDB
-- PHP のバージョン: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `bookmark_table`
--

CREATE TABLE `bookmark_table` (
  `id` int(16) NOT NULL,
  `bookmarkName` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bookmarkUrl` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `naiyou` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `indate` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- テーブルのデータのダンプ `bookmark_table`
--

INSERT INTO `bookmark_table` (`id`, `bookmarkName`, `bookmarkUrl`, `naiyou`, `indate`) VALUES
(1, 'あああ', 'テスト', 'ああああ', '2021-03-22 22:02:27'),
(2, 'あああ', 'https://doitsu.com', 'あああ', '2021-03-22 22:04:34');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `bookmark_table`
--
ALTER TABLE `bookmark_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `bookmark_table`
--
ALTER TABLE `bookmark_table`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
