-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 25, 2025 lúc 10:25 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlicauthu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cauthu`
--

CREATE TABLE `cauthu` (
  `id` int(11) NOT NULL,
  `ten_cauthu` varchar(100) NOT NULL,
  `tuoi` int(3) NOT NULL,
  `quoc_tich` varchar(100) NOT NULL,
  `vi_tri` varchar(100) NOT NULL,
  `luong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cauthu`
--

INSERT INTO `cauthu` (`id`, `ten_cauthu`, `tuoi`, `quoc_tich`, `vi_tri`, `luong`) VALUES
(1, 'hao le', 14, 'vietnam', 'phong thu', 1000),
(2, 'hao le 12', 14, 'vietnam', 'phong thu', 1000),
(3, 'hao le 3', 14, 'vietnam', 'phong thu', 1000),
(4, 'hao le', 14, 'vietnam', 'phong thu', 12002),
(5, 'hao le 7', 14, 'vietnam', 'phong thu', 4000);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cauthu`
--
ALTER TABLE `cauthu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cauthu`
--
ALTER TABLE `cauthu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
