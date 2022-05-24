/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 100108
 Source Host           : localhost:3306
 Source Schema         : db_psb

 Target Server Type    : MySQL
 Target Server Version : 100108
 File Encoding         : 65001

 Date: 22/12/2017 19:12:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for calon_siswa
-- ----------------------------
DROP TABLE IF EXISTS `calon_siswa`;
CREATE TABLE `calon_siswa`  (
  `no_pendaftaran` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nisn` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nis_smp` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_lengkap` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jk` enum('Laki-laki','Perempuan') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tempat_lahir` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `id_smp` int(11) NOT NULL,
  `alamat_pribadi` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nilai_bing` double NOT NULL,
  `nilai_bindo` double NOT NULL,
  `nilai_mtk` double NOT NULL,
  `nilai_ipa` double NOT NULL,
  `img_hasilun` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pilih_jurusan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_kontak` int(15) NOT NULL,
  PRIMARY KEY (`no_pendaftaran`) USING BTREE,
  INDEX `id_smp`(`id_smp`) USING BTREE,
  CONSTRAINT `calon_siswa_ibfk_1` FOREIGN KEY (`id_smp`) REFERENCES `datasmp` (`id_smp`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of calon_siswa
-- ----------------------------
INSERT INTO `calon_siswa` VALUES ('PPDB170001', '0011110390', ' ', 'Meista Putri Rahalia', 'Perempuan', 'Bekasi', '2001-12-01', 1, 'Cianjur', 85, 64, 81, 88, ' ', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170002', '0001885009', '', 'TAUFIK KURNIA HIDAYAT', 'Laki-laki', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 81, 98, 51, 50, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170003', '0002150512', '', 'mega fitria', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 50, 56, 90, 81, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170004', '0003916171', '', 'Tiara Istigfari', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 69, 66, 84, 77, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170005', '0016515645', '', 'Ridho sanjaya putra', 'Laki-laki', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 57, 63, 53, 70, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170006', '0014705236', '', 'Aceng Abdurohman', 'Laki-laki', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 53, 55, 56, 59, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170007', '0018078429', '', 'Moch Wildan ferdiansyah s', 'Laki-laki', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 82, 57, 74, 74, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170008', '0017191805', '', 'Neng ruhayati meida', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 52, 96, 71, 85, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170009', '9999410590', '', 'Moch. Taufik Ramdan', 'Laki-laki', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 73, 82, 64, 64, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170010', '0007844100', '', 'Muhamad Ramdani', 'Laki-laki', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 91, 74, 60, 99, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170011', '0020223081', '', 'Suci Mufhni Illahi', 'Perempuan', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 74, 51, 59, 56, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170012', '0016936223', '', 'restu ayunda', 'Perempuan', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 92, 66, 68, 74, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170013', '0021502408', '', 'RaykhaWillies DwiTopan', 'Laki-laki', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 57, 95, 96, 74, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170014', '0007381121', '', 'witi aminah', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 75, 57, 91, 62, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170015', '0011560143', '', 'Mia siti jubaedah', 'Perempuan', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 89, 97, 55, 63, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170016', '0002502491', '', 'Nida Rafa Nabila', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 82, 100, 50, 71, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170017', '0008543882', '', 'Muhammad sipa fauzi', 'Laki-laki', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 88, 58, 100, 96, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170018', '0018156656', '', 'Verdian Julius Tanjung', 'Laki-laki', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 84, 51, 94, 52, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170019', '0015019612', '', 'TARISA MEGARIANTI PUTRI', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 72, 93, 86, 85, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170020', '0000455676', '', 'Ryo Wendy Faturohman', 'Laki-laki', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 82, 62, 75, 72, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170021', '0018391387', '', 'Muhamad Aspah Nurpalah', 'Laki-laki', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 55, 80, 52, 97, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170022', '0031652385', '', 'Meisya Putri Amatul Qudus', 'Perempuan', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 100, 78, 89, 73, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170023', '0027932882', '', 'Amira Zakia Khoerunisa', 'Perempuan', 'Bandung', '2001-12-01', 3, 'Cianjur', 72, 92, 74, 63, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170024', '0027932882', '', 'Amira Zakia Khoerunisa', 'Perempuan', 'Bandung', '2001-12-01', 4, 'Cianjur', 77, 89, 89, 71, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170025', '0001646647', '', 'Wenie Luvita', 'Perempuan', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 78, 70, 63, 52, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170026', '0018372230', '', 'SYFA SILFIANA', 'Perempuan', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 56, 99, 96, 93, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170027', '0019781862', '', 'Muhammad Irfan Asshidiqi', 'Laki-laki', 'Bekasi', '2001-12-01', 7, 'Cianjur', 59, 85, 88, 87, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170028', '0018173520', '', 'Alifia Putri Yudandi', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 69, 81, 88, 61, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170029', '0002083204', '', 'EVI NOVIYANTI', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 92, 66, 87, 63, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170030', '0001862917', '', 'Ai Diani', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 90, 60, 68, 96, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170031', '0011348604', '', 'SUSANTI -', 'Perempuan', 'Sukoharjo', '2001-12-01', 11, 'Cianjur', 50, 52, 94, 62, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170032', '0008271866', '', 'Nabilah Naoval Herdiyanti', 'Perempuan', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 91, 75, 96, 67, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170033', '0018893835', '', 'RHAHILIYYAH HAFZA NISAA', 'Perempuan', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 96, 69, 80, 92, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170034', '0002741427', '', 'ECA ELDYANA PUTRI', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 98, 85, 50, 98, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170035', '0025518505', '', 'ZAHRA DEANNA', 'Perempuan', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 86, 89, 84, 93, '', 'Pemasaran', 263271410);
INSERT INTO `calon_siswa` VALUES ('PPDB170036', '0011543086', '', 'siti solihah', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 77, 82, 79, 84, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170037', '0016996969', '', 'LUTHFIAN THIRDYANTO HADI', 'Laki-laki', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 84, 66, 76, 69, '', 'Rekayasa Perangkat Lunak', 263271410);
INSERT INTO `calon_siswa` VALUES ('PPDB170038', '0003960497', '', 'IHSAN SYAUQI ADN', 'Laki-laki', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 57, 65, 97, 97, '', 'Rekayasa Perangkat Lunak', 263271410);
INSERT INTO `calon_siswa` VALUES ('PPDB170039', '0003905587', '', 'yulia sari', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 77, 81, 75, 99, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170040', '0018373160', '', 'Gery Al-Ghiary', 'Laki-laki', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 66, 53, 67, 66, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170041', '0014790660', '', 'SITI HANIMATU SA\'DIYAH', 'Perempuan', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 60, 75, 74, 55, '', 'Pemasaran', 263271410);
INSERT INTO `calon_siswa` VALUES ('PPDB170042', '0018893824', '', 'MISSAEL ', 'Perempuan', 'PURWAKARTA', '2001-12-01', 2, 'Cianjur', 68, 87, 95, 85, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170043', '0001087859', '', 'BAHTIAR NOOR FUTMADIREDJA', 'Laki-laki', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 55, 86, 59, 53, '', 'Teknik Komputer dan Jaringan', 263271410);
INSERT INTO `calon_siswa` VALUES ('PPDB170044', '0026398421', '', 'NAZLA NURSYIFA WAAFI', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 76, 52, 94, 51, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170045', '0014994455', '', 'Ulfi Nur Afiah Nugraha', 'Perempuan', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 61, 63, 61, 97, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170046', '0001068440', '', 'Asyifa Arsy Astuti', 'Perempuan', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 67, 88, 58, 76, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170047', '0019083842', '', 'Safa Alafinisa', 'Perempuan', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 52, 77, 51, 72, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170048', '0016510573', '', 'putri kencana maya', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 83, 65, 95, 80, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170049', '0017951206', '', 'Lidia Damayanti', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 64, 99, 91, 65, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170050', '0003887543', '', 'Nolis nolis', 'Perempuan', 'Bandung', '2001-12-01', 10, 'Cianjur', 96, 77, 97, 62, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170051', '0003887540', '', 'Muhamad Jaelani', 'Laki-laki', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 79, 72, 56, 74, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170052', '0003887540', '', 'Muhamad Jaelani', 'Laki-laki', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 51, 60, 77, 95, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170053', '0003349572', '', 'Shinta Juantini', 'Perempuan', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 99, 88, 69, 59, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170054', '0002082696', '', 'Hanna Luthfiah fitrianie', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 79, 87, 81, 95, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170055', '0001068442', '', 'lara dara fahrunnissa', 'Perempuan', 'lebak', '2001-12-01', 15, 'Cianjur', 55, 69, 73, 63, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170056', '0003354606', '', 'M. Firman Haqiqi Mauladi', 'Laki-laki', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 97, 73, 99, 62, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170057', '0001065459', '', 'Fitri Fauziah', 'Perempuan', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 89, 84, 100, 51, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170058', '0008795755', '', 'Vivin Annisa Kusnadi', 'Perempuan', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 53, 87, 90, 77, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170059', '0002680650', '', 'Vira Sagita', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 56, 54, 85, 78, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170060', '0002745662', '', 'M. Walya Talaththof', 'Laki-laki', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 100, 61, 55, 65, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170061', '0018033737', '', 'Ani Rohani', 'Perempuan', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 89, 92, 79, 50, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170062', '0018173448', '', 'M Gian Maulana', 'Laki-laki', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 100, 87, 57, 87, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170063', '0001067097', '', 'Aldi Abdul Aziz', 'Laki-laki', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 51, 100, 93, 63, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170064', '0017191949', '', 'Ayu Lestari', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 94, 83, 93, 62, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170065', '0003105432', '', 'salsabila raihani', 'Perempuan', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 75, 62, 60, 85, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170066', '0017296747', '', 'meutia cornelia anggrainy', 'Perempuan', 'Bandung', '2001-12-01', 6, 'Cianjur', 82, 95, 76, 94, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170067', '0010960256', '', 'ryan williardi', 'Laki-laki', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 73, 76, 98, 87, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170068', '0017113661', '', 'nur haliza yusman', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 57, 50, 68, 57, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170069', '0017191269', '', 'Maulidya Assidiq', 'Perempuan', 'Jakarta', '2001-12-01', 9, 'Cianjur', 96, 82, 79, 85, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170070', '0018539442', '', 'nada assyifa', 'Perempuan', 'bogor', '2001-12-01', 10, 'Cianjur', 52, 86, 61, 80, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170071', '000428292_', '', 'MUHAMMAD AKBAR RAMADHAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 78, 68, 97, 79, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170072', '0016513397', '', 'M.Ilham Fajrin', 'Laki-laki', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 55, 82, 56, 57, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170073', '0018520057', '', 'Rahmi Dini Sapira', 'Perempuan', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 51, 97, 50, 72, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170074', '0017177756', '', 'Nurul Luthfia Mulyadi', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 60, 79, 53, 68, '', 'Administrasi Perkantoran', 858613334);
INSERT INTO `calon_siswa` VALUES ('PPDB170075', '13147099__', '', 'SAVINA KUSMAYADI', 'Perempuan', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 51, 67, 52, 64, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170076', '0019299573', '', 'Fadel Muhammad', 'Laki-laki', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 72, 96, 93, 80, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170077', '0017951223', '', 'BAGAS SATYA KUSUMA', 'Laki-laki', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 100, 82, 74, 97, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170078', '0005106986', '', 'Erlin erlina', 'Perempuan', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 84, 88, 91, 52, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170079', '0018078496', '', 'MUHAMMAD IHSAN FAUZI RAHMAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 98, 55, 81, 62, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170080', '0013508453', '', 'Juan Andi Muhammad Yunan', 'Laki-laki', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 85, 85, 94, 67, '', 'Teknik Komputer dan Jaringan', 838);
INSERT INTO `calon_siswa` VALUES ('PPDB170081', '0004322045', '', 'yuni sofia', 'Perempuan', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 93, 89, 64, 60, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170082', '0017976842', '', 'Muhammad Rafi Abdul Aziz', 'Laki-laki', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 100, 60, 89, 54, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170083', '0002904487', '', 'sarra nurjihan', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 96, 52, 53, 54, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170084', '0011347803', '', 'Astri Julia Salsabilay', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 63, 67, 78, 91, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170085', '0081267894', '', 'Indah putri', 'Perempuan', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 98, 61, 55, 67, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170086', '0002899945', '', 'putra agung', 'Laki-laki', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 76, 55, 51, 88, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170087', '0013708215', '', 'SITI NURMALA HABIBAH', 'Perempuan', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 56, 86, 66, 65, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170088', '0007740054', '', 'SHOFI AFIAH KHOERUNNISA', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 66, 56, 90, 53, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170089', '0016978064', '', 'seyra octora anjani', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 51, 89, 96, 69, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170090', '0003044704', '', 'FITRI HANIFAH', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 60, 67, 62, 50, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170091', '0017118110', '', 'CUT ARDA AUDIANA', 'Perempuan', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 87, 80, 54, 67, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170092', '0006006737', '', 'alwi suwandi', 'Laki-laki', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 100, 60, 71, 55, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170093', '0014069021', '', 'IYA NUR AZIJAH', 'Perempuan', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 77, 98, 70, 89, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170094', '0005764627', '', 'RINRIN SULASTRI', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 95, 50, 53, 88, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170095', '9992506278', '', 'moch rifki ramdhani', 'Laki-laki', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 57, 64, 68, 58, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170096', '0009117232', '', 'ELIS SITI SADIAH', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 63, 72, 51, 64, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170097', '0012485567', '', 'NANDIRA AFTI NUROHMAH', 'Perempuan', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 50, 76, 93, 66, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170098', '0016930677', '', 'MIRA -', 'Perempuan', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 84, 97, 71, 62, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170099', '0013539727', '', 'Muhammad Faisal Taqyuddin', 'Laki-laki', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 74, 94, 85, 65, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170100', '0001849506', '', 'NATALIA SUGIHARTO', 'Perempuan', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 59, 71, 77, 52, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170101', '0015601961', '', 'muhammad ridwanulilham', 'Laki-laki', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 95, 67, 55, 93, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170102', '0017976837', '', 'Muhammad Fakih', 'Laki-laki', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 67, 66, 81, 97, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170103', '0016028583', '', 'NANDA NURFITIYANI', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 51, 100, 98, 56, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170104', '0006145084', '', 'Bias Maulana Ahmad', 'Laki-laki', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 61, 100, 89, 94, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170105', '0018235352', '', 'RAHMA SITI FAUZIANA', 'Perempuan', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 72, 72, 69, 64, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170106', '0019522150', '', 'SITI SANIA', 'Perempuan', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 53, 83, 56, 68, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170107', '0014105058', '', 'moch faisal alamsyah', 'Laki-laki', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 74, 91, 87, 88, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170108', '0017118120', '', 'AYU SITI FAUZIAH', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 89, 91, 63, 89, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170109', '0010446613', '', 'Muhamad Rasya', 'Laki-laki', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 76, 93, 57, 60, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170110', '001985230_', '', 'Dandi Andra Muhammad Alfazri', 'Laki-laki', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 62, 72, 52, 77, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170111', '0011506941', '', 'akmal Jihad Fauzan', 'Laki-laki', 'kuningan', '2001-12-01', 11, 'Cianjur', 91, 78, 77, 60, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170112', '0019358791', '', 'FANNY JULIAN KURNIA JAYA YUSUF', 'Perempuan', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 50, 76, 56, 60, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170113', '0016887974', '', 'MILLATUL ALIAH', 'Perempuan', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 65, 67, 78, 65, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170114', '0015101869', '', 'Muhammad Ikhsan Fadillah', 'Laki-laki', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 74, 91, 70, 74, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170115', '0004165598', '', 'Dinar andi fadillah', 'Laki-laki', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 56, 100, 100, 100, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170116', '0005036229', '', 'ERVINA NURUL FITRIANI', 'Perempuan', 'BANDUNG', '2001-12-01', 16, 'Cianjur', 94, 70, 94, 54, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170117', '9998618455', '', 'ari Darmawan', 'Laki-laki', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 67, 53, 69, 63, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170118', '0002243087', '', 'IRPAN HAKIM MAULANA', 'Laki-laki', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 80, 55, 56, 53, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170119', '0002904483', '', 'RISMA NURUL HAMIDAH', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 72, 57, 94, 81, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170120', '0015685558', '', 'TSANA FITRIA ADHA S', 'Perempuan', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 78, 58, 71, 81, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170121', '0016955190', '', 'FARHAN ABDURAHMAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 58, 58, 73, 70, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170122', '0018235304', '', 'SITI AMALIA NURJAMAN', 'Perempuan', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 99, 99, 86, 56, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170123', '0018235344', '', 'MUHAMMAD RIZKI YULIAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 78, 81, 81, 97, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170124', '0004282428', '', 'MUHAMMAD AKBAR RAMADHAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 56, 57, 69, 82, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170125', '0017951228', '', 'DOOHAN JULIAN NUGRAHA', 'Laki-laki', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 50, 89, 84, 57, '', 'Teknik Komputer dan Jaringan', 263271410);
INSERT INTO `calon_siswa` VALUES ('PPDB170126', '0000625379', '', 'MUHAMMAD VIROS RIVALDI', 'Laki-laki', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 72, 54, 97, 60, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170127', '0018373180', '', 'Muhammad Rafli', 'Laki-laki', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 76, 97, 68, 95, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170128', '0004282928', '', 'MUHAMMAD AKBAR RAMADHAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 67, 66, 67, 77, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170129', '0003196917', '', 'Dinar Andi Fadillah', 'Laki-laki', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 63, 57, 66, 80, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170130', '0016172574', '', 'Roro Wulan Latifah', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 60, 96, 57, 62, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170131', '0023100769', '', 'Siti Sarah', 'Perempuan', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 58, 72, 65, 75, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170132', '0018373188', '', 'SHADAM HARIZKY', 'Laki-laki', 'BATAM', '2001-12-01', 12, 'Cianjur', 94, 81, 74, 81, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170133', '0016930565', '', 'Afifah Fitria', 'Perempuan', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 63, 88, 58, 86, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170134', '0001967252', '', 'muhamad Al-farizi fariz', 'Laki-laki', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 94, 95, 94, 86, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170135', '0002243358', '', 'Putri alifia alfajr', 'Perempuan', 'Bandung', '2001-12-01', 15, 'Cianjur', 81, 52, 68, 58, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170136', '0004356677', '', 'Alif Firmansyah', 'Laki-laki', 'Madiun', '2001-12-01', 16, 'Cianjur', 70, 65, 61, 78, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170137', '9995115766', '', 'Anita Maulina Fauzie', 'Perempuan', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 99, 98, 50, 88, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170138', '13147174__', '', 'Arini Pebriyanti', 'Perempuan', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 77, 62, 54, 79, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170139', '0025518508', '', 'SYIFA HASANATUL WARDA', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 78, 60, 87, 93, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170140', '0019470688', '', 'Afrilina Senja Slamet', 'Perempuan', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 66, 86, 82, 87, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170141', '0018071263', '', 'Salsa Yuniarti', 'Perempuan', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 98, 51, 94, 94, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170142', '0003007536', '', 'Erma Merlina', 'Perempuan', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 67, 73, 63, 54, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170143', '0018096139', '', 'Hadi Permana Yusup', 'Laki-laki', 'Bandung', '2001-12-01', 3, 'Cianjur', 85, 85, 67, 59, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170144', '0013497102', '', 'Awanda Oktaviana', 'Perempuan', 'Jakarta', '2001-12-01', 4, 'Cianjur', 82, 77, 88, 91, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170145', '0018356562', '', 'Natasya Amelina', 'Perempuan', 'Lampung', '2001-12-01', 5, 'Cianjur', 75, 51, 72, 79, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170146', '0005107985', '', 'M. Ilham Maulana', 'Laki-laki', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 93, 76, 57, 72, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170147', '0002831717', '', 'Hani Rahmawati', 'Perempuan', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 87, 64, 84, 66, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170148', '0016515626', '', 'MOCH RAFLY AUDREY SENTOSA', 'Laki-laki', 'Bandung', '2001-12-01', 8, 'Cianjur', 53, 57, 75, 58, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170149', '0002909995', '', 'Mala Nur Apipah', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 52, 100, 78, 63, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170150', '0018282617', '', 'Mia Sry Rahayu', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 62, 55, 53, 52, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170151', '0018157519', '', 'Denis Ihsan Rustandi', 'Laki-laki', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 89, 94, 58, 71, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170152', '0002784887', '', 'Elin Rosa Ruslianah', 'Perempuan', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 51, 88, 82, 74, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170153', '0018356568', '', 'Sinta Meida Cahya', 'Perempuan', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 68, 98, 92, 86, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170154', '0004471753', '', 'Salamah Rodiah', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 72, 77, 74, 89, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170155', '0016147312', '', 'Santi Aniisa Fitriani', 'Perempuan', 'Mataram', '2001-12-01', 15, 'Cianjur', 88, 61, 99, 89, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170156', '0018077829', '', 'Vina Novita Anggraeni', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 79, 51, 75, 51, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170157', '0018096329', '', 'Vilda Martiana Ulfa', 'Perempuan', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 78, 86, 90, 78, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170158', '0002745612', '', 'Hanna Fauziah Hamidah', 'Perempuan', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 94, 55, 71, 98, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170159', '0002741456', '', 'Riyan Fadillah Erlangga', 'Laki-laki', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 80, 87, 88, 77, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170160', '0001656225', '', 'Hani Faizatun Nisa', 'Perempuan', 'Majalengka', '2001-12-01', 20, 'Cianjur', 67, 72, 87, 51, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170161', '0015434915', '', 'Shafira Fauziah Hapsari', 'Perempuan', 'Bogor', '2001-12-01', 1, 'Cianjur', 53, 71, 89, 89, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170162', '__________', '', 'Annisa Aulia Zahra', 'Perempuan', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 59, 82, 73, 78, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170163', '0031652373', '', 'Fahda nurul fadilah', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 90, 85, 62, 55, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170164', '0018096146', '', 'Randhika Rizkyaldi', 'Laki-laki', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 54, 75, 96, 77, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170165', '0018096141', '', 'Yoga Septiana', 'Laki-laki', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 65, 72, 78, 93, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170166', '0017191919', '', 'REZA MELDIARASARI', 'Perempuan', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 75, 98, 66, 87, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170167', '0017191919', '', 'REZA MELDIARASARI', 'Perempuan', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 66, 85, 61, 54, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170168', '0005804572', '', 'Sani Yuliani', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 79, 65, 62, 72, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170169', '0018356591', '', 'Mira Amalia', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 67, 75, 98, 95, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170170', '0018356676', '', 'Annisa Nisfianisya', 'Perempuan', 'Sukabumi', '2001-12-01', 10, 'Cianjur', 88, 72, 73, 55, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170171', '0011505502', '', 'BAYU SETIAWAN GUNAWAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 72, 83, 77, 100, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170172', '0005141188', '', 'Riki Ahyar Ansyari', 'Laki-laki', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 86, 88, 51, 78, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170173', '0017191681', '', 'RIFAN FARDIANSYAH', 'Laki-laki', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 78, 58, 99, 60, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170174', '0002243152', '', 'N YAYU YULIANTI', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 70, 71, 54, 90, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170175', '0017191869', '', 'SHAFIRA ANGGRAENI', 'Perempuan', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 74, 74, 63, 76, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170176', '0018373318', '', 'asti yuliani', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 71, 76, 100, 77, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170177', '0001967232', '', 'FIRMANSYAH -', 'Laki-laki', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 67, 70, 68, 91, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170178', '0007786324', '', 'Muhammad Agung Purwanto', 'Laki-laki', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 66, 85, 76, 59, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170179', '0001660689', '', 'fazriana Putri', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 85, 74, 96, 100, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170180', '0018033753', '', 'novi widya ningsih', 'Perempuan', 'Bogor', '2001-12-01', 20, 'Cianjur', 77, 79, 85, 53, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170181', '0015981789', '', 'herma herliana', 'Perempuan', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 52, 57, 69, 70, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170182', '0007058432', '', 'saskia suci paradilah', 'Perempuan', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 97, 95, 66, 57, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170183', '0018078463', '', 'Putri Rahma', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 72, 84, 96, 84, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170184', '9995730618', '', 'widya meilani', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 57, 83, 67, 59, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170185', '0001660631', '', 'shinta ervah', 'Perempuan', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 76, 73, 81, 59, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170186', '0003685733', '', 'Rd. M Rafli Ramadhan', 'Laki-laki', 'bandung', '2001-12-01', 6, 'Cianjur', 59, 65, 91, 81, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170187', '0008663116', '', 'qiami anura', 'Perempuan', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 65, 85, 69, 60, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170188', '0016978061', '', 'nada indrie agustini', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 66, 96, 67, 58, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170189', '0018173534', '', 'nabila siti mujahidati', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 81, 60, 65, 66, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170190', '0018157522', '', 'hibah hasan abdul w a h', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 89, 65, 59, 54, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170191', '0001660632', '', 'shanti ervah F Z', 'Perempuan', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 69, 86, 62, 90, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170192', '0017653553', '', 'dar yulianingsih', 'Perempuan', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 70, 78, 94, 85, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170193', '0018739809', '', 'avitha anindya', 'Perempuan', 'bandung', '2001-12-01', 13, 'Cianjur', 55, 96, 77, 80, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170194', '0008746366', '', 'agista febriyanti', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 93, 97, 56, 83, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170195', '0003362431', '', 'dhia syawal azhar', 'Laki-laki', 'bandung', '2001-12-01', 15, 'Cianjur', 81, 76, 81, 79, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170196', '0016930713', '', 'muhammad zoel satriyo', 'Laki-laki', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 62, 87, 90, 77, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170197', '0002064832', '', 'moch rifaldi', 'Laki-laki', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 54, 64, 98, 78, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170198', '0001660643', '', 'moch teza syah ramadhan', 'Laki-laki', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 86, 65, 59, 71, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170199', '0002102339', '', 'nilam nurhayati', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 54, 82, 87, 94, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170200', '0003349589', '', 'vira sevtiany', 'Perempuan', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 53, 97, 87, 70, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170201', '0018173530', '', 'siti shafia Rasya h', 'Perempuan', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 62, 95, 66, 83, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170202', '0002082673', '', 'firyal fadila', 'Laki-laki', 'bandung', '2001-12-01', 2, 'Cianjur', 70, 66, 63, 66, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170203', '0004304129', '', 'sani wahyuni', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 82, 78, 53, 57, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170204', '0016492216', '', 'muhamad dhaffa reksa putra', 'Laki-laki', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 100, 83, 60, 87, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170205', '0006647798', '', 'aldi satria nugraha', 'Laki-laki', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 67, 100, 80, 83, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170206', '0002741438', '', 'ferdy ferdianto', 'Laki-laki', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 96, 99, 57, 70, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170207', '0016172541', '', 'rafi rizkqi firmansyah', 'Laki-laki', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 70, 70, 66, 81, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170208', '0011461677', '', 'bayu aditias', 'Laki-laki', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 50, 61, 90, 77, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170209', '0017653059', '', 'ellsa aprillia', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 71, 82, 86, 85, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170210', '0002502514', '', 'salsabila endah mareta', 'Perempuan', 'jakarta', '2001-12-01', 10, 'Cianjur', 77, 84, 67, 65, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170211', '0002064831', '', 'NOVELIA DWI RAHAYU', 'Perempuan', 'BANDUNG', '2001-12-01', 11, 'Cianjur', 56, 76, 89, 74, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170212', '0018459702', '', 'naufhal rizky alzura', 'Laki-laki', 'kuningan', '2001-12-01', 12, 'Cianjur', 66, 79, 93, 85, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170213', '0001646641', '', 'm. aulia adi hermanda', 'Laki-laki', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 75, 63, 85, 76, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170214', '9993963147', '', 'Resti Dwi Seftiani', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 84, 71, 79, 61, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170215', '0017138168', '', 'Mohammad Frans Pratama Putra', 'Laki-laki', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 80, 53, 51, 61, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170216', '0018354792', '', 'Hera Yulianti', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 64, 69, 81, 93, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170217', '0016515635', '', 'Rima aprilia', 'Perempuan', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 71, 83, 95, 93, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170218', '0016978401', '', 'Milatina Fauzyah Sutiadi', 'Perempuan', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 77, 75, 72, 96, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170219', '0010245001', '', 'RULI TRIANI', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 73, 85, 93, 100, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170220', '0011587727', '', 'Galuh Saputra Rosana', 'Laki-laki', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 56, 59, 50, 96, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170221', '0001902121', '', 'anggi siti mariam', 'Perempuan', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 89, 76, 85, 98, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170222', '0017976856', '', 'destia nurfitriani', 'Perempuan', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 75, 53, 71, 68, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170223', '0007707054', '', 'MUHAMAD FAHMI SUTISNA', 'Laki-laki', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 53, 74, 85, 56, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170224', '0002502519', '', 'Revansa M Ramdan', 'Laki-laki', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 78, 97, 81, 60, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170225', '0003887521', '', 'RANI RIANTY', 'Perempuan', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 99, 98, 60, 84, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170226', '0002745644', '', 'Silvia Agustina', 'Perempuan', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 96, 50, 98, 94, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170227', '0017653548', '', 'Siti Qorikurniasih', 'Perempuan', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 53, 98, 54, 64, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170228', '0018157521', '', 'Reva Diva Dimas Julian', 'Laki-laki', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 50, 91, 91, 56, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170229', '0002502217', '', 'Muhammad Reza Fauzi Zein', 'Laki-laki', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 80, 62, 77, 90, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170230', '0011348360', '', 'IVA SITI ASMAHAN NAIFAH', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 61, 74, 55, 70, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170231', '0019351580', '', 'Muhammad Raihan Anwar', 'Laki-laki', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 60, 74, 61, 97, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170232', '0017769905', '', 'Raditya Yedi Simaulida', 'Laki-laki', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 63, 67, 89, 87, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170233', '0006923804', '', 'BASAR MAULANA SIDIK', 'Laki-laki', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 52, 72, 56, 95, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170234', '0018157526', '', 'Lucky Anwar', 'Laki-laki', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 89, 61, 66, 68, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170235', '0009823320', '', 'Yosa Sapto Nugroho', 'Laki-laki', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 100, 69, 91, 54, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170236', '0009504397', '', 'Desy Sulastry', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 69, 67, 74, 83, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170237', '0001087840', '', 'Fajar Ramadi', 'Laki-laki', 'Sukabumi', '2001-12-01', 17, 'Cianjur', 50, 57, 64, 59, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170238', '0002784930', '', 'Pradana Adisegara Prakasa', 'Laki-laki', 'serang,banten', '2001-12-01', 18, 'Cianjur', 81, 79, 69, 55, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170239', '0017526446', '', 'SILVIA PATIMAH', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 80, 55, 82, 55, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170240', '0018119611', '', 'M.Iksyal Maulana', 'Laki-laki', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 59, 52, 98, 80, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170241', '0017653545', '', 'Arini Delima Putri', 'Perempuan', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 84, 89, 74, 53, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170242', '0018078495', '', 'sri devi permata sari', 'Perempuan', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 50, 71, 73, 84, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170243', '0012064732', '', 'Nurfathya Eka Putri', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 100, 87, 89, 97, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170244', '0001967244', '', 'NINA HERNAWATI', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 93, 54, 92, 60, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170245', '0009973800', '', 'DELISA RAMDHANIATI ROCHMAT', 'Perempuan', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 61, 80, 92, 84, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170246', '000122862', '', 'IQBAL FIRDAUS', 'Laki-laki', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 52, 55, 55, 90, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170247', '0005404454', '', 'ANNISA AMBARWATI', 'Perempuan', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 90, 57, 79, 55, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170248', '0002904459', '', 'Muhammad Risban Sodik', 'Laki-laki', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 79, 100, 64, 64, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170249', '0004322042', '', 'CINDY AULIA', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 86, 50, 73, 67, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170250', '0019237154', '', 'CINDY AULIA AZZAHRA', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 52, 65, 88, 82, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170251', '0009996894', '', 'LUTHFI FAUZIAH HANIFAH', 'Perempuan', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 92, 92, 97, 95, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170252', '0010366905', '', 'DEVI ERAWATI', 'Perempuan', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 79, 72, 63, 51, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170253', '0011563161', '', 'ROSI TRI WAHYUNI', 'Perempuan', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 95, 97, 67, 79, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170254', '0002243385', '', 'NENDEN SRI WAHYUNI', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 84, 57, 82, 90, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170255', '0001844714', '', 'RIVALDI SULAEMAN YUSUF', 'Laki-laki', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 71, 51, 70, 50, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170256', '141508190', '', 'suci dwi septi atmarani', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 92, 52, 98, 80, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170257', '0016930657', '', 'muhammad athar gumelar', 'Laki-laki', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 64, 84, 74, 56, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170258', '9992628905', '', 'Dede Rusmana', 'Laki-laki', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 97, 85, 83, 51, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170259', '0016155612', '', 'Hana Yulianita', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 71, 96, 66, 89, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170260', '0018173517', '', 'jhohan ariyanto', 'Laki-laki', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 53, 94, 56, 63, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170261', '0018173507', '', 'kant wibowo tantru', 'Laki-laki', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 88, 96, 94, 86, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170262', '0002889904', '', 'kania tasya asafa', 'Perempuan', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 69, 75, 85, 51, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170263', '0015465124', '', 'ricky ilham januari', 'Laki-laki', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 75, 58, 80, 62, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170264', '0001086984', '', 'putri solihat', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 59, 67, 76, 72, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170265', '0002041431', '', 'noviyanti johan', 'Perempuan', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 97, 69, 83, 96, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170266', '0014702369', '', 'windi mayzarni putri', 'Perempuan', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 78, 53, 88, 60, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170267', '0018096341', '', 'sri wahyuni ependi', 'Perempuan', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 57, 95, 69, 95, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170268', '0001087079', '', 'zahra nur shafira', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 59, 61, 52, 84, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170269', '0003888304', '', 'Neng Ceni', 'Perempuan', 'Bandung', '2001-12-01', 9, 'Cianjur', 68, 99, 97, 68, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170270', '0002768625', '', 'novika herliani', 'Perempuan', 'depok', '2001-12-01', 10, 'Cianjur', 91, 85, 98, 73, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170271', '0015019291', '', 'kulsum misnawati', 'Perempuan', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 94, 93, 73, 57, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170272', '0007249027', '', 'desy al vira', 'Perempuan', 'bandung', '2001-12-01', 12, 'Cianjur', 96, 95, 87, 92, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170273', '0004045824', '', 'muhammad agung darisman', 'Laki-laki', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 67, 61, 52, 88, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170274', '0003515991', '', 'muhammad fikri nurwan hakiki', 'Laki-laki', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 100, 53, 93, 89, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170275', '0002781953', '', 'tediansyah .', 'Laki-laki', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 55, 91, 75, 88, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170276', '0016955166', '', 'putri andiani maylani yusup', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 60, 92, 59, 63, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170277', '0018578455', '', 'lestari sri wahyuni', 'Perempuan', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 52, 90, 67, 96, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170278', '0001827511', '', 'Natasya Putri Nur Alamsyah', 'Perempuan', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 96, 86, 65, 96, '', 'Administrasi Perkantoran', 838);
INSERT INTO `calon_siswa` VALUES ('PPDB170279', '0013179850', '', 'Putri permatasari solihatul qolbiah', 'Perempuan', 'Cirebon', '2001-12-01', 19, 'Cianjur', 62, 59, 61, 81, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170280', '0076532987', '', 'Ismail Ismail', 'Laki-laki', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 54, 64, 93, 66, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170281', '0026807207', '', 'Fitri Handayani', 'Perempuan', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 100, 94, 74, 53, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170282', '0016817166', '', 'Nisa Sepiana Brilianti', 'Perempuan', 'Bandung', '2001-12-01', 2, 'Cianjur', 95, 56, 73, 55, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170283', '0002243261', '', 'RISKA -', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 88, 51, 62, 70, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170284', '0004322038', '', 'IMAM TURMUDZI', 'Laki-laki', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 95, 63, 61, 91, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170285', '0003256669', '', 'NURINDAH AWALIAH', 'Perempuan', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 51, 68, 66, 78, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170286', '0025518507', '', 'Muhammad Rizwan Fadillah', 'Laki-laki', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 54, 100, 69, 68, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170287', '0016894005', '', 'muhammad ali maulana', 'Laki-laki', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 60, 95, 99, 51, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170288', '0011242789', '', 'SYAKILLA SALSABILA', 'Perempuan', 'BANDUNG', '2001-12-01', 8, 'Cianjur', 73, 83, 93, 79, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170289', '0002243474', '', 'Siti Ai Kulsum', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 99, 83, 99, 62, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170290', '0016514511', '', 'ELVIN EFFENDI', 'Laki-laki', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 94, 85, 62, 57, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170291', '0011262139', '', 'Neng Siti Masitoh', 'Perempuan', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 80, 76, 57, 93, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170292', '0011563165', '', 'NENG RIZKA JULIANTI', 'Perempuan', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 54, 86, 100, 57, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170293', '0003349592', '', 'nazia rahmania asba', 'Perempuan', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 63, 60, 55, 65, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170294', '0015282942', '', 'YUNI SARTIKA', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 50, 88, 78, 90, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170295', '0018386440', '', 'NABILA FIRDAYANTI PUTRI', 'Perempuan', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 95, 56, 93, 54, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170296', '0002243013', '', 'YULIA NADIAH', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 56, 80, 86, 93, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170297', '0002242789', '', 'LIA MARLIYANI', 'Perempuan', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 82, 60, 87, 56, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170298', '0018096228', '', 'siti hanifah', 'Perempuan', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 96, 68, 100, 73, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170299', '0018157517', '', 'Fetri Siti Patonah', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 82, 55, 90, 63, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170300', '0002242792', '', 'RIAN KURNIAWAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 62, 78, 85, 57, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170301', '0002243397', '', 'CECEP MUHAMAD NURJAMAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 53, 95, 78, 93, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170302', '9992628908', '', 'HANI SRI HANDRIANI', 'Perempuan', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 78, 89, 55, 68, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170303', '0018173445', '', 'Neng Tiara Lutfiany', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 54, 62, 91, 91, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170304', '0009299874', '', 'TIA ALVIONITA', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 81, 64, 96, 94, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170305', '0018903909', '', 'Mutiya Agustin', 'Perempuan', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 67, 50, 89, 50, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170306', '0016155607', '', 'Bella Belinda', 'Perempuan', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 87, 76, 57, 82, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170307', '0018078521', '', 'Ryan juerdan', 'Laki-laki', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 68, 60, 73, 62, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170308', '0014962466', '', 'R Firli Rahmat Talilalamin Firli Rahmat', 'Laki-laki', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 66, 91, 97, 59, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170309', '0008966883', '', 'Rian Ariandi', 'Laki-laki', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 98, 90, 52, 93, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170310', '0001249252', '', 'Anisa pratiwi awaliah', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 77, 75, 80, 65, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170311', '0019356479', '', 'DEWI RISMAWATI', 'Perempuan', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 90, 95, 58, 58, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170312', '0016930700', '', 'arini pebriyanti', 'Perempuan', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 96, 94, 96, 71, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170313', '0015153175', '', 'Angga prayoga', 'Laki-laki', 'jakarta', '2001-12-01', 13, 'Cianjur', 73, 87, 82, 70, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170314', '9984673524', '', 'Bashir udin', 'Laki-laki', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 89, 100, 86, 94, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170315', '0002886756', '', 'REQSAL FAJRIEL MAULIDAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 83, 85, 85, 60, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170316', '0014974128', '', 'M HAIKAL AZHAR', 'Laki-laki', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 61, 92, 65, 74, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170317', '0002243363', '', 'M.Taufik Rhamadan', 'Laki-laki', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 75, 100, 94, 80, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170318', '0016978052', '', 'Yafi Abyan Falah Gamtina', 'Laki-laki', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 94, 95, 65, 88, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170319', '0004186788', '', 'Tyara Passya', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 51, 96, 90, 92, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170320', '0016513049', '', 'MUHAMAD ARIEF MI\'RAJ', 'Laki-laki', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 91, 51, 79, 91, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170321', '0001087043', '', 'KUSNADI KUSNADI', 'Perempuan', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 76, 59, 71, 74, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170322', '0003888334', '', 'delia destiani', 'Perempuan', 'depok', '2001-12-01', 2, 'Cianjur', 93, 71, 95, 90, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170323', '0011971604', '', 'Khoirul Insan', 'Laki-laki', 'Bandung', '2001-12-01', 3, 'Cianjur', 91, 63, 82, 65, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170324', '0016575276', '', 'Delisya Adisty Rumayzha', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 59, 81, 99, 71, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170325', '0015383192', '', 'sri astriana nur anisa', 'Perempuan', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 93, 76, 78, 87, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170326', '0002680638', '', 'adinda fajrie maulidya', 'Perempuan', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 92, 65, 71, 60, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170327', '0001862933', '', 'Moh Rian Gunawan', 'Laki-laki', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 73, 95, 71, 87, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170328', '0016996954', '', 'yuliani siti pauziah', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 70, 52, 57, 65, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170329', '0002840616', '', 'putri ayuni', 'Perempuan', 'brebes', '2001-12-01', 9, 'Cianjur', 57, 58, 64, 78, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170330', '0003888308', '', 'nurfina aini', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 96, 91, 62, 60, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170331', '0018372237', '', 'Raihan Muhamad raihan', 'Laki-laki', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 84, 55, 85, 99, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170332', '0018358086', '', 'Muhamad Luthfi Assidiq', 'Laki-laki', 'Sumedang', '2001-12-01', 12, 'Cianjur', 99, 88, 77, 58, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170333', '9994514649', '', 'Muhamad Jaelani', 'Laki-laki', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 78, 99, 98, 68, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170334', '9994514649', '', 'Muhamad Jaelani', 'Laki-laki', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 59, 53, 94, 89, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170335', '0016352383', '', 'Selfi Yulianti', 'Perempuan', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 96, 94, 79, 95, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170336', '0015030353', '', 'maya pebriyanti', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 67, 52, 95, 60, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170337', '0007142713', '', 'williana akbar budiawan', 'Laki-laki', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 64, 54, 53, 65, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170338', '0013516527', '', 'Ririn tri wahyuni', 'Perempuan', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 63, 64, 83, 81, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170339', '0002745681', '', 'sulistyo .', 'Laki-laki', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 51, 89, 94, 79, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170340', '0011383763', '', 'deanisa novianti', 'Perempuan', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 100, 63, 88, 56, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170341', '0018373199', '', 'dea sucinismaya', 'Perempuan', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 74, 74, 71, 62, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170342', '0002502509', '', 'danisa ayuningtiyas pratiwi', 'Perempuan', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 78, 54, 81, 71, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170343', '0015030372', '', 'Virgian Panca Pikli', 'Laki-laki', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 84, 90, 91, 52, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170344', '0008088512', '', 'putri Febrianti', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 62, 63, 73, 63, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170345', '0015004208', '', 'Annita Febrianti', 'Perempuan', 'Bandung', '2001-12-01', 5, 'Cianjur', 70, 53, 76, 56, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170346', '0004045828', '', 'Sri rohayani', 'Perempuan', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 86, 81, 70, 63, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170347', '0011365598', '', 'ADI SUBAGJA', 'Laki-laki', 'BUKIT MURAU', '2001-12-01', 7, 'Cianjur', 84, 72, 70, 98, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170348', '0002741437', '', 'indi inayah awaliyah putri', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 67, 59, 97, 67, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170349', '0004186764', '', 'alya rahma mutia', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 79, 71, 62, 86, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170350', '0012680114', '', 'Endang Hardiyanti Rohaya', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 90, 59, 89, 80, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170351', '0002903971', '', 'selly febrian agustin', 'Perempuan', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 83, 52, 79, 66, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170352', '0001087851', '', 'Moch. Rexcel Ariva Rais', 'Laki-laki', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 68, 79, 54, 92, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170353', '0018372229', '', 'Aldy Raihan Firmansyah', 'Laki-laki', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 91, 54, 55, 52, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170354', '0003349580', '', 'Robby rahmawan', 'Laki-laki', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 98, 73, 93, 99, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170355', '0001967228', '', 'MUHAMMAD RIZKY RAHMATULLOH', 'Laki-laki', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 88, 93, 71, 62, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170356', '0018459127', '', 'DAFA RAHMATULLAH', 'Laki-laki', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 53, 94, 93, 86, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170357', '0002745566', '', 'AGUNG GUMILAR', 'Laki-laki', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 57, 88, 73, 71, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170358', '0011563128', '', 'REYNALDI YANUAR SETIADI', 'Laki-laki', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 85, 80, 78, 89, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170359', '0018096327', '', 'ELGARD GRANADA TRIA', 'Laki-laki', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 87, 97, 68, 74, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170360', '0016172639', '', 'AMELIA PUTRI', 'Perempuan', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 71, 72, 68, 86, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170361', '0002802488', '', 'RAMDAN -', 'Laki-laki', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 64, 98, 79, 96, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170362', '0019350396', '', 'fajri adha al-farizi', 'Laki-laki', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 84, 54, 69, 55, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170363', '0004108216', '', 'SINTIA -', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 53, 63, 99, 77, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170364', '0004309931', '', 'YULIANTI -', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 71, 83, 97, 62, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170365', '0011563140', '', 'IIR SUTIRA', 'Perempuan', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 97, 50, 55, 63, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170366', '0011520142', '', 'LUTHFAN RADIPAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 56, 90, 83, 97, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170367', '0016759384', '', 'SYFA NUR AZIZAH RAHMAWATI', 'Perempuan', 'SURABAYA', '2001-12-01', 7, 'Cianjur', 52, 74, 63, 96, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170368', '0019838034', '', 'NYI CUCU SITI AMINAH N.B', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 68, 62, 65, 85, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170369', '0019149750', '', 'Irna wati', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 78, 64, 90, 98, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170370', '0016515550', '', 'RISNAWATI -', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 88, 54, 66, 94, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170371', '0013299872', '', 'Muhamad Sanfar Widi Iskandar', 'Laki-laki', 'Ciamis', '2001-12-01', 11, 'Cianjur', 85, 91, 57, 85, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170372', '0001967236', '', 'MUHAMAD RIZKY HIDAYATULLAH', 'Laki-laki', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 88, 64, 85, 86, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170373', '0019282225', '', 'H. Novi Al Muhlis', 'Perempuan', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 70, 79, 63, 53, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170374', '0017177722', '', 'RESTU HANANSYAH', 'Laki-laki', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 91, 90, 84, 79, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170375', '0001863937', '', 'Nita Amelia Rosita', 'Perempuan', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 82, 50, 91, 56, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170376', '0016759368', '', 'MUHAMAD ILHAM SAPUTRA', 'Laki-laki', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 96, 74, 89, 55, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170377', '0001983341', '', 'Windi Oktaviani', 'Perempuan', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 73, 95, 87, 97, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170378', '0013387032', '', 'MALDANIA SUNDARI DEWI', 'Perempuan', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 60, 60, 84, 92, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170379', '0016515641', '', 'Nuri Nurliana', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 67, 75, 91, 99, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170380', '0004321488', '', 'Asri Aprilia', 'Perempuan', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 76, 50, 52, 69, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170381', '0017138167', '', 'Denis Ispin Afrida', 'Perempuan', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 61, 65, 84, 77, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170382', '0003200572', '', 'Dea Octa Wulandari', 'Perempuan', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 78, 92, 87, 75, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170383', '0004047574', '', 'FRISKA SANTIKA', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 82, 67, 61, 77, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170384', '131407230', '', 'AYU ANTIKA', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 84, 76, 79, 71, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170385', '0011458516', '', 'SAHRA AZIRA', 'Perempuan', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 96, 79, 82, 92, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170386', '0001861817', '', 'HELSA NURHALIZA', 'Perempuan', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 91, 54, 53, 97, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170387', '0016443912', '', 'Siti Andriani', 'Perempuan', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 89, 96, 52, 52, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170388', '0001967250', '', 'Muhammad As\'adu Rafi', 'Laki-laki', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 92, 67, 51, 74, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170389', '0010981582', '', 'Angga Maulana', 'Laki-laki', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 78, 85, 71, 96, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170390', '0015522394', '', 'Muhammad Arkaan Malikul Mulki', 'Laki-laki', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 66, 74, 85, 79, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170391', '0002064658', '', 'DERI SOPANDI', 'Laki-laki', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 100, 83, 55, 95, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170392', '9123456789', '', 'vina siti nuraliah', 'Perempuan', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 92, 53, 61, 88, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170393', '0001086965', '', 'PANJI SAPUTRA', 'Laki-laki', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 61, 86, 97, 84, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170394', '0001086715', '', 'DELA JUNITA ALIVAN', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 89, 61, 78, 93, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170395', '0012356602', '', 'SUKMA SAFITRI', 'Perempuan', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 81, 91, 67, 82, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170396', '0001247984', '', 'APRILIA APRILIA', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 55, 75, 88, 86, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170397', '0004105513', '', 'Agus Setiawan', 'Laki-laki', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 97, 98, 60, 81, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170398', '0008603318', '', 'MUHAMMAD ARIA MUKTADIR', 'Laki-laki', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 81, 64, 73, 68, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170399', '0001884997', '', 'SYAHRIEL PRIYATNA', 'Laki-laki', 'CIBEBER', '2001-12-01', 19, 'Cianjur', 82, 97, 85, 60, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170400', '0018578799', '', 'Chantika Destriyanti', 'Perempuan', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 80, 55, 66, 79, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170401', '0009829627', '', 'ayu putri lestari', 'Perempuan', 'sukabumi', '2001-12-01', 1, 'Cianjur', 57, 78, 69, 62, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170402', '0016930562', '', 'Alwi Hasan Alhamid', 'Laki-laki', 'Jakarta', '2001-12-01', 2, 'Cianjur', 95, 98, 91, 71, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170403', '0019277837', '', 'sandi setiawan', 'Laki-laki', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 74, 78, 73, 87, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170404', '0016978047', '', 'ERINA PUTRI PRATIWY', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 66, 82, 89, 58, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170405', '0002680647', '', 'MOCH FARHAN WIJAYA', 'Laki-laki', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 57, 94, 93, 66, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170406', '0018356636', '', 'Salsabilla Nurunnisa Alifah', 'Perempuan', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 68, 71, 71, 60, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170407', '0001086673', '', 'LIA SANTRIANI', 'Perempuan', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 96, 51, 56, 96, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170408', '0018077815', '', 'firman a. sulaiman', 'Laki-laki', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 98, 98, 65, 68, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170409', '0018173512', '', 'RAKEEN ARIA SETA WIJAYA', 'Laki-laki', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 92, 71, 84, 80, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170410', '0017951219', '', 'Annisa Fitriyani', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 91, 52, 96, 81, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170411', '0001087751', '', 'agung sutiaman', 'Laki-laki', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 71, 70, 76, 77, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170412', '0015030174', '', 'aceng ikbal nawawi', 'Laki-laki', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 83, 91, 53, 64, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170413', '0015019381', '', 'MUHAMMAD INDRA ANDIYANA', 'Laki-laki', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 57, 66, 82, 94, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170414', '0002764394', '', 'AHMAD ZAKI', 'Laki-laki', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 59, 77, 56, 56, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170415', '0001206866', '', 'm. sachrul nasrulloh', 'Laki-laki', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 58, 58, 60, 59, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170416', '0018739804', '', 'ELSA ADETIA', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 54, 87, 76, 100, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170417', '0018194428', '', 'della puspita anggraini', 'Perempuan', 'bekasi', '2001-12-01', 17, 'Cianjur', 79, 85, 57, 58, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170418', '003525925', '', 'salna juniarti', 'Perempuan', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 86, 88, 67, 57, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170419', '0002143623', '', 'RIFQIL AIDI', 'Laki-laki', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 80, 82, 90, 68, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170420', '0015019330', '', 'DHEA FEBRISA', 'Perempuan', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 66, 82, 79, 86, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170421', '0012663024', '', 'RIFQI RAMDANI', 'Laki-laki', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 99, 68, 55, 77, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170422', '0017844274', '', 'syifa hasanatul warda warda', 'Perempuan', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 98, 75, 92, 84, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170423', '004284628', '', 'luthfi rahmawati fitri', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 55, 55, 70, 57, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170424', '0001086714', '', 'SILVI AYUNDA DWI PERMANA', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 54, 90, 96, 86, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170425', '0011047536', '', 'Wilzan Vhio Anggara', 'Laki-laki', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 57, 55, 76, 58, '', 'Teknik Komputer dan Jaringan', 838173361);
INSERT INTO `calon_siswa` VALUES ('PPDB170426', '0019101006', '', 'DIANA ANISA YULIANI', 'Perempuan', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 94, 70, 90, 57, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170427', '0018157506', '', 'muhammad ridwan', 'Laki-laki', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 68, 66, 59, 64, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170428', '0001086679', '', 'ENDAH OKTAVIANI PUTRI', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 99, 54, 51, 54, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170429', '0020998928', '', 'anisa indawati abdi', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 75, 97, 78, 59, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170430', '0003888315', '', 'Yogi Muhammad Fauzi', 'Laki-laki', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 72, 88, 69, 90, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170431', '0018078464', '', 'RESNITA FEBRIANTI', 'Perempuan', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 77, 53, 51, 94, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170432', '0002680639', '', 'VERINNA NOOR RIZKY APANDI', 'Perempuan', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 81, 67, 90, 89, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170433', '0011900930', '', 'MOCH NURUL KAFI', 'Laki-laki', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 88, 50, 85, 87, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170434', '0001087834', '', 'GINA AGISTINA', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 53, 64, 52, 61, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170435', '0018739769', '', 'WANDA AULIA', 'Perempuan', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 93, 76, 55, 81, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170436', '0002745567', '', 'AAM ABDUL AZIS MUSLIM', 'Laki-laki', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 72, 80, 82, 61, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170437', '0018096240', '', 'DIMAS PUJA SAGARA', 'Laki-laki', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 84, 50, 63, 60, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170438', '0001086959', '', 'RIAN ARZIALRUSMANA', 'Laki-laki', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 70, 70, 91, 88, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170439', '0011181969', '', 'febri puspita ayu dinda', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 80, 65, 100, 51, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170440', '0002903989', '', 'NURUL UNZILLA', 'Perempuan', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 51, 61, 55, 79, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170441', '0018078513', '', 'IRA ASRIANTI', 'Perempuan', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 77, 84, 99, 53, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170442', '0017916140', '', 'LULU FAUZIA NURLATIFAH', 'Perempuan', 'SUKABUMI', '2001-12-01', 2, 'Cianjur', 85, 59, 71, 75, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170443', '0018459141', '', 'SRI MAULIDA WAHYUNI PRATININGRUM', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 98, 94, 79, 91, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170444', '0002903984', '', 'ROBBY IKHSAN FIRMANSYAH', 'Laki-laki', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 80, 95, 69, 94, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170445', '0015030369', '', 'AZZAH MILADIA', 'Perempuan', 'TEGAL', '2001-12-01', 5, 'Cianjur', 98, 56, 69, 82, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170446', '0002903977', '', 'elsa rahmayandi elfitri', 'Perempuan', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 59, 61, 86, 95, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170447', '0001086807', '', 'SITI HOERUNNISA', 'Perempuan', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 62, 75, 74, 59, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170448', '0002243265', '', 'HANI SRI RAHAYU', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 95, 50, 56, 54, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170449', '0018156650', '', 'FEBRIANTI PUTRI', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 58, 58, 90, 51, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170450', '0015019339', '', 'WILDA SEPTIAWATI', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 72, 61, 75, 68, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170451', '0018096234', '', 'HASNA FATHIYA', 'Perempuan', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 77, 95, 84, 75, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170452', '0002784926', '', 'muhammad azmi sobrun jamil', 'Laki-laki', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 98, 69, 90, 93, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170453', '0001086568', '', 'SITI FITRIA', 'Perempuan', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 84, 74, 79, 50, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170454', '0002200500', '', 'Muhammad Alief Marshall Putra Sugiharto', 'Laki-laki', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 72, 62, 55, 70, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170455', '0001863945', '', 'ghina dhiyafitria', 'Perempuan', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 79, 50, 54, 82, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170456', '0016172620', '', 'puji siti nuraeni', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 95, 97, 56, 72, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170457', '0018356630', '', 'NAZLA SITI SYAWALIAH', 'Perempuan', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 50, 64, 94, 64, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170458', '0018356675', '', 'siti nur fauziah', 'Perempuan', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 71, 93, 64, 58, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170459', '0014821254', '', 'vina siti nuraliah', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 78, 98, 95, 57, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170460', '0018078443', '', 'ratu aulia mauludini', 'Perempuan', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 80, 50, 59, 88, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170461', '0016172575', '', 'ISNY HANIFI DINIAR', 'Perempuan', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 55, 89, 98, 96, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170462', '0004045842', '', 'sani oktapiani', 'Perempuan', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 53, 76, 89, 69, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170463', '0016172547', '', 'SALMA NADIRA LESTARI', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 64, 71, 68, 50, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170464', 'OO05069843', '', 'ENCEP JAMALUDIN NUGRAHA', 'Laki-laki', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 52, 99, 78, 65, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170465', '0015149538', '', 'MUHAMAD SHAFA SHATA FARDLURAHMAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 82, 96, 75, 98, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170466', '0016759364', '', 'AMIRA FEBRIANTI', 'Perempuan', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 77, 70, 88, 60, '', 'Akuntansi', 857000250);
INSERT INTO `calon_siswa` VALUES ('PPDB170467', '0012280200', '', 'muhamad ardiansyah', 'Laki-laki', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 93, 83, 71, 80, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170468', '0016514950', '', 'sabrina pratiwi', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 95, 87, 92, 65, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170469', '0001087838', '', 'KARIN MAULIA SULAEMAN', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 87, 98, 63, 95, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170470', '0015019285', '', 'DELA ADELIA AGUSTINA', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 80, 90, 92, 82, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170471', '0005451010', '', 'HILMAN HABYWANSYAH', 'Laki-laki', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 56, 59, 61, 66, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170472', '0016172651', '', 'INDRA KURNIA PRASTCYA', 'Laki-laki', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 74, 61, 82, 60, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170473', '0003149697', '', 'Yasmin Nurul Annisa', 'Perempuan', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 93, 87, 61, 59, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170474', '0018372218', '', 'SITI NURAENI', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 62, 63, 80, 90, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170475', '0014848718', '', 'rismayanti -', 'Perempuan', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 98, 85, 51, 67, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170476', '0018356637', '', 'fahma nurul kautsar', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 76, 98, 94, 56, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170477', '0001502594', '', 'Peti Pratiwi', 'Perempuan', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 83, 52, 83, 61, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170478', '0016172630', '', 'ELZA RYANI PRATAMA', 'Perempuan', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 73, 100, 74, 92, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170479', '0002102342', '', 'setianingsih setianingsih', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 61, 58, 78, 70, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170480', '0018539407', '', 'akmalia .', 'Perempuan', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 53, 92, 58, 61, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170481', '0011587684', '', 'MOCH AKSAN JANUAR', 'Laki-laki', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 80, 71, 95, 90, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170482', '0019082235', '', 'Rima Aprillia', 'Perempuan', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 67, 78, 77, 59, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170483', '0018096320', '', 'Dita Febianty Roniawan', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 89, 70, 93, 65, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170484', '0001502551', '', 'Dewi Nur Aprilianti', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 93, 82, 78, 89, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170485', '0028720890', '', 'SITI SRI NASIFA', 'Perempuan', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 65, 57, 89, 60, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170486', '0002242980', '', 'IBNU PANGESTU', 'Laki-laki', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 69, 70, 88, 63, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170487', '0017951216', '', 'Nissa Siti Azzahra', 'Perempuan', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 59, 79, 77, 70, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170488', '0002741396', '', 'Syahwana Nur Reza', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 98, 83, 71, 56, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170489', '0016955086', '', 'herna marliana', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 86, 64, 51, 67, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170490', '0002660975', '', 'Alma Nur Okta Delfina', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 53, 89, 97, 50, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170491', '0016510644', '', 'CECEP JAMALUDIN PASSA', 'Laki-laki', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 83, 69, 87, 100, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170492', '0011401015', '', 'M. AMIR AL MIQDAD', 'Laki-laki', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 72, 53, 92, 70, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170493', '0012660969', '', 'Ahmad Naufal Ghifari', 'Laki-laki', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 89, 74, 70, 91, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170494', '0013393178', '', 'HESTY FERA AULIA', 'Perempuan', 'TANGGERANG', '2001-12-01', 14, 'Cianjur', 81, 81, 97, 94, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170495', '0018687998', '', 'LINA OKTAVIANI', 'Perempuan', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 80, 89, 72, 69, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170496', '0016759362', '', 'MUHAMAD LUTFI FAUZI', 'Laki-laki', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 83, 75, 82, 96, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170497', '0018459014', '', 'NURUL RAMADINA', 'Perempuan', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 59, 67, 100, 68, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170498', '0015333562', '', 'Sopiyudin Kamil', 'Laki-laki', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 98, 82, 100, 57, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170499', '0001087857', '', 'fitri fitria anugrah', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 99, 67, 88, 82, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170500', '0002784938', '', 'NOVITA SARI', 'Perempuan', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 64, 60, 71, 77, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170501', '0002741389', '', 'fani nurlita', 'Perempuan', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 88, 87, 98, 59, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170502', '0002762085', '', 'deva nurfauziah', 'Perempuan', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 92, 88, 87, 93, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170503', '0015030200', '', 'julianisa zaen', 'Perempuan', 'purbalingga', '2001-12-01', 3, 'Cianjur', 94, 67, 75, 86, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170504', '0018078431', '', 'nuriah aprliani', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 78, 84, 100, 56, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170505', '0015030488', '', 'm. ihsan anwari', 'Laki-laki', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 95, 93, 94, 72, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170506', '0018033755', '', 'moh akbar karim', 'Laki-laki', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 98, 90, 79, 82, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170507', '0002745606', '', 'riska amalia hakim', 'Laki-laki', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 73, 90, 83, 50, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170508', '0004394124', '', 'hafidz rafli', 'Laki-laki', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 58, 99, 96, 82, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170509', '0018173494', '', 'shabrina hza salma', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 90, 84, 84, 98, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170510', '9994777306', '', 'Muhamad Ferdi Ramadhan', 'Laki-laki', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 69, 95, 54, 63, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170511', '0003142176', '', 'Muhammad farhan', 'Laki-laki', 'Sukabumi', '2001-12-01', 11, 'Cianjur', 73, 62, 50, 88, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170512', '0004852390', '', 'SAM SIAH', 'Perempuan', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 96, 83, 98, 62, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170513', '0016138440', '', 'MUHAMAD RIZAL FAUZI MAULANA MUHAMAD RIZAL', 'Laki-laki', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 90, 90, 52, 65, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170514', '0003349602', '', 'SALVA SALSABILA', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 50, 58, 94, 84, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170515', '0010980520', '', 'Muhammad Agung Gumelar', 'Laki-laki', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 74, 80, 56, 65, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170516', '0016515548', '', 'Hana Nuranisa', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 62, 76, 85, 100, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170517', '0016155562', '', 'dinda ayu iswalliyah Pamungkas', 'Perempuan', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 84, 56, 83, 71, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170518', '0018078576', '', 'Nizar Alberic Darussalam', 'Laki-laki', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 56, 50, 99, 92, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170519', '002781916', '', 'M. Maulana Ibrahim', 'Laki-laki', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 96, 59, 69, 88, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170520', '0003396265', '', 'Prima Putra Utama', 'Perempuan', 'Denpasar', '2001-12-01', 20, 'Cianjur', 78, 80, 70, 52, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170521', '0012890141', '', 'muhammad rio saragi', 'Laki-laki', 'pamekasan', '2001-12-01', 1, 'Cianjur', 53, 93, 59, 92, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170522', '0002064691', '', 'M. Rifky Maulana R', 'Laki-laki', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 77, 83, 84, 65, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170523', '0002903969', '', 'andri febriawan', 'Laki-laki', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 78, 61, 91, 50, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170524', '0011969915', '', 'linda lestar', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 98, 55, 51, 78, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170525', '0005102031', '', 'FATIMATUDZ ZAHRA', 'Perempuan', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 72, 93, 57, 57, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170526', '0019144575', '', 'MUHAMMAD HILAL', 'Laki-laki', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 58, 73, 82, 67, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170527', '0002764397', '', 'FITRI RAMADANTI', 'Perempuan', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 83, 73, 91, 88, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170528', '0001087007', '', 'JAFAR SIDIK', 'Laki-laki', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 52, 86, 79, 86, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170529', '0018157513', '', 'TAUFIQ RIVALDY', 'Laki-laki', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 54, 56, 87, 85, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170530', '0015876940', '', 'SUCI INSAN HANDAYANI', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 77, 95, 69, 91, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170531', '0009665568', '', 'YULIA FARHAN', 'Perempuan', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 59, 65, 95, 96, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170532', '0018391403', '', 'sinta fadilah', 'Perempuan', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 73, 63, 64, 82, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170533', '0003888338', '', 'Dahlia Amalia', 'Perempuan', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 81, 100, 61, 100, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170534', '0003904868', '', 'RIDLA HAZWATI', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 55, 56, 90, 83, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170535', '0002745591', '', 'Fitri Nuraeni', 'Perempuan', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 58, 51, 75, 64, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170536', '0011587694', '', 'ANNISA AULIA ZAHRA', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 81, 64, 77, 50, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170537', '0018210656', '', 'viniar vinka maudaida', 'Perempuan', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 92, 50, 94, 54, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170538', '0001088030', '', 'MUHAMAD GINAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 87, 68, 54, 81, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170539', '0019811700', '', 'MUHAMMAD AGUNG KURNIAWAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 51, 100, 60, 63, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170540', '0006182248', '', 'Mochammad Rizq Maulana', 'Laki-laki', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 89, 56, 96, 62, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170541', '0018096332', '', 'Rizky Nurfauzi', 'Laki-laki', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 94, 67, 98, 96, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170542', '0018173491', '', 'ABDUL KOHAR JAELANI', 'Laki-laki', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 89, 61, 79, 96, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170543', '0001086878', '', 'MUHAMAD ARDI RAMADAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 62, 67, 60, 82, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170544', '0004045843', '', 'AKMAL FATCHURAZAQ', 'Laki-laki', 'BREBES', '2001-12-01', 4, 'Cianjur', 92, 67, 94, 53, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170545', '0018096360', '', 'REVAN DEWANGGA PUTRA', 'Laki-laki', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 75, 96, 83, 74, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170546', '0018372235', '', 'Dewi Windu Wulansari', 'Perempuan', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 74, 75, 94, 69, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170547', '0018096197', '', 'alya mutiara siregar', 'Perempuan', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 93, 51, 51, 89, '', 'pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170548', '0003068881', '', 'Ramadhan Abdul Hakim', 'Laki-laki', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 56, 71, 77, 99, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170549', '0004407593', '', 'Moch Luki Andriansyah', 'Laki-laki', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 90, 55, 68, 52, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170550', '0011986840', '', 'MUHAMAD DICKY IRSYAD FAUZAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 71, 51, 76, 64, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170551', '0002745693', '', 'Asti Noviantie', 'Perempuan', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 77, 69, 87, 59, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170552', '0004921493', '', 'kintan yovanka', 'Perempuan', 'bandung', '2001-12-01', 12, 'Cianjur', 71, 57, 59, 53, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170553', '0018096289', '', 'TYAS ANTARIA', 'Perempuan', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 97, 99, 86, 84, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170554', '0012261421', '', 'Rangga Kusumadinata', 'Laki-laki', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 64, 81, 53, 96, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170555', '0001087612', '', 'Emay Kusmayadi', 'Laki-laki', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 75, 89, 98, 61, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170556', '0004281387', '', 'dilla aprilia', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 82, 52, 99, 81, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170557', '0017466434', '', 'PARAMADINA .', 'Perempuan', 'Bontang (Kalimantan Timur)', '2001-12-01', 17, 'Cianjur', 97, 59, 79, 83, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170558', '0018157520', '', 'SRI DEVI AGUS SOLEH.S', 'Perempuan', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 82, 96, 55, 62, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170559', '0001087625', '', 'Aldi Muhamad Fahrezi', 'Laki-laki', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 63, 51, 68, 75, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170560', '0018078480', '', 'MUHAMMAD FADLAN MALIK', 'Laki-laki', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 91, 89, 67, 62, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170561', '0002745642', '', 'FADILAH SUNARDI', 'Perempuan', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 59, 100, 58, 96, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170562', '0002745666', '', 'MUHAMMAD FAJAR SHYAM', 'Laki-laki', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 75, 73, 62, 82, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170563', '0016515665', '', 'LINDA YANTI SRI LESTARI', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 70, 77, 86, 93, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170564', '0017951230', '', 'Cut Nadya', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 98, 71, 68, 79, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170565', '0001660655', '', 'MUHAMMAD ADITYA NUR ADANI', 'Laki-laki', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 59, 87, 97, 86, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170566', '0007761007', '', 'Muhammad Raja Fikri Abdullah', 'Laki-laki', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 74, 57, 53, 97, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170567', '0002928066', '', 'RISKY ALWAN FAUZY', 'Laki-laki', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 85, 57, 66, 90, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170568', '0016930540', '', 'AJENG AULIA', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 99, 60, 56, 85, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170569', '0016759376', '', 'MUHAMMAD ARIA FEBRIAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 87, 83, 72, 74, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170570', '0024873504', '', 'RIZA JANUAR MAULANA', 'Laki-laki', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 78, 66, 92, 89, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170571', '0003469806', '', 'Chaidir Akbar', 'Laki-laki', 'Pontianak', '2001-12-01', 11, 'Cianjur', 92, 78, 88, 98, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170572', '0011587685', '', 'R.MOCH.YANUAR RAHMAN', 'Laki-laki', 'SUKABUMI', '2001-12-01', 12, 'Cianjur', 87, 98, 72, 96, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170573', '0016930557', '', 'SITI YULIAWATI', 'Perempuan', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 97, 94, 94, 73, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170574', '0016575303', '', 'Yolanda Setiadi', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 68, 52, 91, 76, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170575', '0002041495', '', 'ANISA FITRIANI', 'Perempuan', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 91, 82, 67, 69, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170576', '0002041488', '', 'SITI NURMAYASARI', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 92, 53, 72, 78, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170577', '0004067172', '', 'Alvianti Ratulia Nurul', 'Perempuan', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 97, 68, 64, 67, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170578', '0018372219', '', 'MUHAMMAD RIDWAN RIZKI ALAM SYAH', 'Laki-laki', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 90, 71, 62, 83, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170579', '0004045837', '', 'SITI SARAH', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 73, 64, 59, 78, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170580', '0010588795', '', 'Puji Syariati', 'Perempuan', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 61, 95, 90, 55, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170581', '0015019331', '', 'GELAR CATUR PAMUNGKAS', 'Laki-laki', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 83, 97, 55, 63, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170582', '0002763295', '', 'N hani nurhalisah', 'Perempuan', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 85, 71, 78, 93, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170583', '0018739771', '', 'Rizki fadillah Rizki', 'Laki-laki', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 65, 96, 72, 65, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170584', '0018156605', '', 'seila siti antiani', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 87, 90, 72, 81, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170585', '0015019517', '', 'Neng Kartika Sari', 'Perempuan', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 59, 78, 64, 81, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170586', '0000220215', '', 'syifa siti ria', 'Perempuan', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 100, 85, 69, 73, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170587', '0010981587', '', 'ganjar yogaswara', 'Laki-laki', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 72, 76, 83, 50, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170588', '0005027435', '', 'Syahru Rohman Al-faruq', 'Laki-laki', 'Bandung', '2001-12-01', 8, 'Cianjur', 70, 75, 73, 93, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170589', '0001863929', '', 'Alma Mariana Sofiah', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 88, 91, 89, 95, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170590', '0003903053', '', 'Heri Majid', 'Laki-laki', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 97, 66, 59, 85, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170591', '0016763539', '', 'VANI OKTAVIANI', 'Perempuan', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 60, 92, 57, 55, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170592', '0005549399', '', 'SINDYA SRI AGUSTINA SLAMET', 'Perempuan', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 72, 96, 89, 94, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170593', '0003814679', '', 'AI SRI LESTARI', 'Perempuan', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 65, 94, 62, 76, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170594', '0019934342', '', 'Aniya Rustandi', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 86, 62, 75, 86, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170595', '0001860204', '', 'Sonia Syahiba', 'Perempuan', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 97, 54, 83, 83, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170596', '0068923451', '', 'lia aulia', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 51, 59, 82, 73, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170597', '0018967116', '', 'Sinta Eva Nuraziazah', 'Perempuan', 'Purwakarta', '2001-12-01', 17, 'Cianjur', 60, 55, 72, 74, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170598', '0018539415', '', 'Badru din', 'Laki-laki', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 62, 61, 74, 66, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170599', '0016241458', '', 'apri ansyah', 'Laki-laki', 'jakarta', '2001-12-01', 19, 'Cianjur', 89, 77, 86, 57, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170600', '0013264258', '', 'NURUL AULIA DEWI', 'Perempuan', 'JAKARTA', '2001-12-01', 20, 'Cianjur', 86, 99, 61, 64, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170601', '0002600634', '', 'M. Althof Fahrezi Permata Somawijaya', 'Laki-laki', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 76, 79, 85, 67, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170602', '0019140276', '', 'Reza Saputra', 'Laki-laki', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 62, 72, 91, 87, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170603', '0003649292', '', 'Anisa Mulyati', 'Perempuan', 'Bogor', '2001-12-01', 3, 'Cianjur', 73, 100, 69, 99, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170604', '0006824790', '', 'veny oktaviana', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 58, 89, 50, 95, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170605', '0016497349', '', 'yani yuliani', 'Perempuan', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 83, 51, 62, 96, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170606', '0002082694', '', 'Mohamad Erlan Ramdhan Murdiana Samosa', 'Laki-laki', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 53, 70, 54, 98, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170607', '2784919', '', 'Zahra Abrilla Widjaya', 'Perempuan', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 81, 83, 100, 94, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170608', '0018096340', '', 'idlal fauziyyah', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 60, 68, 78, 64, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170609', '0016955089', '', 'Irwan Monang', 'Laki-laki', 'Medan', '2001-12-01', 9, 'Cianjur', 65, 65, 94, 66, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170610', '0004186795', '', 'ROSIDA NURJANAH', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 54, 88, 91, 94, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170611', '0016955138', '', 'SITI ILMANA NUR RAMADHANI', 'Perempuan', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 55, 90, 89, 82, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170612', '9999875881', '', 'shendy oktaviani', 'Perempuan', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 82, 83, 97, 80, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170613', '0010960268', '', 'ZALVA AZZAHRA ADI', 'Perempuan', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 53, 51, 70, 64, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170614', '131407041', '', 'adella putri ayutami', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 66, 85, 76, 53, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170615', '0002784918', '', 'Risna mauliza Azizah', 'Perempuan', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 80, 99, 68, 68, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170616', '0016511358', '', 'rizki sukmawan', 'Laki-laki', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 52, 74, 86, 90, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170617', '0016930764', '', 'ferawati meilani', 'Perempuan', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 69, 71, 67, 84, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170618', '0004220842', '', 'Nina nurhasanah jamil', 'Perempuan', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 95, 99, 68, 70, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170619', '0011669694', '', 'LUTHFI DRAJAT MUZHAFFAR', 'Laki-laki', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 96, 76, 88, 97, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170620', '0016172531', '', 'Much Ferdiansyah', 'Laki-laki', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 84, 51, 69, 65, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170621', '0018739779', '', 'mochamad rizky ardisurya', 'Laki-laki', 'sukabumi', '2001-12-01', 1, 'Cianjur', 78, 80, 60, 87, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170622', '0016893802', '', 'JAPAR ASSYDIQ SLAMET', 'Laki-laki', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 65, 72, 57, 80, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170623', '0016001541', '', 'Arsyi Nuur Akasyah', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 95, 50, 77, 60, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170624', '0018862022', '', 'INTAN PERMATA SARI', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 94, 80, 70, 85, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170625', '0005424450', '', 'Siti Zahra Ainun Nisa', 'Perempuan', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 63, 62, 85, 73, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170626', '0019937012', '', 'YASMI APRILIA NITAMI', 'Perempuan', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 96, 73, 58, 70, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170627', '0018096229', '', 'Silmi Nurul Ulya', 'Perempuan', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 80, 96, 62, 67, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170628', '0004347158', '', 'SEPTI OKTAVIANI', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 95, 70, 54, 76, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170629', '0014122808', '', 'FITRI HANDAYANI', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 71, 68, 53, 95, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170630', '0004220744', '', 'FIKRI MUHAMAD FAUZI', 'Laki-laki', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 53, 97, 58, 56, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170631', '0005864037', '', 'Siti Aisah Sutisna', 'Perempuan', 'Sukabumi', '2001-12-01', 11, 'Cianjur', 60, 96, 50, 83, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170632', '0014990598', '', 'Wafa Azzahra', 'Perempuan', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 88, 98, 96, 84, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170633', '0011642564', '', 'Indah Maidah', 'Perempuan', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 86, 97, 90, 58, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170634', '0022481053', '', 'SAHRUL PAOJ', 'Laki-laki', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 76, 93, 66, 91, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170635', '0016392929', '', 'anisa firda', 'Perempuan', 'bogor', '2001-12-01', 15, 'Cianjur', 66, 92, 51, 60, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170636', '0016936223', '', 'restu ayunda', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 68, 91, 81, 51, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170637', '0024873496', '', 'Dita Dianasari', 'Perempuan', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 89, 69, 82, 53, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170638', '0016978075', '', 'ANDY MEGA SAPUTRA', 'Laki-laki', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 64, 82, 92, 93, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170639', '0012105405', '', 'Rahmayati -', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 53, 58, 66, 76, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170640', '0016930541', '', 'Rina Rosiana Hasyifa', 'Perempuan', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 54, 57, 96, 68, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170641', '0001849535', '', 'Donal Pangihutan Mandala Sianipar', 'Laki-laki', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 66, 71, 93, 74, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170642', '0001885054', '', 'Amalia Nurul Firda', 'Perempuan', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 64, 67, 56, 73, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170643', '0003142157', '', 'muhammad nawafi ariyawan', 'Laki-laki', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 53, 71, 83, 86, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170644', '0016794182', '', 'Robi Muhamad Fahriza', 'Laki-laki', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 93, 71, 50, 73, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170645', '0007151446', '', 'Fitri ', 'Perempuan', 'Kp. pasir cariu rt02/04 Ds. walahit kec. leles kab', '2001-12-01', 5, 'Cianjur', 92, 82, 76, 54, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170646', '0016515560', '', 'M. Dandi Yuslidan Nawaf', 'Laki-laki', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 63, 99, 72, 68, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170647', '0019394121', '', 'Siti Nursyifa Ulhusna', 'Perempuan', 'Bandung', '2001-12-01', 7, 'Cianjur', 56, 63, 90, 85, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170648', '0002200493', '', 'Atep Muhammad Dahlan', 'Laki-laki', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 54, 75, 99, 92, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170649', '0001863983', '', 'Raifal Nur Sopyan', 'Laki-laki', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 100, 99, 74, 74, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170650', '0012823747', '', 'Siti Salma', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 57, 86, 64, 94, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170651', '0011047791', '', 'Dea Lutpiyatus Sholichah', 'Perempuan', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 66, 56, 63, 53, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170652', '0017951606', '', 'ANNISA PUTERI SEPTIANI', 'Perempuan', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 96, 97, 93, 59, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170653', '0002200499', '', 'Muhammad Ifrizal Putera Kusumah', 'Laki-laki', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 54, 63, 52, 95, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170654', '0011344753', '', 'Agi Irawan', 'Laki-laki', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 62, 72, 59, 98, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170655', '0002781943', '', 'M ikhsan Maulana', 'Laki-laki', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 68, 68, 98, 63, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170656', '0019602831', '', 'selvi ani', 'Laki-laki', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 56, 83, 78, 94, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170657', '0002876131', '', 'faizal taufik hidayat', 'Laki-laki', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 55, 56, 75, 63, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170658', '0016974004', '', 'HASNA RUSYDA HAUNA', 'Perempuan', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 79, 71, 65, 81, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170659', '0001086547', '', 'vita agustriya', 'Perempuan', 'indramayu', '2001-12-01', 19, 'Cianjur', 71, 83, 89, 99, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170660', '0016974000', '', 'PUTRI AMALIA FADILA', 'Perempuan', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 71, 74, 78, 50, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170661', '0018205618', '', 'SAVINA KUSMAYADI', 'Perempuan', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 96, 61, 59, 67, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170662', '0001660697', '', 'sahid abdul muzib', 'Laki-laki', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 76, 52, 68, 51, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170663', '0003819032', '', 'Asya Tasya Putri', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 94, 68, 77, 67, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170664', '0003883483', '', 'reza wahidin soleh', 'Laki-laki', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 80, 76, 73, 63, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170665', '0002741434', '', 'Rizky Luhung Wadia Utama', 'Laki-laki', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 51, 74, 92, 77, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170666', '0008369268', '', 'Susi Rahmalia', 'Perempuan', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 58, 79, 54, 89, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170667', '0016172542', '', 'Sarah Syifa Auliah', 'Perempuan', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 90, 80, 61, 88, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170668', '0002600627', '', 'Fathia Mahaerani Arraisy', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 72, 57, 84, 61, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170669', '13147112', '', 'Ajeng Fauziah Kamila', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 51, 66, 89, 62, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170670', '0018119014', '', 'livia Putri Zaen', 'Perempuan', 'Bandung', '2001-12-01', 10, 'Cianjur', 73, 62, 55, 58, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170671', '0019434350', '', 'Ravi Rafenza', 'Laki-laki', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 62, 100, 92, 73, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170672', '0016155583', '', 'rifath hamzah', 'Laki-laki', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 74, 55, 88, 59, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170673', '0003687876', '', 'Nadia Silmi Lesmana', 'Perempuan', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 52, 86, 78, 79, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170674', '0016083628', '', 'Yusuf Saputra', 'Laki-laki', 'Pontianak', '2001-12-01', 14, 'Cianjur', 78, 56, 73, 96, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170675', '0016511068', '', 'Asep Maulana', 'Laki-laki', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 77, 90, 86, 76, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170676', '0001260071', '', 'ANDRI SUTISNA SUTISNA', 'Laki-laki', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 84, 100, 86, 90, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170677', '0005260098', '', 'Muhammad Raja Dimas Saleh', 'Laki-laki', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 79, 91, 83, 53, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170678', '0016463217', '', 'Muhammad Ridha Ridwansyah', 'Laki-laki', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 71, 70, 54, 89, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170679', '0012203808', '', 'Fauziah Abdillah', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 80, 54, 91, 84, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170680', '0016996774', '', 'SAPNAH RIZQIYAH', 'Perempuan', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 73, 53, 92, 52, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170681', '0006553366', '', 'Alika Rachmasari', 'Perempuan', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 93, 67, 88, 50, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170682', '0003823967', '', 'KIREINA FATIMAH AZZAHRA', 'Perempuan', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 82, 56, 88, 79, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170683', '0017653561', '', 'AZZAHRA ZETTYRA', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 81, 63, 65, 75, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170684', '0002904488', '', 'rizky -', 'Laki-laki', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 79, 67, 52, 85, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170685', '0002064724', '', 'NABILA OKTAVIANI SAVITRI', 'Perempuan', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 55, 76, 64, 78, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170686', '0002088791', '', 'NABEEL AHMAD TAHIR', 'Laki-laki', 'BEKASI', '2001-12-01', 6, 'Cianjur', 58, 88, 54, 57, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170687', '0011937755', '', 'ADITYA SETIA PAMUNGKAS', 'Laki-laki', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 94, 50, 59, 95, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170688', '0017845899', '', 'Anggi ', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 83, 63, 51, 61, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170689', '0018210673', '', 'ALMI ABDURACHMAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 63, 80, 61, 55, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170690', '0015876895', '', 'ARIF RAHMAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 65, 95, 75, 70, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170691', '003707508', '', 'Faisal akbar gunawan Gunawan', 'Laki-laki', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 59, 100, 68, 76, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170692', '0016553062', '', 'Nurlaela Agustinah', 'Perempuan', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 95, 88, 90, 59, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170693', '0018078589', '', 'Putri Natasya', 'Perempuan', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 97, 88, 74, 80, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170694', '0001660656', '', 'Noviyanti Triani Hidayat', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 81, 93, 85, 61, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170695', '0016996958', '', 'restu apriliani permana', 'Perempuan', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 82, 85, 68, 57, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170696', '0017322755', '', 'Sari Ratna Dewi', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 93, 74, 84, 83, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170697', '0004695301', '', 'fakhri rasyid', 'Laki-laki', 'jakarta', '2001-12-01', 17, 'Cianjur', 89, 63, 64, 71, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170698', '0012264861', '', 'Indah puji Lestari', 'Perempuan', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 90, 68, 95, 82, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170699', '0016513395', '', 'Aliffa Nazwarani', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 84, 83, 83, 83, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170700', '0001845034', '', 'Nur Fitria Lestari', 'Perempuan', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 69, 65, 81, 100, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170701', '0002745598', '', 'nisya novari', 'Perempuan', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 70, 95, 93, 55, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170702', '0018401679', '', 'Mochamad Delly Maulana Agustian', 'Laki-laki', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 65, 68, 68, 51, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170703', '0001643171', '', 'nazila anggraeni', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 82, 84, 66, 53, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170704', '0004282450', '', 'OKI RAJA BUDIN', 'Laki-laki', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 94, 64, 57, 56, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170705', '001872237', '', 'Muhamad Raihan', 'Laki-laki', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 62, 53, 88, 64, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170706', '1314710500', '', 'Vanka Fahrezy Musyadad', 'Laki-laki', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 83, 55, 70, 93, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170707', '0017733491', '', 'Shalma Rahayu Putri Oktaviani', 'Perempuan', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 95, 52, 84, 77, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170708', '0016138996', '', 'Wafa Ul Hajjah', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 52, 62, 52, 79, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170709', '0016605165', '', 'mia mufida jahra', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 84, 52, 92, 61, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170710', '0016986988', '', 'putri meidi alawiya', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 64, 95, 74, 88, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170711', '0003349605', '', 'Ilham Kresna Ramadhan', 'Laki-laki', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 53, 81, 72, 83, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170712', '0018173164', '', 'Firman Aulia Rahman', 'Laki-laki', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 58, 61, 78, 50, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170713', '0001967249', '', 'septian alif viansyah', 'Laki-laki', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 61, 59, 78, 50, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170714', '0004200426', '', 'Muhammad Ichsan', 'Laki-laki', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 88, 56, 82, 65, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170715', '0015451570', '', 'farhan -', 'Laki-laki', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 59, 53, 70, 74, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170716', '0018096326', '', 'Salma Baiti Rachman', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 78, 58, 83, 54, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170717', '0004045825', '', 'mochamad rivan ardian', 'Laki-laki', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 73, 98, 91, 63, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170718', '1314.7.082', '', 'Suci Lestari Ramadhanti', 'Perempuan', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 90, 82, 84, 88, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170719', '0013302817', '', 'TITA TADKIROH', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 89, 75, 75, 91, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170720', '0002927817', '', 'PITRI NURAENI', 'Perempuan', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 72, 92, 61, 55, '', 'Pemasaran', 899274927);
INSERT INTO `calon_siswa` VALUES ('PPDB170721', '0016499152', '', 'Annisa Syifa Yulianti', 'Perempuan', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 80, 73, 86, 52, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170722', '0007802937', '', 'Zhalzabilla Ananta Supyandi', 'Perempuan', 'Sukabumi', '2001-12-01', 2, 'Cianjur', 89, 54, 64, 87, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170723', '0002242961', '', 'SITI ROHIMAH', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 95, 98, 73, 50, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170724', '0010823530', '', 'Agustiar Fajar Abdillah', 'Laki-laki', 'Pamekasan', '2001-12-01', 4, 'Cianjur', 70, 70, 76, 86, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170725', '0016930552', '', 'Mega Hana Juniatika', 'Perempuan', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 60, 54, 77, 70, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170726', '0001864046', '', 'AHMAD ARYA SURYA DIREZA', 'Laki-laki', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 63, 64, 94, 84, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170727', '0003720665', '', 'Siti Nur Aisah', 'Perempuan', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 56, 75, 73, 62, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170728', '0016553059', '', 'Hanifa Rosyida', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 82, 84, 66, 67, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170729', '0001502558', '', 'ASA SOPIAH', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 65, 79, 68, 71, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170730', '0001086833', '', 'DERA PUSPITA SARI PITRI', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 59, 94, 98, 59, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170731', '13147299', '', 'kekey satriawan', 'Laki-laki', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 80, 52, 88, 95, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170732', '0001086987', '', 'DERIKA NURYATI', 'Perempuan', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 63, 51, 92, 93, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170733', '0016493105', '', 'Annisa Siti Nurmajidah', 'Perempuan', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 70, 63, 72, 96, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170734', '0018157534', '', 'FITRA NUR ARLYNDA', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 77, 71, 96, 64, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170735', '0016493079', '', 'Siti Alifah Amatullah', 'Perempuan', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 88, 91, 75, 81, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170736', '0002741436', '', 'GEMA AL FAATHIR', 'Laki-laki', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 59, 98, 91, 88, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170737', '0003149703', '', 'ABDUL JABBAR', 'Laki-laki', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 90, 56, 54, 83, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170738', '0018157523', '', 'IKA ZULFIANTI', 'Perempuan', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 95, 61, 67, 84, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170739', '0001844712', '', 'Mutia Trissa', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 58, 54, 81, 85, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170740', '0011263978', '', 'IMAM FANCA SAPUTRA', 'Laki-laki', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 75, 77, 97, 94, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170741', '0018739788', '', 'IPAN DEANANOFAL', 'Laki-laki', 'JAKARTA', '2001-12-01', 1, 'Cianjur', 80, 56, 61, 62, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170742', '0012320166', '', 'KAISHA AZZAHRA MUCHTAR', 'Laki-laki', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 69, 96, 85, 73, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170743', '0018119602', '', 'MEGA SUKMA MELATI PUTRI', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 72, 84, 54, 52, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170744', '9998085786', '', 'MUHAMMAD HAIDIR ALI', 'Laki-laki', 'JAKARTA', '2001-12-01', 4, 'Cianjur', 58, 69, 66, 98, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170745', '0018197303', '', 'MUH. IQBAL MAULANA', 'Laki-laki', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 93, 57, 87, 52, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170746', '0001502576', '', 'MUHAMAD FAUZI', 'Laki-laki', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 67, 100, 86, 83, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170747', '0015876908', '', 'NADIA NAJMI APRILIANI', 'Perempuan', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 69, 90, 81, 84, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170748', '0012823715', '', 'Mohammad Frans Pratama Putra', 'Laki-laki', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 81, 98, 51, 79, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170749', '0029146379', '', 'AMIRA ZAKIA KHOERUNISA', 'Perempuan', 'Bandung', '2001-12-01', 9, 'Cianjur', 57, 67, 67, 50, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170750', '0019886034', '', 'MEISA FUTRI AMATUL KUDUS', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 95, 71, 98, 79, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170751', '0018096344', '', 'NANDA AYU SHOPIA', 'Perempuan', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 88, 79, 81, 99, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170752', '0001502588', '', 'NENG GINA FAOJIAH', 'Perempuan', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 84, 95, 52, 90, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170753', '0009210123', '', 'Rega Samsi', 'Laki-laki', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 73, 53, 54, 85, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170754', '0018739766', '', 'NINDY NUR ASHYVA', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 81, 64, 96, 83, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170755', '0011423457', '', 'RAIF FAHMI', 'Laki-laki', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 81, 71, 62, 53, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170756', '0002747395', '', 'REZA PRATAMA PUTRA', 'Laki-laki', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 87, 83, 55, 82, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170757', '0001249232', '', 'RIPKI M. ANWAR', 'Laki-laki', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 89, 66, 54, 57, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170758', '0018091507', '', 'RISDA RAHMAWATI', 'Perempuan', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 73, 78, 90, 65, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170759', '0001086821', '', 'RISMAN AFRILIANSYAH', 'Laki-laki', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 68, 89, 82, 56, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170760', '0001247911', '', 'ROHIMAH SRI RAHAYU', 'Perempuan', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 69, 56, 94, 66, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170761', '0016172623', '', 'SALSABILA PUTRI SEFTI', 'Perempuan', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 65, 75, 59, 78, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170762', '0015876923', '', 'SATIRASHAPA YUSUP BALKIS', 'Perempuan', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 75, 74, 79, 73, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170763', '0001827508', '', 'SELVIA SEPTIANI', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 81, 52, 63, 81, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170764', '0002243144', '', 'SINTA NISA', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 78, 85, 72, 64, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170765', '0001086990', '', 'SINTA NURANIAH', 'Perempuan', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 52, 72, 70, 78, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170766', '0012305459', '', 'SITI NURHAYATI', 'Perempuan', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 56, 60, 69, 100, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170767', '0006986044', '', 'WIDIYA ASTUTI', 'Perempuan', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 90, 80, 91, 92, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170768', '0001086994', '', 'YOLANDA AGUSTIN', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 52, 96, 97, 72, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170769', '0018096352', '', 'RAFLI FARRAS ZAKARIA', 'Laki-laki', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 55, 51, 92, 97, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170770', '0018771098', '', 'putri emilia', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 52, 100, 52, 91, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170771', '0015019257', '', 'RIKI APRILIAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 97, 73, 86, 97, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170772', '0018078529', '', 'SALMAN ALFARISI KUSDINAR', 'Laki-laki', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 85, 54, 98, 56, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170773', '0016172560', '', 'Nisrina Nurkhatulistiya', 'Perempuan', 'Pontianak', '2001-12-01', 13, 'Cianjur', 92, 70, 57, 72, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170774', '0004304530', '', 'DEWI SARAH', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 54, 65, 54, 51, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170775', '0017460430', '', 'LATIFAH .', 'Perempuan', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 61, 98, 83, 80, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170776', '0007828408', '', 'MUHAMMAD ADBUL ROHMAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 96, 75, 53, 58, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170777', '0001595921', '', 'MUHAMMAD IQBAL', 'Laki-laki', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 71, 75, 50, 79, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170778', '0015481377', '', 'AFRIZAL LURAHMAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 79, 77, 56, 84, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170779', '0001660725', '', 'ZIDANE ABD ARRASYID HIDAYATULLAH', 'Laki-laki', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 63, 54, 65, 75, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170780', '0004067157', '', 'TRI INTANI SALEHAH', 'Perempuan', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 79, 93, 74, 58, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170781', '0001205156', '', 'CECEP SETIAWAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 80, 99, 57, 77, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170782', '0018210666', '', 'ZIHAN AMALUDIN', 'Perempuan', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 83, 92, 53, 55, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170783', '0010980837', '', 'DIVANIA THIANY ADJIE', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 56, 99, 65, 98, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170784', '0018356667', '', 'JAYYID ABDUSSYUKUR', 'Laki-laki', 'BOGOR', '2001-12-01', 4, 'Cianjur', 82, 77, 68, 60, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170785', '0016930608', '', 'MOCH RAMDANSYAH', 'Laki-laki', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 99, 95, 89, 84, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170786', '0001884622', '', 'farida siti fadilah', 'Perempuan', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 56, 79, 80, 94, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170787', '0015019288', '', 'kekey satriawan', 'Laki-laki', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 66, 68, 70, 50, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170788', '0011184188', '', 'AI LATIFAH NURPAIJAH', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 62, 85, 76, 97, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170789', '0011184191', '', 'WAPA YUNENGSIH', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 65, 76, 55, 85, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170790', '0012369853', '', 'siti solihah', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 78, 71, 53, 75, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170791', '0011383728', '', 'Rizqi Farriza Riefaldi', 'Laki-laki', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 100, 70, 60, 80, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170792', '0026721477', '', 'Putri Bebyolla', 'Perempuan', 'Karawang', '2001-12-01', 12, 'Cianjur', 75, 77, 98, 86, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170793', '000224336', '', 'M Taufik Rhamadan', 'Laki-laki', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 72, 70, 65, 61, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170794', '0004051247', '', 'Muhammad As\'adu Rafi', 'Laki-laki', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 90, 80, 54, 89, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170795', '0006508561', '', 'BUDI SETIAWAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 93, 51, 62, 54, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170796', '0011181988', '', 'Mohammad Ginanjar Pratama', 'Laki-laki', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 97, 88, 76, 84, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170797', '0005229740', '', 'HILAL RAMDANI', 'Laki-laki', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 67, 63, 91, 92, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170798', '0010960292', '', 'DICKY ADITAMA', 'Laki-laki', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 52, 86, 88, 80, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170799', '0016551886', '', 'FINKA ANANDA PUTRI', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 70, 63, 61, 57, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170800', '0003947812', '', 'RAYI AGUNG GUMELAR', 'Laki-laki', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 97, 71, 89, 82, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170801', '0009449778', '', 'SATRIO BAYU PURNOMO', 'Laki-laki', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 71, 57, 82, 70, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170802', '0019216537', '', 'SAVIRA BERLIANA RIANTAMA PUTRI', 'Perempuan', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 96, 78, 82, 91, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170803', '0013387845', '', 'VIDIA APRILLIA LHOCSMAWATI', 'Perempuan', 'SUBANG', '2001-12-01', 3, 'Cianjur', 91, 96, 61, 69, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170804', '0006858100', '', 'Silvia Agustina', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 83, 60, 79, 95, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170805', '0002102329', '', 'LISTI LUSINTA PUTRI', 'Perempuan', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 92, 84, 81, 62, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170806', '0002088708', '', 'LILIS RISTIANI', 'Perempuan', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 76, 60, 93, 55, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170807', '0011706138', '', 'TITA TIARIN NURHAYATI', 'Perempuan', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 97, 71, 50, 62, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170808', '0003888332', '', 'ANISA RUSHERAWATI', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 68, 90, 91, 53, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170809', '0012068681', '', 'PUTRI DARTIWI', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 96, 54, 69, 71, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170810', '0016974007', '', 'Nur Aliyah Septiani Umar', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 92, 73, 94, 50, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170811', '9994597535', '', 'MOHAMAD LUDFIAN RACHMATULLOH', 'Laki-laki', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 74, 72, 98, 51, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170812', '0002502458', '', 'adella putri ayutami', 'Perempuan', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 99, 73, 51, 56, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170813', '0016955106', '', 'Eva Elvina Putri', 'Perempuan', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 65, 73, 69, 55, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170814', '0002048920', '', 'Fachri Rizki Fadillah', 'Laki-laki', 'Sukabumi', '2001-12-01', 14, 'Cianjur', 74, 64, 50, 75, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170815', '0011206893', '', 'Vira Auliana Putri', 'Perempuan', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 90, 71, 85, 88, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170816', '0016551891', '', 'Chyntia Putri', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 70, 99, 97, 79, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170817', '0016552278', '', 'Dewi Suci Nurhalipah', 'Perempuan', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 65, 83, 91, 89, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170818', '0001860774', '', 'Resa Resnawati', 'Perempuan', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 87, 86, 70, 69, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170819', '0015962535', '', 'abdul rozak', 'Laki-laki', 'sukabumi', '2001-12-01', 19, 'Cianjur', 59, 59, 55, 61, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170820', '0004067153', '', 'Fitriani Nurhanimah', 'Perempuan', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 59, 71, 79, 85, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170821', '0016955167', '', 'MUHAMAD RIZKY MAULANA SOLEH', 'Laki-laki', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 61, 92, 67, 69, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170822', '0003349587', '', 'Nazah Khudaifah Alawiyah', 'Perempuan', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 64, 85, 67, 79, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170823', '0011206888', '', 'HANI YUNITA', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 63, 98, 50, 59, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170824', '0016492414', '', 'FADHILLA ZACHRA HUMAIRA', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 100, 81, 69, 82, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170825', '0015876890', '', 'MUHAMMAD ZAINULLOH RIFAI', 'Laki-laki', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 64, 74, 53, 53, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170826', '0015783248', '', 'MUAMMAR -', 'Laki-laki', 'PONTIANAK', '2001-12-01', 6, 'Cianjur', 69, 73, 59, 95, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170827', '0015075983', '', 'Ali Muflihan', 'Laki-laki', 'TANGGERANG', '2001-12-01', 7, 'Cianjur', 81, 60, 85, 56, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170828', '0007343278', '', 'Nadwa (lulus 2015) Ardillah', 'Perempuan', 'Bandung', '2001-12-01', 8, 'Cianjur', 69, 57, 75, 68, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170829', '0018532602', '', 'Zakaria Noor Rizkandira', 'Laki-laki', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 94, 92, 82, 66, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170830', '0011505504', '', 'Dali Cahyo Triadi', 'Laki-laki', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 54, 96, 52, 78, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170831', '0002041422', '', 'Gita Salatin', 'Perempuan', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 59, 56, 57, 95, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170832', '0002064770', '', 'Pani Rahwati', 'Perempuan', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 53, 97, 91, 53, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170833', '0003720089', '', 'MIMIS MISBARUDIN', 'Laki-laki', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 92, 56, 87, 86, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170834', '0016514557', '', 'Taufik Rachmat Hidayat', 'Laki-laki', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 71, 79, 58, 86, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170835', '9994353060', '', 'asep jalaludin asep', 'Laki-laki', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 71, 65, 83, 99, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170836', '0016492980', '', 'Rubian Pratama', 'Laki-laki', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 53, 63, 79, 56, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170837', '0006884935', '', 'Muhammad Rafly Maulidani Zarkasih', 'Laki-laki', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 53, 64, 91, 83, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170838', '0008664135', '', 'Muhammad Teguh Ratnam', 'Laki-laki', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 87, 85, 77, 96, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170839', '0002903988', '', 'Roby Romdoni', 'Laki-laki', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 56, 60, 73, 78, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170840', '0019007147', '', 'DEWI PUJA', 'Perempuan', 'Bekasi', '2001-12-01', 20, 'Cianjur', 58, 59, 65, 100, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170841', '0012063365', '', 'NUR AMELIA INDAH RAMDHANWATI', 'Perempuan', 'BOGOR', '2001-12-01', 1, 'Cianjur', 95, 86, 68, 93, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170842', '0015019609', '', 'muhammad ridwan juliansyah', 'Laki-laki', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 81, 54, 62, 85, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170843', '0001861170', '', 'SRI WAHYUNI', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 85, 71, 74, 100, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170844', '0001566142', '', 'Rizky Febriansyah', 'Laki-laki', 'TANGGERANG', '2001-12-01', 4, 'Cianjur', 90, 69, 86, 84, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170845', '0002953674', '', 'Muhammad Fikri Adriansyah', 'Laki-laki', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 81, 88, 68, 97, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170846', '0016172534', '', 'Reina Alya Nafizah', 'Perempuan', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 64, 61, 99, 67, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170847', '0014765581', '', 'Muhammad yogi prayoga s.a', 'Laki-laki', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 92, 51, 52, 66, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170848', '0001849703', '', 'SITI NUR AZIZAH', 'Perempuan', 'CIANJUR', '2001-12-01', 8, 'Cianjur', 80, 85, 96, 87, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170849', '0015019606', '', 'vina siti nuraliah', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 53, 89, 97, 77, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170850', '0001660692', '', 'Alfiah Lestari', 'Perempuan', 'CIANJUR', '2001-12-01', 10, 'Cianjur', 51, 85, 61, 95, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170851', '0016973856', '', 'Aded Lukmanul hakim', 'Laki-laki', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 53, 77, 53, 80, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170852', '0001849537', '', 'PITRA TAOPIQ RAMADHAN', 'Laki-laki', 'CIANJUR', '2001-12-01', 12, 'Cianjur', 53, 89, 71, 83, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170853', '0016172616', '', 'Moh Slamet Haryanto', 'Laki-laki', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 77, 51, 55, 57, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170854', '0018459004', '', 'dede yusuf', 'Laki-laki', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 82, 86, 60, 68, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170855', '0002502521', '', 'siti aulia daffa', 'Perempuan', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 68, 88, 56, 99, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170856', '9994020745', '', 'Sipa Puspita Sari Sari', 'Perempuan', 'CIANJUR', '2001-12-01', 16, 'Cianjur', 92, 95, 85, 73, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170857', '0013346902', '', 'Nandini Koes Herawati', 'Perempuan', 'CIANJUR', '2001-12-01', 17, 'Cianjur', 70, 90, 59, 71, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170858', '0018096314', '', 'sinta saula balqis', 'Perempuan', 'CIANJUR', '2001-12-01', 18, 'Cianjur', 86, 83, 63, 77, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170859', '0006405087', '', 'serly novia suhendi', 'Perempuan', 'CIANJUR', '2001-12-01', 19, 'Cianjur', 71, 78, 78, 75, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170860', '0002064826', '', 'Ria oktaviani', 'Perempuan', 'CIANJUR', '2001-12-01', 20, 'Cianjur', 50, 80, 59, 75, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170861', '0019281673', '', 'Raisya Hafilda Fitria', 'Perempuan', 'CIANJUR', '2001-12-01', 1, 'Cianjur', 61, 97, 96, 92, '', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170862', '0010960572', '', 'ASRI LIANA', 'Perempuan', 'CIANJUR', '2001-12-01', 2, 'Cianjur', 79, 52, 93, 87, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170863', '0016365947', '', 'Ranti Ayu cahyani', 'Perempuan', 'CIANJUR', '2001-12-01', 3, 'Cianjur', 69, 85, 82, 86, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170864', '0005044563', '', 'allin ardianti', 'Perempuan', 'CIANJUR', '2001-12-01', 4, 'Cianjur', 81, 79, 62, 67, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170865', '0018459133', '', 'muhamad ridho insan fikri', 'Laki-laki', 'CIANJUR', '2001-12-01', 5, 'Cianjur', 83, 98, 50, 87, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170866', '0018411929', '', 'dian kusdinar', 'Laki-laki', 'CIANJUR', '2001-12-01', 6, 'Cianjur', 61, 100, 94, 77, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170867', '0002741459', '', 'Raffi Abdurrazzaq', 'Laki-laki', 'CIANJUR', '2001-12-01', 7, 'Cianjur', 90, 84, 89, 96, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170868', '9993847937', '', 'Hardian wiradiprana muhamad', 'Laki-laki', 'padang', '2001-12-01', 8, 'Cianjur', 53, 98, 53, 60, '', 'Pemasaran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170869', '0018630179', '', 'Kusmia Audina', 'Perempuan', 'CIANJUR', '2001-12-01', 9, 'Cianjur', 62, 93, 67, 57, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170870', '131407088', '', 'fitriyah adiesty', 'Perempuan', 'cirebon', '2001-12-01', 10, 'Cianjur', 61, 99, 86, 69, '', 'Teknik Komputer dan Jaringan', 816649924);
INSERT INTO `calon_siswa` VALUES ('PPDB170871', '0007148291', '', 'ai rosita', 'Perempuan', 'CIANJUR', '2001-12-01', 11, 'Cianjur', 99, 72, 65, 90, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170872', '0018124300', '', 'Faizal Bisry Khandiyaz', 'Laki-laki', 'Bandung', '2001-12-01', 12, 'Cianjur', 82, 100, 84, 92, '', 'Akuntansi', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170873', '0011383743', '', 'muhamad ari maulana', 'Laki-laki', 'CIANJUR', '2001-12-01', 13, 'Cianjur', 89, 82, 88, 53, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170874', '0001885518', '', 'Rika Maulidia Inayah', 'Perempuan', 'CIANJUR', '2001-12-01', 14, 'Cianjur', 100, 51, 51, 52, '', 'Administrasi Perkantoran', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170875', '0001293071', '', 'Zaidan Daffa M', 'Laki-laki', 'CIANJUR', '2001-12-01', 15, 'Cianjur', 58, 82, 82, 71, '', 'Teknik Komputer dan Jaringan', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170878', '9991777176', '151610125', 'Mochammad Faisal', 'Laki-laki', 'Cianjur', '1999-07-27', 67, 'Jln.Smk pasundan 1', 94, 94, 94, 94, '$file_un', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170879', '9991777176', '151610125', 'Mochammad Faisal', 'Laki-laki', 'Cianjur', '1999-07-27', 67, 'Jln.Smk pasundan 1', 94, 94, 94, 94, '/assets/img/uploads/[Official] LARVA in New York - Season 3 Episode 46 ~ 60 - YouTube.MP4_snapshot_2', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170880', '999177176', '12312213', 'Mochammad Faisal', 'Laki-laki', 'cianjur', '1999-07-27', 102, 'jln.smk pasundan 1 cianjur', 88, 87, 88, 88, '/assets/img/uploads/g4.jpg', 'Rekayasa Perangkat Lunak', 80123128);
INSERT INTO `calon_siswa` VALUES ('PPDB170881', '9991777176', '21312213', 'Mochammad Faisal', 'Laki-laki', 'Cianjur', '1999-07-27', 67, 'jln.smk pasundan 1 cianjur', 99, 88, 99, 88, '/assets/img/uploads/g4.jpg', 'Rekayasa Perangkat Lunak', 2147483647);
INSERT INTO `calon_siswa` VALUES ('PPDB170882', '9991764', '646', '468', 'Laki-laki', '468', '1999-04-08', 7, '498', 88, 88, 88, 88, '/assets/img/uploads/g4.jpg', 'Administrasi Perkantoran', 49);
INSERT INTO `calon_siswa` VALUES ('PPDB170883', '213213', '12312', '12313', 'Laki-laki', '123', '1999-02-07', 7, '123123', 12, 213, 23, 23, '/assets/img/uploads/g4.jpg', 'Administrasi Perkantoran', 54183521);
INSERT INTO `calon_siswa` VALUES ('PPDB170884', '213213', '12312', '12313', 'Laki-laki', '123', '1999-02-07', 1, '123123', 12, 213, 23, 23, '/assets/img/uploads/g4.jpg', 'Administrasi Perkantoran', 54183521);
INSERT INTO `calon_siswa` VALUES ('PPDB170885', '21321', '123', '123', 'Laki-laki', '123', '1999-07-07', 3, '123', 123, 123, 54, 54, '/assets/img/uploads/g4.jpg', 'Rekayasa Perangkat Lunak', 123);
INSERT INTO `calon_siswa` VALUES ('PPDB170886', '21321', '123', '123', 'Laki-laki', '123', '1999-07-07', 17, '123', 123, 123, 54, 54, '/assets/img/uploads/g4.jpg', 'Rekayasa Perangkat Lunak', 123);
INSERT INTO `calon_siswa` VALUES ('PPDB170887', '9991777176', '989879', 'Mochammad Faisal', 'Laki-laki', 'Cianjur', '1999-07-27', 67, 'jln.smk pasundan 1 cianjur', 88, 88, 88, 88, '/uploads/Lypsinc Senbud.mp4_snapshot_00.00_[2017.02.07_13.23.49].jpg', 'Rekayasa Perangkat Lunak', 2147483647);

-- ----------------------------
-- Table structure for datasmp
-- ----------------------------
DROP TABLE IF EXISTS `datasmp`;
CREATE TABLE `datasmp`  (
  `id_smp` int(11) NOT NULL AUTO_INCREMENT,
  `namasekolah` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamatsekolah` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telponsekolah` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_smp`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 137 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of datasmp
-- ----------------------------
INSERT INTO `datasmp` VALUES (1, 'SMPN 3', 'JL. MANGGARAI UTARA IV/6 MANGGARAI', '021 8303844');
INSERT INTO `datasmp` VALUES (2, 'SMPN 11', 'JLN.KERINCI BLOK.E KEB.BARU JAK-SEL', '021 7221665');
INSERT INTO `datasmp` VALUES (3, 'SMPN 12', 'JLN.WIJAYA IX NO.50 KEB.BARU JAK-SEL', '021 7208095');
INSERT INTO `datasmp` VALUES (4, 'SMPN 13', 'JL.TIRTAYASA RAYA', '021 7262939');
INSERT INTO `datasmp` VALUES (5, 'SMPN 15', 'JL. PROF. DR. SOEPOMO, SH MENTENG DALAM', '021 8312669');
INSERT INTO `datasmp` VALUES (6, 'SMPN 16', 'JL.PALMERAH BARAT NO.59', '021 5483415');
INSERT INTO `datasmp` VALUES (7, 'SMPN 19', 'JLN.BUMI BLOK.E NO.21 KEB.BARU JAK-SEL', '021 7250219');
INSERT INTO `datasmp` VALUES (8, 'SMPN 29', 'JLN.BUMI BLOK.E', '021 7247493');
INSERT INTO `datasmp` VALUES (9, 'SMPN 31', 'JL.PENINGGARAN BARAT III', '021 7239730');
INSERT INTO `datasmp` VALUES (10, 'SMPN 33', 'JL. MENARA AIR I MANGGARAI, TEBET', '021 8304489');
INSERT INTO `datasmp` VALUES (11, 'SMPN 37', 'JL. TAMAN WIJAYA KUSUMA RAYA CILANDAK', '021 7695272');
INSERT INTO `datasmp` VALUES (12, 'SMPN 41', 'JL. HARSONO RM. RAGUNAN PASARMINGGU', '021 7814294');
INSERT INTO `datasmp` VALUES (13, 'SMPN 43', 'JL. KAPTEN TENDEAN NO. 11 MAMPANG PRAPATAN', '021 7988023');
INSERT INTO `datasmp` VALUES (14, 'SMPN 46', 'JL. RUKUN PEJATEN TIMUR PASARMINGGU', '021 7988153');
INSERT INTO `datasmp` VALUES (15, 'SMPN 48', 'JL.KEBAYORAN LAMA 192', '021 7396648');
INSERT INTO `datasmp` VALUES (16, 'SMPN 56', 'JL. JERUK PURUT RAYA CILANDAK', '021 7803516');
INSERT INTO `datasmp` VALUES (17, 'SMPN 57', 'JL. HALIMUN NO. 2B SETIABUDI JAK-SEL', '021 8280960');
INSERT INTO `datasmp` VALUES (18, 'SMPN 58', 'JL. SETIABUDI BARAT NO. 8K', '021 5224233');
INSERT INTO `datasmp` VALUES (19, 'SMPN 66', 'JL.MASJID AN NUR KEB.LAMA', '021 7262921');
INSERT INTO `datasmp` VALUES (20, 'SMPN 67', 'JL. MINANGKABAU DALAM NO.3 SETIABUDI JAK-SEL', '021 8291525');
INSERT INTO `datasmp` VALUES (21, 'SMPN 68', 'JL. CIPETE III/4 CIPETE', '021 7695722');
INSERT INTO `datasmp` VALUES (22, 'SMPN 73', 'JL. TEBET TIMUR I-F/14, TEBET', '021 8295378');
INSERT INTO `datasmp` VALUES (23, 'SMPN 85', 'JL. MARGASATWA NO. 8 PONDOK LABU', '021 7657652');
INSERT INTO `datasmp` VALUES (24, 'SMPN 86', 'JL. RS. FATMAWATI KOMP. BNI 46 CILANDAK', '021 7503160');
INSERT INTO `datasmp` VALUES (25, 'SMPN 87', 'JL.CIPUTAT RAYA PD.PINANG', '021 7657687');
INSERT INTO `datasmp` VALUES (26, 'SMPN 96', 'KOMP. TIMAH PONDOK LABU CILANDAK', '021 7658121');
INSERT INTO `datasmp` VALUES (27, 'SMPN 98', 'JL. RAYA DEPOK, LENTENG AGUNG, JAGAKARSA', '021 7867633');
INSERT INTO `datasmp` VALUES (28, 'SMPN 104', 'JL. MAMPANG PRAPATAN XIII', '021 7990565');
INSERT INTO `datasmp` VALUES (29, 'SMPN 107', 'JL. RAYA PEJATEN KOMP. P DAN K', '021 7990977');
INSERT INTO `datasmp` VALUES (30, 'SMPN 110', 'JL. KEMAJUAN PETUKANGAN SELATAN', '021 7342288');
INSERT INTO `datasmp` VALUES (31, 'SMPN 115', 'JL. KH.ABDULLAH SYAFEI, TEBET', '021 8297511');
INSERT INTO `datasmp` VALUES (32, 'SMPN 124', 'JL. KEMANG TIMUR I/5', '021 7988101');
INSERT INTO `datasmp` VALUES (33, 'SMPN 131', 'JL. RM. KAHFI I, CIPEDAK, JAGAKARSA', '021 7270218');
INSERT INTO `datasmp` VALUES (34, 'SMPN 141', 'JL. PONDOK JAYA VIII/15B', '021 7192868');
INSERT INTO `datasmp` VALUES (35, 'SMPN 145', 'JL. MENTENG PULO UJUNG SETIABUDI', '021 70291900');
INSERT INTO `datasmp` VALUES (36, 'SMPN 153', 'JL.CIDODOL RAYA NO.1', '021 7394260');
INSERT INTO `datasmp` VALUES (37, 'SMPN 154', 'PENGADEGAN BARAT 13, PANCORAN', '021 7991643');
INSERT INTO `datasmp` VALUES (38, 'SMPN 155', 'CIKOKO BARAT IV CIKOKO, PANCORAN', '021 7987400');
INSERT INTO `datasmp` VALUES (39, 'SMPN 161', 'JL.DELMAN UTAMA I TANAH KUSIR', '021 7247127');
INSERT INTO `datasmp` VALUES (40, 'SMPN 163', 'JL. EMPANG TIGA PEJATEN TIMUR', '021 7994079');
INSERT INTO `datasmp` VALUES (41, 'SMPN 164', 'JL.DHARMA PUTRA RAYA 10', '021 7260333');
INSERT INTO `datasmp` VALUES (42, 'SMPN 166', 'JL. KEDONDONG NO. 5, JAGAKARSA, JAGAKARSA', '021 7270219');
INSERT INTO `datasmp` VALUES (43, 'SMPN 175', 'JL. JATIPADANG, JAGAKARSA, JAGAKARSA', '021 7811978');
INSERT INTO `datasmp` VALUES (44, 'SMPN 177', 'JL. RAYA KODAM BINTARO PESANGGRAHAN', '021 7355975');
INSERT INTO `datasmp` VALUES (45, 'SMPN 178', 'JL. MAWAR NO. 6A BINTARO PESANGGRAHAN', '021 73885370');
INSERT INTO `datasmp` VALUES (46, 'SMPN 182', 'EMPANG TIGA KALIBATA, PANCORAN', '021 7994641');
INSERT INTO `datasmp` VALUES (47, 'SMPN 185', 'JL.KEMANDONRAN I', '021 5307631');
INSERT INTO `datasmp` VALUES (48, 'SMPN 211', 'JL. SMP 211, SRENGSENG SAWAH, JAGAKARSA', '021 7270204');
INSERT INTO `datasmp` VALUES (49, 'SMPN 212', 'JL. BENDA ATAS JERUK PURUT CILANDAK TIMUR', '021 7800417');
INSERT INTO `datasmp` VALUES (50, 'SMPN 218', 'JL. MENARA JATIPADANG PASARMINGGU', '021 7807305');
INSERT INTO `datasmp` VALUES (51, 'SMPN 226', 'JL. KAYU KAPUR NO. 2', '021 7501270');
INSERT INTO `datasmp` VALUES (52, 'SMPN 227', 'JL. MASJID AL FAJRI PEJETEN BARAT PASARMINGGU', '021 7971338');
INSERT INTO `datasmp` VALUES (53, 'SMPN 235', 'JL. PD. INDAH PESANGGRAHAN', '021 7340973');
INSERT INTO `datasmp` VALUES (54, 'SMPN 238', 'KALIBATA UTARA VI DUREN TIGA, PANCORAN', '021 7991565');
INSERT INTO `datasmp` VALUES (55, 'SMPN 239', 'JL. NANGKA, TANJUNG BARAT, JAGAKARSA', '021 7818319');
INSERT INTO `datasmp` VALUES (56, 'SMPN 240', 'JLN.H.RAYA 16 B', '021 7204711');
INSERT INTO `datasmp` VALUES (57, 'SMPN 242', 'JL. SUBUR, LENTENG AGUNG, JAGAKARSA', '021 7869935');
INSERT INTO `datasmp` VALUES (58, 'SMPN 245', 'JL. H. MUCHTAR RAYA PETUKANGAN UTARA', '021 70708245');
INSERT INTO `datasmp` VALUES (59, 'SMPN 247', 'JL. MAMPANG PRAPATAN XIII', '021 7943835');
INSERT INTO `datasmp` VALUES (60, 'SMPN 250', 'JLN.KH.H.NAIM III CIPETE', '021 7200396');
INSERT INTO `datasmp` VALUES (61, 'SMPN 253', 'JL. KP. ALANG-ALANG, CIPEDAK, JAGAKARSA', '021 7864572');
INSERT INTO `datasmp` VALUES (62, 'SMPN 254', 'JL. GANDARIA V, JAGAKARSA, JAGAKARSA', '021 7270842');
INSERT INTO `datasmp` VALUES (63, 'SMPN 265', 'JL. ASEMBARIS II NO. 10 KEBON BARU', '021 8302935');
INSERT INTO `datasmp` VALUES (64, 'SMPN 267', 'JL. MAIRIN SWADARMA RAYA ULUJAMI', '021 5852291');
INSERT INTO `datasmp` VALUES (65, 'SMPN 276', 'JL. SEROJA, SRENGSENG SAWAH, JAGAKARSA', '021 7866427');
INSERT INTO `datasmp` VALUES (66, 'SMPN 1', 'JL. CIKINI RAYA NO. 87 JAKARTA PUSAT', '021 31922417');
INSERT INTO `datasmp` VALUES (67, 'SMPN 2', 'JL.MARADAI RAYA NO 11', '021 4243788');
INSERT INTO `datasmp` VALUES (68, 'SMPN 4', 'JL.PERWIRA NO.10 JAKARTA PUSAT', '021 3844414');
INSERT INTO `datasmp` VALUES (69, 'SMPN 5', 'JL.DR SUTOMO NO. 5 JAKARTA PUSAT', '021 3844986');
INSERT INTO `datasmp` VALUES (70, 'SMPN 8', 'JL. PEGANGSAAN BARAT NO. 1', '021 3145570');
INSERT INTO `datasmp` VALUES (71, 'SMPN 10', 'JL. SUMUR BATU KEMAYORAN JAK PUS', '021 4241406');
INSERT INTO `datasmp` VALUES (72, 'SMPN 17', 'JL. KARANG ANYAR NO. 9 - 14 JAKARTA PUSAT', '021 6390329');
INSERT INTO `datasmp` VALUES (73, 'SMPN 18', 'JL. MENTENG KECIL NO. 3', '021 31935565');
INSERT INTO `datasmp` VALUES (74, 'SMPN 28', 'JL.MARDANI RAYA NO.17', '021 4246165');
INSERT INTO `datasmp` VALUES (75, 'SMPN 38', 'JL. KARET PASAR BARU BARAT 1 NO.14', '021 5733602');
INSERT INTO `datasmp` VALUES (76, 'SMPN 39', 'JALAN GAJAH MADA NO. 3 - 5 JAKARTA PUSAT', '021 63851721');
INSERT INTO `datasmp` VALUES (77, 'SMPN 40', 'JL. DANAU LIMBOTO PEJOMPONGAN', '021 5737815');
INSERT INTO `datasmp` VALUES (78, 'SMPN 47', 'RAWASARI TIMUR I', '021 4200349');
INSERT INTO `datasmp` VALUES (79, 'SMPN 59', 'JLN. BENDUNGAN JAGO RAYA NO. 40 KEMAYORAN JAKPUS', '021 4254310');
INSERT INTO `datasmp` VALUES (80, 'SMPN 60', 'JL SANGIHE NO 26 JAKARTA PUSAT', '021 63863113');
INSERT INTO `datasmp` VALUES (81, 'SMPN 64', 'JL. KARANG ANYAR 9-14 JAKARTA PUSAT', '021 6289762');
INSERT INTO `datasmp` VALUES (82, 'SMPN 70', 'JL. H. AWALUDIN IV KEBON MELATI TANAH ABANG', '021 3102278');
INSERT INTO `datasmp` VALUES (83, 'SMPN 71', 'JL.KOMPLEK PENDIDIKAN RAWA KERBAU', '021 4213554');
INSERT INTO `datasmp` VALUES (84, 'SMPN 72', 'JL.PETOJO BINATU NO.2 KEC GAMBIR JAKARTA PUSAT', '021 6327871');
INSERT INTO `datasmp` VALUES (85, 'SMPN 76', 'JL.PERCETAKAN NEGARA II', '021 4248479');
INSERT INTO `datasmp` VALUES (86, 'SMPN 77', 'JL.CEMPAKA PUTIH TENGAH 18', '021 4245377');
INSERT INTO `datasmp` VALUES (87, 'SMPN 78', 'JL. PERUNGGU NO.56 HARAPAN MULIA KEMAYORAN', '021 4240289');
INSERT INTO `datasmp` VALUES (88, 'SMPN 79', 'JL. DAKOTA RAYA KEMAYORAN JAKARTA PUSAT', '021 4208740');
INSERT INTO `datasmp` VALUES (89, 'SMPN 93', 'JL. GUNUNG SAHARI RAYA NO.81 JAKARTA PUSAT', '021 4247349');
INSERT INTO `datasmp` VALUES (90, 'SMPN 94', 'JLN. TANAH ABANG V/29 JAKARTA PUSAT', '021 3805680');
INSERT INTO `datasmp` VALUES (91, 'SMPN 118', 'JL.PRAMUKASARI I', '021 4245169');
INSERT INTO `datasmp` VALUES (92, 'SMPN 119', 'JL.HARAPAN JAYA IX NO.5', '021 4245304');
INSERT INTO `datasmp` VALUES (93, 'SMPN 137', 'JL.CEMPAKA PUTIH BARAT 15', '021 4244612');
INSERT INTO `datasmp` VALUES (94, 'SMPN 156', 'JL.KRAMAT PULO GUNDUL III', '021 4214306');
INSERT INTO `datasmp` VALUES (95, 'SMPN 181', 'JL. MESJID I KARET TENGSIN', '021 5738060');
INSERT INTO `datasmp` VALUES (96, 'SMPN 183', 'JL.CEMPAKA BARU VII/47', '021 4245884');
INSERT INTO `datasmp` VALUES (97, 'SMPN 216', 'JLN. SALEMBA RAYA NO. 18', '021 31931857');
INSERT INTO `datasmp` VALUES (98, 'SMPN 228', 'JLN. SUMUR BATU RAYA NO. 6 KEMAYORAN', '021 4202430');
INSERT INTO `datasmp` VALUES (99, 'SMPN 269', 'JL. HARAPAN MULIA KEMAYORAN JAKARTA PUSAT', '021 4212795');
INSERT INTO `datasmp` VALUES (100, 'SMPN 273', 'JL. KAMPUNG BALI 24/1 TN. ABANG', '021 3143012');
INSERT INTO `datasmp` VALUES (101, 'SMP Negeri 216 ', 'JL. Salemba Raya No. 18                                                                                       ', '31931857');
INSERT INTO `datasmp` VALUES (102, 'SMP Negeri 1 ', 'JL. Raya Cikini No. 87                                                                                          ', '31922417');
INSERT INTO `datasmp` VALUES (103, 'SMP Negeri 5 ', 'JL. Dr Sutomo No. 5 Sawah Besar                                                                         ', '3844986');
INSERT INTO `datasmp` VALUES (104, 'SMP Negeri 30 ', 'JL. Anggrek No. 4 Koja                                                                                  ', '43911051');
INSERT INTO `datasmp` VALUES (105, 'SMP Negeri 95 ', 'JL. Warakas VI Papongo Tanjung Priok                                                            ', '43937969');
INSERT INTO `datasmp` VALUES (106, 'SMP Negeri 231 ', 'JL. Raya Tugu Semper Cilincing                                                                        ', '4400643');
INSERT INTO `datasmp` VALUES (107, 'SMP Negeri 244 ', 'JL. Cilincing Bhakti VI No. 28                                                                           ', '4400872');
INSERT INTO `datasmp` VALUES (108, 'SMP Negeri 75 ', 'JL. Raya Kebon Jeruk                                                                                           ', '5483496');
INSERT INTO `datasmp` VALUES (109, 'SMP Negeri 45 ', 'JL. Utama Raya No. 45 Cengkareng                                                                     ', '6191705');
INSERT INTO `datasmp` VALUES (110, 'SMP Negeri 111 ', 'JL. Bhakti VII Kemanggisan                                                                                  ', '5482423');
INSERT INTO `datasmp` VALUES (111, 'SMP Negeri 206 ', 'JL. Meruya Selatan, Kembangan                                                                            ', '5850137');
INSERT INTO `datasmp` VALUES (112, 'SMP Negeri 115 ', 'Jl. KH Abdullah Syafei, Tebet                                                                               ', '8297511');
INSERT INTO `datasmp` VALUES (113, 'SMP Negeri 11 ', 'Jl. Kerinci VII Blok E, Kebayoran Baru                                                                ', '7221665');
INSERT INTO `datasmp` VALUES (114, 'SMP Negeri 19 ', 'Jl. Bumi BLOK E, No 21 Keb.Baru                                                                     ', '7250219');
INSERT INTO `datasmp` VALUES (115, 'SMP Negeri 41 ', 'Jl. Harsono RM. Ragunan                                                                                     ', '');
INSERT INTO `datasmp` VALUES (116, 'SMP Negeri 85 ', 'Jl. Margasatwa No. 8 Pd. Labu, Cilandak                                                             ', '7657652');
INSERT INTO `datasmp` VALUES (117, 'SMP Negeri 161 ', 'Jl. Delman Kencana II Tanah Kusir, Kebayoran Lama                                           ', '7247127');
INSERT INTO `datasmp` VALUES (118, 'SMP Negeri 68 ', 'Jl. Cipete III/4                                                                                                       ', '7695722');
INSERT INTO `datasmp` VALUES (119, 'SMP Negeri 109', 'Jl. Kesehatan Kodam V Makassar                                                                      ', '8615289');
INSERT INTO `datasmp` VALUES (120, 'SMP Negeri 49 ', 'Jl Raya Bogor , Kramat Jati                                                                                  ', '8090200');
INSERT INTO `datasmp` VALUES (121, 'SMP Negeri 81 ', 'Jl. Monumen Pancasila Sakti Lubang Buaya                                                          ', '8408656');
INSERT INTO `datasmp` VALUES (122, 'SMP Negeri 103 ', 'Jl. RA Fadillah Komp Kopassus Cijantung                                                            ', '8400005');
INSERT INTO `datasmp` VALUES (123, 'SMP Negeri 102 ', 'Jl. Sederhana Raya Cijantung                                                                                ', '8401794');
INSERT INTO `datasmp` VALUES (124, 'SMP Negeri 128 ', 'Jl. Herkules Halim Perdana Kusuma                                                                      ', '8009861');
INSERT INTO `datasmp` VALUES (125, 'SMP Negeri 172 ', 'Jl. Raya Stasiun Cakung Pulo Gebang                                                                     ', '4805079');
INSERT INTO `datasmp` VALUES (126, 'SMP Negeri 193 ', 'Jl. Ujung Menteng Cakung                                                                                     ', '4512775');
INSERT INTO `datasmp` VALUES (127, 'SMP Negeri 199 ', 'Jl. Arabica S Blok AC 3 Pondok Kopi                                                                  ', '8624937');
INSERT INTO `datasmp` VALUES (128, 'SMP Negeri 236 ', 'Jl. Penggilingan Komplek PIK                                                                               ', '4604272');
INSERT INTO `datasmp` VALUES (129, 'SMP Negeri 252', 'Jl Naman Pondok Kelapa', '86905247');
INSERT INTO `datasmp` VALUES (130, 'SMP Negeri 255 ', 'Jl. Raden Inten Duren Sawit                                                                                  ', '8601993');
INSERT INTO `datasmp` VALUES (131, 'SMP Negeri 27 ', 'Komp PTB Duren Sawit                                                                                      ', '8615189');
INSERT INTO `datasmp` VALUES (132, 'SMP Negeri 74 ', 'Jl. Pemuda No 6 P. Gadung                                                                                 ', '4892521');
INSERT INTO `datasmp` VALUES (133, 'SMP Negeri 139 ', 'Jl. Bunga Rampai X Perumnas Klender                                                                 ', '86622390');
INSERT INTO `datasmp` VALUES (134, 'SMP Negeri 92 ', 'Jl. Perhubungan XII Rawamangun                                                                         ', '4713051');
INSERT INTO `datasmp` VALUES (135, 'SMP Negeri 9 ', 'Jl. Kelapa Dua Wetan Ciracas                                                                              ', '8719966');
INSERT INTO `datasmp` VALUES (136, 'SMP Negeri 179 ', 'Jl. Kalisari Pasar Rebo,                                                                                         ', '8711073');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- View structure for v_csmp
-- ----------------------------
DROP VIEW IF EXISTS `v_csmp`;
CREATE  VIEW `v_csmp` AS select `ds`.`namasekolah` AS `namasekolah`,count(`cs`.`nama_lengkap`) AS `count(cs.nama_lengkap)` from (`calon_siswa` `cs` join `datasmp` `ds` on((`cs`.`id_smp` = `ds`.`id_smp`))) group by `ds`.`namasekolah` ;


-- ----------------------------
-- View structure for v_rata2
-- ----------------------------
DROP VIEW IF EXISTS `v_rata2`;
CREATE  VIEW `v_rata2` AS select `cs`.`no_pendaftaran` AS `no_pendaftaran`,`cs`.`nisn` AS `nisn`,`cs`.`nama_lengkap` AS `nama_lengkap`,`cs`.`pilih_jurusan` AS `jurusan`,`cs`.`jk` AS `jk`,(case when ((`cs`.`pilih_jurusan` = 'Rekayasa Perangkat Lunak') and (`cs`.`pilih_jurusan` = 'Teknik Komputer dan Jaringan')) then ((`cs`.`nilai_ipa` * 20) / 100) else ((`cs`.`nilai_ipa` * 25) / 100) end) AS `ipa`,(case when ((`cs`.`pilih_jurusan` = 'Rekayasa Perangkat Lunak') and (`cs`.`pilih_jurusan` = 'Teknik Komputer dan Jaringan')) then ((`cs`.`nilai_mtk` * 50) / 100) else ((`cs`.`nilai_mtk` * 25) / 100) end) AS `mtk`,(case when ((`cs`.`pilih_jurusan` = 'Rekayasa Perangkat Lunak') and (`cs`.`pilih_jurusan` = 'Teknik Komputer dan Jaringan')) then ((`cs`.`nilai_bindo` * 10) / 100) else ((`cs`.`nilai_bindo` * 25) / 100) end) AS `indo`,(case when ((`cs`.`pilih_jurusan` = 'Rekayasa Perangkat Lunak') and (`cs`.`pilih_jurusan` = 'Teknik Komputer dan Jaringan')) then ((`cs`.`nilai_bing` * 20) / 100) else ((`cs`.`nilai_bing` * 25) / 100) end) AS `inggris`,(avg((((`cs`.`nilai_bindo` + `cs`.`nilai_bing`) + `cs`.`nilai_ipa`) + `cs`.`nilai_mtk`)) / 4) AS `rata2` from `calon_siswa` `cs` group by `cs`.`no_pendaftaran` ;



-- ----------------------------
-- View structure for v_keterangan
-- ----------------------------
DROP VIEW IF EXISTS `v_keterangan`;
CREATE  VIEW `v_keterangan` AS select `rt`.`no_pendaftaran` AS `no_pendaftaran`,`rt`.`nisn` AS `nisn`,`rt`.`nama_lengkap` AS `nama_lengkap`,`rt`.`rata2` AS `rata2`,(case when (`rt`.`rata2` > 80) then 'Lulus' else 'Tidak Lulus' end) AS `keterangan` from `v_rata2` `rt` ;

-- ----------------------------
-- View structure for v_hasil
-- ----------------------------
DROP VIEW IF EXISTS `v_hasil`;
CREATE  VIEW `v_hasil` AS select `v_rata2`.`no_pendaftaran` AS `no_pendaftaran`,`v_rata2`.`nama_lengkap` AS `nama_lengkap`,`v_rata2`.`jk` AS `jk`,`v_rata2`.`rata2` AS `rata2`,`v_keterangan`.`keterangan` AS `keterangan` from (`v_rata2` join `v_keterangan` on(((`v_rata2`.`no_pendaftaran` = `v_keterangan`.`no_pendaftaran`) and (`v_rata2`.`nisn` = `v_keterangan`.`nisn`) and (`v_rata2`.`nama_lengkap` = `v_keterangan`.`nama_lengkap`) and (`v_rata2`.`rata2` = `v_keterangan`.`rata2`)))) group by `v_rata2`.`no_pendaftaran`,`v_keterangan`.`keterangan` order by `v_keterangan`.`keterangan` ;


-- ----------------------------
-- View structure for v_hasil_l
-- ----------------------------
DROP VIEW IF EXISTS `v_hasil_l`;
CREATE  VIEW `v_hasil_l` AS select `v_rata2`.`no_pendaftaran` AS `no_pendaftaran`,`v_rata2`.`nama_lengkap` AS `nama_lengkap`,`v_rata2`.`jk` AS `jk`,`v_rata2`.`rata2` AS `rata2`,`v_keterangan`.`keterangan` AS `keterangan` from (`v_rata2` join `v_keterangan` on(((`v_rata2`.`no_pendaftaran` = `v_keterangan`.`no_pendaftaran`) and (`v_rata2`.`nisn` = `v_keterangan`.`nisn`) and (`v_rata2`.`nama_lengkap` = `v_keterangan`.`nama_lengkap`) and (`v_rata2`.`rata2` = `v_keterangan`.`rata2`)))) group by `v_rata2`.`no_pendaftaran`,`v_keterangan`.`keterangan` order by `v_keterangan`.`keterangan` ;



-- ----------------------------
-- View structure for v_siswa
-- ----------------------------
DROP VIEW IF EXISTS `v_siswa`;
CREATE  VIEW `v_siswa` AS select `cs`.`no_pendaftaran` AS `no_pendaftaran`,`cs`.`nisn` AS `nisn`,`cs`.`nis_smp` AS `nis_smp`,`cs`.`nama_lengkap` AS `nama_lengkap`,`cs`.`jk` AS `jk`,`cs`.`tempat_lahir` AS `tempat_lahir`,`cs`.`tanggal_lahir` AS `lahir`,`ds`.`namasekolah` AS `namasekolah`,`cs`.`alamat_pribadi` AS `alamat_pribadi`,`cs`.`no_kontak` AS `no_kontak`,`cs`.`pilih_jurusan` AS `pilih_jurusan`,`cs`.`nilai_bindo` AS `nilai_bindo`,`cs`.`nilai_bing` AS `nilai_bing`,`cs`.`nilai_mtk` AS `nilai_mtk`,`cs`.`nilai_ipa` AS `nilai_ipa` from (`calon_siswa` `cs` join `datasmp` `ds` on((`cs`.`id_smp` = `ds`.`id_smp`))) ;


-- ----------------------------
-- View structure for v_hasil2
-- ----------------------------
DROP VIEW IF EXISTS `v_hasil2`;
CREATE  VIEW `v_hasil2` AS select `v_siswa`.`no_pendaftaran` AS `no_pendaftaran`,`v_siswa`.`nama_lengkap` AS `nama_lengkap`,`v_siswa`.`jk` AS `jk`,`v_siswa`.`namasekolah` AS `namasekolah`,`v_siswa`.`pilih_jurusan` AS `pilih_jurusan`,`v_hasil_l`.`rata2` AS `rata2`,`v_hasil_l`.`keterangan` AS `keterangan` from (`v_hasil_l` join `v_siswa` on(((`v_hasil_l`.`no_pendaftaran` = `v_siswa`.`no_pendaftaran`) and (`v_hasil_l`.`nama_lengkap` = `v_siswa`.`nama_lengkap`) and (`v_hasil_l`.`jk` = `v_siswa`.`jk`)))) group by `v_siswa`.`no_pendaftaran`,`v_siswa`.`namasekolah` ;


-- ----------------------------
-- View structure for v_hasil_smp
-- ----------------------------
DROP VIEW IF EXISTS `v_hasil_smp`;
CREATE  VIEW `v_hasil_smp` AS select `v_siswa`.`namasekolah` AS `namasekolah`,sum(if(((`v_siswa`.`jk` = 'laki-laki') and (`v_keterangan`.`keterangan` = `v_keterangan`.`keterangan`) and (`v_siswa`.`namasekolah` = `v_siswa`.`namasekolah`)),1,0)) AS `JL`,sum(if(((`v_siswa`.`jk` = 'perempuan') and (`v_keterangan`.`keterangan` = `v_keterangan`.`keterangan`) and (`v_siswa`.`namasekolah` = `v_siswa`.`namasekolah`)),1,0)) AS `JP`,count(`v_siswa`.`jk`) AS `jml`,`v_keterangan`.`keterangan` AS `keterangan` from (`v_keterangan` join `v_siswa` on(((`v_keterangan`.`no_pendaftaran` = `v_siswa`.`no_pendaftaran`) and (`v_keterangan`.`nisn` = `v_siswa`.`nisn`) and (`v_keterangan`.`nama_lengkap` = `v_siswa`.`nama_lengkap`)))) group by `v_siswa`.`namasekolah`,`v_keterangan`.`keterangan` ;

-- ----------------------------
-- View structure for v_jk
-- ----------------------------
DROP VIEW IF EXISTS `v_jk`;
CREATE  VIEW `v_jk` AS select sum(if((`cs`.`jk` = 'Laki-laki'),1,NULL)) AS `JL`,sum(if((`cs`.`jk` = 'Perempuan'),1,NULL)) AS `JP` from `calon_siswa` `cs` ;

-- ----------------------------
-- View structure for v_jkjr
-- ----------------------------
DROP VIEW IF EXISTS `v_jkjr`;
CREATE  VIEW `v_jkjr` AS select `cs`.`pilih_jurusan` AS `jurusan`,sum(if((`cs`.`jk` = 'Laki-laki'),1,0)) AS `JL`,sum(if((`cs`.`jk` = 'Perempuan'),1,0)) AS `JP`,`v_hasil`.`keterangan` AS `keterangan`,`v_hasil`.`jk` AS `jk` from (`calon_siswa` `cs` join `v_hasil` on(((`cs`.`no_pendaftaran` = `v_hasil`.`no_pendaftaran`) and (`cs`.`nama_lengkap` = `v_hasil`.`nama_lengkap`) and (`cs`.`jk` = `v_hasil`.`jk`)))) group by `cs`.`pilih_jurusan`,`v_hasil`.`jk`,`v_hasil`.`keterangan` ;

-- ----------------------------
-- View structure for v_jkjr_2
-- ----------------------------
DROP VIEW IF EXISTS `v_jkjr_2`;
CREATE  VIEW `v_jkjr_2` AS select `cs`.`pilih_jurusan` AS `jurusan`,`v_hasil`.`keterangan` AS `keterangan`,`v_hasil`.`jk` AS `jk`,(case when ((`cs`.`jk` = `cs`.`jk`) and (`cs`.`pilih_jurusan` = `cs`.`pilih_jurusan`)) then count(`cs`.`jk`) else count(`cs`.`jk`) end) AS `JKK` from (`calon_siswa` `cs` join `v_hasil` on(((`cs`.`no_pendaftaran` = `v_hasil`.`no_pendaftaran`) and (`cs`.`nama_lengkap` = `v_hasil`.`nama_lengkap`) and (`cs`.`jk` = `v_hasil`.`jk`)))) group by `cs`.`pilih_jurusan`,`v_hasil`.`jk` ;

-- ----------------------------
-- View structure for v_jksmp
-- ----------------------------
DROP VIEW IF EXISTS `v_jksmp`;
CREATE  VIEW `v_jksmp` AS select `ds`.`id_smp` AS `id_smp`,`ds`.`namasekolah` AS `namasekolah`,sum(if((`cs`.`jk` = 'Laki-laki'),1,0)) AS `JL`,sum(if((`cs`.`jk` = 'Perempuan'),1,0)) AS `JP`,count(`cs`.`jk`) AS `jml` from (`calon_siswa` `cs` join `datasmp` `ds` on((`cs`.`id_smp` = `ds`.`id_smp`))) group by `ds`.`namasekolah` order by `ds`.`id_smp` ;

-- ----------------------------
-- View structure for v_jksmp2
-- ----------------------------
DROP VIEW IF EXISTS `v_jksmp2`;
CREATE  VIEW `v_jksmp2` AS select `datasmp`.`namasekolah` AS `namasekolah`,(case when (`v_hasil`.`keterangan` = 'lulus') then count(`v_hasil`.`jk`) else count(`v_hasil`.`jk`) end) AS `hasil`,`v_hasil`.`keterangan` AS `keterangan` from (`v_hasil` join (`calon_siswa` join `datasmp` on((`calon_siswa`.`id_smp` = `datasmp`.`id_smp`)))) group by `datasmp`.`namasekolah` ;

-- ----------------------------
-- View structure for v_jml_jkjr
-- ----------------------------
DROP VIEW IF EXISTS `v_jml_jkjr`;
CREATE  VIEW `v_jml_jkjr` AS select `cs`.`pilih_jurusan` AS `jurusan`,sum(if((`cs`.`jk` = 'Laki-laki'),1,0)) AS `JL`,sum(if((`cs`.`jk` = 'Perempuan'),1,0)) AS `JP`,`v_hasil`.`keterangan` AS `keterangan`,`v_hasil`.`jk` AS `jk` from (`calon_siswa` `cs` join `v_hasil` on(((`cs`.`no_pendaftaran` = `v_hasil`.`no_pendaftaran`) and (`cs`.`nama_lengkap` = `v_hasil`.`nama_lengkap`) and (`cs`.`jk` = `v_hasil`.`jk`)))) group by `cs`.`pilih_jurusan`,`v_hasil`.`jk`,`v_hasil`.`keterangan` ;


SET FOREIGN_KEY_CHECKS = 1;
