-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 19, 2023 lúc 10:21 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cua_hang_do_dien_tu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_hoa_don`
--

CREATE TABLE `chi_tiet_hoa_don` (
  `id` int(11) NOT NULL,
  `nguoi_dung_id` int(11) NOT NULL,
  `san_pham_id` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `thanh_tien` int(20) NOT NULL,
  `hoa_don_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_hoa_don`
--

INSERT INTO `chi_tiet_hoa_don` (`id`, `nguoi_dung_id`, `san_pham_id`, `so_luong`, `thanh_tien`, `hoa_don_id`) VALUES
(1, 1, 85, 1, 22000000, 6),
(2, 1, 84, 1, 650000, 6),
(3, 1, 87, 2, 14000000, 6),
(4, 1, 85, 1, 22000000, 0),
(5, 1, 84, 1, 650000, 0),
(6, 1, 87, 2, 14000000, 0),
(7, 1, 85, 1, 22000000, 0),
(8, 1, 84, 1, 650000, 0),
(9, 1, 87, 2, 14000000, 0),
(10, 1, 85, 1, 22000000, 0),
(11, 1, 84, 1, 650000, 0),
(12, 1, 87, 2, 14000000, 0),
(13, 1, 85, 1, 22000000, 0),
(14, 1, 84, 1, 650000, 0),
(15, 1, 87, 2, 14000000, 0),
(16, 1, 85, 1, 22000000, 0),
(17, 1, 84, 1, 650000, 0),
(18, 1, 87, 2, 14000000, 0),
(19, 1, 87, 1, 14000000, 7),
(20, 1, 87, 3, 14000000, 8),
(21, 1, 85, 1, 22000000, 8),
(22, 1, 84, 2, 650000, 8),
(23, 1, 83, 1, 1200000, 8),
(24, 1, 87, 3, 14000000, 9),
(25, 1, 85, 2, 22000000, 9),
(26, 1, 84, 2, 650000, 9),
(27, 1, 83, 1, 1200000, 9),
(28, 1, 83, 1, 1200000, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `id` int(11) NOT NULL,
  `ngay_dat_hang` text NOT NULL,
  `tong_tien` int(20) NOT NULL,
  `tinh_trang` int(11) DEFAULT NULL,
  `nguoi_dung_id` int(11) NOT NULL,
  `san_pham_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`id`, `ngay_dat_hang`, `tong_tien`, `tinh_trang`, `nguoi_dung_id`, `san_pham_id`) VALUES
