-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2017 at 03:41 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usniper`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhgia`
--

CREATE TABLE `danhgia` (
  `idNguoiDung` int(10) NOT NULL,
  `idQuanAn` int(10) NOT NULL,
  `mucDo` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `danhgia`
--

INSERT INTO `danhgia` (`idNguoiDung`, `idQuanAn`, `mucDo`) VALUES
(1, 2, 4),
(1, 8, 5),
(1, 12, 4),
(10, 8, 4),
(10, 2, 4),
(10, 36, 4),
(7, 8, 5),
(7, 2, 4),
(10, 37, 5),
(7, 12, 5),
(7, 37, 5);

-- --------------------------------------------------------

--
-- Table structure for table `loaiquanan`
--

CREATE TABLE `loaiquanan` (
  `id` int(10) NOT NULL,
  `tenLoai` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `loaiquanan`
--

INSERT INTO `loaiquanan` (`id`, `tenLoai`) VALUES
(1, 'Cơm bình dân'),
(2, 'Do nuong'),
(3, 'Lau '),
(4, 'Cơm gà'),
(5, ''),
(6, '0');

-- --------------------------------------------------------

--
-- Table structure for table `monan`
--

CREATE TABLE `monan` (
  `id` int(20) NOT NULL,
  `tenMonAn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monan`
--

INSERT INTO `monan` (`id`, `tenMonAn`) VALUES
(1, 'gà rừng'),
(2, 'ga nướng'),
(3, 'nướng'),
(4, 'bo thui'),
(5, 'ca hap'),
(6, 'ca chien'),
(7, 'lau nam'),
(8, 'ga bo'),
(9, 'ca ngon'),
(10, 'ga bo xoi'),
(11, 'heo quay'),
(12, 'ca xot me'),
(13, 'ga hap'),
(14, 'lau ga rung'),
(15, 'ga chien'),
(16, 'ca hap'),
(17, 'ca nuong'),
(18, 'lau ga'),
(19, 'bo luc lac'),
(20, 'bo xoi xa'),
(21, 'ga moi'),
(22, 'a'),
(23, 'heo rừng'),
(24, 'cá hấp'),
(25, 'cá hấp 2'),
(26, 'món');

-- --------------------------------------------------------

--
-- Stand-in structure for view `newrts`
-- (See below for the actual view)
--
CREATE TABLE `newrts` (
`id` int(10)
,`tenQuanAn` varchar(50)
,`soNha` int(50)
,`tenDuong` text
,`tenPhuong` text
,`tenQuan` text
,`lng` text
,`lat` text
,`idLoaiQuanAn` int(10)
,`monNoiTieng` varchar(30)
,`moTa` text
,`hinhAnh` text
,`luotTraCuu` int(10)
,`ngayThem` date
,`luotDanhGia` int(11)
,`diemTB` float(10,1)
);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(10) NOT NULL,
  `userName` varchar(75) NOT NULL,
  `pass` text NOT NULL,
  `tenNguoiDung` varchar(50) DEFAULT NULL,
  `soThich` varchar(30) DEFAULT NULL,
  `Quyen` int(10) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `hinhAnh` text,
  `ngayDangKy` date DEFAULT NULL,
  `trangThai` int(1) NOT NULL,
  `ngayBlock` date DEFAULT NULL,
  `rand` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `userName`, `pass`, `tenNguoiDung`, `soThich`, `Quyen`, `Email`, `hinhAnh`, `ngayDangKy`, `trangThai`, `ngayBlock`, `rand`) VALUES
(4, 'luffy', '827ccb0eea8a706c4c34a16891f84e7b', 'Lufy D Monkey', 'mon chien 2dcp', 2, 'fvhsuhuhdc@sdffd.com', 'images/mqavt.jpg', '2016-11-25', 1, NULL, '51329611252531865210721711423114228725418856115233'),
(5, 'franky', '827ccb0eea8a706c4c34a16891f84e7b', 'Franky', 'mon luoc', 1, 'fvhsuhuhdc@sdffd.com', 'images/mqavt.jpg', '2016-11-08', 0, '2017-05-24', ''),
(6, 'ussop', 'fcea920f7412b5da7be0cf42b8c93759', 'Ussop Ling', 'mon nuong', 2, 'fvhsuhuhdc@sdffd.com', 'images/mqavt.jpg', '2016-11-21', 0, '2017-05-31', ''),
(7, 'robin', '4122cb13c7a474c1976c9706ae36521d', 'Nico Robin', 'mon luoc', 3, 'fvhsuhuhdc@sdffd.com', 'robin.png', '2016-11-16', 0, '2017-05-31', ''),
(8, 'sanji', 'e10adc3949ba59abbe56e057f20f883e', 'Sanji', 'mon nuong', 1, 'fvhsuhuhdc@sdffd.com', 'images/mqavt.jpg', '2016-11-22', 0, '2016-12-04', ''),
(9, 'kuma', '827ccb0eea8a706c4c34a16891f84e7b', 'Hentai Kume', 'mon nuong', 2, 'fvhsuhuhdc@sdffd.com', 'zoroavt.jpg', '2016-11-10', 1, NULL, ''),
(10, 'zoro', 'a13f7c0d6fe215d4b8e30a923c4a550a', 'Roronoa Zoro', 'mon hap', 2, 'fvhsuhuhdc@sdffd.com', 'zoroavt.jpg', '2016-11-23', 1, NULL, ''),
(11, 'shanks', '51f6f8fe03a390d3de50ad49913d4b66', 'Gay Shanks', 'mon xao', 1, 'fvhsuhuhdc@sdfd.com', 'images/mqavt.jpg', '2016-11-04', 0, '2016-12-16', ''),
(13, 'lllllll', 'c4ca4238a0b923820dcc509a6f75849b', NULL, NULL, 1, NULL, NULL, NULL, 0, '2016-12-04', ''),
(14, 'khoi', '4a82c6cc2c28c88ab0cf9a78fa284f37', NULL, NULL, 1, NULL, NULL, NULL, 0, '2016-12-04', ''),
(15, 'hhhhh', 'e10adc3949ba59abbe56e057f20f883e', 'aasaa', NULL, 1, NULL, NULL, NULL, 0, '2016-12-04', ''),
(16, 'a', 'c4ca4238a0b923820dcc509a6f75849b', 'default', NULL, 2, NULL, NULL, NULL, 0, '2016-12-13', ''),
(17, 'zoro1', 'c4ca4238a0b923820dcc509a6f75849b', 'default', NULL, 2, NULL, NULL, NULL, 0, '2017-03-14', ''),
(18, 'shank', 'e10adc3949ba59abbe56e057f20f883e', 'default', NULL, 2, NULL, NULL, NULL, 0, '2017-05-31', ''),
(19, 'mihawk', 'e10adc3949ba59abbe56e057f20f883e', 'default', NULL, 2, NULL, NULL, NULL, 0, '2017-05-31', ''),
(22, '<script>alert(\'XSS\')</script>', '827ccb0eea8a706c4c34a16891f84e7b', 'default', NULL, 2, NULL, NULL, NULL, 1, NULL, ''),
(23, 'adminUTE', '04e71eef25629b240136128341f25887', 'default', NULL, 2, NULL, NULL, NULL, 1, NULL, '51329611252531865210721711423114228725418856115233'),
(24, '12345', '07676b60675193f89d75720cbff07694', 'default', NULL, 2, NULL, NULL, NULL, 1, NULL, '513296112525350914028356926052316833968148490183369'),
(25, 'ass', '494b091dc1f2550ce644e847f7cd9f58', 'default', NULL, 2, NULL, NULL, NULL, 1, NULL, '51329611255611536751531123063129641316813984'),
(26, 'test', '827ccb0eea8a706c4c34a16891f84e7b', 'default', 'dealine', 1, NULL, 'deadline.jpg', NULL, 1, NULL, '513296112525341851733492331513296112525341'),
(27, 'myadmin1234', 'e10adc3949ba59abbe56e057f20f883e', 'kuma', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nhanxet`
--

CREATE TABLE `nhanxet` (
  `id` int(10) NOT NULL,
  `noiDung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `idQuanAn` int(10) DEFAULT NULL,
  `idNguoiDung` int(10) DEFAULT NULL,
  `ghiChu` varchar(30) DEFAULT NULL,
  `ngayThem` date NOT NULL,
  `trangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nhanxet`
--

INSERT INTO `nhanxet` (`id`, `noiDung`, `idQuanAn`, `idNguoiDung`, `ghiChu`, `ngayThem`, `trangThai`) VALUES
(1, 'quan an co nhieu mon ngon', 1, 1, 'none', '2016-11-01', 1),
(2, 'quán sạch , đẹp', 2, 1, 'none', '2016-10-03', 1),
(3, 'th?i ?? ph?c v? t?t', 1, 2, 'none', '2016-11-02', 1),
(4, 't?i ??y ?n th?i c?c b?n', 4, 1, 'xao', '2016-11-01', 1),
(7, 'yeah', 9, 3, 'none', '2016-10-02', 1),
(8, ' r?t v?a t?i ti?n sinh vi?n', 7, 6, 'none', '2016-09-04', 1),
(9, 'ngon qu?', 5, 1, 'none', '0000-00-00', 1),
(10, 'b?nh th??ng', 6, 1, 'none', '2016-11-07', 1),
(11, 'quan an co nhieu mon ngon', 1, 1, 'none', '2016-11-09', 1),
(16, 'tôi muốn bình luận cho quán ăn này, bình luận của tôi có thể không hoàn toàn chính xác nhưng nó là một bình luận xuất phát từ việc đọc những bình luận khác của quán ăn. Bình luận của tôi có mục đích là để góp ý các bình luận khác và đồng thời tăng một lượt bình luận của quán ăn', 3, 7, NULL, '2016-11-29', 1),
(17, 'bình luận mới', 3, 7, NULL, '2016-11-29', 0),
(18, 'bình luận mới', 3, 7, NULL, '2016-11-29', 1),
(20, 'nhập thêm bình luận nè', 3, 7, NULL, '2016-11-29', 0),
(21, 'bình luận nè', 2, 7, NULL, '2016-11-29', 0),
(22, 'bình luận nè', 37, 10, NULL, '2016-12-02', 0),
(24, 'nhập thêm cái nữa nè', 3, 7, NULL, '2016-12-02', 0),
(25, 'bình luận nè', 8, 10, NULL, '2016-12-05', 0),
(26, 'fasfs', 37, 7, NULL, '2016-12-06', 0),
(27, 'bình luận mới', 8, 1, NULL, '2017-03-07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `quanan`
--

CREATE TABLE `quanan` (
  `id` int(10) NOT NULL,
  `tenQuanAn` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `soNha` int(50) NOT NULL,
  `tenDuong` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tenPhuong` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tenQuan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `lng` text NOT NULL,
  `lat` text NOT NULL,
  `idLoaiQuanAn` int(10) DEFAULT NULL,
  `monNoiTieng` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `moTa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `hinhAnh` text,
  `luotTraCuu` int(10) DEFAULT NULL,
  `ngayThem` date NOT NULL,
  `luotDanhGia` int(11) DEFAULT NULL,
  `diemTB` float(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quanan`
--

INSERT INTO `quanan` (`id`, `tenQuanAn`, `soNha`, `tenDuong`, `tenPhuong`, `tenQuan`, `lng`, `lat`, `idLoaiQuanAn`, `monNoiTieng`, `moTa`, `hinhAnh`, `luotTraCuu`, `ngayThem`, `luotDanhGia`, `diemTB`) VALUES
(1, 'Ngày Mai', 1, 'Lê Văn Việt', 'Tăng Nhơn Phú A', 'Quận 9', '106.795552', '10.845762', 1, 'Gà hấp bia', 'Quán có nhiều món phù hợp tiêu chí : ngon - bổ - rẻ. Phù hợp với túi tiền sinh viên', 'rts2.jpg', 382, '2016-08-07', 2, 3.0),
(2, '2 Thế Giới', 2, 'Lê Văn Việt ', 'Hiệp Phú', 'Quận 9', '106.775740', '10.847132', 3, 'Cơm gà xối mỡ  20k', 'đặc biệt !!!', 'han1.png', 227, '2016-10-02', 3, 4.0),
(3, 'Lẩu Võ Văn Ngân', 1230, 'Võ Văn Ngân  ', 'Bình Thọ', 'Thủ Đức', '106.768695', '10.849853', 2, 'Lẩu tự chọn 5k', 'Độc - lạ', 'rts1.jpg', 249, '2016-11-07', 2, 4.0),
(4, 'Le Van Kien', 140, 'Võ Văn Ngân    ', 'Bình Thọ', 'Thủ Đức', '106.761411', '10.850390', 4, 'Chân gà nướng', 'Nổi tiếng', 'rts1.jpg', 204, '2016-09-05', 0, NULL),
(5, 'Hoang Duy', 123, '', '', '', '-741', '3221340', 5, 'ga rung', ' quan gan', 'rts1.jpg', 58, '2016-09-04', 0, NULL),
(6, 'Hừng Đông', 21, 'Hoàng Diệu 2    ', 'Linh Chiểu', 'Thủ Đức', '106.771015', '10.854169', 1, 'Buffet hải sản đặc biệt', 'Bình thường', 'rts1.jpg', 68, '2016-10-03', 0, NULL),
(7, 'Ngoai Que', 60, 'Lê Văn Việt', 'Tăng Nhơn Phú A', '', '106.799085', '10.844410', 1, 'ga chien', 'Khong co', 'rts1.jpg', 70, '2016-04-03', 0, NULL),
(8, 'Cơm tấm Thống Nhất', 40, '', '', '', '-1341', '841344', 5, 'ca hap', 'dang sua', 'rts2.jpg', 147, '2016-10-02', 3, 4.7),
(9, '2 Con Bò', 2, 'Lê Văn Chí ', 'Linh Trung', 'Thủ Đức', '106.778094', '10.861352', 5, 'Bít tết bò', 'Vị trí thuận tiện', 'rts3.jpg', 99, '2016-11-01', 0, NULL),
(10, 'Cơm Thống nhất', 34, 'Lê Văn Việt', '', '', '41', '3241340', 6, 'ga hap', ' quan gan', 'rts1.jpg', 200, '2016-09-05', 0, NULL),
(11, 'Quán ăn Test 1', 34, 'Lê Văn Việt', 'Tăng Nhơn Phú A', '', '106.799464', '10.846838', 2, 'ga nuong', 'chua co', 'rts1.jpg', 30, '2016-05-01', 0, NULL),
(12, 'Quán ăn Test 2', 13, 'Lê Văn Việt', 'Tăng Nhơn Phú A', '', '106.789379', '10.843013', 1, 'ga nung', 'quan hap', 'rts1.jpg', 42, '2016-09-04', 2, 4.5),
(13, 'Quán Ăn Test 3', 40, 'Lê Văn Việt', 'Tăng Nhơn Phú A', '', '106.790033', '10.846153', 5, 'ga hap', ' quan xa', 'rts1.jpg', 27, '2016-06-20', 0, NULL),
(14, 'Quán Ăn Test 4', 60, 'Lê Văn Việt', 'Tăng Nhơn Phú A', 'Quận 9', '106.793335', '10.845161', 4, 'ca hap', 'quan gan', 'rts1.jpg', 40, '2016-09-05', 0, NULL),
(31, 'quan an', 1, '1', '1', '1', '106.770832', '10.849781', 2, NULL, 'không có mô tả', 'q3.PNG', NULL, '2016-02-01', 0, NULL),
(36, 'quán ăn 2', 1, 'a', 'a', 'a', '111', '111', 2, NULL, 'không có mô tả', '13.png', NULL, '2016-11-18', 1, 4.0),
(37, 'quán 03', 1, '1', '1', '1', '1', '1', 1, NULL, NULL, 'voz.PNG', NULL, '2015-11-09', 2, 0.0),
(42, 'quán', 1, '1', '1', '1', '1', '1', 1, NULL, NULL, 'qew.PNG', NULL, '2016-03-13', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quanantam`
--

CREATE TABLE `quanantam` (
  `Id` int(10) NOT NULL,
  `tenQuanAn` varchar(30) DEFAULT NULL,
  `diaChi` tinytext,
  `moTa` varchar(50) DEFAULT NULL,
  `hinhAnh` tinytext,
  `monAn` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quanantam`
--

INSERT INTO `quanantam` (`Id`, `tenQuanAn`, `diaChi`, `moTa`, `hinhAnh`, `monAn`) VALUES
(1, 'Huong Hung', '34 Le Li', 'khong co', 'images/rts2.jpg', 'afdssaguuuuuuuus'),
(2, 'Huong Que', '34 Le Loi', 'quan ngon', 'images/rts2.jpg', 'afdssaguuuuuuuus'),
(3, 'Hoang Dieu', '34 Le Lai', 'quan binh thuong', 'images/rts2.jpg', 'afdssaguuuuuuuus'),
(4, 'Huong Qua', '45 Nguyen Trai', 'khong co', 'images/rts2.jpg', 'afdssaguuusaduuuuus'),
(5, 'Nguyen Duy', '12 Lei', 'khong co', 'images/rts2.jpg', 'afdssagccccccccs'),
(6, 'Huong Nam', '30 Hoang Dieu', 'khong sao', 'images/rts2.jpg', 'afdssaguuuuuuuus'),
(7, 'Le Na', '60 Le Li', 'khong ', 'images/rts2.jpg', 'afdssaguuuuuuuus'),
(8, 'aaa', 'aaa', 'aaaa', NULL, 'aaaa');

-- --------------------------------------------------------

--
-- Table structure for table `quanan_monan`
--

CREATE TABLE `quanan_monan` (
  `idQuanAn` int(10) NOT NULL,
  `idMonAn` int(10) NOT NULL,
  `hinhAnh` tinytext,
  `moTa` varchar(20) DEFAULT NULL,
  `giaTien` double(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quanan_monan`
--

INSERT INTO `quanan_monan` (`idQuanAn`, `idMonAn`, `hinhAnh`, `moTa`, `giaTien`) VALUES
(1, 1, 'emotion.PNG', 'dac bie', 1000),
(1, 2, '8 (2).jpg', 'binh thuong', 45000),
(1, 3, 'thi.PNG', 'ngon', 15000),
(1, 4, 'rts2.jpg', 'bo re', 20000),
(1, 6, 'noimagefound.jpg', '1', 1111),
(1, 11, 'noimagefound.jpg', '2', 2),
(1, 12, 'emotion.PNG', '1', 1),
(1, 16, 'hdh.PNG', '1', 1),
(1, 17, 'rts1.jpg', 'khong co', 200000),
(1, 19, 'rts1.jpg', 'do', 20000),
(2, 1, 'rts1.jpg', 'binh', 35000),
(2, 19, 'rts1.jpg', 'binh thuong', 18000),
(3, 1, 'rts1.jpg', 'ngon', 0),
(4, 3, 'rts1.jpg', 'noi tieng', 100000),
(6, 1, 'rts1.jpg', 'dac biet', 1001),
(6, 18, 'rts1.jpg', 'dac biet', 200000),
(7, 2, 'rts1.jpg', 'dac', 0),
(8, 3, 'rts1.jpg', 'do', 0),
(9, 10, 'rts1.jpg', 'dac bie', 0),
(11, 13, 'rts1.jpg', 'binh thuong', 0),
(13, 16, 'rts1.jpg', 'dac biet', 0),
(13, 19, 'rts1.jpg', 'ngon', 0),
(14, 20, 'rts1.jpg', 'do', 0),
(31, 1, 'q6.PNG', '1', 1),
(31, 2, '14886238_871398419664014_1095004201_n.jpg', '1', 1),
(36, 1, '7.png', 'cÃ¡', 2000000),
(36, 22, '2.png', 'cÃ¡ ', 2000000),
(42, 1, 'noimagefound.jpg', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quyen`
--

CREATE TABLE `quyen` (
  `Id` int(20) NOT NULL,
  `tenQuyen` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quyen`
--

INSERT INTO `quyen` (`Id`, `tenQuyen`) VALUES
(1, 'Nguoi dung'),
(2, 'Admin'),
(3, 'Editor');

-- --------------------------------------------------------

--
-- Table structure for table `thongbao`
--

CREATE TABLE `thongbao` (
  `id` int(11) NOT NULL,
  `noiDung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `nguoiGui` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `idNguoiDung` int(11) NOT NULL,
  `trangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thongbao`
--

INSERT INTO `thongbao` (`id`, `noiDung`, `nguoiGui`, `idNguoiDung`, `trangThai`) VALUES
(1, 'Đã xóa bình luận: test dlt . Vì lí do vi phạm tiêu chuẩn cộng đồng', 'Quản trị viên', 7, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `toprts`
-- (See below for the actual view)
--
CREATE TABLE `toprts` (
`id` int(10)
,`tenQuanAn` varchar(50)
,`soNha` int(50)
,`tenDuong` text
,`tenPhuong` text
,`tenQuan` text
,`lng` text
,`lat` text
,`idLoaiQuanAn` int(10)
,`monNoiTieng` varchar(30)
,`moTa` text
,`hinhAnh` text
,`luotTraCuu` int(10)
,`ngayThem` date
,`luotDanhGia` int(11)
,`diemTB` float(10,1)
);

-- --------------------------------------------------------

--
-- Structure for view `newrts`
--
DROP TABLE IF EXISTS `newrts`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `newrts`  AS  select `quanan`.`id` AS `id`,`quanan`.`tenQuanAn` AS `tenQuanAn`,`quanan`.`soNha` AS `soNha`,`quanan`.`tenDuong` AS `tenDuong`,`quanan`.`tenPhuong` AS `tenPhuong`,`quanan`.`tenQuan` AS `tenQuan`,`quanan`.`lng` AS `lng`,`quanan`.`lat` AS `lat`,`quanan`.`idLoaiQuanAn` AS `idLoaiQuanAn`,`quanan`.`monNoiTieng` AS `monNoiTieng`,`quanan`.`moTa` AS `moTa`,`quanan`.`hinhAnh` AS `hinhAnh`,`quanan`.`luotTraCuu` AS `luotTraCuu`,`quanan`.`ngayThem` AS `ngayThem`,`quanan`.`luotDanhGia` AS `luotDanhGia`,`quanan`.`diemTB` AS `diemTB` from `quanan` order by `quanan`.`ngayThem` desc limit 4 ;

-- --------------------------------------------------------

--
-- Structure for view `toprts`
--
DROP TABLE IF EXISTS `toprts`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `toprts`  AS  select `quanan`.`id` AS `id`,`quanan`.`tenQuanAn` AS `tenQuanAn`,`quanan`.`soNha` AS `soNha`,`quanan`.`tenDuong` AS `tenDuong`,`quanan`.`tenPhuong` AS `tenPhuong`,`quanan`.`tenQuan` AS `tenQuan`,`quanan`.`lng` AS `lng`,`quanan`.`lat` AS `lat`,`quanan`.`idLoaiQuanAn` AS `idLoaiQuanAn`,`quanan`.`monNoiTieng` AS `monNoiTieng`,`quanan`.`moTa` AS `moTa`,`quanan`.`hinhAnh` AS `hinhAnh`,`quanan`.`luotTraCuu` AS `luotTraCuu`,`quanan`.`ngayThem` AS `ngayThem`,`quanan`.`luotDanhGia` AS `luotDanhGia`,`quanan`.`diemTB` AS `diemTB` from `quanan` order by `quanan`.`diemTB` desc limit 6 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loaiquanan`
--
ALTER TABLE `loaiquanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monan`
--
ALTER TABLE `monan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Quyen` (`Quyen`);

--
-- Indexes for table `nhanxet`
--
ALTER TABLE `nhanxet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quanan`
--
ALTER TABLE `quanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idLoaiQuanAn` (`idLoaiQuanAn`);

--
-- Indexes for table `quanantam`
--
ALTER TABLE `quanantam`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `quanan_monan`
--
ALTER TABLE `quanan_monan`
  ADD PRIMARY KEY (`idQuanAn`,`idMonAn`),
  ADD KEY `idMonAn` (`idMonAn`);

--
-- Indexes for table `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loaiquanan`
--
ALTER TABLE `loaiquanan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `monan`
--
ALTER TABLE `monan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `nhanxet`
--
ALTER TABLE `nhanxet`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `quanan`
--
ALTER TABLE `quanan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `quanantam`
--
ALTER TABLE `quanantam`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `quyen`
--
ALTER TABLE `quyen`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`Quyen`) REFERENCES `quyen` (`Id`);

--
-- Constraints for table `quanan`
--
ALTER TABLE `quanan`
  ADD CONSTRAINT `quanan_ibfk_1` FOREIGN KEY (`idLoaiQuanAn`) REFERENCES `loaiquanan` (`id`);

--
-- Constraints for table `quanan_monan`
--
ALTER TABLE `quanan_monan`
  ADD CONSTRAINT `quanan_monan_ibfk_1` FOREIGN KEY (`idQuanAn`) REFERENCES `quanan` (`id`),
  ADD CONSTRAINT `quanan_monan_ibfk_2` FOREIGN KEY (`idMonAn`) REFERENCES `monan` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
