-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.3.0 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for tenquanhuyentinhthanhpho
CREATE DATABASE IF NOT EXISTS `tenquanhuyentinhthanhpho` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tenquanhuyentinhthanhpho`;

-- Dumping structure for table tenquanhuyentinhthanhpho.quan\huyen
CREATE TABLE IF NOT EXISTS `quan\huyen` (
  `idquanhuyen` int NOT NULL AUTO_INCREMENT,
  `tenquanhuyen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL DEFAULT '0',
  `idthanhpho` int NOT NULL DEFAULT (0),
  PRIMARY KEY (`idquanhuyen`),
  KEY `idthanhpho` (`idthanhpho`),
  CONSTRAINT `FK__tinh\thanhpho` FOREIGN KEY (`idthanhpho`) REFERENCES `tinh\thanhpho` (`idthanhpho`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bs_0900_ai_ci;

-- Dumping data for table tenquanhuyentinhthanhpho.quan\huyen: ~0 rows (approximately)
DELETE FROM `quan\huyen`;

-- Dumping structure for table tenquanhuyentinhthanhpho.tinh\thanhpho
CREATE TABLE IF NOT EXISTS `tinh\thanhpho` (
  `idthanhpho` int NOT NULL AUTO_INCREMENT,
  `tenthanhpho` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`idthanhpho`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bs_0900_ai_ci;

-- Dumping data for table tenquanhuyentinhthanhpho.tinh\thanhpho: ~0 rows (approximately)
DELETE FROM `tinh\thanhpho`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