(1, '2023-10-01 10:21:20', 2222, 2, 3, 48),
(2, '2023-02-19 05:22:24', 50650000, NULL, 3, 87),
(3, '2023-02-19 05:24:58', 50650000, NULL, 3, 87),
(4, '2023-02-19 05:25:14', 50650000, NULL, 1, 87),
(5, '2023-02-19 05:26:10', 50650000, NULL, 1, 87),
(6, '2023-02-19 05:27:06', 50650000, NULL, 1, 87),
(7, '2023-02-19 05:30:03', 14000000, NULL, 1, 87),
(8, '2023-02-19 06:22:59', 66500000, 1, 1, 83),
(9, '2023-02-19 07:49:04', 88500000, 1, 1, 83),
(10, '2023-02-19 07:49:16', 1200000, 1, 1, 83),
(11, '2023-10-01 10:21:20', 2222, 2, 3, 48),
(12, '2023-02-19 05:22:24', 50650000, NULL, 3, 87),
(13, '2023-02-19 05:24:58', 50650000, NULL, 3, 87),
(14, '2023-02-19 05:25:14', 50650000, NULL, 1, 87),
(15, '2023-02-19 05:26:10', 50650000, NULL, 1, 87),
(16, '2023-02-19 05:27:06', 50650000, NULL, 1, 87),
(17, '2023-02-19 05:30:03', 14000000, NULL, 1, 87),
(18, '2023-02-19 06:22:59', 66500000, 1, 1, 83),
(19, '2023-02-19 07:49:04', 88500000, 1, 1, 83),
(20, '2023-02-19 07:49:16', 1200000, 2, 1, 83);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`id`, `ten`) VALUES
(182, 'Máy tính'),
(183, 'Máy chơi game'),
(184, 'Màn hình máy tính'),
(185, 'Camera');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `id` int(11) NOT NULL,
  `hoTen` varchar(255) NOT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `so_dien_thoai` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `matKhau` text NOT NULL,
  `vai_tro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`id`, `hoTen`, `dia_chi`, `so_dien_thoai`, `email`, `matKhau`, `vai_tro_id`) VALUES
(1, 'cc', '', NULL, 'c@gmail.com', '12345678Dp', 2),
(3, 'ca', '', NULL, 'd@gmail.com', '$2y$10$gb2ABiuNPGcRT7XKzn915uenfHOZub956B1jh2aXEJWGIuh5otISK', 2),
(5, 'a', '', NULL, 'a@gmail.com', '$2y$10$8PD109vIGz9SX511.qtiz.TqMsIVVvMuOS0OKzlboaVCJcJsv3yJ6', 1),
(6, 'ac', '', NULL, 'ok@gmail.com', '$2y$10$sShEA4rF68w0EG76RWQt0ek1er2i9J7erD1Yltl34lETH90LJxRPi', 2),
(7, 'a', '', NULL, 'ap@gmail.com', '$2y$10$IfdgkoFvcpKF1WKzGvasUuor9AiFs6KDvQ2vwjnpzTlAqblknotyO', 2),
(8, 't', '', NULL, 'p@gmail.com', '$2y$10$RCf/ODfrpxgi5GyjT32Z1eARL6OtLddGaT7X74y8E4py5Tby5vvxO', 2),
(9, 'm', '', NULL, 'l@gmail.com', '$2y$10$jekZV.riJmQ01Kz1D6IbTuhP1b2WpdXFiZBooCaKSR73/9Um5LLNS', 2),
(10, 'u', '', NULL, 'u@gmail.com', '$2y$10$wJxsaYUBDP.cNVkdr05axuvmvIaPIyDbJlPDMQ58PC33S0.LeZMkq', 2),
(11, 'i', '', NULL, 'i@gmail.com', '$2y$10$QcqycERtiJoTrnU./sEZLeuApCqC/PJ.BGEcE7.GEwwEoftROJeMu', 2),
(12, 'o', '', NULL, 'o@gmail.com', '$2y$10$nwfrEV8jHSHhexyJzryC0.ikTkKcckqCkplfMJ2KXK67bbx4mjEla', 2),
(13, 'a', '', NULL, 'b@gmailc.com', '12345678Dp', 2),
(14, 'c', '', NULL, 'c@gmail.com', '12345678Dp', 2),
(15, 'ca', '', NULL, 'd@gmail.com', '$2y$10$gb2ABiuNPGcRT7XKzn915uenfHOZub956B1jh2aXEJWGIuh5otISK', 2),
(16, 'a', '', NULL, 'a@gmail.com', '$2y$10$8PD109vIGz9SX511.qtiz.TqMsIVVvMuOS0OKzlboaVCJcJsv3yJ6', 1),
(17, 'ac', '', NULL, 'ok@gmail.com', '$2y$10$sShEA4rF68w0EG76RWQt0ek1er2i9J7erD1Yltl34lETH90LJxRPi', 2),
(18, 'a', '', NULL, 'ap@gmail.com', '$2y$10$IfdgkoFvcpKF1WKzGvasUuor9AiFs6KDvQ2vwjnpzTlAqblknotyO', 2),
(19, 't', '', NULL, 'p@gmail.com', '$2y$10$RCf/ODfrpxgi5GyjT32Z1eARL6OtLddGaT7X74y8E4py5Tby5vvxO', 2),
(20, 'm', '', NULL, 'l@gmail.com', '$2y$10$jekZV.riJmQ01Kz1D6IbTuhP1b2WpdXFiZBooCaKSR73/9Um5LLNS', 2),
(21, 'u', '', NULL, 'u@gmail.com', '$2y$10$wJxsaYUBDP.cNVkdr05axuvmvIaPIyDbJlPDMQ58PC33S0.LeZMkq', 2),
(22, 'i', '', NULL, 'i@gmail.com', '$2y$10$QcqycERtiJoTrnU./sEZLeuApCqC/PJ.BGEcE7.GEwwEoftROJeMu', 2),
(23, 'ok', '', NULL, 'o@gmail.com', '$2y$10$nwfrEV8jHSHhexyJzryC0.ikTkKcckqCkplfMJ2KXK67bbx4mjEla', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `hinh` text NOT NULL,
  `don_gia` int(11) NOT NULL,
  `mo_ta` varchar(255) NOT NULL,
  `luot_xem` int(11) DEFAULT 0,
  `giam_gia` int(11) NOT NULL,
  `loai_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `ten`, `hinh`, `don_gia`, `mo_ta`, `luot_xem`, `giam_gia`, `loai_id`) VALUES
