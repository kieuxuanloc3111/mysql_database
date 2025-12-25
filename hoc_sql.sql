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
-- Cơ sở dữ liệu: `hoc_sql`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `price` int(10) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `id_user` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `email`, `price`, `avatar`, `id_user`) VALUES
(1, 'Áo thun nam basic', 'shop1@gmail.com', 120000, 'ao_thun_nam.jpg', 1),
(2, 'Quần jean nữ', 'shop2@gmail.com', 350000, 'quan_jean_nu.jpg', 1),
(3, 'Giày thể thao', 'shop3@gmail.com', 750000, 'giay_the_thao.jpg', 1),
(4, 'Balo laptop', 'shop4@gmail.com', 420000, 'balo_laptop.jpg', 1),
(5, 'Đồng hồ đeo tay', 'shop5@gmail.com', 980000, 'dong_ho.jpg', 1),
(6, 'Tai nghe bluetooth', 'shop6@gmail.com', 560000, 'tai_nghe.jpg', 1),
(7, 'Test product', 'test@gmail.com', 200, 'test.jpg', 1),
(8, 'Test product 1', 'u1@gmail.com', 150, 'p1.jpg', 1),
(9, 'Test product 2', 'u2@gmail.com', 220, 'p2.jpg', 2),
(10, 'Test product 3', 'u3@gmail.com', 320, 'p3.jpg', 3),
(11, 'Test product 4', 'u4@gmail.com', 450, 'p4.jpg', 4),
(12, 'Test product 5', 'u5@gmail.com', 180, 'p5.jpg', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `city` varchar(300) NOT NULL,
  `phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `city`, `phone`) VALUES
(1, 'Nguyen Van A', 'Ha Noi', 912345678),
(2, 'Tran Thi B', 'Ho Chi Minh', 934567890),
(3, 'Le Van C', 'Da Nang', 978123456),
(4, 'Pham Thi D', 'Can Tho', 965432198),
(5, 'Hoang Van E', 'Hai Phong', 987654321);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_user` (`id_user`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
