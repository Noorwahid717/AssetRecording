/*
 Navicat Premium Data Transfer

 Source Server         : kuliah
 Source Server Type    : MySQL
 Source Server Version : 100421
 Source Host           : localhost:3306
 Source Schema         : aset

 Target Server Type    : MySQL
 Target Server Version : 100421
 File Encoding         : 65001

 Date: 01/12/2021 20:06:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_aset_aktif
-- ----------------------------
DROP TABLE IF EXISTS `tbl_aset_aktif`;
CREATE TABLE `tbl_aset_aktif`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `Kode` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Kode_kategori_aset` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Tanggal_akuisisi` date NULL DEFAULT NULL,
  `Biaya_akuisisi` int NULL DEFAULT NULL,
  `Kode_kategori_saldo` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Deskripsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_aset_aktif
-- ----------------------------
INSERT INTO `tbl_aset_aktif` VALUES (1, 'of-1', 'PC samsung duo', 'ast-05', '2021-11-30', 5000000, 'dak-01', 'seperangkat komputer');
INSERT INTO `tbl_aset_aktif` VALUES (2, 'of-2', 'Printer HP', 'ast-05', '2021-11-30', 3000000, 'dak-01', 'pencetak laporan');
INSERT INTO `tbl_aset_aktif` VALUES (8, 'of-001', 'rumah', 'ast-02', '0000-00-00', 100000000, 'dak-04', 'pergudangan');
INSERT INTO `tbl_aset_aktif` VALUES (9, 'of-002', 'Meja', 'ast-05', '0000-00-00', 250000, 'dak-01', 'sarana');

-- ----------------------------
-- Table structure for tbl_aset_dijual
-- ----------------------------
DROP TABLE IF EXISTS `tbl_aset_dijual`;
CREATE TABLE `tbl_aset_dijual`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `Kode` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Harga_jual` int NULL DEFAULT NULL,
  `Tanggal` date NULL DEFAULT NULL,
  `Untung/Rugi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_aset_dijual
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_daftar_akun_saldo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_daftar_akun_saldo`;
CREATE TABLE `tbl_daftar_akun_saldo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `Kode` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Kode_kategori_akun` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Pajak` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Saldo` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_daftar_akun_saldo
-- ----------------------------
INSERT INTO `tbl_daftar_akun_saldo` VALUES (1, 'dak-01', 'Kas', 'ak-01', NULL, 2310000);
INSERT INTO `tbl_daftar_akun_saldo` VALUES (2, 'dak-02', 'Rekening Bank', 'ak-01', NULL, 26600000);
INSERT INTO `tbl_daftar_akun_saldo` VALUES (3, 'dak-03', 'Giro', 'ak-01', NULL, NULL);
INSERT INTO `tbl_daftar_akun_saldo` VALUES (4, 'dak-04', 'Piutang Usaha', 'ak-02', NULL, 8300000);
INSERT INTO `tbl_daftar_akun_saldo` VALUES (5, 'dak-05', 'Hutang Usaha', 'ak-04', NULL, 2590000);
INSERT INTO `tbl_daftar_akun_saldo` VALUES (6, 'dak-06', 'Persediaan', 'ak-06', '', 600000);

-- ----------------------------
-- Table structure for tbl_kategori_akun
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kategori_akun`;
CREATE TABLE `tbl_kategori_akun`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `Kode` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_kategori_akun
-- ----------------------------
INSERT INTO `tbl_kategori_akun` VALUES (1, 'ak-01', 'Kas & Bank');
INSERT INTO `tbl_kategori_akun` VALUES (2, 'ak-02', 'Akun Piutang');
INSERT INTO `tbl_kategori_akun` VALUES (3, 'ak-03', 'Aktiva Tetap');
INSERT INTO `tbl_kategori_akun` VALUES (4, 'ak-04', 'Akun Hutang');
INSERT INTO `tbl_kategori_akun` VALUES (5, 'ak-05', 'Ekuitas');
INSERT INTO `tbl_kategori_akun` VALUES (6, 'ak-06', 'Persediaan');

-- ----------------------------
-- Table structure for tbl_kategori_aset_tetap
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kategori_aset_tetap`;
CREATE TABLE `tbl_kategori_aset_tetap`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `Kode` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_kategori_aset_tetap
-- ----------------------------
INSERT INTO `tbl_kategori_aset_tetap` VALUES (1, 'ast-01', 'Tanah');
INSERT INTO `tbl_kategori_aset_tetap` VALUES (2, 'ast-02', 'Bangunan');
INSERT INTO `tbl_kategori_aset_tetap` VALUES (3, 'ast-03', 'Kendaraan');
INSERT INTO `tbl_kategori_aset_tetap` VALUES (4, 'ast-04', 'Mesin dan Peralatan');
INSERT INTO `tbl_kategori_aset_tetap` VALUES (5, 'ast-05', 'Perlengkapan Kantor');

-- ----------------------------
-- Procedure structure for sp_tbl_aset_aktif_insert
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_tbl_aset_aktif_insert`;
delimiter ;;
CREATE PROCEDURE `sp_tbl_aset_aktif_insert`(pKode char(50), pNama varchar(255), pKode_kategori_aset char(50), pTanggal date, pBiaya_akuisisi int, pKode_kategori_saldo char(50), pDeskripsi varchar(255))
BEGIN
	INSERT INTO tbl_aset_aktif(Kode, Nama, Kode_kategori_aset, Tanggal_akuisisi, Biaya_akuisisi, Kode_kategori_saldo, Deskripsi) VALUES (pKode, pNama, pKode_kategori_aset, pTanggal, pBiaya_akuisisi, pKode_kategori_saldo, pDeskripsi);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_tbl_aset_aktif_view
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_tbl_aset_aktif_view`;
delimiter ;;
CREATE PROCEDURE `sp_tbl_aset_aktif_view`()
BEGIN
	SELECT
	tbl_aset_aktif.id, 
	tbl_aset_aktif.Kode, 
	tbl_aset_aktif.Nama, 
	tbl_kategori_aset_tetap.Nama AS `Kategori Aset`, 
	tbl_aset_aktif.Tanggal_akuisisi, 
	tbl_aset_aktif.Biaya_akuisisi, 
	tbl_daftar_akun_saldo.Nama AS `Saldo Aset`, 
	tbl_aset_aktif.Deskripsi
FROM
	tbl_aset_aktif
	INNER JOIN
	tbl_kategori_aset_tetap
	ON 
		tbl_aset_aktif.Kode_kategori_aset = tbl_kategori_aset_tetap.Kode
	INNER JOIN
	tbl_daftar_akun_saldo
	ON 
		tbl_aset_aktif.Kode_kategori_saldo = tbl_daftar_akun_saldo.Kode;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_tbl_daftar_akun_saldo_insert
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_tbl_daftar_akun_saldo_insert`;
delimiter ;;
CREATE PROCEDURE `sp_tbl_daftar_akun_saldo_insert`(pKode char(50), pNama varchar(255), pKategori_akun char(50), pPajak varchar(255), pSaldo int)
BEGIN
	INSERT INTO tbl_daftar_akun_saldo(Kode, Nama, Kode_kategori_akun, Pajak, Saldo) VALUES (pKode, pNama, pKategori_akun, pPajak, pSaldo);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_tbl_daftar_akun_saldo_view
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_tbl_daftar_akun_saldo_view`;
delimiter ;;
CREATE PROCEDURE `sp_tbl_daftar_akun_saldo_view`()
BEGIN
	SELECT
	tbl_daftar_akun_saldo.id, 
	tbl_daftar_akun_saldo.Kode, 
	tbl_daftar_akun_saldo.Nama, 
	tbl_kategori_akun.Nama AS `Kategori Akun`, 
	tbl_daftar_akun_saldo.Pajak, 
	tbl_daftar_akun_saldo.`Saldo`
FROM
	tbl_daftar_akun_saldo
	INNER JOIN
	tbl_kategori_akun
	ON 
		tbl_daftar_akun_saldo.Kode_kategori_akun = tbl_kategori_akun.Kode;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_tbl_kategori_akun_insert
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_tbl_kategori_akun_insert`;
delimiter ;;
CREATE PROCEDURE `sp_tbl_kategori_akun_insert`(pKode char(50), pNama varchar(255))
BEGIN
	INSERT INTO tbl_kategori_akun(Kode, Nama) VALUES (pKode, pNama);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_tbl_kategori_akun_view
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_tbl_kategori_akun_view`;
delimiter ;;
CREATE PROCEDURE `sp_tbl_kategori_akun_view`()
BEGIN
	SELECT
	tbl_kategori_akun.id, 
	tbl_kategori_akun.Kode, 
	tbl_kategori_akun.Nama
FROM
	tbl_kategori_akun;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_tbl_kategori_aset_tetap_view
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_tbl_kategori_aset_tetap_view`;
delimiter ;;
CREATE PROCEDURE `sp_tbl_kategori_aset_tetap_view`()
BEGIN
	SELECT
	tbl_kategori_aset_tetap.id, 
	tbl_kategori_aset_tetap.Kode, 
	tbl_kategori_aset_tetap.Nama
FROM
	tbl_kategori_aset_tetap;

END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