(48, 'Dell 2100', 'product-13.png', 1200000, 'Max', 0, 10, 182),
(49, 'Tay cầm', 'product-01.png', 650000, 'Xịn', 0, 5, 183),
(50, 'Camera 1921', 'product-03.png', 22000000, 'Rõ nét', 0, 0, 184),
(51, 'Điều khiển', 'product-05.png', 5000000, 'Xịn', 0, 5, 183),
(52, 'Chuột gaming', 'product-06.png', 14000000, 'Xịn', 0, 10, 182),
(53, 'Dell 2100', 'product-13.png', 1200000, 'Max', 0, 10, 182),
(54, 'Tay cầm', 'product-01.png', 650000, 'Xịn', 0, 5, 183),
(55, 'Camera 1921', 'product-03.png', 22000000, 'Rõ nét', 0, 0, 184),
(56, 'Điều khiển', 'product-05.png', 5000000, 'Xịn', 0, 5, 183),
(57, 'Chuột gaming', 'product-06.png', 14000000, 'Xịn', 0, 10, 182),
(58, 'Dell 2100', 'product-13.png', 1200000, 'Max', 0, 10, 182),
(59, 'Tay cầm', 'product-01.png', 650000, 'Xịn', 0, 5, 183),
(60, 'Camera 1921', 'product-03.png', 22000000, 'Rõ nét', 0, 0, 184),
(61, 'Điều khiển', 'product-05.png', 5000000, 'Xịn', 0, 5, 183),
(62, 'Chuột gaming', 'product-06.png', 14000000, 'Xịn', 0, 10, 182),
(63, 'Dell 2100', 'product-13.png', 1200000, 'Max', 0, 10, 182),
(64, 'Tay cầm', 'product-01.png', 650000, 'Xịn', 0, 5, 183),
(65, 'Camera 1921', 'product-03.png', 22000000, 'Rõ nét', 0, 0, 184),
(66, 'Điều khiển', 'product-05.png', 5000000, 'Xịn', 0, 5, 183),
(67, 'Chuột gaming', 'product-06.png', 14000000, 'Xịn', 0, 10, 182),
(68, 'Dell 2100', 'product-13.png', 1200000, 'Max', 0, 10, 182),
(69, 'Tay cầm', 'product-01.png', 650000, 'Xịn', 0, 5, 183),
(70, 'Camera 1921', 'product-03.png', 22000000, 'Rõ nét', 0, 0, 184),
(71, 'Điều khiển', 'product-05.png', 5000000, 'Xịn', 0, 5, 183),
(72, 'Chuột gaming', 'product-06.png', 14000000, 'Xịn', 0, 10, 182),
(73, 'Dell 2100', 'product-13.png', 1200000, 'Max', 0, 10, 182),
(74, 'Tay cầm', 'product-01.png', 650000, 'Xịn', 0, 5, 183),
(75, 'Camera 1921', 'product-03.png', 22000000, 'Rõ nét', 0, 0, 184),
(76, 'Điều khiển', 'product-05.png', 5000000, 'Xịn', 0, 5, 183),
(77, 'Chuột gaming', 'product-06.png', 14000000, 'Xịn', 0, 10, 182),
(78, 'Dell 2100', 'product-13.png', 1200000, 'Max', 0, 10, 182),
(79, 'Tay cầm', 'product-01.png', 650000, 'Xịn', 0, 5, 183),
(80, 'Camera 1921', 'product-03.png', 22000000, 'Rõ nét', 0, 0, 184),
(81, 'Điều khiển', 'product-05.png', 5000000, 'Xịn', 0, 5, 183),
(82, 'Chuột gaming', 'product-06.png', 14000000, 'Xịn', 0, 10, 182),
(83, 'Dell 2100', 'product-13.png', 1200000, 'Max', 0, 10, 182),
(84, 'Tay cầm', 'product-01.png', 650000, 'Xịn', 0, 5, 183),
(85, 'Camera 1921', 'product-03.png', 22000000, 'Rõ nét', 0, 0, 184);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vai_tro`
--

CREATE TABLE `vai_tro` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `vai_tro`
--

INSERT INTO `vai_tro` (`id`, `ten`) VALUES
(1, 'admin'),
(2, 'client');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_san_pham` (`san_pham_id`),
  ADD KEY `fk_nguoi_dung` (`nguoi_dung_id`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vai_tro` (`vai_tro_id`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_loai` (`loai_id`);

--
-- Chỉ mục cho bảng `vai_tro`
--
ALTER TABLE `vai_tro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `loai`
--
ALTER TABLE `loai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `vai_tro`
--
ALTER TABLE `vai_tro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD CONSTRAINT `fk_vai_tro` FOREIGN KEY (`vai_tro_id`) REFERENCES `vai_tro` (`id`);

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `fk_loai` FOREIGN KEY (`loai_id`) REFERENCES `loai` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
