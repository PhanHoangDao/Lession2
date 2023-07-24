-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 24, 2023 lúc 08:53 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `categories`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`) VALUES
(1, 'Category 1', NULL),
(2, 'Category 2', NULL),
(3, 'Category 3', NULL),
(4, 'Category 4', NULL),
(5, 'Category 1.1', 1),
(6, 'Category 1.2', 1),
(7, 'Category 1.3', 1),
(8, 'Category 1.4', 1),
(9, 'Category 2.1', 5),
(10, 'Category 2.2', 5),
(11, 'Category 2.3', 5),
(12, 'Category 2.4', 5),
(13, 'Category 3.1', 9),
(14, 'Category 3.2', 9),
(15, 'Category 3.3', 9),
(16, 'Category 3.4', 9),
(17, 'Category 4.1', 13),
(18, 'Category 4.2', 13),
(19, 'Category 4.3', 13),
(20, 'Category 4.4', 13),
(21, 'Category 1.1.1', 6),
(22, 'Category 1.1.2', 6),
(23, 'Category 1.2.1', 7),
(24, 'Category 1.2.2', 7),
(25, 'Category 1.3.1', 8),
(26, 'Category 1.3.2', 8),
(27, 'Category 1.4.1', 11),
(28, 'Category 1.4.2', 11),
(29, 'Category 2.1.1', 10),
(30, 'Category 2.1.2', 10),
(31, 'Category 2.2.1', 11),
(32, 'Category 2.2.2', 11),
(33, 'Category 2.3.1', 12),
(34, 'Category 2.3.2', 12),
(35, 'Category 3.1.1', 14),
(36, 'Category 3.1.2', 14),
(37, 'Category 3.2.1', 15),
(38, 'Category 3.2.2', 15);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
